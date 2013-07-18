package com.snehinternational.indentmanager

class Indent {
    Supplier supplier
    Buyer buyer
    PaymentTerm paymentTerm
    Commodity commodity
    Country country
    String price
    String quantity
    String specialInstruction
    String paymentTermExtra
    Packing packing
    String grade
    PortOfShipment portOfShipment
    String portOfDischarge
    String partialTranshipment
    String remarks
    String indentIdentifier
    Date createdDate
    Date lastUpdatedAt
    User lastUpdatedBy
    Float commission
    Float specialCommission

    static hasMany = [shippingAdvices: ShippingAdvice]
    static transients = ['indentStatus', 'totalCommission']

    static constraints = {
        price blank: false
        quantity blank: false
        portOfDischarge blank: true
        remarks blank: true
        indentIdentifier blank: false, unique: true
        createdDate nullable: false
        lastUpdatedAt nullable: false
        lastUpdatedBy nullable: false
        grade blank: false,nullable: false
    }

    static mapping = {
        remarks column: "remarks", sqlType: "varchar(1000)"
        specialInstruction column: "special_instruction", sqlType: "varchar(1000)"
        paymentTermExtra column: "payment_term_extra", sqlType: "varchar(1000)"
        shippingAdvices sort: "createdDate", order: "asc"
    }

    String getIndentStatus() {
        if (shippingAdvices?.shippingAdviceStatus?.size() == 0) {
            return 'Pending'
        }
        Set<String> statusSet = new HashSet<String>(2);
        shippingAdvices.shippingAdviceStatus.each {
            statusSet.add(it.name)
        }
        if (statusSet.contains('Pending') && !statusSet.contains('Cleared')) {
            return 'Pending'
        } else
        if (!statusSet.contains('Pending') && statusSet.contains('Cleared')) {
            return 'Cleared'
        } else {
            return 'Running'
        }
    }

//    String getTotalCommission() {
//        if (shippingAdvices.commissionStatus?.size() == (0)) {
//            return 'Pending';
//        }
//        Set<String> statusSet = new HashSet<String>(2);
//        shippingAdvices.commissionStatus.each {
//            statusSet.add(it.name)
//        }
//        if (statusSet.contains('Unpaid') && !statusSet.contains('Due') && !statusSet.contains("Paid")) {
//            return 'Pending'
//        } else
//        if (!statusSet.contains('Unpaid') && statusSet.contains('Due') && !statusSet.contains("Paid")) {
//            return 'Running'
//        } else {
//            if (!statusSet.contains('Unpaid') && !statusSet.contains('Due') && statusSet.contains("Paid")) {
//                return 'Paid'
//            } else
//                return 'Running'
//        }
//    }
}

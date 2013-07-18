package com.snehinternational.indentmanager

class ShippingAdvice {
    String bLNumber
    String invoiceNumber
    String salesOrderNumber
    String shippingLine
    String noOfContainers
    String currentLocation
    String remarks
    Float quantity
    Date estimatedTimeOfArrival
    Date estimatedTimeOfDeparture
    String portOfLanding
    String portOfDeparture
    String valueOfShipment
    String airwayBillNumber
    String finalDestination
    CommissionStatus commissionStatus
    ShippingAdviceStatus shippingAdviceStatus
    Date createdDate
    Date lastUpdatedAt
    Date copyDocumentsSentOn
    User lastUpdatedBy
    static belongsTo = [indent: Indent]
    static hasMany = [shippingAdvicesDetails: ShippingAdviceDetail]

    static constraints = {
        invoiceNumber nullable: false ,blank:false
    }

    static mapping = {
        remarks column: "remarks", sqlType: "varchar(1000)"
    }
}

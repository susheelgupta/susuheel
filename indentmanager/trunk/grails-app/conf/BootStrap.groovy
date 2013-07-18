import com.snehinternational.indentmanager.*

class BootStrap {
    def init = { servletContext ->
        def userRole = Role.findByAuthority("ROLE_USER") ?: new Role(authority: 'ROLE_USER').save(flush: true)
        def user = User.findByUsername("kshitij")
        if (!user) {
            user = new User(username: 'kshitij', accountExpired: false, accountLocked: false,
                    enabled: true, password: 'kshitij@123', passwordExpired: false,).save(flush: true, failOnError: true)
            UserRole.create(user, userRole, true)
        }
        def adminRole = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def adminUser = User.findByUsername("admin")
        if (!adminUser) {
            adminUser = new User(username: 'admin', accountExpired: false, accountLocked: false,
                    enabled: true, password: 'siAdmin@4321', passwordExpired: false,).save(flush: true, failOnError: true)
            UserRole.create(adminUser, adminRole, true)
        }
        def commodity = Commodity.findByName("WASTE PAPER:SOFT MIXED PAPER") ?: new Commodity(name: "WASTE PAPER:SOFT MIXED PAPER").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:HARD MIXED PAPER") ?: new Commodity(name: "WASTE PAPER:HARD MIXED PAPER").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:BOX BOARD CUTTING") ?: new Commodity(name: "WASTE PAPER:BOX BOARD CUTTING").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:MILL WRAPPERS") ?: new Commodity(name: "WASTE PAPER:MILL WRAPPERS").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:OVER-ISSUE NEWS") ?: new Commodity(name: "WASTE PAPER:OVER-ISSUE NEWS").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:CORRUGATED CONTAINER") ?: new Commodity(name: "WASTE PAPER:CORRUGATED CONTAINER").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:NEW DOUBLE-LINKED KRAFT CORRUGATED CUTTING") ?: new Commodity(name: "WASTE PAPER:NEW DOUBLE-LINKED KRAFT CORRUGATED CUTTING").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:USED BROWN KRAFT") ?: new Commodity(name: "WASTE PAPER:USED BROWN KRAFT").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:MIXED KRAFT CUTTING") ?: new Commodity(name: "WASTE PAPER:MIXED KRAFT CUTTING").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:CARRIER STOCK") ?: new Commodity(name: "WASTE PAPER:CARRIER STOCK").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:NEW COLORED KRAFT") ?: new Commodity(name: "WASTE PAPER:NEW COLORED KRAFT").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:GROCERY BAG SCRAP") ?: new Commodity(name: "WASTE PAPER:GROCERY BAG SCRAP").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:KRAFT MULTI-WALL BAG SCRAP") ?: new Commodity(name: "WASTE PAPER:KRAFT MULTI-WALL BAG SCRAP").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:NEW BROWN KRAFT ENVELOPE CUTTING") ?: new Commodity(name: "WASTE PAPER:NEW BROWN KRAFT ENVELOPE CUTTING").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:NEW DOUBLE-LINKED KRAFT CORRUGATED CUTTING") ?: new Commodity(name: "WASTE PAPER:NEW DOUBLE-LINKED KRAFT CORRUGATED CUTTING").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:TELEPHONE DIRECTORIES") ?: new Commodity(name: "WASTE PAPER:TELEPHONE DIRECTORIES").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:COATED SOFT WHITE") ?: new Commodity(name: "WASTE PAPER:COATED SOFT WHITE").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:HARD WHITE SHAVING") ?: new Commodity(name: "WASTE PAPER:HARD WHITE SHAVING").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:HARD WHITE ENVELOPE CUTTING") ?: new Commodity(name: "WASTE PAPER:HARD WHITE ENVELOPE CUTTING").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:NEW COLORED ENVELOPE CUTTING") ?: new Commodity(name: "WASTE PAPER:NEW COLORED ENVELOPE CUTTING").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:UNSORTED OFFICE PAPER") ?: new Commodity(name: "WASTE PAPER:UNSORTED OFFICE PAPER").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:SORTED OFFICE PAPER") ?: new Commodity(name: "WASTE PAPER:SORTED OFFICE PAPER").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:MANIFOLD COLOR PAPER") ?: new Commodity(name: "WASTE PAPER:MANIFOLD COLOR PAPER").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:SORTED WHITE LEDGER") ?: new Commodity(name: "WASTE PAPER:SORTED WHITE LEDGER").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:MANIFOLD WHITE LEDGER") ?: new Commodity(name: "WASTE PAPER:MANIFOLD WHITE LEDGER").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:COATED BOOK STOCK") ?: new Commodity(name: "WASTE PAPER:COATED BOOK STOCK").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:PRINTED BLEACHED BOARD CUTTING") ?: new Commodity(name: "WASTE PAPER:PRINTED BLEACHED BOARD CUTTING").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:UNPRINTED BLEACHED BOARD") ?: new Commodity(name: "WASTE PAPER:UNPRINTED BLEACHED BOARD").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:BLEACHED CUP STOCK") ?: new Commodity(name: "WASTE PAPER:BLEACHED CUP STOCK").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("WASTE PAPER:PRINTED BLEACHED CUP STOCK") ?: new Commodity(name: "WASTE PAPER:PRINTED BLEACHED CUP STOCK").save(flush: true, failOnError: true)
        commodity = Commodity.findByName("STOCKLOT OF KRAFT PAPER(POLY COATED) IN MIXED SIZE AND GSM") ?: new Commodity(name: "STOCKLOT OF KRAFT PAPER(POLY COATED) IN MIXED SIZE AND GSM").save(flush: true, failOnError: true)

        def packing = Packing.findByName("IN BALES") ?: new Packing(name: "IN BALES").save(flush: true, failOnError: true)
        packing = Packing.findByName("IN ROLLS") ?: new Packing(name: "IN ROLLS").save(flush: true, failOnError: true)
        packing = Packing.findByName("IN LOOSE") ?: new Packing(name: "IN LOOSE").save(flush: true, failOnError: true)
        packing = Packing.findByName("IN SKIDS") ?: new Packing(name: "IN SKIDS").save(flush: true, failOnError: true)

        def paymentTerm = PaymentTerm.findByName("Documents Against Payment") ?: new PaymentTerm(name: "Documents Against Payment").save(flush: true, failOnError: true)
        paymentTerm = PaymentTerm.findByName("Letter of Credit") ?: new PaymentTerm(name: "Letter of Credit").save(flush: true, failOnError: true)

        def country = Country.findByName("USA") ?: new Country(name: "USA").save(flush: true, failOnError: true)
        country = Country.findByName("Europe") ?: new Country(name: "Europe").save(flush: true, failOnError: true)
        country = Country.findByName("Gulf") ?: new Country(name: "Gulf").save(flush: true, failOnError: true)

        def portOfShipment = PortOfShipment.findByName("Any USA Port") ?: new PortOfShipment(name: "Any USA Port").save(flush: true, failOnError: true)
        portOfShipment = PortOfShipment.findByName("Any Europe Port") ?: new PortOfShipment(name: "Any Europe Port").save(flush: true, failOnError: true)
        portOfShipment = PortOfShipment.findByName("Any Gulf Port") ?: new PortOfShipment(name: "Any Gulf Port").save(flush: true, failOnError: true)

        def shippingAdviceStatus = ShippingAdviceStatus.findByName("Pending") ?: new ShippingAdviceStatus(name: "Pending").save(flush: true, failOnError: true)
        shippingAdviceStatus = ShippingAdviceStatus.findByName("Cleared") ?: new ShippingAdviceStatus(name: "Cleared").save(flush: true, failOnError: true)

        def commissionStatus = CommissionStatus.findByName("Unpaid") ?: new CommissionStatus(name: "Unpaid").save(flush: true, failOnError: true)
        commissionStatus = CommissionStatus.findByName("Paid") ?: new CommissionStatus(name: "Paid").save(flush: true, failOnError: true)
    }
    def destroy = {
    }
}

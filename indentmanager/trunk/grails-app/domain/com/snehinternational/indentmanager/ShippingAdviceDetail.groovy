
package com.snehinternational.indentmanager

class ShippingAdviceDetail {
    String containerNo
    String units
    String netWeight
    String sealNo
    String grade

    static belongsTo = [shippingAdvice: ShippingAdvice]

    static constraints = {

    }
}

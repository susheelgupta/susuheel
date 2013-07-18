package com.snehinternational.indentmanager

class Supplier {

    String name
    String address
    String bankDetails
    String filingReference
    int nextIndentCount

    static constraints = {
        name blank: false
        address blank: false
        bankDetails blank: false
        filingReference blank: false
    }
}

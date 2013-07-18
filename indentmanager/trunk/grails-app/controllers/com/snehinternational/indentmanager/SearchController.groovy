package com.snehinternational.indentmanager

class SearchController {
    def searchIndex() {

    }

    def search() {
        def query = params.query
        def searchType = params.int('searchType')
        switch (searchType) {
            case 0:
                def indentInstanceList = Indent.findAllByIndentIdentifierIlike('%' + query + '%')
                render(view: "searchIndent", model: [indentInstanceList: indentInstanceList])
                break;
            case 1:
                def result = ShippingAdvice.findAllBySalesOrderNumberIlike('%' + query + '%')
                render(view: "searchShippingAdvice", model: [shippingAdviceInstanceList: result])
                break
            case 2:
                def result = ShippingAdvice.findAllByInvoiceNumberIlike('%' + query + '%')
                render(view: "searchShippingAdvice", model: [shippingAdviceInstanceList: result])
                break
            case 3:
                Float value = query as float
                def result = ShippingAdvice.findAllByQuantityLike(value)
                render(view: "searchShippingAdvice", model: [shippingAdviceInstanceList: result])
                break
        }
    }
}

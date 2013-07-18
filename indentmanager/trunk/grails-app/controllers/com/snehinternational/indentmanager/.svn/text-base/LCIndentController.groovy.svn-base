package com.snehinternational.indentmanager

import grails.converters.JSON
import org.codehaus.groovy.grails.commons.ApplicationHolder
import org.springframework.dao.DataIntegrityViolationException

class LCIndentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [LCIndentInstanceList: LCIndent.list(params), LCIndentInstanceTotal: LCIndent.count()]
    }

    def create() {
        def LCIndentInstance = new LCIndent()
        LCIndentInstance.price = "USD_ _  _CIF Nhava sheva/Mundra Including 180 days interest free credit.Final Destination ICD Loni Inland Haulage upto ICD Loni to buyer's A/c."
        LCIndentInstance.partialTranshipment = "Allowed"
        LCIndentInstance.remarks = "a)LC should be un-restricted from negotiation\n b)LC should be sent through SWIFT msg.\n Kindly note if you find any variation in quality of material ,ensure while unloading the container photographs are taken with container number and bales showing full view of material."
        LCIndentInstance.portOfDischarge = "Final destination ICD Loni"
        LCIndentInstance.validForIndent = "15 days from the date of indent"
        LCIndentInstance.validForShipment = "6-8 weeks"
        LCIndentInstance.validOfNegotiation = "21 days from the date of shipment"
//        LCIndentInstance.paymentTermExtra = "BY IRREVOCABLE LC ALLOWING 180 DAYS CREDIT FREE\n" + "USANCE FROM THE DATE OF SHIPMENT THROUGH"
        LCIndentInstance.quantity = "__*__ conts.300Mt."
        [LCIndentInstance: LCIndentInstance]
    }

    def getCurrentUser() {
        return User.get(springSecurityService.principal.id)
    }

    def save() {
        def LCIndentInstance = new LCIndent(params)
        LCIndentInstance.lastUpdatedAt = new Date()
        LCIndentInstance.lastUpdatedBy = getCurrentUser()
        LCIndentInstance.paymentTerm = PaymentTerm.get(2)
        LCIndentInstance.indentIdentifier = generateIndentIdentifier(params.supplier.id)
        if (!LCIndentInstance.save(flush: true)) {
            render(view: "create", model: [LCIndentInstance: LCIndentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'LCIndent.label', default: 'LCIndent'), LCIndentInstance.id])
        redirect(action: "show", id: LCIndentInstance.id)
    }

    def generateIndentIdentifier(supplierId) {
        def supplier = Supplier.get(supplierId)
        def filingReference = supplier.filingReference
        def nextIndentCount
        def indentList = Indent.findAllBySupplier(supplier)
        if (indentList.size() == 0) {
            nextIndentCount = supplier.nextIndentCount
        } else {
            nextIndentCount = Indent.findAllBySupplier(supplier).size() + supplier.nextIndentCount
        }
        def currentYear = Calendar.getInstance().get(Calendar.YEAR)
        return "SI" + "/" + filingReference + "/" + nextIndentCount + "/" + currentYear
    }

    def show() {
        def LCIndentInstance = LCIndent.get(params.id)
        if (!LCIndentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'LCIndent.label', default: 'LCIndent'), params.id])
            redirect(action: "list")
            return
        }

        [LCIndentInstance: LCIndentInstance]
    }

    def edit() {
        def LCIndentInstance = LCIndent.get(params.id)
        if (!LCIndentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'LCIndent.label', default: 'LCIndent'), params.id])
            redirect(action: "list")
            return
        }

        [LCIndentInstance: LCIndentInstance, isUpdate: true]
    }

    def update() {
        def LCIndentInstance = LCIndent.get(params.id)
        LCIndentInstance.lastUpdatedAt = new Date()
        LCIndentInstance.lastUpdatedBy = getCurrentUser()
        if (!LCIndentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'LCIndent.label', default: 'LCIndent'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (LCIndentInstance.version > version) {
                LCIndentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'LCIndent.label', default: 'LCIndent')] as Object[],
                        "Another user has updated this LCIndent while you were editing")
                render(view: "edit", model: [LCIndentInstance: LCIndentInstance])
                return
            }
        }

        LCIndentInstance.properties = params

        if (!LCIndentInstance.save(flush: true)) {
            render(view: "edit", model: [LCIndentInstance: LCIndentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'LCIndent.label', default: 'LCIndent'), LCIndentInstance.id])
        redirect(action: "show", id: LCIndentInstance.id)
    }

    def delete() {
        def LCIndentInstance = LCIndent.get(params.id)
        if (!LCIndentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'LCIndent.label', default: 'LCIndent'), params.id])
            redirect(action: "list")
            return
        }

        try {
            LCIndentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'LCIndent.label', default: 'LCIndent'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'LCIndent.label', default: 'LCIndent'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def pdf() {
        def LCIndentInstance = LCIndent.get(params.id)
        def footer = new File(ApplicationHolder.application.parentContext.servletContext.getRealPath("/images/sneh_footer.JPG"))
        def header = new File(ApplicationHolder.application.parentContext.servletContext.getRealPath("/images/sneh_header.JPG"))
        def filename = LCIndentInstance.indentIdentifier + '.pdf'
        renderPdf(template: "/pdfs/lcPdf", model: ['LCIndentInstance': LCIndentInstance, headerBytes: header.bytes, footerBytes: footer.bytes], filename: filename)
    }

    def getSupplierData() {
        if (params.supplierId.equals('')) {
            def result = ['indentIdentifier': 'Please select the supplier.', 'bankDetails': '', 'beneficiary': '']
            render result as JSON;
        } else {
            def supplier = Supplier.get(params.supplierId)
            def bankDetails = supplier.bankDetails
            def beneficiary = supplier.address
            def supplierName = supplier.name
            def result = ['indentIdentifier': generateIndentIdentifier(params.supplierId), 'bankDetails': bankDetails, 'beneficiary': beneficiary, 'supplierName': supplierName]
            render result as JSON;
        }
    }
}

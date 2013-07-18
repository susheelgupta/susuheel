package com.snehinternational.indentmanager

import grails.converters.JSON
import org.codehaus.groovy.grails.commons.ApplicationHolder
import org.springframework.dao.DataIntegrityViolationException

class DPIndentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def springSecurityService

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [DPIndentInstanceList: DPIndent.list(params), DPIndentInstanceTotal: DPIndent.count()]
    }

    def create() {
        def DPIndentInstance = new DPIndent()
        DPIndentInstance.price = "USD_ _ _ _CIF Nhava Sheva port.Final Destination ICD Kanpur.InLand Haulage from Nhava sheva to ICD Kanpur to buyers A/c."
        DPIndentInstance.portOfDischarge = "Final Destination_ _ _"
        DPIndentInstance.partialTranshipment = "Allowed"
        DPIndentInstance.remarks = "Kindly note if you find any variation in quality of material ,ensure while unloading the container photographs are taken with container number and bales showing full view of material."
        [DPIndentInstance: DPIndentInstance]
    }

    def getCurrentUser() {
        return User.get(springSecurityService.principal.id)
    }

    def save() {
        def DPIndentInstance = new DPIndent(params)
        DPIndentInstance.lastUpdatedAt = new Date()
        DPIndentInstance.lastUpdatedBy = getCurrentUser()
        DPIndentInstance.paymentTerm = PaymentTerm.get(1)
        DPIndentInstance.indentIdentifier = generateIndentIdentifier(params.supplier.id)
        if (!DPIndentInstance.save(flush: true)) {
            render(view: "create", model: [DPIndentInstance: DPIndentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'DPIndent.label', default: 'DPIndent'), DPIndentInstance.id])
        redirect(action: "show", id: DPIndentInstance.id)
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

    def getCurrentIndentIdentifier() {
        if (params.supplierId.equals('')) {
            def result = ['indentIdentifier': 'Please select a Supplier']
            render result as JSON;
            return;
        }
        def result = ['indentIdentifier': generateIndentIdentifier(params.supplierId)]
        render result as JSON;
    }

    def show() {
        def DPIndentInstance = DPIndent.get(params.id)
        if (!DPIndentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'DPIndent.label', default: 'DPIndent'), params.id])
            redirect(action: "list")
            return
        }

        [DPIndentInstance: DPIndentInstance]
    }

    def edit() {
        def DPIndentInstance = DPIndent.get(params.id)
        if (!DPIndentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'DPIndent.label', default: 'DPIndent'), params.id])
            redirect(action: "list")
            return
        }

        [DPIndentInstance: DPIndentInstance, isUpdate: true]
    }

    def update() {
        def DPIndentInstance = DPIndent.get(params.id)
        DPIndentInstance.lastUpdatedAt = new Date()
        DPIndentInstance.lastUpdatedBy = getCurrentUser()
        if (!DPIndentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'DPIndent.label', default: 'DPIndent'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (DPIndentInstance.version > version) {
                DPIndentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'DPIndent.label', default: 'DPIndent')] as Object[],
                        "Another user has updated this DPIndent while you were editing")
                render(view: "edit", model: [DPIndentInstance: DPIndentInstance])
                return
            }
        }

        DPIndentInstance.properties = params

        if (!DPIndentInstance.save(flush: true)) {
            render(view: "edit", model: [DPIndentInstance: DPIndentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'DPIndent.label', default: 'DPIndent'), DPIndentInstance.id])
        redirect(action: "show", id: DPIndentInstance.id)
    }

    def delete() {
        def DPIndentInstance = DPIndent.get(params.id)
        if (!DPIndentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'DPIndent.label', default: 'DPIndent'), params.id])
            redirect(action: "list")
            return
        }

        try {
            DPIndentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'DPIndent.label', default: 'DPIndent'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'DPIndent.label', default: 'DPIndent'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def pdf() {
        def DPIndentInstance = DPIndent.get(params.id)
        def header = new File(ApplicationHolder.application.parentContext.servletContext.getRealPath("/images/sneh_header.JPG"))
        def footer = new File(ApplicationHolder.application.parentContext.servletContext.getRealPath("/images/sneh_footer.JPG"))

        def filename = DPIndentInstance.indentIdentifier + '.pdf'
        renderPdf(template: "/pdfs/dpPdf", model: ['DPIndentInstance': DPIndentInstance, headerBytes: header.bytes, footerBytes: footer.bytes], filename: filename)
    }

    def getBankDetails() {
        if (params.buyerId.equals('')) {
            def result = ['bankDetails': 'Please select a Buyer.']
            render result as JSON
        } else {
            def buyer = Buyer.get(params.buyerId)
            String bankDetails = buyer.bankDetails
            def result = ['bankDetails': "Documents to be negotiated on terms DP (Documents against payment through)\n" + bankDetails]
            render result as JSON
        }

    }
}

package com.snehinternational.indentmanager

import grails.orm.PagedResultList
import org.springframework.dao.DataIntegrityViolationException

class IndentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService
    def exportService
    def grailsApplication

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        if (params?.format && params.format != "html") {
            response.contentType = grailsApplication.config.grails.mime.types[params.format]
            response.setHeader("Content-disposition", "attachment; filename=IndentList.${params.extension}")
            List fields = ["indentIdentifier", "buyer.name", "supplier.name", "commodity.name", "quantity", "price", "commission", "indentStatus","totalCommission"]
            Map labels = ["indentIdentifier": "Indent Identifier", "buyer.name": "Buyer", "supplier.name": "Supplier", "commodity.name": "Commodity",
                    "quantity": "Quantity", "price": "Price", "commission": "Commission", "totalCommission": "Indent Status"]
            exportService.export(params.format, response.outputStream, Indent.list(), fields, labels, [:], [:])
        } else {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            [indentInstanceList: Indent.list(params), indentInstanceTotal: Indent.count()]
        }
    }

    def create() {
        [indentInstance: new Indent(params)]
    }

    def getCurrentUser() {
        return User.get(springSecurityService.principal.id)
    }

    def save() {
        def indentInstance = new Indent(params)
        indentInstance.createdDate = new Date()
        indentInstance.lastUpdatedAt = new Date()
        indentInstance.lastUpdatedBy = getCurrentUser()
        indentInstance.indentIdentifier = "susheel"

        if (!indentInstance.save(flush: true)) {
            render(view: "create", model: [indentInstance: indentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'indent.label', default: 'Indent'), indentInstance.id])
        redirect(action: "show", id: indentInstance.id)
    }

    def show() {
        def indentInstance = Indent.get(params.id)
        if (!indentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'indent.label', default: 'Indent'), params.id])
            redirect(action: "list")
            return
        }

        [indentInstance: indentInstance]
    }

    def edit() {
        def indentInstance = Indent.get(params.id)
        if (!indentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'indent.label', default: 'Indent'), params.id])
            redirect(action: "list")
            return
        }

        [indentInstance: indentInstance]
    }

    def update() {
        def indentInstance = Indent.get(params.id)
        indentInstance.lastUpdatedAt = new Date()
        indentInstance.lastUpdatedBy = getCurrentUser()
        if (!indentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'indent.label', default: 'Indent'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (indentInstance.version > version) {
                indentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'indent.label', default: 'Indent')] as Object[],
                        "Another user has updated this Indent while you were editing")
                render(view: "edit", model: [indentInstance: indentInstance])
                return
            }
        }

        indentInstance.properties = params

        if (!indentInstance.save(flush: true)) {
            render(view: "edit", model: [indentInstance: indentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'indent.label', default: 'Indent'), indentInstance.id])
        redirect(action: "show", id: indentInstance.id)
    }

    def delete() {
        def indentInstance = Indent.get(params.id)
        if (!indentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'indent.label', default: 'Indent'), params.id])
            redirect(action: "list")
            return
        }

        try {
            indentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'indent.label', default: 'Indent'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'indent.label', default: 'Indent'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def supplierWiseList() {
        try {
            def supplier = params.supplierId ? Supplier.get(params.supplierId) : Supplier.list().iterator().next()
            if (params?.format && params.format != "html") {
                response.contentType = grailsApplication.config.grails.mime.types[params.format]
                response.setHeader("Content-disposition", "attachment; filename=SupplierWiseList.${params.extension}")
                List fields = ["indentIdentifier", "commodityName", "quantity", "specialInstruction", "remarks"]
                Map labels = ["indentIdentifier": "Indent no.", "commodityName": "Commodity", "quantity": "Quantity", "specialInstruction": "Special Instruction", "remarks": "Remarks"]
                def indentList = Indent.findAllBySupplier(supplier)
                def indentWithRemarksList = []
                indentList.each {
                    if (it?.shippingAdvices?.size() != 0) {
                        def shippingAdvices = it.shippingAdvices
                        shippingAdvices.each {
                            def indentWithRemarks = new IndentWithRemarks()
                            indentWithRemarks.indentIdentifier = it.indent.indentIdentifier
                            indentWithRemarks.commodityName = it.indent.commodity.name
                            indentWithRemarks.quantity = it.indent.quantity
                            indentWithRemarks.specialInstruction = it.indent.specialInstruction
                            indentWithRemarks.remarks = it.remarks
                            indentWithRemarksList.add(indentWithRemarks)
                        }

                    } else {
                        def indentWithRemarks = new IndentWithRemarks()
                        indentWithRemarks.indentIdentifier = it.indentIdentifier
                        indentWithRemarks.commodityName = it.commodity.name
                        indentWithRemarks.quantity = it.quantity
                        indentWithRemarks.specialInstruction = it.specialInstruction
                        indentWithRemarksList.add(indentWithRemarks)
                    }
                }
                exportService.export(params.format, response.outputStream, indentWithRemarksList, fields, labels, [:], [:])
            } else {
                params.max = Math.min(params.max ? params.int('max') : 10, 100)
                def indentCriteria = Indent.createCriteria()
                PagedResultList indentList = indentCriteria.list(params) {
                    and {
                        eq("supplier", supplier)
                    }
                }
                render(view: "supplierWiseList", model: [indentInstanceList: indentList, indentInstanceTotal: indentList.totalCount, supplierId: params.supplierId])
            }
        } catch (Exception e) {
            render(view: "supplierWiseList", model: [indentInstanceList: [], indentInstanceTotal: 0, supplierId: params.supplierId])
        }
    }

    def buyerWiseList() {
        try {
            def buyer = params.buyerId ? Buyer.get(params.buyerId) : Buyer.list().iterator().next()
            if (params?.format && params.format != "html") {
                response.contentType = grailsApplication.config.grails.mime.types[params.format]
                response.setHeader("Content-disposition", "attachment; filename=BuyerWiseList.${params.extension}")
                List fields = ["indentIdentifier", "commodityName", "quantity", "specialInstruction", "remarks"]
                Map labels = ["indentIdentifier": "Indent no.", "commodityName": "Commodity", "quantity": "Quantity", "specialInstruction": "Special Instruction", "remarks": "Remarks"]
                def indentList = Indent.findAllByBuyer(buyer)
                def indentWithRemarksList = []
                indentList.each {
                    if (it?.shippingAdvices?.size() != 0) {
                        def shippingAdvices = it.shippingAdvices
                        shippingAdvices.each {
                            def indentWithRemarks = new IndentWithRemarks()
                            indentWithRemarks.indentIdentifier = it.indent.indentIdentifier
                            indentWithRemarks.commodityName = it.indent.commodity.name
                            indentWithRemarks.quantity = it.indent.quantity
                            indentWithRemarks.specialInstruction = it.indent.specialInstruction
                            indentWithRemarks.remarks = it.remarks
                            indentWithRemarksList.add(indentWithRemarks)
                        }

                    } else {
                        def indentWithRemarks = new IndentWithRemarks()
                        indentWithRemarks.indentIdentifier = it.indentIdentifier
                        indentWithRemarks.commodityName = it.commodity.name
                        indentWithRemarks.quantity = it.quantity
                        indentWithRemarks.specialInstruction = it.specialInstruction
                        indentWithRemarksList.add(indentWithRemarks)
                    }
                }
                exportService.export(params.format, response.outputStream, indentWithRemarksList, fields, labels, [:], [:])
            } else {
                params.max = Math.min(params.max ? params.int('max') : 10, 100)
                def indentCriteria = Indent.createCriteria()
                PagedResultList indentList = indentCriteria.list(params) {
                    and {
                        eq("buyer", buyer)
                    }
                }
                render(view: "buyerWiseList", model: [indentInstanceList: indentList, indentInstanceTotal: indentList.totalCount, 'buyerId': params.buyerId])
            }
        } catch (Exception e) {
            render(view: "buyerWiseList", model: [indentInstanceList: [], indentInstanceTotal: 0, 'buyerId': params.buyerId])
        }
    }

    def commissionStatusWiseList() {
        try {
            def commissionStatus = params.commissionStatusId ? CommissionStatus.get(params.commissionStatusId) : CommissionStatus.list().iterator().next()
            if (params?.format && params.format != "html") {
                response.contentType = grailsApplication.config.grails.mime.types[params.format]
                response.setHeader("Content-disposition", "attachment; filename=CommissionStatusWiseList.${params.extension}")
                List fields = ["indentIdentifier", "buyer.name", "supplier.name", "commodity.name", "quantity", "price", "commission", "indentStatus"]
                Map labels = ["indentIdentifier": "Indent Identifier", "buyer.name": "Buyer", "supplier.name": "Supplier", "commodity.name": "Commodity",
                        "quantity": "Quantity", "price": "Price", "commission": "Commission", "indentStatus": "Indent Status"]
                def indentList = Indent.findAllByCommissionStatus(commissionStatus)
                exportService.export(params.format, response.outputStream, indentList, fields, labels, [:], [:])
            } else {
                params.max = Math.min(params.max ? params.int('max') : 10, 100)
                def indentCriteria = Indent.createCriteria()
                PagedResultList indentList = indentCriteria.list(params) {
                    and {
                        eq("commissionStatus", commissionStatus)
                    }
                }
                render(view: "commissionStatusWiseList", model: [indentInstanceList: indentList, indentInstanceTotal: indentList.totalCount, 'commissionStatusId': params.commissionStatusId])
            }
        } catch (Exception e) {
            render(view: "commissionStatusWiseList", model: [indentInstanceList: [], indentInstanceTotal: 0, 'commissionStatusId': params.commissionStatusId])
        }
    }

    class IndentWithRemarks {
        String indentIdentifier
        String commodityName
        String quantity
        String specialInstruction
        String remarks
    }
}

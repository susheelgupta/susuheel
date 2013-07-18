package com.snehinternational.indentmanager

import grails.orm.PagedResultList
import java.text.SimpleDateFormat
import org.springframework.dao.DataIntegrityViolationException

class ShippingAdviceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService
    def exportService
    def grailsApplication

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [shippingAdviceInstanceList: ShippingAdvice.list(params), shippingAdviceInstanceTotal: ShippingAdvice.count()]
    }

    def create() {
        def shippingAdviceInstance = new ShippingAdvice(params)
        def indent = Indent.get(params.indent.id)
        [shippingAdviceInstance: shippingAdviceInstance]
    }

    def getCurrentUser() {
        return User.get(springSecurityService.principal.id)
    }

    def save() {
        def shippingAdviceInstance = new ShippingAdvice(params)
        shippingAdviceInstance.createdDate = new Date()
        shippingAdviceInstance.lastUpdatedAt = new Date()
        shippingAdviceInstance.lastUpdatedBy = getCurrentUser()
        if (!shippingAdviceInstance.save(flush: true)) {
            render(view: "create", model: [shippingAdviceInstance: shippingAdviceInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice'), shippingAdviceInstance.id])
        redirect(action: "show", id: shippingAdviceInstance.id)
    }

    def show() {
        def shippingAdviceInstance = ShippingAdvice.get(params.id)
        if (!shippingAdviceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice'), params.id])
            redirect(action: "list")
            return
        }

        [shippingAdviceInstance: shippingAdviceInstance]
    }

    def edit() {
        def shippingAdviceInstance = ShippingAdvice.get(params.id)
        if (!shippingAdviceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice'), params.id])
            redirect(action: "list")
            return
        }

        [shippingAdviceInstance: shippingAdviceInstance, isUpdate: true]
    }

    def update() {
        def shippingAdviceInstance = ShippingAdvice.get(params.id)
        shippingAdviceInstance.lastUpdatedAt = new Date()
        shippingAdviceInstance.lastUpdatedBy = getCurrentUser()
        if (!shippingAdviceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (shippingAdviceInstance.version > version) {
                shippingAdviceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'shippingAdvice.label', default: 'ShippingAdvice')] as Object[],
                        "Another user has updated this ShippingAdvice while you were editing")
                render(view: "edit", model: [shippingAdviceInstance: shippingAdviceInstance])
                return
            }
        }

        shippingAdviceInstance.properties = params

        if (!shippingAdviceInstance.save(flush: true)) {
            render(view: "edit", model: [shippingAdviceInstance: shippingAdviceInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice'), shippingAdviceInstance.id])
        redirect(action: "show", id: shippingAdviceInstance.id)
    }

    def delete() {
        def shippingAdviceInstance = ShippingAdvice.get(params.id)
        if (!shippingAdviceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice'), params.id])
            redirect(action: "list")
            return
        }

        try {
            shippingAdviceInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def buyerWiseList() {
        try {
            def buyer = !params.buyerId.equals(null) && !params.buyerId.equals('') ? Buyer.get(params.buyerId) : Buyer.list().iterator().next()
            def shippingAdviceStatus = !params.shippingAdviceStatusId.equals(null) && !params.shippingAdviceStatusId.equals('') ? ShippingAdviceStatus.get(params.shippingAdviceStatusId) : null
            def indentList = Indent.findAllByBuyer(buyer)
            def shippingAdviceCriteria = ShippingAdvice.createCriteria()
            if (params?.format && params.format != "html") {
                response.contentType = grailsApplication.config.grails.mime.types[params.format]
                response.setHeader("Content-disposition", "attachment; filename=BuyerWiseList.${params.extension}")
                List fields = ["indent", "indent.grade", "quantity", "currentLocation", "finalDestination", "invoiceNumber", "bLNumber", "shippingLine", "noOfContainers", "shippingAdviceStatus.name", "estimatedTimeOfDeparture", "estimatedTimeOfArrival"]
                Map labels = ["indent": "Indent Identifier", "indent.grade": "Grade", "quantity": "Quantity", "currentLocation": "Current Location", "finalDestination": "Final Destination", "invoiceNumber": "Invoice Number", "bLNumber": "BL Number", "shippingLine": "Shipping Line", "noOfContainers": "No Of Containers", "shippingAdviceStatus.name": "Status", "estimatedTimeOfDeparture": "ETD", "estimatedTimeOfArrival": "ETA"]

                def dateFormat = { domain, value ->
                    return new SimpleDateFormat("yyyy-MM-dd").format(value)
                }
                def indentFormat = { domain, value ->
                    if (value.instanceOf(LCIndent)) {
                        return value.indentIdentifier + "(LC)"
                    } else {
                        return value.indentIdentifier + "(DP)"
                    }

                }
                Map formatters = [estimatedTimeOfDeparture: dateFormat, estimatedTimeOfArrival: dateFormat, indent: indentFormat]

                def shippingAdviceList = []
                if (indentList?.size() != 0) {
                    shippingAdviceList = shippingAdviceCriteria.list {
                        and {
                            'in'("indent", indentList)
                            if (shippingAdviceStatus) {
                                eq("shippingAdviceStatus", shippingAdviceStatus)
                            }
                        }
                    }
                }
                exportService.export(params.format, response.outputStream, shippingAdviceList, fields, labels, formatters, [:])
            } else {
                params.max = Math.min(params.max ? params.int('max') : 10, 100)
                def shippingAdviceList = []
                if (indentList?.size() != 0) {
                    shippingAdviceList = shippingAdviceCriteria.list(params) {
                        and {
                            'in'("indent", indentList)
                            if (shippingAdviceStatus) {
                                eq("shippingAdviceStatus", shippingAdviceStatus)
                            }
                        }
                    }
                }
                render(view: "buyerWiseList", model: [shippingAdviceInstanceList: shippingAdviceList, shippingAdviceInstanceTotal: shippingAdviceList.totalCount,
                        buyerId: params.buyerId, shippingAdviceStatusId: params.shippingAdviceStatusId])
            }
        } catch (e) {
            e.printStackTrace()
            render(view: "buyerWiseList", model: [shippingAdviceInstanceList: [], shippingAdviceInstanceTotal: 0, buyerId: params.buyerId, shippingAdviceStatusId: params.shippingAdviceStatusId])
        }
    }

    def supplierWiseList() {
        try {
            def supplier = !params.supplierId.equals(null) && !params.supplierId.equals('') ? Supplier.get(params.supplierId) : Supplier.list().iterator().next()
            def shippingAdviceStatus = !params.shippingAdviceStatusId.equals(null) && !params.shippingAdviceStatusId.equals('') ? ShippingAdviceStatus.get(params.shippingAdviceStatusId) : null
            def indentList = Indent.findAllBySupplier(supplier)
            def shippingAdviceCriteria = ShippingAdvice.createCriteria()
            if (params?.format && params.format != "html") {
                response.contentType = grailsApplication.config.grails.mime.types[params.format]
                response.setHeader("Content-disposition", "attachment; filename=SupplierWiseList.${params.extension}")
                List fields = ["indent", "indent.grade", "quantity", "currentLocation", "finalDestination", "invoiceNumber", "bLNumber", "indent.buyer.name", "shippingLine", "noOfContainers", "shippingAdviceStatus.name", "estimatedTimeOfDeparture", "estimatedTimeOfArrival"]
                Map labels = ["indent": "Indent Identifier", "indent.grade": "Grade", "quantity": "Quantity", "currentLocation": "Current Location", "finalDestination": "Final Destination", "invoiceNumber": "Invoice Number", "bLNumber": "BL Number", "indent.buyer.name": "Buyer",
                        "shippingLine": "Shipping Line", "noOfContainers": "No Of Containers", "shippingAdviceStatus.name": "Status", "estimatedTimeOfDeparture": "ETD", "estimatedTimeOfArrival": "ETA"]

                def dateFormat = { domain, value ->
                    return new SimpleDateFormat("yyyy-MM-dd").format(value)
                }

                def indentFormat = { domain, value ->
                    if (value.instanceOf(LCIndent)) {
                        return value.indentIdentifier + "(LC)"
                    } else {
                        return value.indentIdentifier + "(DP)"
                    }

                }
                Map formatters = [estimatedTimeOfDeparture: dateFormat, estimatedTimeOfArrival: dateFormat, indent: indentFormat]

                def shippingAdviceList = []
                if (indentList?.size() != 0) {
                    shippingAdviceList = shippingAdviceCriteria.list {
                        and {
                            'in'("indent", indentList)
                            if (shippingAdviceStatus) {
                                eq("shippingAdviceStatus", shippingAdviceStatus)
                            }
                        }
                    }
                }
                exportService.export(params.format, response.outputStream, shippingAdviceList, fields, labels, formatters, [:])
            } else {
                params.max = Math.min(params.max ? params.int('max') : 10, 100)
                def shippingAdviceList = []
                if (indentList?.size() != 0) {
                    shippingAdviceList = shippingAdviceCriteria.list(params) {
                        and {
                            'in'("indent", indentList)
                            if (shippingAdviceStatus) {
                                eq("shippingAdviceStatus", shippingAdviceStatus)
                            }
                        }
                    }
                }
                render(view: "supplierWiseList", model: [shippingAdviceInstanceList: shippingAdviceList, shippingAdviceInstanceTotal: shippingAdviceList.totalCount,
                        supplierId: params.supplierId, shippingAdviceStatusId: params.shippingAdviceStatusId])
            }
        } catch (e) {
            render(view: "supplierWiseList", model: [shippingAdviceInstanceList: [], shippingAdviceInstanceTotal: 0, supplierId: params.supplierId, shippingAdviceStatusId: params.shippingAdviceStatusId])
        }
    }

    def statusWiseList() {
        def shippingAdviceStatus = !params.shippingAdviceStatusId.equals('') ? ShippingAdviceStatus.get(params.shippingAdviceStatusId) : null
        def shippingAdviceCriteria = ShippingAdvice.createCriteria()
        if (params?.format && params.format != "html") {
            response.contentType = grailsApplication.config.grails.mime.types[params.format]
            response.setHeader("Content-disposition", "attachment; filename=StatusWiseList.${params.extension}")
            List fields = ["indent", "indent.grade", "quantity", "currentLocation", "finalDestination", "invoiceNumber", "bLNumber", "indent.buyer.name", "shippingLine", "noOfContainers", "shippingAdviceStatus.name", "estimatedTimeOfDeparture", "estimatedTimeOfArrival"]
            Map labels = ["indent": "Indent Identifier", "indent.grade": "Grade", "quantity": "Quantity", "currentLocation": "Current Location", "finalDestination": "Final Destination", "invoiceNumber": "Invoice Number", "bLNumber": "BL Number", "indent.buyer.name": "Buyer",
                    "shippingLine": "Shipping Line", "noOfContainers": "No Of Containers", "shippingAdviceStatus.name": "Status", "estimatedTimeOfDeparture": "ETD", "estimatedTimeOfArrival": "ETA"]

            def dateFormat = { domain, value ->
                return new SimpleDateFormat("yyyy-MM-dd").format(value)
            }
            def indentFormat = { domain, value ->
                if (value.instanceOf(LCIndent)) {
                    return value.indentIdentifier + "(LC)"
                } else {
                    return value.indentIdentifier + "(DP)"
                }

            }
            Map formatters = [estimatedTimeOfDeparture: dateFormat, estimatedTimeOfArrival: dateFormat, indent: indentFormat]


            def shippingAdviceList = shippingAdviceCriteria.list {
                and {
                    if (shippingAdviceStatus) {
                        eq("shippingAdviceStatus", shippingAdviceStatus)
                    }
                }
            }
            exportService.export(params.format, response.outputStream, shippingAdviceList, fields, labels, formatters, [:])
        } else {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            PagedResultList shippingAdviceList = shippingAdviceCriteria.list(params) {
                and {
                    if (shippingAdviceStatus) {
                        eq("shippingAdviceStatus", shippingAdviceStatus)
                    }
                }
            }
            render(view: "statusWiseList", model: [shippingAdviceInstanceList: shippingAdviceList, shippingAdviceInstanceTotal: shippingAdviceList.totalCount,
                    shippingAdviceStatusId: params.shippingAdviceStatusId])
        }
    }

    def commissionStatusWiseList() {
        try {
            def supplier = !params.supplierId.equals(null) && !params.supplierId.equals('') ? Supplier.get(params.supplierId) : Supplier.list().iterator().next()
            def commissionStatus = !params.commissionStatusId.equals(null) && !params.commissionStatusId.equals('') ? CommissionStatus.get(params.commissionStatusId) : null
            def indentList = Indent.findAllBySupplier(supplier)
            def shippingAdviceCriteria = ShippingAdvice.createCriteria()
            if (params?.format && params.format != "html") {
                response.contentType = grailsApplication.config.grails.mime.types[params.format]
                response.setHeader("Content-disposition", "attachment; filename=CommissionWiseList.${params.extension}")
                List fields = ["indent", "invoiceNumber", "quantity", "indent.buyer.name", "commission", "specialCommission", "shippingAdviceStatus.name", "commissionStatus.name"]
                Map labels = ["indent": "Indent Identifier", "invoiceNumber": "Invoice Number", "quantity": "Quantity", "indent.buyer.name": "Buyer", "commission": "Commission",
                        "specialCommission": "Special Commission", "shippingAdviceStatus.name": "Shipping Advice Status", "commissionStatus.name": "Commission Status"]

                def commissionFormat = {domain, value ->
                    def commission = domain?.shippingAdviceStatus?.name.equalsIgnoreCase("Pending") ? "" : domain?.indent?.commission
                    return commission;
                }
                def specialCommissionFormat = {domain, value ->
                    def specialCommission = domain?.shippingAdviceStatus?.name.equalsIgnoreCase("Pending") ? "" : domain?.indent?.specialCommission
                    return specialCommission;
                }

                def indentFormat = { domain, value ->
                    if (value.instanceOf(LCIndent)) {
                        return value.indentIdentifier + "(LC)"
                    } else {
                        return value.indentIdentifier + "(DP)"
                    }

                }
                Map formatters = [indent: indentFormat, commission: commissionFormat, specialCommission: specialCommissionFormat]

                def shippingAdviceList = []
                if (indentList?.size() != 0) {
                    shippingAdviceList = shippingAdviceCriteria.list {
                        and {
                            eq("shippingAdviceStatus", ShippingAdviceStatus.findByName('Cleared'))
                            'in'("indent", indentList)
                            if (commissionStatus) {
                                eq("commissionStatus", commissionStatus)
                            }
                        }
                    }
                }
                exportService.export(params.format, response.outputStream, shippingAdviceList, fields, labels, formatters, [:])
            } else {
                params.max = Math.min(params.max ? params.int('max') : 10, 100)
                def shippingAdviceList = []
                if (indentList?.size() != 0) {
                    shippingAdviceList = shippingAdviceCriteria.list(params) {
                        and {
                            eq("shippingAdviceStatus", ShippingAdviceStatus.findByName('Cleared'))
                            'in'("indent", indentList)
                            if (commissionStatus) {
                                eq("commissionStatus", commissionStatus)
                            }
                        }
                    }
                }
                render(view: "commissionStatusWiseList", model: [shippingAdviceInstanceList: shippingAdviceList, shippingAdviceInstanceTotal: shippingAdviceList.totalCount,
                        supplierId: params.supplierId, commissionStatusId: params.commissionStatusId])
            }
        } catch (e) {
            render(view: "commissionStatusWiseList", model: [shippingAdviceInstanceList: [], shippingAdviceInstanceTotal: 0, supplierId: params.supplierId, commissionStatusId: params.commissionStatusId])
        }
    }
}

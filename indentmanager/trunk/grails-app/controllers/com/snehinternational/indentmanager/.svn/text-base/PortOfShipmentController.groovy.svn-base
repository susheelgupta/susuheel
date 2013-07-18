package com.snehinternational.indentmanager

import org.springframework.dao.DataIntegrityViolationException

class PortOfShipmentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [portOfShipmentInstanceList: PortOfShipment.list(params), portOfShipmentInstanceTotal: PortOfShipment.count()]
    }

    def create() {
        [portOfShipmentInstance: new PortOfShipment(params)]
    }

    def save() {
        def portOfShipmentInstance = new PortOfShipment(params)
        if (!portOfShipmentInstance.save(flush: true)) {
            render(view: "create", model: [portOfShipmentInstance: portOfShipmentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'portOfShipment.label', default: 'PortOfShipment'), portOfShipmentInstance.id])
        redirect(action: "show", id: portOfShipmentInstance.id)
    }

    def show() {
        def portOfShipmentInstance = PortOfShipment.get(params.id)
        if (!portOfShipmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'portOfShipment.label', default: 'PortOfShipment'), params.id])
            redirect(action: "list")
            return
        }

        [portOfShipmentInstance: portOfShipmentInstance]
    }

    def edit() {
        def portOfShipmentInstance = PortOfShipment.get(params.id)
        if (!portOfShipmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'portOfShipment.label', default: 'PortOfShipment'), params.id])
            redirect(action: "list")
            return
        }

        [portOfShipmentInstance: portOfShipmentInstance]
    }

    def update() {
        def portOfShipmentInstance = PortOfShipment.get(params.id)
        if (!portOfShipmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'portOfShipment.label', default: 'PortOfShipment'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (portOfShipmentInstance.version > version) {
                portOfShipmentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'portOfShipment.label', default: 'PortOfShipment')] as Object[],
                        "Another user has updated this PortOfShipment while you were editing")
                render(view: "edit", model: [portOfShipmentInstance: portOfShipmentInstance])
                return
            }
        }

        portOfShipmentInstance.properties = params

        if (!portOfShipmentInstance.save(flush: true)) {
            render(view: "edit", model: [portOfShipmentInstance: portOfShipmentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'portOfShipment.label', default: 'PortOfShipment'), portOfShipmentInstance.id])
        redirect(action: "show", id: portOfShipmentInstance.id)
    }

    def delete() {
        def portOfShipmentInstance = PortOfShipment.get(params.id)
        if (!portOfShipmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'portOfShipment.label', default: 'PortOfShipment'), params.id])
            redirect(action: "list")
            return
        }

        try {
            portOfShipmentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'portOfShipment.label', default: 'PortOfShipment'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'portOfShipment.label', default: 'PortOfShipment'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

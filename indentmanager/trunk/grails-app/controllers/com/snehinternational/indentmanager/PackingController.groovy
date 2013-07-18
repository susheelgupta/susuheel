package com.snehinternational.indentmanager

import org.springframework.dao.DataIntegrityViolationException

class PackingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [packingInstanceList: Packing.list(params), packingInstanceTotal: Packing.count()]
    }

    def create() {
        [packingInstance: new Packing(params)]
    }

    def save() {
        def packingInstance = new Packing(params)
        if (!packingInstance.save(flush: true)) {
            render(view: "create", model: [packingInstance: packingInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'packing.label', default: 'Packing'), packingInstance.id])
        redirect(action: "show", id: packingInstance.id)
    }

    def show() {
        def packingInstance = Packing.get(params.id)
        if (!packingInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'packing.label', default: 'Packing'), params.id])
            redirect(action: "list")
            return
        }

        [packingInstance: packingInstance]
    }

    def edit() {
        def packingInstance = Packing.get(params.id)
        if (!packingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'packing.label', default: 'Packing'), params.id])
            redirect(action: "list")
            return
        }

        [packingInstance: packingInstance]
    }

    def update() {
        def packingInstance = Packing.get(params.id)
        if (!packingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'packing.label', default: 'Packing'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (packingInstance.version > version) {
                packingInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'packing.label', default: 'Packing')] as Object[],
                          "Another user has updated this Packing while you were editing")
                render(view: "edit", model: [packingInstance: packingInstance])
                return
            }
        }

        packingInstance.properties = params

        if (!packingInstance.save(flush: true)) {
            render(view: "edit", model: [packingInstance: packingInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'packing.label', default: 'Packing'), packingInstance.id])
        redirect(action: "show", id: packingInstance.id)
    }

    def delete() {
        def packingInstance = Packing.get(params.id)
        if (!packingInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'packing.label', default: 'Packing'), params.id])
            redirect(action: "list")
            return
        }

        try {
            packingInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'packing.label', default: 'Packing'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'packing.label', default: 'Packing'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

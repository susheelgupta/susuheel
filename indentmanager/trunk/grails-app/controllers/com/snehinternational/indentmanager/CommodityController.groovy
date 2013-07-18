package com.snehinternational.indentmanager

import org.springframework.dao.DataIntegrityViolationException

class CommodityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [commodityInstanceList: Commodity.list(params), commodityInstanceTotal: Commodity.count()]
    }

    def create() {
        [commodityInstance: new Commodity(params)]
    }

    def save() {
        def commodityInstance = new Commodity(params)
        if (!commodityInstance.save(flush: true)) {
            render(view: "create", model: [commodityInstance: commodityInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'commodity.label', default: 'Commodity'), commodityInstance.id])
        redirect(action: "show", id: commodityInstance.id)
    }

    def show() {
        def commodityInstance = Commodity.get(params.id)
        if (!commodityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commodity.label', default: 'Commodity'), params.id])
            redirect(action: "list")
            return
        }

        [commodityInstance: commodityInstance]
    }

    def edit() {
        def commodityInstance = Commodity.get(params.id)
        if (!commodityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commodity.label', default: 'Commodity'), params.id])
            redirect(action: "list")
            return
        }

        [commodityInstance: commodityInstance]
    }

    def update() {
        def commodityInstance = Commodity.get(params.id)
        if (!commodityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commodity.label', default: 'Commodity'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (commodityInstance.version > version) {
                commodityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'commodity.label', default: 'Commodity')] as Object[],
                        "Another user has updated this Commodity while you were editing")
                render(view: "edit", model: [commodityInstance: commodityInstance])
                return
            }
        }

        commodityInstance.properties = params

        if (!commodityInstance.save(flush: true)) {
            render(view: "edit", model: [commodityInstance: commodityInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'commodity.label', default: 'Commodity'), commodityInstance.id])
        redirect(action: "show", id: commodityInstance.id)
    }

    def delete() {
        def commodityInstance = Commodity.get(params.id)
        if (!commodityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commodity.label', default: 'Commodity'), params.id])
            redirect(action: "list")
            return
        }

        try {
            commodityInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'commodity.label', default: 'Commodity'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'commodity.label', default: 'Commodity'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

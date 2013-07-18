package com.snehinternational.indentmanager

import org.springframework.dao.DataIntegrityViolationException

class ShippingAdviceDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [shippingAdviceDetailInstanceList: ShippingAdviceDetail.list(params), shippingAdviceDetailInstanceTotal: ShippingAdviceDetail.count()]
    }

    def create() {
        def shippingAdviceDetailInstance = new ShippingAdviceDetail(params)
           def  shippingAdvice = ShippingAdvice.get(params.shippingAdvice.id)
        shippingAdviceDetailInstance.grade = shippingAdvice.indent.grade
        [shippingAdviceDetailInstance:shippingAdviceDetailInstance]
    }

    def save() {
        def shippingAdviceDetailInstance = new ShippingAdviceDetail(params)
        if (!shippingAdviceDetailInstance.save(flush: true)) {
            render(view: "create", model: [shippingAdviceDetailInstance: shippingAdviceDetailInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail'), shippingAdviceDetailInstance.id])
        redirect(action: "show", id: shippingAdviceDetailInstance.id)
    }

    def show() {
        def shippingAdviceDetailInstance = ShippingAdviceDetail.get(params.id)
        if (!shippingAdviceDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail'), params.id])
            redirect(action: "list")
            return
        }

        [shippingAdviceDetailInstance: shippingAdviceDetailInstance]
    }

    def edit() {
        def shippingAdviceDetailInstance = ShippingAdviceDetail.get(params.id)
        if (!shippingAdviceDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail'), params.id])
            redirect(action: "list")
            return
        }

        [shippingAdviceDetailInstance: shippingAdviceDetailInstance]
    }

    def update() {
        def shippingAdviceDetailInstance = ShippingAdviceDetail.get(params.id)
        if (!shippingAdviceDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (shippingAdviceDetailInstance.version > version) {
                shippingAdviceDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail')] as Object[],
                        "Another user has updated this ShippingAdviceDetail while you were editing")
                render(view: "edit", model: [shippingAdviceDetailInstance: shippingAdviceDetailInstance])
                return
            }
        }

        shippingAdviceDetailInstance.properties = params

        if (!shippingAdviceDetailInstance.save(flush: true)) {
            render(view: "edit", model: [shippingAdviceDetailInstance: shippingAdviceDetailInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail'), shippingAdviceDetailInstance.id])
        redirect(action: "show", id: shippingAdviceDetailInstance.id)
    }

    def delete() {
        def shippingAdviceDetailInstance = ShippingAdviceDetail.get(params.id)
        if (!shippingAdviceDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail'), params.id])
            redirect(action: "list")
            return
        }

        try {
            shippingAdviceDetailInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

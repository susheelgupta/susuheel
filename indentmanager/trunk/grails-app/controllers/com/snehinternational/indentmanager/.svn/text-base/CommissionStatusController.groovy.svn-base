package com.snehinternational.indentmanager

import org.springframework.dao.DataIntegrityViolationException

class CommissionStatusController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [commissionStatusInstanceList: CommissionStatus.list(params), commissionStatusInstanceTotal: CommissionStatus.count()]
    }

    def create() {
        [commissionStatusInstance: new CommissionStatus(params)]
    }

    def save() {
        def commissionStatusInstance = new CommissionStatus(params)
        if (!commissionStatusInstance.save(flush: true)) {
            render(view: "create", model: [commissionStatusInstance: commissionStatusInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'commissionStatus.label', default: 'CommissionStatus'), commissionStatusInstance.id])
        redirect(action: "show", id: commissionStatusInstance.id)
    }

    def show() {
        def commissionStatusInstance = CommissionStatus.get(params.id)
        if (!commissionStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commissionStatus.label', default: 'CommissionStatus'), params.id])
            redirect(action: "list")
            return
        }

        [commissionStatusInstance: commissionStatusInstance]
    }

    def edit() {
        def commissionStatusInstance = CommissionStatus.get(params.id)
        if (!commissionStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commissionStatus.label', default: 'CommissionStatus'), params.id])
            redirect(action: "list")
            return
        }

        [commissionStatusInstance: commissionStatusInstance]
    }

    def update() {
        def commissionStatusInstance = CommissionStatus.get(params.id)
        if (!commissionStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commissionStatus.label', default: 'CommissionStatus'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (commissionStatusInstance.version > version) {
                commissionStatusInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'commissionStatus.label', default: 'CommissionStatus')] as Object[],
                        "Another user has updated this CommissionStatus while you were editing")
                render(view: "edit", model: [commissionStatusInstance: commissionStatusInstance])
                return
            }
        }

        commissionStatusInstance.properties = params

        if (!commissionStatusInstance.save(flush: true)) {
            render(view: "edit", model: [commissionStatusInstance: commissionStatusInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'commissionStatus.label', default: 'CommissionStatus'), commissionStatusInstance.id])
        redirect(action: "show", id: commissionStatusInstance.id)
    }

    def delete() {
        def commissionStatusInstance = CommissionStatus.get(params.id)
        if (!commissionStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commissionStatus.label', default: 'CommissionStatus'), params.id])
            redirect(action: "list")
            return
        }

        try {
            commissionStatusInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'commissionStatus.label', default: 'CommissionStatus'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'commissionStatus.label', default: 'CommissionStatus'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

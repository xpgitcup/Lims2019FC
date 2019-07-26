package cn.edu.cup.lims

import grails.converters.JSON
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ProgressStatusController extends cn.edu.cup.common.CommonController {

    ProgressStatusService progressStatusService
    def commonService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def model = [:]
        def userResult = false
        params.max = Math.min(max ?: 10, 100)
        if (params.title) {
            model.progressStatusTitle = params.title
            userResult = true
        }
        if (params.jsRoutine) {
            model.progressStatusJsRoutine = params.jsRoutine
            userResult = true
        }

        if (userResult) {
            model
        } else {
            respond progressStatusService.list(params), model:[progressStatusCount: progressStatusService.count()]
        }
    }

    def show(Long id) {
        def view = "show"
        if (params.view) {
            view = params.view
        }

        def progressStatus = progressStatusService.get(id)

        if (request.xhr) {
            render(template: view, model: [progressStatus: progressStatus])
        } else {
            respond progressStatus
        }
    }

    def create() {
        def view = "create"
        if (params.view) {
            view = params.view
        }

        def progressStatus = new ProgressStatus(params)

        if (request.xhr) {
            render(template: view, model: [progressStatus: progressStatus])
        } else {
            respond progressStatus
        }
    }

    def save(ProgressStatus progressStatus) {

        if (progressStatus == null) {
            notFound()
            return
        }

        def action = "index"
        if (params.nextAction) {
            action = params.nextAction
        }

        def controller = params.controller
        if (params.nextController) {
            controller = params.nextController
        }

        try {
            progressStatusService.save(progressStatus)
            flash.message = message(code: 'default.created.message', args: [message(code: 'progressStatus.label', default: 'ProgressStatus'), progressStatus.id])
        } catch (ValidationException e) {
            flash.message = progressStatus.errors
        }

        if (params.url) {
            redirect(params.url)
        } else {
            redirect(controller: controller, action: action)
        }
    }

    def edit(Long id) {
        def view = "edit"
        if (params.view) {
            view = params.view
        }

        def progressStatus = progressStatusService.get(id)

        if (request.xhr) {
            render(template: view, model: [progressStatus: progressStatus])
        } else {
            respond progressStatus
        }
    }

    def update(ProgressStatus progressStatus) {
        if (progressStatus == null) {
            notFound()
            return
        }

        def action = "index"
        if (params.nextAction) {
            action = params.nextAction
        }

        def controller = ""
        if (params.nextController) {
            controller = params.nextController
        }

        try {
            progressStatusService.save(progressStatus)
            flash.message = message(code: 'default.updated.message', args: [message(code: 'progressStatus.label', default: 'ProgressStatus'), progressStatus.id])
        } catch (ValidationException e) {
            flash.message = progressStatus.errors
        }

        if (controller == "")
        {
            redirect(action: action)
        } else {
            redirect(controller: controller, action: action)
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        progressStatusService.delete(id)
        flash.message = message(code: 'default.deleted.message', args: [message(code: 'progressStatus.label', default: 'ProgressStatus'), id])

        def action = "index"
        if (params.nextAction) {
            action = params.nextAction
        }

        def controller = ""
        if (params.nextController) {
            controller = params.nextController
        }

        if (controller == "")
        {
            redirect(action: action)
        } else {
            redirect(controller: controller, action: action)
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'progressStatus.label', default: 'ProgressStatus'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

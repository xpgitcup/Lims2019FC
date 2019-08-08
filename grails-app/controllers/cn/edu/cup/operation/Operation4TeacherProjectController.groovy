package cn.edu.cup.operation

import cn.edu.cup.lims.Thing
import cn.edu.cup.lims.ThingController
import cn.edu.cup.lims.ThingType

class Operation4TeacherProjectController extends ThingController {

    def commonService

    protected void prepareParams() {

        println("教师服务：")
        println("${params}")

        if (session.systemUser) {

            params.remove("currentStatus")

            def myself = session.systemUser.person()
            def thingType = ThingType.get(params.currentId)

            switch (params.key) {
                case "项目管理":
                    params.currentId = thingType
                    break
            }
        }
    }

    /*
    创建科研项目
    * */

    def createProject() {
        println("开始创建：${params}")
        def thingType = ThingType.get(params.thingType)
        def startDate = params.startDate
        def endDate = params.endDate
        def name = params.name
        if (Thing.countByName(name) < 1) {
            def thing = new Thing(
                    name: name,
                    startDate: startDate,
                    endDate: endDate,
                    thingType: thingType,
                    sponsor: session.systemUser.person()
            )
            thingService.save(thing)
        } else {
            flash.message = "${name} 名称重复了！"
        }
        redirect(action: "index", params: [currentId: params.thingType, flash: flash])
    }

    def createThing(ThingType thingType) {

        def viewName = params.viewName

        if (thingType.bePartOfName("教学任务")) {
            Calendar c = Calendar.getInstance();
            def year = c.get(Calendar.YEAR)

        }
        switch (thingType.name) {
            case "硕士论文":
                viewName = "createThing4MasterPaper"
                break
            case "本科毕设":
                viewName = "createThing4Paper"
                break
            default:
                if (thingType.bePartOfName("课程设计")) {

                }
                break
        }

        if (request.xhr) {
            render(template: viewName, model: [thingType: thingType])
        } else {
            model:
            [thingType: thingType]
        }
    }

    def index() {
        //状态定义
        def status = ["类型选择", "信息设置", "人员设置"]
        def branchName = ["teacherProjectTypeChoice", "teacherProjectSetting", "teacherProjectMemberSetting"]
        def currentStatusIndex = 0
        if (params.status) {
            currentStatusIndex = status.indexOf(params.status)
        }
        def currentStatus = status[currentStatusIndex]
        def currentId = 0
        def showThings = false
        if (params.currentId) {
            currentId = Integer.parseInt(params.currentId)
            showThings = (ThingType.get(currentId).subTypes.size() < 1)
        }
        model:
        [
                status            : status,
                currentStatusIndex: currentStatusIndex,
                currentStatus     : currentStatus,
                currentId         : currentId,
                viewName          : branchName[currentStatusIndex],
                jsName            : branchName[currentStatusIndex],
                showThings        : showThings
        ]
    }
}

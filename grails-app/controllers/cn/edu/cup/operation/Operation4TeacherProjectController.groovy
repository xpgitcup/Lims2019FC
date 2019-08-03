package cn.edu.cup.operation

import cn.edu.cup.basic.GroupInfo
import cn.edu.cup.lims.Team
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

    def createNewThing(ThingType thingType) {

        println("类型：${thingType}   ${params}")
        def thingName = ""
        if (thingType.bePartOfName("教学任务")) {
            Calendar c = Calendar.getInstance();
            def year = c.get(Calendar.YEAR)
            switch (thingType.name) {
                case "硕士论文":
                    thingName = "${year - 3}级.硕士论文"
                    break
                case "本科毕设":
                    thingName = "${year - 1}~${year}-2.本科毕设"
                    break
                default:
                    thingName = "${year - 1}~${year}-2.${thingType.name}"
            }
        }

        println("---------${thingName}")

        def thing = new Thing(
                name: thingName,
                sponsor: session.systemUser.person(),
                thingType: thingType
        );
        def viewName = params.viewName

        if (request.xhr) {
            render(template: viewName, model: [thing: thing])
        } else {
            thing
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
        if (params.currentId) {
            currentId = Integer.parseInt(params.currentId)
        }

        model:
        [
                status            : status,
                currentStatusIndex: currentStatusIndex,
                currentStatus     : currentStatus,
                currentId         : currentId,
                viewName          : branchName[currentStatusIndex],
                jsName            : branchName[currentStatusIndex]
        ]
    }
}

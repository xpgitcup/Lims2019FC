package cn.edu.cup.operation

import cn.edu.cup.lims.Thing
import cn.edu.cup.lims.ThingController
import cn.edu.cup.lims.ThingType

class Operation4TeacherProjectController extends ThingController {

    def createNewThing(ThingType thingType) {
        println("类型：${thingType}   ${params}")

        def thing = new Thing(thingType: thingType);
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
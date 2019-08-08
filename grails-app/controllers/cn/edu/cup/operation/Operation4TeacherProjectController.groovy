package cn.edu.cup.operation

import cn.edu.cup.basic.Person
import cn.edu.cup.basic.TutorInfo
import cn.edu.cup.lims.Team
import cn.edu.cup.lims.Thing
import cn.edu.cup.lims.ThingController
import cn.edu.cup.lims.ThingType

class Operation4TeacherProjectController extends ThingController {

    def commonService
    def teamService

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
    学位论文
    * */

    def createMasterPaper() {
        println("学位论文 ${params}")
        def studentId = params.studentId
        def paperYear = params.paperYaer
        def names = params.name
        def thingType = ThingType.get(params.thingType)
        println("学生列表：${studentId}")
        studentId.eachWithIndex { e, i ->
            println("处理：${e}")
            println("${thingType}")
            def s = Person.get(e)
            if (Thing.countByName(names[i]) < 1) {
                def thing = new Thing(
                        name: names[i],
                        sponsor: session.systemUser.person(),
                        thingType: params.thingType
                )
                thingService.save(thing)
                def team = new Team(
                        thing: thing,
                        leader: s
                )
                teamService.save(team)
            }
        }
        redirect(action: "index", params: [currentId: params.thingType, flash: flash])
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
        def thingModel = [:]
        def tutor = TutorInfo.findByTeacher(session.systemUser.person())
        def students

        Calendar c = Calendar.getInstance();
        def year = c.get(Calendar.YEAR)
        def paperYear = year - 2

        if (!tutor) {
            flash.message = "${session.systemUser.person()} 不是教师！"
        } else {
            def q = "from Person person where person in (${tutor.students}) and person.code like :like"
            //def q = "from Person person where person.code like :like"
            //def q = "from Person person where person in (${tutor.students})"    // ok
            println("查询语句： ${q}")
            students = Person.executeQuery(q, [like: "${paperYear}%"])
            println("${tutor} 所带学生 ${students}")
        }

        thingModel.thingType = thingType

        if (thingType.bePartOfName("教学任务")) {

            switch (thingType.name) {
                case "硕士论文":
                    viewName = "createThing4MasterPaper"
                    thingModel.paperYear = paperYear
                    thingModel.students = students
                    break
                case "本科毕设":
                    viewName = "createThing4Paper"
                    break
                default:
                    if (thingType.bePartOfName("课程设计")) {

                    }
                    break
            }
        }

        if (request.xhr) {
            render(template: viewName, model: thingModel)
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

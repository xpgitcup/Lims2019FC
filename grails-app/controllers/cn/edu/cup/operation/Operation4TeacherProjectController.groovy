package cn.edu.cup.operation

import cn.edu.cup.basic.Course
import cn.edu.cup.basic.GradeInfo
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
    本科毕业设计
    * */
    def createGraduationProject() {
        println("本科毕设 ${params}")
        def grades = []
        params.grade.each { e ->
            grades.add(GradeInfo.get(e))
        }
        def thingType = ThingType.get(params.thingType)
        def name = "${thingType.name}.${params.schoolYear}"
        if (Thing.countByName(name) < 1) {
            def thing = new Thing(
                    name: name,
                    sponsor: session.systemUser.person(),
                    thingType: thingType
            )
            thingService.save(thing)
            grades.each { e ->
                if (!thing.relatedPersons) {
                    thing.relatedPersons = []
                }
                thing.relatedPersons.addAll(e.students)
            }
            thingService.save(thing)
        } else {
            flash.message = name + " 重复了！"
        }
        redirect(action: "index", params: [currentId: params.thingType, flash: flash])
    }

    /*
    创建与课程有关的任务
    * */

    def createThing4Course() {
        println("课程相关 ${params}")
        if (params.course) {
            def course = Course.get(params.course)
            if (course) {
                def grades = []
                params.grade.each { e ->
                    grades.add(GradeInfo.get(e))
                }
                def thingType = ThingType.get(params.thingType)
                def name = "${thingType.name}.${course.name}.${params.schoolYear}"
                if (Thing.countByName(name) < 1) {
                    def thing = new Thing(
                            name: name,
                            sponsor: session.systemUser.person(),
                            thingType: thingType
                    )
                    thingService.save(thing)
                    grades.each { e ->
                        if (!thing.relatedPersons) {
                            thing.relatedPersons = []
                        }
                        thing.relatedPersons.addAll(e.students)
                    }
                    thingService.save(thing)
                } else {
                    flash.message = name + " 重复了！"
                }
            }
        }
        redirect(action: "index", params: [currentId: params.thingType, flash: flash])
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

        Calendar c = Calendar.getInstance();
        def year = c.get(Calendar.YEAR)

        thingModel.thingType = thingType

        if (thingType.bePartOfName("教学任务")) {
            switch (thingType.name) {
                case "硕士论文":
                    def tutor = TutorInfo.findByTeacher(session.systemUser.person())
                    def students
                    def paperYear = year - 2

                    if (!tutor) {
                        flash.message = "${session.systemUser.person()} 不是教师！"
                    } else {
                        def q = "from Person person where person in (${tutor.students}) and person.code like :like"
                        students = Person.executeQuery(q, [like: "${paperYear}%"])
                    }

                    viewName = "createThing4MasterPaper"
                    thingModel.paperYear = paperYear
                    thingModel.students = students
                    break
                case "课堂教学":
                case "课程设计":
                    viewName = "createThing4Course"
                    def schoolYear
                    thingModel.year = year
                    def month = c.get(Calendar.MONTH)
                    if (month <= 6) {
                        schoolYear = "${year - 1}-#{year}-2"
                    } else {
                        schoolYear = "${year}-${year + 1}-1"
                    }
                    thingModel.schoolYear = schoolYear
                    break
                case "本科毕设":
                    viewName = "createGraduationProject"
                    def schoolYear
                    thingModel.year = year
                    def month = c.get(Calendar.MONTH)
                    if (month <= 6) {
                        schoolYear = "${year - 1}-#{year}-2"
                    } else {
                        schoolYear = "${year}-${year + 1}-1"
                    }
                    thingModel.schoolYear = schoolYear
                    break
                default:
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

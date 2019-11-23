package cn.edu.cup.operation

import cn.edu.cup.basic.Person
import cn.edu.cup.lims.Team
import cn.edu.cup.lims.Thing
import cn.edu.cup.lims.ThingController
import cn.edu.cup.lims.ThingType

class Operation4ThingController extends ThingController {

    def gradeInfoService

    def addRelatedPersons() {
        def grade = gradeInfoService.get(params.grade)
        def thing = thingService.get(params.thing)

        println("更新${thing}相关人员！")
        println("${grade.students?.size()}")

        def k = 0
        grade.students.each { e ->
            if (!thing.relatedPersons.contains(e)) {
                thing.relatedPersons.add(e)
                k++
            }
        }
        if (k > 0) {
            thingService.save(thing)
            flash.message = "更新${k}个人员！"
        }

        redirect(action: "index")
    }

    def updateRelatedPersons() {
        def logFileName = "${commonService.webRootPath}/config/out/db_thing_relatedPersons.log"
        def lofFile = new File(logFileName)
        def printWriter = new PrintWriter(lofFile, "utf-8")
        def k = 0

        Team.list().each { e ->
            def has = e.thing.relatedPersons.contains(e.leader)
            println("${has}")
            e.thing.relatedPersons.each { m ->
                if (m.code == e.leader.code) {
                    println("类型判断：${m instanceof Person} ${m.class.name} ${e.leader.class.name}")
                    println("相同与否：${m},${e.leader} = ${m == e.leader}")
                }
            }
            //if (!(e.thing.relatedPersons.contains(e.leader))) {
            if (!("${e.thing.relatedPersons}".contains("${e.leader}"))) {
                e.thing.relatedPersons.add(e.leader)
                println("${e.leader}加入")
                printWriter.println("${e.leader}加入")
                k++
            } else {
                println("队长有了!")
            }
            e.members.each { me ->
                if (!(e.thing.relatedPersons.contains(me))) {
                    e.thing.relatedPersons.add(me)
                    println("${me}加入")
                    printWriter.println("${me}加入")
                    k++
                } else {
                    println("${me} 队员有了！")
                    println("${me.class.name} 队员有了！")
                    /*
                    thing.relatedPersons.each { m ->
                        println("队员判断：${m}==${me} ${m.equals(me)}")
                    }
                     */
                }
            }
            thingService.save(e.thing)
            println("${e.thing.relatedPersons}")
        }
        println("更新${k}个相关人员！")

        printWriter.close()

        redirect(action: "index")
    }

    protected void prepareParams() {
        switch (params.key) {
            case "科研项目":
                params.thingTypeList = ThingType.findByName("科研项目").relatedThingTypeList()
                break
            case "教学任务":
                params.thingTypeList = ThingType.findByName("教学任务").relatedThingTypeList()
                break
            case "全部科研项目":
                params.thingTypeList = ThingType.findByName("科研项目").relatedThingTypeList()
                break
            case "全部教学任务":
                params.thingTypeList = ThingType.findByName("教学任务").relatedThingTypeList()
                break
        }
    }

    def index() {}
}

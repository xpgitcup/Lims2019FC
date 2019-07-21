package cn.edu.cup.operation

import cn.edu.cup.lims.Team
import cn.edu.cup.lims.ThingController
import cn.edu.cup.lims.ThingType

class Operation4ThingController extends ThingController {

    def updateRelatedPersons() {
        def logFileName = "${commonService.webRootPath}/config/out/db_thing_relatedPersons.log"
        def lofFile = new File(logFileName)
        def printWriter = new PrintWriter(lofFile, "utf-8")
        def k = 0

        Team.list().each { e ->
            def thing = e.thing
            println("当前：${thing.relatedPersons}")
            printWriter.println("当前：${thing.relatedPersons}")
            if (!(thing.relatedPersons.contains(e.leader.id))) {
                thing.relatedPersons.add(e.leader)
                println("${e.leader}加入")
                printWriter.println("${e.leader}加入")
                k++
            }
            e.members.each { me ->
                if (!(thing.relatedPersons.contains(me.id))) {
                    thing.relatedPersons.add(me)
                    println("${me}加入")
                    printWriter.println("${me}加入")
                    k++
                }
            }
            thingService.save(thing)
            println("${thing.relatedPersons}")
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
        }
    }

    def index() {}
}

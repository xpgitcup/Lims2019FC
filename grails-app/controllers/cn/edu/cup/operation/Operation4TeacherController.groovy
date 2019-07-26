package cn.edu.cup.operation

import cn.edu.cup.basic.GroupInfo
import cn.edu.cup.lims.ProgressController
import cn.edu.cup.lims.Team
import cn.edu.cup.lims.Thing
import cn.edu.cup.lims.ThingType

class Operation4TeacherController extends ProgressController {

    def teacherJob() {
        def (title, id) = params.currentKey.split("=")
        println(title)
        println(id)
        def gotoProgress = true
        def currentTitle = ""
        switch (title) {
            case "管理的项目":
                def thing = Thing.get(id)
                def teamCount = Team.countByThing(thing)
                gotoProgress = teamCount == 1
                currentTitle = "当前项目：${thing}"
                break
            case "领导的项目":
            case "参与的项目":
                gotoProgress = true
                def team = Team.get(id)
                currentTitle = "当前团队：${team}"
                break
            case "研究生论文":
            case "课堂教学":
            case "毕业设计":
            case "课程设计":
                def thing = Thing.get(id)
                def teamCount = Team.countByThing(thing)
                gotoProgress = teamCount == 1
                currentTitle = "当前项目：${thing}"
                break
        }
        println("${gotoProgress} ${currentTitle}")
        model:
        [
                title       : title,
                currentTitle: currentTitle,
                id          : id,
                gotoProgress: gotoProgress
        ]
    }

    protected void prepareParams() {

        if (session.systemUser) {

            def myself = session.systemUser.person()

            switch (params.key) {
                case "管理的项目":
                    params.thingTypeList = ThingType.findByName("科研项目").relatedThingTypeList()
                    def glist = GroupInfo.findAllByLeader(myself)
                    def leaders = []
                    leaders.add(myself)
                    glist.each { e ->
                        leaders.addAll(e.members)
                    }
                    params.leaders = leaders
                    break
                case "领导的项目":
                    params.myself = myself
                    params.thingTypeList = ThingType.findByName("科研项目").relatedThingTypeList()
                    break
                case "参与的项目":
                    params.myself = myself.id
                    def idlist = []
                    ThingType.findByName("科研项目").relatedThingTypeList().each { e ->
                        idlist.add(e.id)
                    }
                    params.thingTypeList = idlist
                    break
                case "研究生论文":
                    params.myself = myself
                    params.thingTypeList = ThingType.findByName("硕士论文").relatedThingTypeList()
                    break
                case "课堂教学":
                    params.myself = myself
                    params.thingTypeList = ThingType.findByName("课堂教学").relatedThingTypeList()
                    break
                case "毕业设计":
                    params.myself = myself
                    params.thingTypeList = ThingType.findByName("本科毕设").relatedThingTypeList()
                    break
                case "课程设计":
                    params.myself = myself
                    params.thingTypeList = ThingType.findByName("课程设计").relatedThingTypeList()
                    break
            }
        }
    }

    protected def processResult(result, params) {
        switch (params.key) {
            case "参与的项目":
                def teams = []
                println("结果：${result}")
                result.objectList.each { e ->
                    println("查找 ${e}")
                    teams.add(Team.get(e.team_members_id))
                }
                println("转换后：${teams}")
                result.objectList = teams
                break
        }
        return result
    }


    def index() {}
}

package cn.edu.cup.operation

import cn.edu.cup.basic.GroupInfo
import cn.edu.cup.lims.ProgressController
import cn.edu.cup.lims.Team
import cn.edu.cup.lims.ThingType

class Operation4TeacherController extends ProgressController {

    protected void prepareParams() {

        if (session.systemUser) {

            def myself = session.systemUser.person()

            switch (params.key) {
                case "管理的项目":
                    params.thingTypeList = ThingType.findByName("科研项目").relatedThingTypeList()
                    def glist = GroupInfo.findAllByLeader(myself)
                    def leaders = []
                    leaders.add(myself)
                    glist.each { e->
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
                    ThingType.findByName("科研项目").relatedThingTypeList().each { e->
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

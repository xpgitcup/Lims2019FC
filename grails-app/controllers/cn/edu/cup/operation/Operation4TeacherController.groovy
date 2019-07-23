package cn.edu.cup.operation

import cn.edu.cup.basic.GroupInfo
import cn.edu.cup.lims.ProgressController
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
                    params.myself = myself
                    params.thingTypeList = ThingType.findByName("科研项目").relatedThingTypeList()
                    break
                case "研究生论文":
                    params.myself = myself
                    params.thingTypeList = ThingType.findByName("硕士论文").relatedThingTypeList()
                    break
                case "课堂教学":
                    params.myself = myself
                    params.thingTypeList = ThingType.findByName("科研项目").relatedThingTypeList()
                    break
            }
        }
    }

    def index() {}
}

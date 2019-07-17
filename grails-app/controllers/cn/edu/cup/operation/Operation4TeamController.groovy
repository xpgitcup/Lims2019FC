package cn.edu.cup.operation

import cn.edu.cup.lims.TeamController
import cn.edu.cup.lims.ThingType

class Operation4TeamController extends TeamController {

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

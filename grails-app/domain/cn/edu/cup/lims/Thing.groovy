package cn.edu.cup.lims

import cn.edu.cup.basic.Person

class Thing {

    String name
    Person sponsor
    Date startDate = new Date()
    Date endDate = new Date()
    String appendValues // 应该是一个Map，对应上级菜单的keys

    static belongsTo = [thingType: ThingType]

    static constraints = {
        name(unique: true)
        sponsor()
        startDate(nullable: true)
        endDate(nullable: true)
        appendValues(nullable: true)
    }

    String toString() {
        return "${name}"
    }

    def keyValues() {
        return com.alibaba.fastjson.JSON.parse(appendValues)
    }

    def relatedProgress() {
        def tlist = Team.findAllByThing(this)
        def c = 0
        if (tlist.size()>0) {
            c = Progress.countByTeamInList(tlist)
        }
        return c
    }
}

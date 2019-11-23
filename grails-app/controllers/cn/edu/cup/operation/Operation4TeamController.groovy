package cn.edu.cup.operation

import cn.edu.cup.basic.Person
import cn.edu.cup.lims.TeamController
import cn.edu.cup.lims.ThingType

class Operation4TeamController extends TeamController {

    /*
     * 解聘
     * */

    def dismiss() {
        println("开始解聘....${params}")
        def person = Person.findByName(params.name)
        def team = teamService.get(params.team)
        if (team.leader != person) {
            if (team.members.contains(person)) {
                team.members.remove(person)
                teamService.save(team)
            } else {
                flash.message = "查无此人!"
            }
        } else {
            flash.message = "队长不用加入！"
        }
        redirect(action: params.nextAction, controller: params.nextController, params: params)
    }

    /*
     * 招聘
     * */

    def recruit() {
        println("开始团队招聘....${params}")
        def person = Person.findByName(params.name)
        def team = teamService.get(params.team)
        if (team.leader != person) {
            if (!team.members.contains(person)) {
                team.members.add(person)
                teamService.save(team)
            } else {
                flash.message = "已经加入了!"
            }
        } else {
            flash.message = "队长不用加入！"
        }
        redirect(action: params.nextAction, controller: params.nextController, params: params)
    }

    protected void prepareParams() {
        def myself = session.systemUser.person()
        params.myself = myself
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

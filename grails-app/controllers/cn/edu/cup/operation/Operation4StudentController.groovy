package cn.edu.cup.operation

import cn.edu.cup.lims.Team
import cn.edu.cup.lims.Thing
import cn.edu.cup.lims.ThingType

class Operation4StudentController extends Operation4TeacherController {

    def createTeam() {
        def thing = Thing.get(params.thing)
        def myself = session.systemUser.person()
        def team = new Team(leader: myself, thing: thing)
        teamService.save(team)
        redirect(action: "index")
    }

    protected void prepareParams() {

        println("学生日常操作：")
        println("${params}")

        if (session.systemUser) {

            params.remove("currentStatus")

            def myself = session.systemUser.person()
            def idlist = []

            switch (params.key) {
                case "科研项目":
                    params.myself = myself.id
                    ThingType.findByName("科研项目").relatedThingTypeList().each { e ->
                        idlist.add(e.id)
                    }
                    params.thingTypeList = idlist
                    break
                case "领导的":
                    params.myself = myself
                    params.thingTypeList = ThingType.findByName("教学任务").relatedThingTypeList()
                    break
                case "参与的":
                    params.myself = myself.id
                    ThingType.findByName("教学任务").relatedThingTypeList().each { e ->
                        idlist.add(e.id)
                    }
                    params.thingTypeList = idlist
                    break
                case "可选任务":
                    params.myself = myself.id
                    break
                case "团队选择":
                    def thing = Thing.get(params.currentId)
                    params.currentId = thing
                    break
                case "进度维护":
                    def team = Team.get(params.currentId)
                    params.currentId = team
                    break
            }
        }
    }

    protected def processResult(result, params) {
        switch (params.key) {
            case "科研项目":
            case "参与的":
                def teams = []
                println("结果：${result}")
                result.objectList.each { e ->
                    println("查找 ${e}")
                    teams.add(Team.get(e.team_members_id))
                }
                println("转换后：${teams}")
                result.objectList = teams
                break
            case "可选任务":
                def things = []
                println("结果：${result}")
                result.objectList.each { e ->
                    println("查找 ${e}")
                    things.add(Thing.get(e.thing_related_persons_id))
                }
                println("转换后：${things}")
                result.objectList = things
                break

        }
        return result
    }

    def index() {
        def status = ["", "thing", "team", "progress"]
        def statusName = ["项目", "团队", "进度"]
        def viewName = ["studentPanel", "teamPanel", "progressPanel"]
        def jsName = ["Student", "StudentTeam", "StudentProgress"]
        def currentStatusIndex = 0
        def currentId = 0
        if (params.currentStatus) {
            currentStatusIndex = status.indexOf(params.currentStatus)
        }
        if (params.currentId) {
            currentId = Integer.parseInt(params.currentId)
        }
        def statusInfo = ""
        switch (currentStatusIndex) {
            case 0:
                statusInfo = "请选择项目/课程："
                break
            case 1:
                statusInfo = "项目=${Thing.get(currentId)}，请选择团队："
                break
            case 2:
                statusInfo = "团队=${Team.get(currentId)}"
                break
        }
        model:
        [
                statusName        : statusName,
                statusInfo        : statusInfo,
                status            : status,
                currentStatusIndex: currentStatusIndex,
                currentStatus     : status[currentStatusIndex],
                currentId         : currentId,
                viewName          : viewName[currentStatusIndex],
                jsName            : jsName[currentStatusIndex]
        ]
    }
}

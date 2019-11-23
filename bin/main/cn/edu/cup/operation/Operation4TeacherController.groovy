package cn.edu.cup.operation

import cn.edu.cup.basic.GroupInfo
import cn.edu.cup.basic.Person
import cn.edu.cup.lims.Progress
import cn.edu.cup.lims.ProgressController
import cn.edu.cup.lims.Team
import cn.edu.cup.lims.Thing
import cn.edu.cup.lims.ThingType
import grails.validation.ValidationException

class Operation4TeacherController extends ProgressController {

    def commonService
    def teamService

    /*
    加入队长的团队
    * */

    def joinTeam() {
        println("加入..${params}")
        def leader = Person.findByName(params.name)
        def thing = Thing.get(params.thing)
        if (leader) {
            def team = Team.findByLeaderAndThing(leader, thing)
            def myself = session.systemUser.person()
            if (!team.members.contains(myself)) {
                team.members.add(myself)
                teamService.save(team)
            } else {
                flash.message = "已经加入了!"
            }
        } else {
            flash.message = "找不到${params.name}队长！"
        }

        chain(action: "index",
                params: [
                        currentStatus: "thing",
                        currentId    : thing.id,
                        flash        : flash
                ])
    }

    /*
     * 招聘
     * */

    def recruit() {
        println("教师团队招聘....${params}")
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

        chain(action: "index",
                params: [
                        currentStatus: "thing",
                        currentId    : team.thing.id,
                        flash        : flash
                ])
    }

    def createTeam() {
        def thing = Thing.get(params.thing)
        def myself = session.systemUser.person()
        def team = new Team(leader: myself, thing: thing)
        teamService.save(team)
        redirect(action: "index")
    }

    def saveProgress(Progress progress) {
        if (progress == null) {
            notFound()
            return
        }
        try {
            progressService.save(progress)
            flash.message = message(code: 'default.created.message',
                    args: [message(code: 'progress.label', default: 'Progress'), progress.id])
            if (!params.uploadedFile.empty) {
                //处理文件上传
                def destDir = progress.realSupportFileDir()
                params.destDir = destDir
                println("准备上传...")
                println(destDir)
                def sf = commonService.upload(params)
                println("上传${sf}成功...")
            }
        } catch (ValidationException e) {
            flash.message = e.message
        }
        redirect(action: "index", params: [currentStatus: "team", currentId: "${progress.team.id}"])
    }

    def create() {
        def view = "create"
        if (params.view) {
            view = params.view
        }
        def progress = new Progress(params)
        //参数处理
        def pre = progressService.get(params.preProgress)
        if (pre) {
            progress.prevProgress = pre
            progress.team = pre.team
        } else {
            progress.prevProgress = null
        }

        if (params.team) {
            progress.team = Team.get(params.team)
        }

        progress.contributor = session.systemUser.person()

        if (request.xhr) {
            render(template: view, model: [progress: progress])
        } else {
            respond progress
        }
    }

    /*
    这个有问题，尚未解决！！
    * */

    def downloadFile(params) {
        println("------${params}")
        commonService.downLoadFile(params)
    }

    def download(Progress progress) {
        params.downLoadFileName = progress.realSupportFileName()
        println("下载:${params}")
        commonService.downLoadFile(params)
    }

    protected void prepareParams() {

        println("教师日常操作：")
        println("${params}")

        if (session.systemUser) {

            params.remove("currentStatus")

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


    def index() {
        println("当前参数：${params}")

        def status = ["", "thing", "team", "progress"]
        def statusName = ["项目", "团队", "进度"]
        def viewName = ["teacherPanel", "teamPanel", "progressPanel"]
        def jsName = ["Teacher", "TeacherTeam", "TeacherProgress"]
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

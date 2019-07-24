package cn.edu.cup.os

import cn.edu.cup.basic.Caption
import cn.edu.cup.common.CommonController
import cn.edu.cup.lims.ThingType
import cn.edu.cup.system.SystemMenu
import cn.edu.cup.system.SystemStatus
import cn.edu.cup.system.SystemUser
import grails.converters.JSON
import groovy.sql.Sql

import java.text.SimpleDateFormat

class HomeController extends CommonController {

    def systemCommonService
    def systemMenuService
    def systemUserService

    def basic() {}

    def integration() {
        def driverClassName = "com.mysql.cj.jdbc.Driver";//    #升级到这个版本是为了适应MySQL 8.X
        def username = "sample";
        def password = "sample@chuyun";
        def url = "jdbc:mysql://localhost:3306/lims2019db?zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=Asia/Shanghai"
        def sql = Sql.newInstance(url, username, password, driverClassName);
        def persons = []
        sql.eachRow("select * from person limit 0,20") { row ->
            println("${row}")
            def p = [:]
            p.id = row.id
            p.name = row.name
            p.code = row.code
            persons.add(p)
        }

        model:
        [
                sql    : "${sql}",
                persons: persons
        ]
    }

    protected void prepareParams() {
        if (session.systemUser) {
        } else {
            switch (params.key) {
                case "整体进展":
                    break
                case "项目进展":
                    params.thingTypeList = ThingType.findByName("科研项目").relatedThingTypeList()
                    break
                case "教学进展":
                    params.thingTypeList = ThingType.findByName("教学任务").relatedThingTypeList()
                    break
                case "人员贡献":
                    break
                case "登录情况":
                    break
                case "登录统计":
                    break
            }
        }
    }

    /*
    修改密码
    * */

    def changePasswordUI() {}

    def changePassword() {
        def oldPassword = params.oldPassword.encodeAsMD5()
        def user = systemUserService.get(session.systemUser.id)
        println("修改${user}的密码！${user.id}")
        def p = user.password
        if (p == oldPassword) {
            def newPassword = params.newPassword
            def rePassword = params.rePassword
            if (newPassword != "") {
                if (newPassword == rePassword) {
                    user.password = newPassword
                    systemUserService.save(user)
                    //重新设置用户
                    session.systemUser = user
                    flash.message = "密码修改成功！"
                    redirect(action: "index")
                } else {
                    flash.message = "两次密码不一致！"
                    redirect(action: "changePasswordUI")
                }
            } else {
                flash.message = "密码不能空！"
                redirect(action: "changePasswordUI")
            }
        } else {
            flash.message = "密码不对！"
            redirect(action: "changePasswordUI")
        }
    }

    /*
    选择当前菜单
    * */

    def selectCurrentMenuItem() {
        println("${params}")
        systemCommonService.updateSystemStatus(request, params)
        session.currentMenuItem = params.currentMenuItem
        redirect(action: "index")
    }

    /*
    获取左侧菜单
    * */

    def getLeftMenuItems(SystemMenu menuItem) {
        println("当前菜单：")
        println("${menuItem}")
        // 修改布局
        session.layout = menuItem.layout

        def menuItems = []
        menuItems.addAll(menuItem.menuItems)
        println("${menuItems}")
        def result = [menuItems: menuItems, currentMenuItem: menuItem]
        if (request.xhr) {
            render(template: "leftMenuItems", model: result)
        } else {
            result
        }
    }

    /*
    获取顶级菜单
    * */

    def getTopMenuItems() {
        def systemMenuList = []
        def menuPath = []
        def currentMenuItem = null
        def sid = session.getId()
        def ss = SystemStatus.findBySessionId(sid)
        if (ss) {
            def user = systemUserService.get(session.systemUser.id)
            if (user) {
                def q = SystemMenu.createCriteria()
                def roles = user.userRoles()
                println("用户权限 ${user.roleAttribute}")
                println("${roles}")
                if (roles.length > 0) {
                    systemMenuList = q.list() {     // 删掉括号中的params
                        isNull('upMenuItem')
                        'in'('menuContext', roles)      // 只要菜单的名字在其中就可以 20181208
                        order('menuOrder')
                    }
                }
            }
        } else {
        }
        def result = [systemMenuList: systemMenuList, meunPath: menuPath, currentMenuItem: currentMenuItem]
        if (request.xhr) {
            render(template: "applicationMenu", model: result)
        } else {
            result
        }
    }

    def getMenuItems() {
        def systemMenuList = []
        def menuPath = []
        def currentMenuItem = null
        def sid = session.getId()
        def ss = SystemStatus.findBySessionId(sid)
        if (ss) {
            //println("参数：${ss.statusParameters}")
            def ps = ss.getParameters()
            currentMenuItem = systemMenuService.get(ps.currentMenuItem)
            //println("当前菜单：${currentMenuItem}")
            if (currentMenuItem) {
                //println("当前：${currentMenuItem}")
                menuPath = currentMenuItem.menuPath()
                systemMenuList = currentMenuItem.menuItems
            } else {
                def q = SystemMenu.createCriteria()
                if (session.systemUser) {
                    def user = systemUserService.get(session.systemUser.id)
                    //println("当前用户：${user}")
                    if (user) {
                        def roles = user.userRoles()
                        //println("当前权限：${roles}")
                        systemMenuList = q.list(params) {
                            isNull('upMenuItem')
                            'in'('menuContext', roles)      // 只要菜单的名字在其中就可以 20181208
                            order('menuOrder')
                        }
                    }
                }
            }
        } else {
        }
        def result = [systemMenuList: systemMenuList, meunPath: menuPath, currentMenuItem: currentMenuItem]
        if (request.xhr) {
            render(template: "applicationMenu", model: result)
        } else {
            result
        }
    }

    def countOnlineUsers() {
        def current = new Date()
        def ctx = request.session.servletContext
        List serviceUserList = (List) ctx.getAttribute("serviceUserList");
        //println("ctx: ${serviceUserList}")
        def cc = SystemStatus.countBySessionIdInListAndUserNameIsNotNull(serviceUserList)
        def users = SystemStatus.findAllBySessionIdInListAndUserNameIsNotNull(serviceUserList)
        //println("在线：${users}")
        def usersStr = ""
        if (users.size() < 3) {
            users.each { e ->
                usersStr += "${e.userName},"
            }
        } else {
            usersStr = "${users[0].userName},${users[1].userName},${users[2].userName}..."
        }
        def result = [count: cc, usersStr: usersStr]
        if (request.xhr) {
            render(template: "onlineCount", model: result)
        } else {
            result
        }
    }

    /*
    * 退出登录
    * */

    def logout() {
        def pscontext = request.session.servletContext
        // 登陆后--记录
        if (session.systemUser) {
            systemCommonService.updateSystemStatus(request, params)
        }
        if (session.systemUser) {
            println("${session.systemUser.userName}退出...")
            def logoutUser = session.systemUser.personName()
            session.invalidate()
            //redirect(uri: "/")
            println("拜拜...${logoutUser}")
            model:
            [logoutUser: logoutUser]
        } else {
            redirect(uri: "${createLink(uri: '/')}")
        }
    }

    /*
    * 登录
    * */

    def login() {
        String userName = params.userName;
        String p = params.password.encodeAsMD5()
        def systemUser = SystemUser.findByUserNameAndPassword(userName, p)
        if (systemUser) {
            //println("找到了：${systemUser}")
            session.layout = Caption.findByName("main").layout
            session.systemUser = systemUser
            session.userName = systemUser.personName()
            session.userTitle = systemUser.personTitle()
            session.userStatus = systemUser.personTitle().status()
            if (session.userTitle) {
                session.userStatus = systemUser.personTitle().status()
            }
            systemCommonService.updateSystemStatus(request, params)

            switch (session.userStatus) {
                case "Teacher":
                    redirect(uri: "/operation4Teacher")
                    break
                case "Student":
                    redirect(uri: "/operation4Student")
                    break
                default:
                    redirect(uri: "/home")
            }
            //redirect(uri: "/")
        } else {
            flash.message = "用户名或密码错误！"
            println("用户名或密码错误！")
            redirect(uri: "${createLink(uri: '/')}")
        }
    }

    /*
    * 显示登录界面
    * */

    def loginUI() {}

    def index() {
        switch (session.userStatus) {
            case "Teacher":
                redirect(uri: "/operation4Teacher")
                break
            case "Student":
                redirect(uri: "/operation4Student")
                break
            default:
                redirect(uri: "/home")
        }
    }

}

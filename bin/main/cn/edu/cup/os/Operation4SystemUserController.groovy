package cn.edu.cup.os

import cn.edu.cup.system.SystemAttribute
import cn.edu.cup.system.SystemUser
import cn.edu.cup.system.SystemUserController

class Operation4SystemUserController extends SystemUserController {

    def resetUserRight() {
        SystemUser.list().each { e ->
            if (e.appendAttribute) {
                def t = e.appendAttribute.split("=")[0]
                def ur
                //println(t)
                switch (t) {
                    case "Teacher":
                        if (e.userName=="2151") {
                            break
                        }
                        ur = SystemAttribute.findByNameAndUpAttributeIsNull("教师权限")
                        if (ur) {
                            e.roleAttribute = ur
                        } else {
                            println("找不到--教师权限")
                        }
                        break
                    case "Student":
                        ur = SystemAttribute.findByNameAndUpAttributeIsNull("学生权限")
                        if (ur) {
                            e.roleAttribute = ur
                        } else {
                            println("找不到--学生权限")
                        }
                        break
                }
                println("${ur} ${e.roleAttribute}")
                systemUserService.save(e)
            }
        }
        redirect(action: "index")
    }

    def index() {}
}

package cn.edu.cup.basic

import cn.edu.cup.system.SystemUser

/*
班级信息
* */

class GradeInfo {

    String name
    Major major
    PersonTitle personTitle

    static hasMany = [students: Person]

    static constraints = {
        name()
        major()
    }

    String toString() {
        return "${major}.${personTitle.name}.${name}"
    }

    def userCount() {
        def c = 0
        students.each { e ->
            if (SystemUser.countByUserName(e.code) > 0) {
                c++
            }
        }
        return c
    }
}

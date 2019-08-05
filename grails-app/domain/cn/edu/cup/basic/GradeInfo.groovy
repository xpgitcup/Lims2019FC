package cn.edu.cup.basic

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
}

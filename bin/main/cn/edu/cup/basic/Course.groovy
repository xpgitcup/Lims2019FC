package cn.edu.cup.basic

class Course {

    String code
    String name

    static constraints = {
    }

    String toString() {
        return "${code}.${name}"
    }
}

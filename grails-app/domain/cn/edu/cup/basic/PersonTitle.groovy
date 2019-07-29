package cn.edu.cup.basic

import cn.edu.cup.common.SelfCheck

class PersonTitle implements SelfCheck {

    String name
    PersonTitle upTitle

    static hasMany = [subTitles: PersonTitle, persons: Person]

    static constraints = {
        name(unique: true)
        upTitle(nullable: true)
    }

    static mapping = {
        sort: 'id'
        subTitles sort: 'id'  //这是排序的标准做法
        persons sort: 'id'
    }

    String toString() {
        return name
    }

    //------------------------------------------------------------------------------------------------------------------

    String status() {
        def s = "Student"
        if (bePartOfByName("教师")) {
            s = "Teacher"
        }
        return s
    }

    static titleList(title) {
        def pt = PersonTitle.findByName(title)
        return pt.relatedTitles()
    }

    List relatedTitles() {
        def list = []
        if (subTitles) {
            subTitles.each { e ->
                list.addAll(e.relatedTitles())
            }
        } else {
            list.add(this)
        }
        return list
    }

    boolean bePartOfByName(String aTitleName) {
        println("检查归属：${this} ${aTitleName}")
        def aTitle = PersonTitle.findByName(aTitleName)
        println("${aTitle}")
        return bePartOf(aTitle)
    }

    boolean bePartOf(PersonTitle aTitle) {
        boolean isThis = aTitle.name == this.name
        println("是自己：${isThis} ??  ${aTitle.subTitles}")
        //boolean isMember = aTitle.subTitles.toString().contains(this.name) //无法区分博士、博士后
        boolean isMember = aTitle.subTitles.contains(this)
        println("${this} 是成员：${isMember} ")
        return (isThis || isMember)
    }

    @Override
    void selfCheck() {
        if (subTitles) {
            subTitles.each { e ->
                e.upTitle = this
                e.selfCheck()
            }
        }
    }
}

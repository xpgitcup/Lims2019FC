package cn.edu.cup.lims

import cn.edu.cup.common.SelfCheck

/*
*  具体的任务（科研项目、教学任务--的分类都应该是叶子）
* */

class ThingType implements SelfCheck {

    String name
    ThingType upType
    String appendKeys

    static hasMany = [subTypes: ThingType, things: Thing]

    static constraints = {
        name(unique: true)
        upType(nullable: true)
        appendKeys(nullable: true)
    }

    static mapping = {
        sort: 'id'
        subTypes sort: 'id'  //这是排序的标准做法
        things sort: 'id'
    }

    String toString() {
        return "${name}"
    }

    /*
    当前的参数
    * */

    def selfKeys() {
        def ks = com.alibaba.fastjson.JSON.parseArray(appendKeys)
        return ks
    }

    /*
    所有的参数
    * */

    def keys() {
        def ks = []
        def tlist = []
        def ut = upType
        while (ut) {
            tlist.add(ut)
            ut = ut.upType
        }
        tlist.reverse().each { e ->
            ks.addAll(e.selfKeys())
        }
        ks.addAll(this.selfKeys())
        return ks
    }

    //==================================================================================================================

    List relatedThingTypeList() {
        def list = []
        if (subTypes) {
            subTypes.each { e ->
                list.addAll(e.relatedThingTypeList())
            }
        } else {
            list.add(this)
        }
        return list
    }

    boolean bePartOf(ThingType athingType) {
        boolean isThis = athingType.equals(this)
        println("isThis ${isThis} ${athingType}")
        //boolean isMember = subTypes.contains(athingType)
        boolean isMember = athingType.relatedThingTypeList().contains(this)
        println("isMember ${isMember} ${athingType}")
        return (isThis || isMember)
    }

    boolean bePartOfName(String athingTypeName) {
        def type = ThingType.findByName(athingTypeName)
        println("隶属性判断：${type}")
        return bePartOf(type)
    }

    @Override
    void selfCheck() {
        if (subTypes) {
            subTypes.each { e ->
                e.upType = this
                e.selfCheck()
            }
        }
    }
}

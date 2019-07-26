package cn.edu.cup.lims

import cn.edu.cup.basic.Person

class ProgressStatus {

    String status
    Date updateDate
    Person reader

    static belongsTo = [progress: Progress]

    static constraints = {
        status(nullable: true)
        reader()
        updateDate()
    }

    String toString() {
        return "${progress}.${updateDate}.${reader}"
    }

}

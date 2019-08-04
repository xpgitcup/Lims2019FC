package cn.edu.cup.operation

import cn.edu.cup.basic.Person
import cn.edu.cup.basic.PersonTitle
import cn.edu.cup.basic.TutorInfo
import cn.edu.cup.basic.TutorInfoController

class Operation4TutorInfoController extends TutorInfoController {

    def excelByJxlService
    def personService

    /*
    招生
    * */

    def enroll() {
        def teacher = TutorInfo.get(params.id)
        def slist = PersonTitle.findByName("学生").relatedTitles()
        def s = Person.findByNameAndPersonTitleInList(params.name, slist)
        if (s) {
            if (!teacher.students.contains(student)) {
                teacher.students.add(s)
                tutorInfoService.save(teacher)
            }
        } else {
            flash.message = "找不到${params.name}这个学生!"
        }
        redirect(action: "index", params: [flash: flash])
    }

    /*
    下载
    * */

    def downloadTemplate() {
        def fileName = "${commonService.webRootPath}/file4download/学生模板.xls"
        params.downLoadFileName = fileName
        commonService.downLoadFile(params)
    }

    /*
    导入数据
    * */

    def importFromFile() {
        println("导入...${params}")
        if (!params.uploadedFile.empty) {
            //处理文件上传
            def destDir = commonService.webRootPath + "file4import"
            params.destDir = destDir
            println(destDir)
            def sf = commonService.upload(params)
            println("上传${sf}成功...")
            def data = excelByJxlService.importExcelFileToDataTable(sf)
            println("${data}")
            if (data.size() > 0) {
                def resultstr = ""
                def mCount = 0
                data.eachWithIndex { e, i ->
                    println("${e}")
                    if (i > 0) {
                        if (e.size() < 4) {
                            flash.message += "${i}行数据不全。"
                        }
                        def student = Person.findByCodeAndName("${e[0]}", "${e[1]}")
                        def title = PersonTitle.findByName(e[2])
                        def p = Person.findByName(e[3])
                        def teacher = TutorInfo.findByTeacher(p)
                        if (teacher) {
                            if (title) {
                                if (!student) {
                                    println("新建：${e}学生")
                                    student = new Person(
                                            code: "${e[0]}",
                                            name: "${e[1]}",
                                            personTitle: title
                                    )
                                    personService.save(student)
                                    flash.message += "<br>新增学生：${student}</br>"
                                }
                                if (!teacher.students.contains(student)) {
                                    teacher.students.add(student)
                                    tutorInfoService.save(teacher)
                                    mCount++
                                }
                            } else {
                                flash.message += "<br>找不到学生类型：${e[2]}</br>"
                            }
                        } else {
                            flash.message += "<br>找不到教师：${e[3]}</br>"
                        }
                    }
                }
                if (resultstr.empty) {
                    flash.message = "<br>导入${mCount}个记录.</br>"
                } else {
                    flash.message += resultstr
                }
            }
        } else {
            flash.message = "<br>空文件！</br>"
        }
        redirect(action: "index", params: [flash: flash])
    }

    def updateTutors() {
        def tlist = PersonTitle.findByName("教师").relatedTitles()
        def plist = Person.findAllByPersonTitleInList(tlist)
        plist.each { e ->
            if (TutorInfo.countByTeacher(e) < 1) {
                def t = new TutorInfo(teacher: e)
                tutorInfoService.save(t)
            }
        }
        redirect(action: "index")
    }

    def index() {}
}

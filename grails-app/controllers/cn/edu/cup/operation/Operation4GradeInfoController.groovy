package cn.edu.cup.operation

import cn.edu.cup.basic.GradeInfo
import cn.edu.cup.basic.GradeInfoController
import cn.edu.cup.basic.Major
import cn.edu.cup.basic.Person
import cn.edu.cup.basic.PersonTitle
import cn.edu.cup.basic.TutorInfo

class Operation4GradeInfoController extends GradeInfoController {

    def excelByJxlService
    def personService

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

            def title = PersonTitle.get(params.personTitle)
            def major = Major.get(params.major)

            if (data.size() > 0) {
                def resultstr = ""
                def mCount = 0
                data.eachWithIndex { e, i ->
                    println("${e}")
                    if (i > 0) {
                        if (e.size() < 3) {
                            flash.message += "${i}行数据不全。"
                        } else {
                            def student = Person.findByCodeAndName("${e[0]}", "${e[1]}")
                            def grade = GradeInfo.findByName("${e[2]}")
                            if (!grade) {
                                grade = new GradeInfo(
                                        name: "${e[2]}",
                                        major: major,
                                        personTitle: title
                                )
                                gradeInfoService.save(grade)
                                flash.message += "创建班级${e[2]}"
                            }
                            if (!student) {
                                println("新建：${e}学生")
                                student = new Person(
                                        code: "${e[0]}",
                                        name: "${e[1]}",
                                        personTitle: title
                                )
                                personService.save(student)
                                flash.message += "新增学生：${student}"
                            }
                            if (!grade.students) {
                                grade.students = []
                            }
                            if (!grade.students.contains(student)) {
                                grade.students.add(student)
                                gradeInfoService.save(grade)
                            }
                        }
                    }
                }

                if (resultstr.empty) {
                    flash.message = "导入${mCount}个记录."
                } else {
                    flash.message += resultstr
                }
            }
        } else {
            flash.message = "空文件！"
        }
        redirect(action: "index", params: [flash: flash])
    }

    /*
    下载
    * */

    def downloadTemplate() {
        def fileName = "${commonService.webRootPath}/file4download/班级学生模板.xls"
        params.downLoadFileName = fileName
        commonService.downLoadFile(params)
    }

    def index() {}
}

package cn.edu.cup.operation

import cn.edu.cup.basic.Person
import cn.edu.cup.basic.PersonTitle
import cn.edu.cup.basic.TutorInfo
import cn.edu.cup.basic.TutorInfoController

class Operation4TutorInfoController extends TutorInfoController {

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
                def r
                data.eachWithIndex { e, i ->
                }
                if (resultstr.empty) {
                    flash.message = "导入${data.size()}个记录."
                } else {
                    flash.message += resultstr
                }
            }
        } else {
            flash.message = "空文件！"
        }
        redirect(action: "index")
    }

    def updateTutors() {
        def tlist = PersonTitle.findByName("教师").relatedTitles()
        def plist = Person.findAllByPersonTitleInList(tlist)
        plist.each { e->
            if (TutorInfo.countByTeacher(e)<1) {
                def t = new TutorInfo(teacher: e)
                tutorInfoService.save(t)
            }
        }
        redirect(action: "index")
    }

    def index() {}
}

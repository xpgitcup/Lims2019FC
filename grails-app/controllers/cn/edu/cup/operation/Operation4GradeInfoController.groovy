package cn.edu.cup.operation

import cn.edu.cup.basic.GradeInfoController

class Operation4GradeInfoController extends GradeInfoController {

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

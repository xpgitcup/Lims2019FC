bootStrapPaginationSetting.identifier = "GradeInfo"
bootStrapPaginationSetting.controller = "operation4GradeInfo"
bootStrapPaginationSetting.appendFunction = "appendParamsBootStrapGradeInfo";

var card班级信息Div;

$(function () {
    console.info(document.title + "加载了...")
    card班级信息Div = $("#card班级信息Div");
    setupPagination4Card(card班级信息Div);
    loadCurrentPageBootStrap("班级信息");
})

/*
* 生成附加参数---针对每个页面都要重新定义！！！
* */
function appendParamsBootStrap(title) {
    var append = ""

    /*
    * 适应多分支的index函数
    * */
    var currentStatus = $("#currentStatus").text().trim()
    if ((currentStatus != undefined) && (currentStatus)) {
        append += "&currentStatus=" + currentStatus;

        var currentId = $("#currentId").text().trim();
        if (currentId != undefined) {
            if (parseInt(currentId) > 0) {
                append += "&currentId=" + currentId;
            }
        }
    }

    var filter = readStorage("filter" + document.title, "false");
    var keyString = readStorage("keyString" + document.title, "");

    if (filter != "false") {
        // 更新显示
        $("#currentFilter").html(keyString)
        append = "&like=" + keyString;
    }
    return append;
}

/*
* 查询--需要各个页面自定义
* */
function queryStatementBootStrap() {
    // 获取数据
    var keyString = document.getElementById("keyString");

    console.log("查询..." + keyString.value);
    console.info("查询..." + keyString.value);

    // 保存数据
    sessionStorage.setItem("filter" + document.title, "true");
    sessionStorage.setItem("keyString" + document.title, keyString.value);


    location.reload();
}

/*
* 清除过滤条件
* */
function clearFilterBootStrap() {
    sessionStorage.setItem("filter" + document.title, false)
    $("#currentFilter").html("")
    location.reload();
}

/*
* 删除
* */
function deleteGrade(id) {
    ajaxExecuteWithMethod("operation4GradeInfo/delete?id=" + id, "DELETE")
    location.reload();
}
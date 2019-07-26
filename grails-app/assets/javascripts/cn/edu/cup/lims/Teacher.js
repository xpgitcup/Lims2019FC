bootStrapPaginationSetting.identifier = "Teacher"
bootStrapPaginationSetting.controller = "operation4Teacher"
bootStrapPaginationSetting.appendFunction = "appendParamsBootStrap";
//bootStrapPaginationSetting.defaultPageSize = 5	//设置缺省的页长度

var tabs教师日常Div;

$(function () {
    console.info(document.title + "加载了...");
    var currentKey = readStorage("currentKey" + document.title, "");
    if (currentKey != "") {
        window.location.href = "/operation4Teacher/teacherJob?currentKey=" + currentKey;
    } else {
        tabs教师日常Div = $("#tabs教师日常Div");
        setupTabsBootStrap(tabs教师日常Div);
    }
})

/*
* 查询--需要各个页面自定义
* */
function queryStatementBootStrap() {
    var keyString = document.getElementById("keyString");
    console.info("查询..." + keyString.value);
    var title = getCurrentTabTitle(tabs教师日常Div);
    sessionStorage.setItem("filter" + document.title, title);
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
* 生成附加参数---却根据需要调整代码
* */
function appendParamsBootStrap(title) {
    // 根据sessionStorage的参数，设置相应的附加参数，不同的标签的--都在各自页面考虑，所以不带参数
    var append = ""
    var filter = readStorage("filter" + document.title, "false");
    var keyString = readStorage("keyString" + document.title, "");

    console.info("当前关键字：" + keyString);

    if (filter == title) {
        // 更新显示
        $("#currentFilter").html(filter + "." + keyString)
        append = "&like=" + keyString;
        //console.info("更新了吗？.....")
    }

    return append;
}

/*
* 选择当前项目
* */
function selectCurrentThing(id) {
    sessionStorage.setItem("currentKey" + document.title, "Thing");
    sessionStorage.setItem("currentThing" + document.title, title + "=" + id);
    location.reload();
}
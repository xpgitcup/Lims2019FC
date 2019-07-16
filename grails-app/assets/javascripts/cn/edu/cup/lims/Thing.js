bootStrapPaginationSetting.identifier = "Thing"
bootStrapPaginationSetting.controller = "operation4Thing"
bootStrapPaginationSetting.appendFunction = "appendParamsBootStrap";
//bootStrapPaginationSetting.defaultPageSize = 5	//设置缺省的页长度

var tabs项目维护Div;

$(function () {
    console.info(document.title + "加载了...")
    tabs项目维护Div = $("#tabs项目维护Div");
    setupTabsBootStrap(tabs项目维护Div);
})

/*
* 查询--需要各个页面自定义
* */
function queryStatementBootStrap() {
    var keyString = document.getElementById("keyString");
    console.info("查询..." + keyString.value);
    var title = getCurrentTabTitle(tabs项目维护Div);
    sessionStorage.setItem("filter" + document.title, title);
    sessionStorage.setItem("keyString" + document.title, keyString.value);
    //location.reload();
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
    // 这个title 是传进来的，应该直接用！！！！
    console.info("当前标签：" + title);
    var append = "";//"&title=" + title;
    var filter = readStorage("filter" + document.title, "false");
    var keyString = readStorage("keyString" + document.title, "");
    console.info("当前关键字：" + keyString);
    console.info(filter);
    if (filter != "false") {
        // 更新显示
        $("#currentFilter").html(keyString)
        console.info("更新了吗？.....")
    }

    switch (filter) {
        case "like":
            append = "&like=" + keyString;
            break
    }
    return append;
}

function editProject(id) {
    console.info("编辑项目信息...");
    var title = getCurrentTabTitle(tabs项目维护Div);
    ajaxRun("operation4Thing/editProject", id, "list" + title + "Div");
}

function createProject(title) {
    console.info("创建教学任务...");
    //var title = getCurrentTabTitle(operation4ThingDiv);
    ajaxRun("operation4Thing/createProject", 0, "list" + title + "Div");
}

function createCourse(title) {
    console.info("创建教学任务...");
    //var title = getCurrentTabTitle(operation4ThingDiv);
    ajaxRun("operation4Thing/createCourse", 0, "list" + title + "Div");
}

function deleteCourse(id) {
    console.info("删除教学任务：" + id);
    ajaxExecuteWithMethod("operation4Thing/delete?id=" + id, 'DELETE');
    console.info("删除：" + id + "了！");
    location.reload();
}


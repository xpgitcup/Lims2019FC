bootStrapPaginationSetting.identifier = "Person"
bootStrapPaginationSetting.controller = "operation4Person"
bootStrapPaginationSetting.appendFunction = "appendParamsBootStrap";
bootStrapPaginationSetting.onTabShift = shiftDisplay;

var tabs人员维护Div;

$(function(){
    console.info(document.title + "加载了...")
    tabs人员维护Div = $("#tabs人员维护Div");
    setupTabsBootStrap(tabs人员维护Div);
})

/*
* 查询--需要各个页面自定义
* */
function queryStatementBootStrap() {
    var keyString = document.getElementById("keyString");
    console.info("查询..." + keyString.value);
    var title = getCurrentTabTitle(tabs人员维护Div);
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

    return  append;
}

function shiftDisplay(title) {
    sessionStorage.setItem("filter" + document.title, false)
    $("#newTeacher").attr("class", "d-none")
    $("#newStudent").attr("class", "d-none")
    $("#newMaster").attr("class", "d-none")

    switch (title) {
        case "教师":
            $("#newTeacher").attr("class", "")
            break
        case "本科生":
        case "全部本科生":
            $("#newStudent").attr("class", "")
            break
        case "研究生":
        case "全部研究生":
            $("#newMaster").attr("class", "")
            break
    }
}


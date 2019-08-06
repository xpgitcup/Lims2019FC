bootStrapPaginationSetting.identifier = "Team"
bootStrapPaginationSetting.controller = "operation4Team"
bootStrapPaginationSetting.appendFunction = "appendParamsBootStrap";
//bootStrapPaginationSetting.defaultPageSize = 5	//设置缺省的页长度

var tabs团队维护Div;

$(function(){
    console.info(document.title + "加载了...")
    tabs团队维护Div = $("#tabs团队维护Div");
    setupTabsBootStrap(tabs团队维护Div);
})

/*
* 查询--需要各个页面自定义
* */
function queryStatementBootStrap() {
    var keyString = document.getElementById("keyString");
    console.info("查询..." + keyString.value);
    var title = getCurrentTabTitle(tabs团队维护Div);
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


function deleteTeam(id) {
    console.info("删除教学任务：" + id);
    ajaxExecuteWithMethod("operation4Team/delete?id=" + id, 'DELETE');
    console.log("删除：" + id + "了！");
    location.reload();
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
* 解散团队
* */
function disband(id) {
    ajaxExecute("operation4Team/disband/" + id)
    location.reload();
}

/*
* 解聘队员
* */
function dismiss(id) {
    var tid = readStorage("currentKey相关团队", 0);
    ajaxExecute("operation4Team/dismiss/?person=" + id + "&currentTeam=" + tid)
    console.info("解聘：" + id);
    location.reload();
}

function quitTeam(id) {
    ajaxExecute("operation4Team/quitTeam/" + id);
    selectTabByTitle("select", "相关队员");
    location.reload();
}

function joinTeam(id) {
    ajaxExecute("operation4Team/joinTeam/" + id)
    selectCurrentItem(id)
    selectTabByTitle("队员列表");
    selectTabByTitle("我参与的")
}

function createTeam(id) {
    console.info("创建团队...");
    selectCurrentItem(id)
    ajaxExecute("operation4Team/createTeam/" + id)
    selectTabByTitle("相关团队");
    location.reload();
}

function listTeam(id) {
    selectCurrentItem(id)
    //selectTabByTitle( "相关团队");
    selectTabByTitle("相关团队");
}

function selectCurrentItem(id) {
    var title = getCurrentTabTitle(operation4TeamLeft)
    sessionStorage.setItem("currentKey" + title, id);
}

function listMembers(id) {
    selectCurrentItem(id)
    selectTabByTitle("队员列表");
}

/*
* 在这里构建参数
* */
function shiftDisplay(title) {
    console.info("显示当前提示...")
    var key = "currentKey";
    var id;
    var param = ""
    switch (title) {
        case "我领导的":
            break;
        case "可选题目":
            break;
        case "相关团队":
            break;
        case "队员列表":
            break
    }
    return param
}

/*
* 统计函数
* */
function countTeam(title) {
    console.info(jsTitleTeam + "+统计......");
    var append = shiftDisplay(title);
    var total = ajaxCalculate("operation4Team/count?key=" + title + append);
    return total
}

/*
* 数据加载函数
* */
function loadTeam(title, page, pageSize) {
    console.info(jsTitleTeam + "+数据加载......" + title + " 第" + page + "页/" + pageSize);
    var append = shiftDisplay(title);
    var params = getParams(page, pageSize);    //getParams必须是放在最最前面！！
    ajaxRun("operation4Team/list" + params + "&key=" + title + append, 0, "list" + title + "Div");
}
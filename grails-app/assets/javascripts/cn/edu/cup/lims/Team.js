bootStrapPaginationSetting.identifier = "Team"
bootStrapPaginationSetting.controller = "operation4Team"

var card团队维护Div;

$(function(){
    console.info(document.title + "加载了...")
    card团队维护Div = $("#card团队维护Div");
    setupPagination4Card(card团队维护Div);
    loadCurrentPageBootStrap("团队维护")
})


/*
* 生成附加参数
* */
function appendParamsBootStrap(title) {
    return "";
}

function deleteTeam(id) {
    console.info("删除教学任务：" + id);
    ajaxExecuteWithMethod("operation4Team/delete?id=" + id, 'DELETE');
    console.log("删除：" + id + "了！");
    //location.reload();
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
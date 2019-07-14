bootStrapPaginationSetting.identifier = "SystemUser"
bootStrapPaginationSetting.controller = "operation4SystemUser"
bootStrapPaginationSetting.appendFunction = "appendParamsBootStrapSystemUser";

var card用户维护Div;

$(function () {
    console.info(document.title + "加载了...")
    card用户维护Div = $("#card用户维护Div");
    setupPagination4Card(card用户维护Div);
    loadCurrentPageBootStrap("用户维护")
})

/*
* 生成附加参数---针对每个页面都要重新定义！！！
* */
function appendParamsBootStrap(title) {
    var append = ""
    var filter = readStorage("filter" + document.title, "false");
    var keyString = readStorage("keyString" + document.title, "");
    switch (filter) {
        case "true":
            append = "&like=" + keyString;
            // 更新显示
            $("#currentFilter").html(keyString)
            break
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

    //location.reload();
}

/*
* 清除过滤条件
* */
function clearFilterBootStrap() {
    sessionStorage.setItem("filter" + document.title, false)
    $("#currentFilter用户维护").html("")
    location.reload();
}

/*
 * 新建
 * */
function createSystemUser(id) {
    console.info("创建SystemUser. 上级节点：" + id);
    ajaxRun("operation4SystemUser/create", id, "showSystemUserDiv");
}

/*
 * 编辑
 * */
function editSystemUser(id) {
    console.info("编辑SystemUser." + id);
    ajaxRun("operation4SystemUser/edit", id, "showSystemUserDiv");
}

/*
 * 显示当前属性
 * */
function showSystemUser(id) {
    console.info("显示当前" + id);
    if (id) {
        ajaxRun("operation4SystemUser/show", id, "showSystemUserDiv");
    }
}


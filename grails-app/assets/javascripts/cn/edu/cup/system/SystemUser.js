bootStrapPaginationSetting.identifier = "SystemUser"
bootStrapPaginationSetting.controller = "operation4SystemUser"
bootStrapPaginationSetting.appendFunction = "appendParamsBootStrapSystemUser";

var card用户维护Div;

$(function(){
    console.info(document.title + "加载了...")
    card用户维护Div = $("#card用户维护Div");
    setupPagination4Card(card用户维护Div);
    loadCurrentPageBootStrap("用户维护")
})


/*
* 生成附加参数
* */
function appendParamsBootStrapSystemUser(title) {
    // 根据sessionStorage的参数，设置相应的附加参数，不同的标签的--都在各自页面考虑，所以不带参数
    console.info("用户维护" + title);
    var append = ""
    var filter = readStorage("filter" + document.title, "false");
    var keyString = readStorage("keyString" + document.title, "");
    console.info(keyString);
    switch (filter) {
        case "like":
            append = "&like=" + keyString;
            $("#currentFilter").html(keyString)
            break
    }
    return  append;
}


/*
* 清除过滤条件
* */
function clearFilter() {
    sessionStorage.setItem("filter" + document.title, false)
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


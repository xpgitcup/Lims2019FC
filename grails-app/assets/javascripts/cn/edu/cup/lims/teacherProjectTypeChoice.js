var zTreeObjThingType;
// zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
var settingThingType = {
    callback: {
        onClick: treeNodeSelectedThingType
    }
};
// zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
var zNodesThingType;

/*
* 项目列表相关的定义
* */
bootStrapPaginationSetting.identifier = "Thing"
bootStrapPaginationSetting.controller = "operation4Thing"
bootStrapPaginationSetting.appendFunction = "appendParamsBootStrapThing";

var card项目管理Div;

$(function () {
    console.info(document.title + "加载了...")
    zNodesThingType = loadTreeViewDataThingType();
    zTreeObjThingType = $.fn.zTree.init($("#ztreeThingTypeUl"), settingThingType, zNodesThingType);
    zTreeObjThingType.expandAll(true);

    //console.info(document.title + "加载了...")
    card项目管理Div = $("#card项目管理Div");
    setupPagination4Card(card项目管理Div);
    loadCurrentPageBootStrap("项目管理");

});

function loadTreeViewDataThingType() {
    var url = "operation4ThingType/getTreeViewData";
    var json = ajaxCall(url);
    return json
}

function treeNodeSelectedThingType(event, treeId, treeNode) {
    var node = treeNode.value[0]    // thingType.id
    var name = treeNode.name
    console.info("选择" + node);
    location.href = "operation4TeacherProject?currentId=" + node;
}


//------------------------------------------------------------------------------

/*
* 生成附加参数---针对每个页面都要重新定义！！！
* */
function appendParamsBootStrap(title) {
    var append = ""

    /*
    * 适应多分支的index函数
    * */
    var currentStatus = $("#currentStatus").text().trim()
    if (currentStatus != undefined) {
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

var zTreeObjThingType;
// zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
var settingThingType = {
    callback: {
        onClick: treeNodeSelectedThingType
    }
};
// zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
var zNodesThingType;


bootStrapPaginationSetting.identifier = "Plan"
bootStrapPaginationSetting.controller = "operation4Plan"
bootStrapPaginationSetting.appendFunction = "appendParamsBootStrapPlan";

var card通用计划Div;

$(function() {
    console.info(document.title + "加载了...")
    zNodesThingType = loadTreeViewDataThingType();
    zTreeObjThingType = $.fn.zTree.init($("#ztreeThingTypeUl"), settingThingType, zNodesThingType);
    zTreeObjThingType.expandAll(true);

    card通用计划Div = $("#card通用计划Div");
    setupPagination4Card(card通用计划Div);
    loadCurrentPageBootStrap("通用计划")
});

function loadTreeViewDataThingType()
{
    var url = "operation4ThingType/getTreeViewData";
    var json = ajaxCall(url);
    return json
}

/*
* 节点选择
* */
function treeNodeSelectedThingType(event, treeId, treeNode) {
    var node = treeNode.value[0]
    var name = treeNode.name
    console.info("选择" + node);
    $("#createItem").attr('href', 'javascript: createItemAuto(' + node + ')');
    $("#createItem").html("自动创建" + node + "/(" + name + ')的计划');
    $("#editItem").attr('href', 'javascript: editItem(' + node + ')');
    $("#editItem").html("编辑" + node + "/" + name + '计划');
    $("#currentTitle").html(name);

    sessionStorage.setItem("currentThingTypeId" + document.title, node);
    // 获取数据
    var keyString = name
    // 保存数据
    sessionStorage.setItem("filter" + document.title, "true");
    sessionStorage.setItem("keyString" + document.title, name);
    location.reload();
}

function deleteItem(id) {
    ajaxExecuteWithMethod("operation4Plan/delete?id=" + id, 'DELETE');
    location.reload();
}

function editItem(id) {
    console.info("编辑计划...");
    ajaxRun("operation4Plan/edit?thingTypeId=" + id +
        "&view=editTypePlan",
        0, "operation4PlanDiv");
}

function showItem(id) {
    ajaxRun("operation4Plan/show?view=showTypePlan", id, "operation4PlanItemDiv");
}

function createItemAuto(id) {
    console.info("创建计划...");
    ajaxExecute("operation4Plan/createAuto?thingTypeId=" + id);
    location.reload();
}

function createItem(id) {
    console.info("创建计划...");
    ajaxRun("operation4Plan/create?thingTypeId=" + id +
        "&view=createTypePlan",
        0, "operation4PlanDiv");
}

function createPlanItem(id) {
    console.info("创建计划...");
    ajaxRun("operation4Plan/create?thingTypeId=" + id + "&view=createTypePlan",
        0, "operation4PlanDiv");
}

//=============================================================================

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

    location.reload();
}

/*
* 清除过滤条件
* */
function clearFilterBootStrap() {
    sessionStorage.setItem("filter" + document.title, false)
    $("#currentFilter通用计划").html("")
    location.reload();
}

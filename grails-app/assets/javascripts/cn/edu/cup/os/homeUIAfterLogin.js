$(function () {
    /* 统计在线人数 */
    ajaxRun("home/countOnlineUsers", 0, "onlineCount")
    /* 显示顶级菜单*/
    ajaxRun("home/getTopMenuItems", 0, "applicationMenuDiv")
    /* 显示左侧菜单*/
    showLeftMenus();
});

function selectCurrentMenuItem(id) {
    sessionStorage.setItem("currentMenuItem", id);
    //var topMenuItems = $("#topMenuItems");
    //var item = topMenuItems.find("breadcrumb-item active");
    //console.info(item);
    //console.info("点击了！" + id);
    /* 显示左侧菜单*/
    ajaxRun("home/getLeftMenuItems", id, "leftMenuItemListDiv");
}

function showLeftMenus() {
    var id = readStorage("currentMenuItem", 0);
    //var topMenuItems = $("#topMenuItems");
    if (id > 0) {
        /* 显示左侧菜单*/
        ajaxRun("home/getLeftMenuItems", id, "leftMenuItemListDiv");
    }
}
$(function () {
    /* 统计在线人数 */
    ajaxRun("home/countOnlineUsers", 0, "onlineCount")
    /* 显示菜单*/
    ajaxRun("home/getTopMenuItems", 0, "applicationMenuDiv")
});

function selectCurrentMenuItem(id) {
    sessionStorage.setItem("currentMenuItem", id)
}


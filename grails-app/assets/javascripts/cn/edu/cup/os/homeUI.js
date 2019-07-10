$(function () {
    /* 统计在线人数 */
    ajaxRun("home/countOnlineUsers", 0, "onlineCount")
    /* 显示顶级菜单*/
    ajaxRun("home/getTopMenuItems", 0, "applicationMenuDiv")
    /* 显示左侧菜单*/
    ajaxRun("home/getLeftMenuItems", 0, "leftMenuItemListDiv")
});


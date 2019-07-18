var bootStrapPaginationSetting = {
    identifier: "",
    controller: "",
    defaultPageSize: 10,
    // appendFunction: "",  // --比较啰嗦---这里不定义不就成了吗？
    onTabShift: null
}

/*
* 设置Card的翻页属性
* */
function setupPagination4Card(theCardDiv) {
    //console.info("进入单体设置：")
    //console.info(theCardDiv.getAttribute("type"));
    //console.info(theCardDiv.hasOwnProperty("text"));
    //console.info(Object.prototype.toString.call(theCardDiv));
    //console.info(test);
    var pageSize = bootStrapPaginationSetting.defaultPageSize;
    var pageSizeName;
    var total;
    var totalPageName;
    var totalPage;
    var totalCountName;
    var currentPageName;
    var currentPage = 1;
    var title
    var hrefTest = Object.prototype.toString.call(theCardDiv);
    if (hrefTest === "[object HTMLAnchorElement]") {
        title = theCardDiv.text.trim();
    } else {
        title = theCardDiv.attr("title");
    }

    //console.info("处理：" + bootStrapPaginationSetting.identifier + title + "!");
    // 页长度
    pageSizeName = "pageSize" + bootStrapPaginationSetting.identifier + title;
    if (sessionStorage.hasOwnProperty(pageSizeName)) {
        pageSize = parseInt(sessionStorage.getItem(pageSizeName))
    } else {
        sessionStorage.setItem(pageSizeName, pageSize);
    }
    $("#" + pageSizeName).html(pageSize);
    // 总页数
    total = countDataBootStrap(title);
    totalPageName = "totalPage" + bootStrapPaginationSetting.identifier + title;
    totalCountName = "totalCount" + bootStrapPaginationSetting.identifier + title;
    totalPage = Math.ceil(total / pageSize)
    $("#" + totalPageName).html(totalPage)
    $("#" + totalCountName).html(total)
    // 当前页
    currentPageName = "currentPage" + bootStrapPaginationSetting.identifier + title;
    currentPage = 1;
    if (sessionStorage.hasOwnProperty(currentPageName)) {
        currentPage = parseInt(sessionStorage.getItem(currentPageName));
    }
    // 如果当前页大于总页数，跳到开头
    if (currentPage > totalPage) {
        currentPage = 1
    }
    $("#" + currentPageName).html(currentPage);
}


/*
* 设置标签页的--事件处理
* */
function setupTabsBootStrap(tabsDiv) {
    var tabsTitle = tabsDiv.attr("title");
    //console.info(tabsTitle);
    var currentTabName = "currentTab" + tabsTitle + bootStrapPaginationSetting.identifier;
    // 每个标签绑定数据加载函数---
    var title;
    tabsDiv.find("a.nav-link").on("click", function (e) {
        //console.info("激活事件：");
        //console.info(e);
        //console.info(e.target);
        setupPagination4Card(e.target); // 这是关键--标签页与Card统一起来了
        title = $(e.target).text().trim();
        //console.info("初始化设置中的----点击事件..." + title + "!")
        sessionStorage.setItem(currentTabName, title); //记录缺省标签
        loadCurrentPageBootStrap(title)
        // 切换tab事件 ...
        if (bootStrapPaginationSetting.onTabShift != null) {
            var todo = eval(bootStrapPaginationSetting.onTabShift);
            //console.log("切换标签...");
            todo(title);
        }
    })
    // 处理缺省标签
    if (sessionStorage.hasOwnProperty(currentTabName)) {
        var title = sessionStorage.getItem(currentTabName);
        console.info("激活" + title);
        selectTabByTitle(tabsDiv, title);
    } else {
        // 激活第一个
        //$("a.nav-link:first").click()
        tabsDiv.find("a.nav-link:first").click()
    }

}

/*
* 查找当前标题
* */
function getCurrentTabTitle(tabsDiv) {
    var url = "a.nav-link.active.show";
    var tab = tabsDiv.find(url);
    //alert("找到了：" + tab[0].text.trim());
    var title = tab[0].text.trim()
    return title;
}

/*
* 激活指定的标题
* */
function selectTabByTitle(tabsDiv, title) {
    //var url = "a.nav-link:contains('" + title + "')"
    //var tab = $(url)
    var url = "a.nav-link"  //不能用contains
    console.info(url);
    var tab = tabsDiv.find(url).filter(function (index, e) {
        //console.info(e);
        return e.innerText == title;
    });
    if (tab != undefined) {
        tab.click()
    } else {
        // 激活第一个
        $("a.nav-link:first").click()
    }
}

/*
* 加载当前页数据
* */
function loadCurrentPageBootStrap(title) {
    var currentPage = getCurrentPageBootStrap(title)
    var totalPage = getTotalPageBootStrap(title)
    // 这一句很关键---
    if (currentPage > totalPage) {
        currentPage = 1;
    }
    loadDataBootStrap(title, currentPage);
}

/*
* 获取当前页---从sessionStorage中获取
* */
function getCurrentPageBootStrap(title) {
    var currentPageName = "currentPage" + bootStrapPaginationSetting.identifier + title;
    var currentPageNumber
    if (sessionStorage.hasOwnProperty(currentPageName)) {
        currentPageNumber = parseInt(sessionStorage.getItem(currentPageName))
    } else {
        currentPageNumber = 1
        sessionStorage.setItem(currentPageName, currentPageNumber)
    }
    return currentPageNumber
}

/*
* 同时存储到两个地方
* */
function showCurrentPageNumberBootStrap(title, currentPageNumber) {
    var currentPageName = "currentPage" + bootStrapPaginationSetting.identifier + title
    $("#" + currentPageName).html(currentPageNumber);
    sessionStorage.setItem(currentPageName, currentPageNumber);
}


/*
* 获取页码上限
* */
function getTotalPageBootStrap(title) {
    var totalPageName = "totalPage" + bootStrapPaginationSetting.identifier + title;
    var totalPage = parseInt($("#" + totalPageName).html());
    return totalPage;
}

/*
* 获取页面长度
* */
function getPageSizeBootStrap(title) {
    var pageSizeName = "pageSize" + bootStrapPaginationSetting.identifier + title;
    var pageSize = parseInt(sessionStorage.getItem(pageSizeName))
    return pageSize
}

/*
* 加载尾页数据
* */
function loadLastPageBootStrap(title) {
    var currentPage = 1;//getCurrentPage(title)
    var totalPageName = "totalPage" + bootStrapPaginationSetting.identifier + title;
    currentPage = parseInt($("#" + totalPageName).html())
    showCurrentPageNumberBootStrap(title, currentPage);
    loadDataBootStrap(title, currentPage);
}

/*
* 加载首页数据
* */
function loadFirstPageBootStrap(title) {
    var currentPage = 1;//getCurrentPage(title)
    showCurrentPageNumberBootStrap(title, currentPage);
    loadDataBootStrap(title, currentPage);
}


/*
* 向前翻页
* */
function loadPreviousPageBootStrap(title) {
    var currentPage = getCurrentPageBootStrap(title)
    currentPage = currentPage - 1;
    if (currentPage < 1) {
        currentPage = 1;
    }
    showCurrentPageNumberBootStrap(title, currentPage);
    loadDataBootStrap(title, currentPage);
}

/*
* 向后翻页
* */
function loadNextPageBootStrap(title, currentPage) {
    var currentPage = getCurrentPageBootStrap(title)
    var totalPage = getTotalPageBootStrap(title)
    currentPage = currentPage + 1;
    if (currentPage > totalPage) {
        currentPage = totalPage;
    }
    showCurrentPageNumberBootStrap(title, currentPage);
    loadDataBootStrap(title, currentPage);
}

function loadDataBootStrap(title, currentPage) {
    var pageSize = getPageSizeBootStrap(title)
    var pageParams = getParams(currentPage, pageSize)
    var append = appendParamsBootStrap(title)
    var url = bootStrapPaginationSetting.controller + "/list" + pageParams + "&key=" + title + append;
    console.info("列表：" + url);
    ajaxRun(url, 0, "display" + title + "Div");
}

function countDataBootStrap(title) {
    var append = appendParamsBootStrap(title)
    var url = bootStrapPaginationSetting.controller + "/count?key=" + title + append;
    console.info("统计:" + url);
    var total = ajaxCalculate(url);
    return total;
}

// 与搜索有关的代码---------------------------------------------------------


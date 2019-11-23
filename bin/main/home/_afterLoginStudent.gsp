<div class="alert alert-success">
    <strong>登录成功!</strong> 日常操作可以直接点击下面标签页中的链接。其他操作点击左侧菜单！
</div>

<!-- 设置查询 -->
<ul id="query登陆后UL" class="nav navbar bg-light">
    <li>
        <span class="form-inline">
            筛选:<div id="currentFilter" class="text-danger">${keyString}</div>
            <a href="javascript: clearFilterBootStrap()">清除</a>
        </span>
    </li>
    <li>
        <g:form onsubmit="return queryStatementBootStrap()">
            <label>关键字</label>
            <input type="text" id="keyString" name="keyString" value=""/>
            <input type="submit" name="查询" value="查询">
        </g:form>
    </li>
</ul>

<!-- 关于 登陆后 的自动生成代码 -->
<div class="card" id="tabs登陆后Div" title="登陆后">
    <!-- 选项卡 -->
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a href="#div参与的项目" class="nav-link" data-toggle="tab">
                参与的项目
            </a>
        </li><li class="nav-item">
        <a href="#div学业论文" class="nav-link" data-toggle="tab">
            学业论文
        </a>
    </li><li class="nav-item">
        <a href="#div课程作业" class="nav-link" data-toggle="tab">
            课程作业
        </a>
    </li>
    </ul>

    <!-- 具体卡片-->
    <div class="tab-content">
        <!--具体的参与的项目标签-->
        <div id="div参与的项目" class="tab-pane">
            <div id="display参与的项目Div">
                <br> 在这里显示参与的项目所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome参与的项目"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('参与的项目')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('参与的项目')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome参与的项目"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome参与的项目"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('参与的项目')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('参与的项目')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome参与的项目"></a>
                </li>
            </ul>
        </div>
        <!--具体的参与的项目标签结束======-->
        <!--具体的学业论文标签-->
        <div id="div学业论文" class="tab-pane">
            <div id="display学业论文Div">
                <br> 在这里显示学业论文所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome学业论文"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('学业论文')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('学业论文')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome学业论文"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome学业论文"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('学业论文')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('学业论文')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome学业论文"></a>
                </li>
            </ul>
        </div>
        <!--具体的学业论文标签结束======-->
        <!--具体的课程作业标签-->
        <div id="div课程作业" class="tab-pane">
            <div id="display课程作业Div">
                <br> 在这里显示课程作业所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome课程作业"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('课程作业')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('课程作业')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome课程作业"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome课程作业"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('课程作业')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('课程作业')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome课程作业"></a>
                </li>
            </ul>
        </div>
        <!--具体的课程作业标签结束======-->

    </div>
</div>
<!--自动生成的代码结束-->

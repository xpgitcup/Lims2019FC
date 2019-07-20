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
            <a href="#div管理的项目" class="nav-link" data-toggle="tab">
                管理的项目
            </a>
        </li><li class="nav-item">
        <a href="#div领导的项目" class="nav-link" data-toggle="tab">
            领导的项目
        </a>
    </li><li class="nav-item">
        <a href="#div参与的项目" class="nav-link" data-toggle="tab">
            参与的项目
        </a>
    </li><li class="nav-item">
        <a href="#div研究生论文" class="nav-link" data-toggle="tab">
            研究生论文
        </a>
    </li><li class="nav-item">
        <a href="#div课堂教学" class="nav-link" data-toggle="tab">
            课堂教学
        </a>
    </li>
    </ul>

    <!-- 具体卡片-->
    <div class="tab-content">
        <!--具体的管理的项目标签-->
        <div id="div管理的项目" class="tab-pane">
            <div id="display管理的项目Div">
                <br> 在这里显示管理的项目所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome管理的项目"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('管理的项目')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('管理的项目')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome管理的项目"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome管理的项目"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('管理的项目')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('管理的项目')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome管理的项目"></a>
                </li>
            </ul>
        </div>
        <!--具体的管理的项目标签结束======-->
        <!--具体的领导的项目标签-->
        <div id="div领导的项目" class="tab-pane">
            <div id="display领导的项目Div">
                <br> 在这里显示领导的项目所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome领导的项目"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('领导的项目')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('领导的项目')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome领导的项目"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome领导的项目"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('领导的项目')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('领导的项目')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome领导的项目"></a>
                </li>
            </ul>
        </div>
        <!--具体的领导的项目标签结束======-->
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
        <!--具体的研究生论文标签-->
        <div id="div研究生论文" class="tab-pane">
            <div id="display研究生论文Div">
                <br> 在这里显示研究生论文所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome研究生论文"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('研究生论文')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('研究生论文')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome研究生论文"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome研究生论文"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('研究生论文')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('研究生论文')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome研究生论文"></a>
                </li>
            </ul>
        </div>
        <!--具体的研究生论文标签结束======-->
        <!--具体的课堂教学标签-->
        <div id="div课堂教学" class="tab-pane">
            <div id="display课堂教学Div">
                <br> 在这里显示课堂教学所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome课堂教学"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('课堂教学')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('课堂教学')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome课堂教学"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome课堂教学"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('课堂教学')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('课堂教学')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome课堂教学"></a>
                </li>
            </ul>
        </div>
        <!--具体的课堂教学标签结束======-->

    </div>
</div>
<!--自动生成的代码结束-->
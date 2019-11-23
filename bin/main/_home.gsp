<!-- 设置查询 -->
<ul id="query登录前UL" class="nav navbar bg-light">
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

<!-- 关于 登录前 的自动生成代码 -->
<div class="card" id="tabs登录前Div" title="登录前">
    <!-- 选项卡 -->
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a href="#div整体进展" class="nav-link" data-toggle="tab">
                整体进展
            </a>
        </li><li class="nav-item">
        <a href="#div项目进展" class="nav-link" data-toggle="tab">
            项目进展
        </a>
    </li><li class="nav-item">
        <a href="#div教学进展" class="nav-link" data-toggle="tab">
            教学进展
        </a>
    </li><li class="nav-item">
        <a href="#div人员贡献" class="nav-link" data-toggle="tab">
            人员贡献
        </a>
    </li><li class="nav-item">
        <a href="#div登录情况" class="nav-link" data-toggle="tab">
            登录情况
        </a>
    </li><li class="nav-item">
        <a href="#div登录统计" class="nav-link" data-toggle="tab">
            登录统计
        </a>
    </li>
    </ul>

    <!-- 具体卡片-->
    <div class="tab-content">
        <!--具体的整体进展标签-->
        <div id="div整体进展" class="tab-pane">
            <div id="display整体进展Div">
                <br> 在这里显示整体进展所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome整体进展"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('整体进展')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('整体进展')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome整体进展"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome整体进展"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('整体进展')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('整体进展')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome整体进展"></a>
                </li>
            </ul>
        </div>
        <!--具体的整体进展标签结束======-->
        <!--具体的项目进展标签-->
        <div id="div项目进展" class="tab-pane">
            <div id="display项目进展Div">
                <br> 在这里显示项目进展所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome项目进展"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('项目进展')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('项目进展')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome项目进展"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome项目进展"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('项目进展')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('项目进展')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome项目进展"></a>
                </li>
            </ul>
        </div>
        <!--具体的项目进展标签结束======-->
        <!--具体的教学进展标签-->
        <div id="div教学进展" class="tab-pane">
            <div id="display教学进展Div">
                <br> 在这里显示教学进展所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome教学进展"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('教学进展')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('教学进展')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome教学进展"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome教学进展"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('教学进展')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('教学进展')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome教学进展"></a>
                </li>
            </ul>
        </div>
        <!--具体的教学进展标签结束======-->
        <!--具体的人员贡献标签-->
        <div id="div人员贡献" class="tab-pane">
            <div id="display人员贡献Div">
                <br> 在这里显示人员贡献所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome人员贡献"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('人员贡献')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('人员贡献')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome人员贡献"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome人员贡献"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('人员贡献')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('人员贡献')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome人员贡献"></a>
                </li>
            </ul>
        </div>
        <!--具体的人员贡献标签结束======-->
        <!--具体的登录情况标签-->
        <div id="div登录情况" class="tab-pane">
            <div id="display登录情况Div">
                <br> 在这里显示登录情况所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome登录情况"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('登录情况')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('登录情况')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome登录情况"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome登录情况"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('登录情况')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('登录情况')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome登录情况"></a>
                </li>
            </ul>
        </div>
        <!--具体的登录情况标签结束======-->
        <!--具体的登录统计标签-->
        <div id="div登录统计" class="tab-pane">
            <div id="display登录统计Div">
                <br> 在这里显示登录统计所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeHome登录统计"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('登录统计')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('登录统计')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageHome登录统计"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageHome登录统计"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('登录统计')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('登录统计')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountHome登录统计"></a>
                </li>
            </ul>
        </div>
        <!--具体的登录统计标签结束======-->

    </div>
</div>
<!--自动生成的代码结束-->
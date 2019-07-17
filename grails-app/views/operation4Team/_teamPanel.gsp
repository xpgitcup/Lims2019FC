<!-- 设置查询 -->
<ul id="query团队维护UL" class="nav navbar bg-light">
    <g:if test="${cn.edu.cup.lims.Team.count() < 1}">
        <li>
            <span class="form-inline">
                <a href="database/importTeam?next=operation4Team">导入</a>
            </span>
        </li>
    </g:if>
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

<!-- 关于 团队维护 的自动生成代码 -->
<div class="card" id="tabs团队维护Div" title="团队维护">
    <!-- 选项卡 -->
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a href="#div科研项目" class="nav-link" data-toggle="tab">
                科研项目
            </a>
        </li><li class="nav-item">
        <a href="#div教学任务" class="nav-link" data-toggle="tab">
            教学任务
        </a>
    </li><li class="nav-item">
        <a href="#div全部科研项目" class="nav-link" data-toggle="tab">
            全部科研项目
        </a>
    </li><li class="nav-item">
        <a href="#div全部教学任务" class="nav-link" data-toggle="tab">
            全部教学任务
        </a>
    </li>
    </ul>

    <!-- 具体卡片-->
    <div class="tab-content">
        <!--具体的科研项目标签-->
        <div id="div科研项目" class="tab-pane">
            <div id="display科研项目Div">
                <br> 在这里显示科研项目所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeTeam科研项目"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('科研项目')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('科研项目')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageTeam科研项目"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageTeam科研项目"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('科研项目')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('科研项目')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountTeam科研项目"></a>
                </li>
            </ul>
        </div>
        <!--具体的科研项目标签结束======-->
        <!--具体的教学任务标签-->
        <div id="div教学任务" class="tab-pane">
            <div id="display教学任务Div">
                <br> 在这里显示教学任务所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeTeam教学任务"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('教学任务')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('教学任务')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageTeam教学任务"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageTeam教学任务"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('教学任务')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('教学任务')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountTeam教学任务"></a>
                </li>
            </ul>
        </div>
        <!--具体的教学任务标签结束======-->
        <!--具体的全部科研项目标签-->
        <div id="div全部科研项目" class="tab-pane">
            <div id="display全部科研项目Div">
                <br> 在这里显示全部科研项目所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeTeam全部科研项目"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('全部科研项目')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('全部科研项目')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageTeam全部科研项目"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageTeam全部科研项目"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('全部科研项目')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('全部科研项目')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountTeam全部科研项目"></a>
                </li>
            </ul>
        </div>
        <!--具体的全部科研项目标签结束======-->
        <!--具体的全部教学任务标签-->
        <div id="div全部教学任务" class="tab-pane">
            <div id="display全部教学任务Div">
                <br> 在这里显示全部教学任务所需的信息</br>
            </div>
            <!-- 这里是分页设置-->
            <ul class="pagination pagination-sm">
                <li class="page-item">
                    <a class="page-link">页长</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="pageSizeTeam全部教学任务"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadFirstPageBootStrap('全部教学任务')">首页</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript: loadPreviousPageBootStrap('全部教学任务')">&laquo</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="currentPageTeam全部教学任务"></a>
                </li>
                <li class="page-item" >
                    <a class="page-link">/</a>
                </li>
                <li class="page-item" >
                    <a class="page-link" id="totalPageTeam全部教学任务"></a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadNextPageBootStrap('全部教学任务')">&raquo</a>
                </li>
                <li>
                    <a class="page-link" href="javascript: loadLastPageBootStrap('全部教学任务')">尾页</a>
                </li>
                <li class="page-item">
                    <a class="page-link">总记录数</a>
                </li>
                <li class="page-item">
                    <a class="page-link" id="totalCountTeam全部教学任务"></a>
                </li>
            </ul>
        </div>
        <!--具体的全部教学任务标签结束======-->

    </div>
</div>
<!--自动生成的代码结束-->
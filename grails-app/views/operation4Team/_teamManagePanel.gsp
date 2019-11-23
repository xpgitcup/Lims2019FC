<!-- 设置查询 -->
<ul id="query团队管理UL" class="nav navbar bg-light">
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

<!--具体的团队管理标签-->
<div id="card团队管理Div" class="card" title="团队管理">
    <div id="display团队管理Div" class="card-body">
        <br> 在这里显示团队管理所需的信息</br>
    </div>
    <!-- 这里是分页设置-->
    <ul class="pagination pagination-sm">
        <li class="page-item">
            <a class="page-link">页长</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="pageSizeTeam团队管理"></a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadFirstPageBootStrap('团队管理')">首页</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadPreviousPageBootStrap('团队管理')">&laquo</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="currentPageTeam团队管理"></a>
        </li>
        <li class="page-item">
            <a class="page-link">/</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalPageTeam团队管理"></a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadNextPageBootStrap('团队管理')">&raquo</a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadLastPageBootStrap('团队管理')">尾页</a>
        </li>
        <li class="page-item">
            <a class="page-link">总记录数</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalCountTeam团队管理"></a>
        </li>
    </ul>
</div>
<!--具体的团队管理标签结束======-->

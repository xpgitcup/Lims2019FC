<!-- 设置查询 -->
<ul id="query团队选择UL" class="nav navbar bg-light">
    <li><a href="javascript: clearCurrentKey()">返回上级</a></li>
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

<!--具体的团队选择标签-->
<div id="card团队选择Div" class="card" title="团队选择">
    <div id="display团队选择Div" class="card-body">
        <br> 在这里显示团队选择所需的信息</br>
    </div>
    <!-- 这里是分页设置-->
    <ul class="pagination pagination-sm">
        <li class="page-item">
            <a class="page-link">页长</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="pageSizeTeacher团队选择"></a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadFirstPageBootStrap('团队选择')">首页</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadPreviousPageBootStrap('团队选择')">&laquo</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="currentPageTeacher团队选择"></a>
        </li>
        <li class="page-item">
            <a class="page-link">/</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalPageTeacher团队选择"></a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadNextPageBootStrap('团队选择')">&raquo</a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadLastPageBootStrap('团队选择')">尾页</a>
        </li>
        <li class="page-item">
            <a class="page-link">总记录数</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalCountTeacher团队选择"></a>
        </li>
    </ul>
</div>
<!--具体的团队选择标签结束======-->

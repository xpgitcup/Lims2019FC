<!-- 设置查询 -->
<ul id="query课程维护UL" class="nav navbar bg-light">
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

<!--具体的课程维护标签-->
<div id="card课程维护Div" class="card" title="课程维护">
    <div id="display课程维护Div" class="card-body">
        <br> 在这里显示课程维护所需的信息</br>
    </div>
    <!-- 这里是分页设置-->
    <ul class="pagination pagination-sm">
        <li class="page-item">
            <a class="page-link">页长</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="pageSizeCourse课程维护"></a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadFirstPageBootStrap('课程维护')">首页</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadPreviousPageBootStrap('课程维护')">&laquo</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="currentPageCourse课程维护"></a>
        </li>
        <li class="page-item">
            <a class="page-link">/</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalPageCourse课程维护"></a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadNextPageBootStrap('课程维护')">&raquo</a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadLastPageBootStrap('课程维护')">尾页</a>
        </li>
        <li class="page-item">
            <a class="page-link">总记录数</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalCountCourse课程维护"></a>
        </li>
    </ul>
</div>
<!--具体的课程维护标签结束======-->

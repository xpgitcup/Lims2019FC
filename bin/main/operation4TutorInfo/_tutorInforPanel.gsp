<!-- 设置查询 -->
<ul id="query导师信息维护UL" class="nav navbar bg-light">
    <li><a href="operation4TutorInfo/updateTutors">更新信息</a></li>
    <li><a href="operation4TutorInfo/downloadTemplate">下载模板</a></li>
    <li>
        <g:uploadForm method="post" action="importFromFile">
            <ul class="nav navbar p-0">
                <li class="nav-item">
                    <span>
                        <label>导入</label>
                        <input type="file" name="uploadedFile"/>
                        <input type="submit" value="ok">
                    </span>
                </li>
            </ul>
        </g:uploadForm>
    </li>
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

<!--具体的导师信息维护标签-->
<div id="card导师信息维护Div" class="card" title="导师信息维护">
    <div id="display导师信息维护Div" class="card-body">
        <br> 在这里显示导师信息维护所需的信息</br>
    </div>
    <!-- 这里是分页设置-->
    <ul class="pagination pagination-sm">
        <li class="page-item">
            <a class="page-link">页长</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="pageSizeTutorInfo导师信息维护"></a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadFirstPageBootStrap('导师信息维护')">首页</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadPreviousPageBootStrap('导师信息维护')">&laquo</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="currentPageTutorInfo导师信息维护"></a>
        </li>
        <li class="page-item">
            <a class="page-link">/</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalPageTutorInfo导师信息维护"></a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadNextPageBootStrap('导师信息维护')">&raquo</a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadLastPageBootStrap('导师信息维护')">尾页</a>
        </li>
        <li class="page-item">
            <a class="page-link">总记录数</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalCountTutorInfo导师信息维护"></a>
        </li>
    </ul>
</div>
<!--具体的导师信息维护标签结束======-->

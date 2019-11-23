<%@ page import="cn.edu.cup.basic.Major" %>
<!-- 设置查询 -->
<ul id="query班级信息UL" class="nav navbar bg-light">
    <li><a href="operation4GradeInfo/downloadTemplate">下载模板</a></li>
    <li>
        <g:uploadForm method="post" action="importFromFile">
            <ul class="nav navbar p-0">
                <li class="nav-item">
                    <span>
                        <label>专业</label>
                        <g:select
                                name="major" from="${cn.edu.cup.basic.Major.list()}"
                                optionValue="name" optionKey="id">
                        </g:select>
                        <label>类型</label>
                        <g:select
                                from="${cn.edu.cup.basic.PersonTitle.findByName("学生").relatedTitles()}"
                                name="personTitle"
                                optionValue="name" optionKey="id">
                        </g:select>
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

<!--具体的班级信息标签-->
<div id="card班级信息Div" class="card" title="班级信息">
    <div id="display班级信息Div" class="card-body">
        <br> 在这里显示班级信息所需的信息</br>
    </div>
    <!-- 这里是分页设置-->
    <ul class="pagination pagination-sm">
        <li class="page-item">
            <a class="page-link">页长</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="pageSizeGradeInfo班级信息"></a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadFirstPageBootStrap('班级信息')">首页</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="javascript: loadPreviousPageBootStrap('班级信息')">&laquo</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="currentPageGradeInfo班级信息"></a>
        </li>
        <li class="page-item">
            <a class="page-link">/</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalPageGradeInfo班级信息"></a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadNextPageBootStrap('班级信息')">&raquo</a>
        </li>
        <li>
            <a class="page-link" href="javascript: loadLastPageBootStrap('班级信息')">尾页</a>
        </li>
        <li class="page-item">
            <a class="page-link">总记录数</a>
        </li>
        <li class="page-item">
            <a class="page-link" id="totalCountGradeInfo班级信息"></a>
        </li>
    </ul>
</div>
<!--具体的班级信息标签结束======-->

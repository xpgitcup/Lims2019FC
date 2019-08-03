<%--
  Created by IntelliJ IDEA.
  User: LiXiaoping
  Date: 2019/8/3
  Time: 9:06
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<!-- 实现可定制的布局 -->
    <g:if test="${layout}">
        <meta name="layout" content="${layout}"/>
    </g:if>
    <g:else>
        <g:if test="${session.layout}">
            <meta name="layout" content="${session.layout}"/>
        </g:if>
        <g:else>
            <meta name="layout" content="main"/>
        </g:else>
    </g:else>
<!-- end 实现可定制的布局 -->
    <g:set var="entityName" value="TeacherProject"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${entityName}</title>
    <asset:javascript src="cn/edu/cup/lims/${jsName}.js"/>
</head>

<body>
<div class="container-fluid">
    <div class="alert alert-info m-0 p-0">
        <!-- 设置操作指导 -->
        <ul class="nav navbar bg-light">
            <li class="nav-item">
                <span class="form-inline">
                    当前：
                    ${currentStatus}
                </span>
            </li>
            <g:each in="${status}" var="item" status="i">
                <g:if test="${currentStatusIndex == i}">
                    <li class="nav-item">
                        <span class="form-inline">
                            <div class="btn btn-info">${item}</div>
                            <g:if test="${i < 2}">
                                =>
                            </g:if>
                        </span>
                    </li>
                </g:if>
                <g:else>
                    <li class="nav-item">
                        ${item}
                        <g:if test="${i < 2}">
                            =>
                        </g:if>
                    </li>
                </g:else>
            </g:each>
            <g:if test="${currentStatusIndex == 2}">
                <li class="nav-item"><a id="createProgress" href="#" class="btn btn-info">新进展</a></li>
            </g:if>
            <li class="nav-item"><a href="operation4TeacherProject" class="nav-link">返回</a></li>
        </ul>
    </div>

    <!--这里渲染相应的视图-->
    <g:render template="${viewName}"/>
</div>

<div class="d-none" id="currentId">${currentId}</div>

<div class="d-none" id="currentStatus">${currentStatus}</div>

</body>
</html>
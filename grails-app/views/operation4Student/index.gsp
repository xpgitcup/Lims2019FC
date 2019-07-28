<%--
  Created by IntelliJ IDEA.
  User: LiXiaoping
  Date: 2019/7/19
  Time: 22:18
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
    <g:set var="entityName" value="Teacher"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${entityName}</title>
    <asset:javascript src="cn/edu/cup/lims/${jsName}.js"/>
</head>

<body>

<div class="container-fluid">
    <div class="alert alert-info m-0 p-0">
        <!-- 设置查询 -->
        <ul id="query教师日常UL" class="nav navbar bg-light">
            <li>
                <span class="form-inline">
                    当前状态：
                    ${statusInfo}
                </span>
            </li>
            <g:each in="${statusName}" var="item" status="i">
                <g:if test="${currentStatusIndex == i}">
                    <li>
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
            <li><a href="/operation4Teacher">返回</a></li>
            <li>||</li>
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
    </div>
    <g:render template="${viewName}"/>
</div>

<div class="d-none" id="currentId">${currentId}</div>

<div class="d-none" id="currentStatus">${currentStatus}</div>
</body>
</html>
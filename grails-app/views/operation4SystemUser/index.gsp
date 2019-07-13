<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<!--meta name="layout" content="main"/-->
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
    <g:set var="entityName" value="SystemUser"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${entityName}</title>
    <asset:javascript src="cn/edu/cup/system/${entityName}.js"/>
</head>

<body>
<div class="container-fluid">
    <!-- 设置查询 -->
    <ul id="query用户维护UL" class="nav navbar bg-light">
        <li><span class="form-inline">筛选:<div id="currentFilter" class="text-danger">${keyString}</div></span></li>
        <li>
            <a href="javascript: clearFilterBootStrap()">清除筛选</a>
        </li>
        <li>
            <g:form onsubmit="return queryStatementBootStrap(card用户维护Div)">
                <label>关键字</label>
                <input type="text" id="keyString" name="keyString" value=""/>
                <input type="submit" name="查询" value="查询">
            </g:form>
        </li>
    </ul>

    <div class="row">
        <div class="col-6 column">
            <g:render template="systemUserPanel"/>
        </div>

        <div class="col-6 column">
            <div class="card">
                <div id="showSystemUserDiv"></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

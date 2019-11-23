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
<!--这个地方设置成固定的-->
    <g:set var="entityName" value="Plan"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${entityName}</title>
    <asset:javascript src="cn/edu/cup/lims/${entityName}.js"/>
</head>

<body>

<div class="container-fluid">
    <!-- 设置查询 -->
    <ul id="query通用计划UL" class="nav navbar bg-light">
        <li>当前：${planTitle}.${planJsRoutine}</li>
        <li id="currentTitle"></li>
        <li><a id="createItem"></a></li>
        <li><span class="form-inline">筛选:<div id="currentFilter通用计划" class="text-danger">${keyString}</div></span></li>
        <li>
            <a href="javascript: clearFilterBootStrap()">清除筛选</a>
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


    <div class="row">
        <!--左面显示类型-->
        <div class="col-md-4">
            <div class="card">
                <ul id="ztreeThingTypeUl" class="ztree" title="通用计划"></ul>
            </div>
        </div>
        <!--右边显示计划-->
        <div class="col-md-8">
            <g:render template="listPlanPanel"/>
        </div>
    </div>
</div>

<g:if test="${flash.message}">
    <div class="easyui-panel">
        <div class="message" role="status">${flash.message}</div>
    </div>
</g:if>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: LiXiaopingChuyun
  Date: 2019/6/7
  Time: 18:45
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
    <g:set var="entityName" value="Team"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${entityName}</title>
    <asset:javascript src="cn/edu/cup/lims/${entityName}.js"/>
</head>

<body>
<g:if test="${key == '团队管理'}">
    <g:render template="teamManagePanel"/>
</g:if>
<g:else>
    <g:render template="teamPanel"/>
</g:else>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: LiXiaoping
  Date: 2019/7/26
  Time: 17:26
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
    <g:if test="${gotoProgress}">
        <g:set var="entityName" value="TeacherProgress"/>
    </g:if>
    <g:else>
        <g:set var="entityName" value="TeacherTeam"/>
    </g:else>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${entityName}</title>
    <asset:javascript src="cn/edu/cup/lims/${entityName}.js"/>
</head>

<body>

<div class="alert alert-info">
    <strong>${currentTitle}</strong>
</div>
<g:if test="${gotoProgress}">
    <g:render template="progressPanel"/>
</g:if>
<g:else>
    <g:render template="teamPanel"/>
</g:else>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: LiXiaoping
  Date: 2019/8/4
  Time: 8:44
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
    <g:set var="entityName" value="TutorInfo"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${entityName}</title>
    <asset:javascript src="cn/edu/cup/basic/${entityName}.js"/>
    <title></title>
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <g:render template="tutorInforPanel"/>
        </div>
    </div>
</div>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: LiXiaoping
  Date: 2019/4/7
  Time: 20:18
--%>

<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <!--设置Base-->
    <base href="<%=basePath%>"/>

    <!-- 加载石油大学的设置-->
    <asset:stylesheet src="cup/cup20190509.css"/>

    <!-- 先加载BootStrap-->
    <!--asset:stylesheet src="application.css"/-->
    <asset:stylesheet src="bootstrap.min.css"/>
    <!--asset:stylesheet src="bootstrap-treeview/bootstrap-treeview.min.css"/-->

    <asset:stylesheet src="main.css"/>

    <!--zTree -->
    <asset:stylesheet src="ztree/zTreeStyle/zTreeStyle.css"/>

    <!--加载公用的JS -->
    <g:render template="/layouts/commonJS"/>

    <g:layoutHead/>
</head>

<body>

<div class="container-fluid  m-0">
    <!--第一行的内容 -->
    <div class="row m-0 p-0">
        <div class="col-lg-4 m-0 p-0">
            <ul class="nav list-unstyled">
                <li class="nav-item">
                    <asset:image src="cup/${cn.edu.cup.basic.Caption.findByName("main")?.logo}" alt="程序Logo"/>
                </li>
                <li class="nav-item text-white text-center">
                    <h1>${cn.edu.cup.basic.Caption.findByName("main")?.title}</h1>
                </li>
            </ul>
        </div>

        <div class="col-lg-7 text-center">
            <g:if test="${session.systemUser}">
                <div id="applicationMenuDiv"></div>
            </g:if>
            <g:else>
                <div class="application-message">
                    请先登录！
                </div>
            </g:else>
        </div>

        <div class="col-lg-1 m-0 p-0">
            <ul class="list-unstyled text-right">
                <g:if test="${session.systemUser}">
                    <li class="list-group-item m-0 p-0 small">
                        当前：${session.userName}/${session.userTitle}
                    </li>
                    <li class="list-group-item m-0 p-0">
                        <a href="${createLink(uri: '/home/changePasswordUI')}">修改密码</a>
                    </li>
                    <li class="list-group-item m-0 p-0">
                        <a href="${createLink(uri: '/home/logout')}">退出</a>
                    </li>
                </g:if>
                <g:else>
                    <li class="list-group-item m-0 p-0">
                        <a href="${createLink(uri: '/home/loginUI')}">去登录</a>
                    </li>
                </g:else>
            </ul>
        </div>
    </div>

    <div class="row m-2"></div>

    <!--第3行-->
    <g:layoutBody/>

    <g:render template="/home/footer"/>

</div>

<!--asset:javascript src="application.js"/-->

</body>
</html>
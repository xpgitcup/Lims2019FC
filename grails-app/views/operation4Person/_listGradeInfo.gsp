<%@ page import="cn.edu.cup.basic.Person; cn.edu.cup.lims.Team" %>
<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="15%">班级</th>
    <th width="10%">专业</th>
    <th width="5%">类型</th>
    <th width="5%">人数</th>
    <th width="5%">注册</th>
    <th>成员</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>
                ${item.name}
                <g:if test="${item.students?.size() < 1}">
                    <a href="javascript: deleteGrade(${item.id})">删除</a>
                </g:if>
                <g:if test="${item.userCount() < 1}">
                    <a href="operation4Person/addToSystemUser?key=grade&id=${item.id}">注册</a>
                </g:if>
                <g:if test="${item.students?.size() > 0}">
                    <g:if test="${item.userCount() == item.students.size()}">
                        <a href="operation4Person/removeFromSystemUser?key=grade&id=${item.id}">毕业</a>
                    </g:if>
                </g:if>
            </td>
            <td>${item.major.name}</td>
            <td>${item.personTitle}</td>
            <td>${item.students?.size()}</td>
            <td>
                ${item.userCount()}

            </td>
            <td>${item.students}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<%@ page import="cn.edu.cup.lims.Team" %>
<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="10%">工号</th>
    <th width="10%">姓名</th>
    <th width="5%">总数</th>
    <th>学生</th>
    <th width="20%">招生</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.teacher.code}</td>
            <td>${item.teacher.name}</td>
            <td>${item.students?.size()}</td>
            <td>${item.students}</td>
            <td>
                <g:form method="post" action="enroll" id="${item.id}">
                    <ul class="nav navbar small p-0">
                        <li class="nav-item">
                            <span>
                                <label>姓名</label>
                                <input type="text" name="name"/>
                                <input type="submit" value="ok">
                            </span>
                        </li>
                    </ul>
                </g:form>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

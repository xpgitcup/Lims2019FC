<%@ page import="cn.edu.cup.lims.Progress; cn.edu.cup.lims.Team" %>
<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th>编号</th>
    <th>课程名</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.code}</td>
            <td>
                ${item?.name}
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

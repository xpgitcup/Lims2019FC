<%@ page import="cn.edu.cup.lims.Progress; cn.edu.cup.lims.Team" %>
<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="20%">项目名称</th>
    <th>进度数</th>
    <th>最新进展</th>
    <th>开始日期</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.thing}</td>
            <td>${cn.edu.cup.lims.Progress.countByTeam(item)}</td>
            <td>${cn.edu.cup.lims.Progress.findByTeam(item, [sort: "regDate", order: "desc"])}</td>
            <td>${item.thing.startDate}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

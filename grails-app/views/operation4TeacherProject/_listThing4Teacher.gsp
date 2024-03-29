<%@ page import="cn.edu.cup.lims.Team" %>
<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="30%">名称</th>
    <th>相关团队</th>
    <th>相关进展</th>
    <th>相关</th>
    <th width="30%">人员</th>
    <th>开始日期</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.name}</td>
            <td>${cn.edu.cup.lims.Team.countByThing(item)}</td>
            <td>
                <g:if test="${cn.edu.cup.lims.Team.countByThing(item) > 0}">
                    ${cn.edu.cup.lims.Progress.countByTeamInList(cn.edu.cup.lims.Team.findAllByThing(item))}
                </g:if>
            </td>
            <td>${item.relatedPersons?.size()}</td>
            <td>${item.relatedPersons}</td>
            <td>${item.startDate}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

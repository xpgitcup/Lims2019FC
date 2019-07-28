<%@ page import="cn.edu.cup.lims.Progress; cn.edu.cup.lims.Team" %>
<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th>ID</th>
    <th width="20%">状态</th>
    <th>问题</th>
    <th width="20%">前情</th>
    <th width="30%">支撑文件</th>
    <th>作者</th>
    <th>日期</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.id}</td>
            <td>
                ${item?.currentStatus}
                <a href="/operation4Teacher/create?team=${item.team.id}">新进展</a>
                <a href="/operation4Teacher/create?preProgress=${item.id}">连续进展</a>
            </td>
            <td>${item.problemEncounter}</td>
            <td>
                <g:if test="${item?.prevProgress != null}">
                    ${item.prevProgress.currentStatus}
                </g:if>
                <g:else>
                    ${item.prevProgress}
                </g:else>
            </td>
            <td>
                <g:if test="${item.supportFileExists()}">
                    <a href="/operation4Teacher/download/${item.id}">${item.supportFileName}</a>
                </g:if>
                <g:else>
                    找不到：${item.supportFileName}
                </g:else>
            </td>
            <td>${item.contributor.name}</td>
            <td>${item.regDate}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

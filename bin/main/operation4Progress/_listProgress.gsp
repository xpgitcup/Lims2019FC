<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="5%">id</th>
    <th width="30%">当前状态</th>
    <th width="20%">遇到问题</th>
    <th>贡献者</th>
    <th>支撑文件</th>
    <th>团队</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.id}</td>
            <td>${item.currentStatus}</td>
            <td>${item.problemEncounter}</td>
            <td>${item.contributor}</td>
            <td>${item.supportFileName}</td>
            <td>${item.team}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

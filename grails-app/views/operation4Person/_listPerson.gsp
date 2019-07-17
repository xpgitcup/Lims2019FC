<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="5%">id</th>
    <th width="30%">编号</th>
    <th width="20%">姓名</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.id}</td>
            <td>${item.code}</td>
            <td>${item.name}</td>
            <td>${item.personTitle}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

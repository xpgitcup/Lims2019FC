<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th>贡献者</th>
    <th>贡献数</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr class="${(i % 2 == 0 ? 'even' : 'odd')}">
            <td>${item[0].name}</td>
            <td>${item[1]}</td>
        </tr>
    </g:each>
    </tbody>
</table>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>


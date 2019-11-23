<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="7%">id</th>
    <th width="12%">Controller</th>
    <th width="10%">关键字</th>
    <th width="10%">参数</th>
    <th>Action</th>
    <th width="45%">查询</th>
    <th>视图</th>
    <th>执行</th>
    <th>isSQL</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>
                ${item.id}
                <a href="javascript: deleteItem(${item.id})">删除</a>
            </td>
            <td>
                <a href="operation4QueryStatementA/edit/${item.id}">${item.controllerName}</a>
            </td>
            <td>${item.keyString}</td>
            <td>${item.paramsString}</td>
            <td>${item.actionName}</td>
            <td>
                ${item.queryString}
            </td>
            <td>${item.viewName}</td>
            <td>${item.needToQuery}</td>
            <td>${item.isSQL}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

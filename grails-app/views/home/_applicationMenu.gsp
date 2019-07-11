<nav class="nav nav-pills m-0 p-0 bg-light" id="topMenuItems">
    <g:if test="${currentMenuItem}">
        <div class="card-header m-0 p-1 text-info">
            当前菜单：${currentMenuItem.menuContext}
        </div>
    </g:if>
    <g:each in="${systemMenuList}" var="item" status="i">
        <g:if test="${item.menuAction == '#'}">
            <a class="breadcrumb-item"
               href="javascript: selectCurrentMenuItem(${item.id})">${item.menuContext}</a>
        </g:if>
        <g:else>
            <a class="breadcrumb-item" href="${item.menuAction}">${item.menuContext}</a>
        </g:else>
    </g:each>
</nav>

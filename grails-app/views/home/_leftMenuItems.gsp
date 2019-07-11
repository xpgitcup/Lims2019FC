<div class="card-header">
    ${currentMenuItem.menuContext}
</div>

<div class="card-body">
    <div class="nav flex-column">
        <g:each in="${menuItems}" var="item" status="i">
            <li class="nav-item">
                <a class="nav-link" href="${item.menuAction}">${item.menuContext}</a>
            </li>
        </g:each>
    </div>
</div>


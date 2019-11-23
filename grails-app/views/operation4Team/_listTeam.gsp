<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="5%">id</th>
    <th width="12%">队长</th>
    <th width="15%">招募</th>
    <th width="15%">解聘</th>
    <th width="20%">任务</th>
    <th>任务类型</th>
    <th>队员</th>
    <th>计划</th>
    <th>进度数</th>
    </thead>
    <g:if test="${objectList.size() < 1}">
        <div style="color: red">没有相关的团队！</div>
    </g:if>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr class="${(i % 2 == 0 ? 'even' : 'odd')}">
            <td>
                <a href="team/show?id=${item.id}&nextController=operation4Team&nextAction=index">
                    ${item.id}
                </a>
            </td>
            <td>
                ${item.leader}
                <g:if test="${(item.progresses?.size() < 1) && (cn.edu.cup.lims.ProjectPlan.countByTeam(item) < 1) && (item.members?.size() < 1)}">
                    <a href="javascript: deleteTeam(${item.id})">删除</a>
                </g:if>
            </td>
            <td>
                <!--招聘-->
                <g:if test="${item.leader == session.systemUser.person()}">
                    <g:form action="recruit" controller="operation4Team">
                        <label>姓名</label>
                        <input id="enlistName" name="name" style="width: 80px">
                        <g:hiddenField name="team" value="${item.id}"/>
                        <input type="submit" value="ok"/>
                    </g:form>
                </g:if>
                <g:else>
                    ${item.leader.name}
                </g:else>
            </td>
            <td>
                <!--解聘-->
                <g:if test="${item.leader == session.systemUser.person()}">
                    <g:form action="dismiss" controller="operation4Team">
                        <label>姓名</label>
                        <input id="enlistName" name="name" style="width: 80px">
                        <g:hiddenField name="team" value="${item.id}"/>
                        <input type="submit" value="ok"/>
                    </g:form>
                </g:if>
                <g:else>
                    ${item.leader.name}
                </g:else>
            </td>
            <td>${item.thing}</td>
            <td>${item.thing.thingType}</td>
            <td>${item.members?.size()}</td>
            <td>${cn.edu.cup.lims.ProjectPlan.countByTeam(item)}</td>
            <td>
                ${item.progresses?.size()}
                <g:if test="${item.progresses?.size() < 1}">
                    <a href="">删除计划</a>
                </g:if>
            </td>
        </tr>
        <tr>
            <td colspan="8">${item.members}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

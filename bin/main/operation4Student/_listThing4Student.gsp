<%@ page import="cn.edu.cup.lims.Team" %>
<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="20%">名称</th>
    <th>相关</th>
    <th>团队</th>
    <th>相关进展</th>
    <th>最新进展</th>
    <th>开始日期</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.name}</td>
            <td>
                ${cn.edu.cup.lims.Team.countByThing(item)}
                <g:if test="${cn.edu.cup.lims.Team.countByLeader(session.systemUser.person()) < 1}">
                    <a href="javascript: createTeam(${item.id})">创建团队</a>
                </g:if>
            </td>
            <td>
            <!-- 只要不是队长，就可以创建团队  -->
                <g:if test="${cn.edu.cup.lims.Team.countByThing(item) > 0}">
                    <g:if test="${cn.edu.cup.lims.Team.countByLeader(session.systemUser.person()) < 1}">
                        <g:form action="joinTeam" controller="operation4Student">
                            <label>加入</label>
                            <input id="leaderName" name="name" style="width: 80px">
                            <g:hiddenField name="thing" value="${item.id}"/>
                            <input type="submit" value="ok"/>
                        </g:form>
                    </g:if>
                    <g:else>
                        ☆
                    </g:else>
                </g:if>
            </td>
            <td>
                <g:if test="${cn.edu.cup.lims.Team.countByThing(item) > 0}">
                    ${cn.edu.cup.lims.Progress.countByTeamInList(cn.edu.cup.lims.Team.findAllByThing(item))}
                </g:if>
            </td>
            <td>
                <g:if test="${cn.edu.cup.lims.Team.countByThing(item) > 0}">
                    ${cn.edu.cup.lims.Progress.findByTeamInList(cn.edu.cup.lims.Team.findAllByThing(item), [sort: "regDate", order: "desc"])}
                </g:if>
            </td>
            <td>${item.startDate}</td>
        </tr>
    </g:each>
    </tbody>
</table>
<g:if test="${objectList.size() < 1}">
    所有任务都选完了！
</g:if>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

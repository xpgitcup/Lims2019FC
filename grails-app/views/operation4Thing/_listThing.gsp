<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th width="5%">id</th>
    <th width="20%">名称</th>
    <th width="10%">类型</th>
    <th>发起人</th>
    <th>涉及</th>
    <th width="30%">人员</th>
    <th>团队</th>
    <th>起始</th>
    <th>结束</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.thingType.name}</td>
            <td>${item.sponsor}</td>
            <td>${item?.relatedPersons?.size()}</td>
            <td>
                <g:form action="addRelatedPersons" controller="operation4Thing">
                    <label>选课班级</label>
                    <g:select from="${cn.edu.cup.basic.GradeInfo.list()}"
                              name="grade"
                              optionKey="id"
                              optionValue="name"
                              multiple="true"
                              size="1"
                              noSelection="${['null': 'Select One...']}"/>
                    <g:hiddenField name="thing" value="${item.id}"/>
                    <input type="submit" value="ok"/>
                </g:form>
            </td>
            <td>${cn.edu.cup.lims.Team.countByThing(item)}</td>
            <td>${item.startDate}</td>
            <td>${item.endDate}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

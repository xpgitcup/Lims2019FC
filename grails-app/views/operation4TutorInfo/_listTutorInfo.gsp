<%@ page import="cn.edu.cup.lims.Team" %>
<asset:stylesheet src="cup/tableConfig.css"/>

<table class="table table-striped table-sm m-0 p-0">
    <thead>
    <th>工号</th>
    <th>姓名</th>
    <th>总数</th>
    <th>学生</th>
    <th width="30%">招生</th>
    <th width="30%">导入</th>
    </thead>
    <tbody>
    <g:each in="${objectList}" var="item" status="i">
        <tr>
            <td>${item.teacher.code}</td>
            <td>${item.teacher.name}</td>
            <td>${item.students?.size()}</td>
            <td>${item.students}</td>
            <td>
                <g:form method="post" action="importFromFile">
                    <ul class="nav navbar small p-0">
                        <li class="nav-item">
                            <input type="text" name="name"/>
                        </li>
                        <li class="nav-item">
                            <input type="submit" value="ok">
                        </li>
                    </ul>
                </g:form>
            </td>
            <td>
                <g:uploadForm method="post" action="importFromFile">
                    <ul class="nav navbar small p-0">
                        <li class="nav-item">
                            <input type="file" name="uploadedFile"/>
                        </li>
                        <li class="nav-item">
                            <input type="hidden" name="key" value="" id="importKey"/>
                        </li>
                        <li class="nav-item">
                            <input type="submit" value="ok">
                        </li>
                    </ul>
                </g:uploadForm>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

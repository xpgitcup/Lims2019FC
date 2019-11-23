<%@ page import="cn.edu.cup.lims.ThingType" %>
<g:if test="${currentId > 0}">
    <g:if test="${cn.edu.cup.lims.ThingType.get(currentId).subTypes?.size() > 0}">
        <div class="card card-body">
            <div class="alert-info">请选择具体的类型！</div>
        </div>
    </g:if>
    <g:else>
        <!-- 设置查询 -->
        <ul id="query项目管理UL" class="nav navbar bg-light">
            <li>
                <span class="form-inline">
                    <a id="createThing"
                       href="javascript: createThing()">创建-${cn.edu.cup.lims.ThingType.get(currentId)}</a>
                </span>
            </li>
            <li>
                <span class="form-inline">
                    筛选:<div id="currentFilter" class="text-danger">${keyString}</div>
                    <a href="javascript: clearFilterBootStrap()">清除</a>
                </span>
            </li>
            <li>
                <g:form onsubmit="return queryStatementBootStrap()">
                    <label>关键字</label>
                    <input type="text" id="keyString" name="keyString" value=""/>
                    <input type="submit" name="查询" value="查询">
                </g:form>
            </li>
        </ul>

        <div id="newThingDiv">
            <g:render template="listThing"/>
        </div>
    </g:else>
</g:if>
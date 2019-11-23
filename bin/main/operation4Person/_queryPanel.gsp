<div class="container-fluid m-0 p-0">
    <ul id="query人员维护UL" class="nav navbar bg-light">
        <li>
            <div id="newTeacher">
                <g:form controller="operation4Person" action="save">
                    <ul>
                        <label>编号</label>
                        <input type="text" name="code">
                        <label>姓名</label>
                        <input type="text" name="name">
                        <lable>类型</lable>
                        <g:select
                                from="${cn.edu.cup.basic.PersonTitle.findAllByUpTitle(cn.edu.cup.basic.PersonTitle.findByName("教师"))}"
                                name="personTitle"
                                optionValue="name" optionKey="id">
                        </g:select>
                        <input type="submit" value="ok">
                    </ul>
                </g:form>
            </div>

            <div id="newStudent">
                <g:form controller="operation4Person" action="save">
                    <ul>
                        <label>编号</label>
                        <input type="text" name="code">
                        <label>姓名</label>
                        <input type="text" name="name">
                        <lable>类型</lable>
                        <g:textField value="${cn.edu.cup.basic.PersonTitle.findByName("本科生")}" name="personTitle">
                        </g:textField>
                        <input type="submit" value="ok">
                    </ul>
                </g:form>
            </div>

            <div id="newMaster">
                <g:form controller="operation4Person" action="save">
                    <ul>
                        <label>编号</label>
                        <input type="text" name="code">
                        <label>姓名</label>
                        <input type="text" name="name">
                        <lable>类型</lable>
                        <g:select
                                from="${cn.edu.cup.basic.PersonTitle.findAllByUpTitle(cn.edu.cup.basic.PersonTitle.findByName("研究生"))}"
                                name="personTitle"
                                optionValue="name" optionKey="id">
                        </g:select>
                        <input type="submit" value="ok">
                    </ul>
                </g:form>
            </div>
        </li>
        <li>
            <span class="form-inline">
                筛选:<div id="currentFilter" class="text-danger">${keyString}</div>
                <a href="javascript: clearFilterBootStrap()">清除</a>
            </span>
        </li>
        <!-- 设置查询 -->
        <li>
            <g:form onsubmit="return queryStatementBootStrap()">
                <label>关键字</label>
                <input type="text" id="keyString" name="keyString" value=""/>
                <input type="submit" name="查询" value="查询">
            </g:form>
        </li>
    </ul>
</div>

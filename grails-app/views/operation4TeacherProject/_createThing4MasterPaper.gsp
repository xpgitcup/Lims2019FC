<div class="card small">
    <div id="create-thing" class="content scaffold-create" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:form action="createMasterPaper" controller="${params.controller}" method="POST">
            <fieldset class="form">

                <div class='fieldcontain'>
                    <label for='paperYear'>年级</label>
                    <g:textField name="paperYear" value="${paperYear}"/>
                </div>

                <div class='fieldcontain'>
                    <label>类型</label>
                    <g:textField name="thingType" value="${thingType.id}"/> ${thingType}
                </div>

                <g:each in="${students}" status="i" var="item">
                    <div class='fieldcontain'>
                        <label>学生</label>
                        <g:textField name="name" value="${paperYear}.${thingType.name}.${item.name}"/>
                        <g:textField name="studentId" value="${item.id}"/>
                    </div>
                </g:each>

            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
            </fieldset>
        </g:form>
    </div>
</div>

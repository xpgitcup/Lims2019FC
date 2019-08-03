<div class="card small">
    <div id="create-thing" class="content scaffold-create" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:form action="saveThings" controller="${params.controller}" method="POST">
            <fieldset class="form">
                <div class='fieldcontain'>
                    <label>类型</label>
                    <g:textField name="thingType" value="${thingType.id}"/> ${thingType}
                </div>

                <div class='fieldcontain'>
                    <label for='startDate'>开始</label>
                    <g:datePicker name="startDate"/>
                </div>

                <div class='fieldcontain'>
                    <label for='endDate'>结束</label>
                    <g:datePicker name="endDate"/>
                </div>

                <div class="fieldcontain">
                    <label>新增(需要输入代码，姓名)</label>
                    <g:checkBox name="personStatus" value="${true}" />
                </div>

                <div class='fieldcontain'>
                    <label>相关人员</label>
                    <g:textArea name="relatedPersons" style="width: 60%"/>
                </div>

            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
            </fieldset>
        </g:form>
    </div>
</div>

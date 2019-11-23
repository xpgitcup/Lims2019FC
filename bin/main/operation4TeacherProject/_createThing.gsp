<div class="card small">
    <div id="create-thing" class="content scaffold-create" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${this.thing}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.thing}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form id="${this.thing.id}" action="save" controller="${params.controller}" method="POST">
            <fieldset class="form">
                <!--f:all bean="thing"/-->

                <div class='fieldcontain'>
                    <label for='name'>Name</label>
                    <g:textField name="name" value="${this.thing.name}"/>
                </div>

                <div class='fieldcontain'>
                    <label for='sponsor'>发起者</label>
                    <g:textField name="sponsor" value="${this.thing.sponsor}"/>
                </div>

                <div class='fieldcontain'>
                    <label for='thingType'>类型</label>
                    <g:textField name="thingType" value="${this.thing.thingType}"/>
                </div>

                <div class='fieldcontain'>
                    <label for='startDate'>开始</label>
                    <g:datePicker name="startDate" value="${this.thing.startDate}"/>
                </div>

                <div class='fieldcontain'>
                    <label for='endDate'>结束</label>
                    <g:datePicker name="endDate" value="${this.thing.endDate}"/>
                </div>


                <g:hiddenField name="nextController" value="${params.nextController}"/>
                <g:hiddenField name="nextAction" value="${params.nextAction}"/>
                <g:hiddenField name="url" value=""/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
            </fieldset>
        </g:form>
    </div>
</div>

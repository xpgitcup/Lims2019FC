<div class="card small">
    <div id="create-thing" class="content scaffold-create" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:form action="createThing4Course" controller="${params.controller}" method="POST">
            <fieldset class="form">

                <div class='fieldcontain'>
                    <label for='schoolYear'>学期</label>
                    <g:textField name="schoolYear" value="${schoolYear}"/>
                </div>

                <div class='fieldcontain'>
                    <label>类型</label>
                    <g:textField name="thingType" value="${thingType.id}"/> ${thingType}
                </div>

                <div class='fieldcontain'>
                    <label>课程</label>
                    <g:select from="${cn.edu.cup.basic.Course.list()}"
                              name="course"
                              optionKey="id"
                              optionValue="name"
                              noSelection="${['null': 'Select One...']}"/>
                </div>

                <div class='fieldcontain'>
                    <label>选课班级</label>
                    <g:select from="${cn.edu.cup.basic.GradeInfo.list()}"
                              name="grade"
                              optionKey="id"
                              optionValue="name"
                              multiple="true"
                              noSelection="${['null': 'Select One...']}"/>
                </div>

                <div class="d-none" id="year">${year}</div>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
            </fieldset>
        </g:form>
    </div>
</div>
<g:javascript>

</g:javascript>
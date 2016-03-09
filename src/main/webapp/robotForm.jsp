<%@ include file="/taglibs.jsp"%>

<head>
    <title><fmt:message key="robotForm.title"/></title>
    <%-- Calendar Setup - put in decorator if needed in multiple pages --%>
    <link  href="${ctx}/styles/calendar.css"  type="text/css"  rel="stylesheet"/>
    <script type="text/javascript" src="${ctx}/scripts/calendar.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/calendar-setup.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/lang/calendar-en.js"></script>
</head>

<p>Please fill in robot's information below:</p>

<form:form commandName="robot" method="post" action="robotform.html" onsubmit="return validateUser(this)" id="robotForm">
<form:errors path="*" cssClass="error"/>
<form:hidden path="id"/>
<table class="detail">
<tr>
    <th><label for="designation"><fmt:message key="robot.designation"/>:</label></th>
    <td>
        <form:input path="designation" id="designation"/>
        <form:errors path="designation" cssClass="fieldError"/>
    </td>
</tr>
<tr>
    <th><label for="id" class="required">* <fmt:message key="robot.id"/>:</label></th>
    <td>
        <form:input path="id" id="id"/>
        <form:errors path="id" cssClass="fieldError"/>
    </td>
</tr>
<tr>
    <th><label for="dateOfBuild"><fmt:message key="robot.dateOfBuild"/>:</label></th>
    <td>
        <form:input path="dateOfBuild" id="dateOfBuild" size="11"/>
        <button id="dateOfBuildCal" type="button" class="button"> ... </button> [<fmt:message key="date.format"/>]
        <form:errors path="dateOfBuild" cssClass="fieldError"/>
    </td>
</tr>
<tr>
    <td></td>
    <td>
        <input type="submit" class="button" name="save" value="Save"/>
      <c:if test="${not empty param.id}">
        <input type="submit" class="button" name="delete" value="Delete" onclick="bCancel=true"/>
      </c:if>
      	<input type="submit" class="button" name="cancel" value="Cancel" onclick="bCancel=true"/>
    </td>
</tr>
</table>
</form:form>

<script type="text/javascript">
    Form.focusFirstElement($('robotForm'));
    Calendar.setup(
    {
        inputField  : "dateOfBuild",      // id of the input field
        ifFormat    : "%m/%d/%Y",      // the date format
        button      : "dateOfBuildCal"    // id of the button
    }
    );
</script>

<v:javascript formName="user" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javascript" src="<c:url value="/scripts/validator.jsp"/>"></script>
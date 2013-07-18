<%@ page import="com.snehinternational.indentmanager.CommissionStatus" %>



<div class="fieldcontain ${hasErrors(bean: commissionStatusInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="commissionStatus.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${commissionStatusInstance?.name}"/>
</div>


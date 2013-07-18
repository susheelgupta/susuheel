<%@ page import="com.snehinternational.indentmanager.PortOfShipment" %>



<div class="fieldcontain ${hasErrors(bean: portOfShipmentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="portOfShipment.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${portOfShipmentInstance?.name}"/>
</div>


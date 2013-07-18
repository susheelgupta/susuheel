
<%@ page import="com.snehinternational.indentmanager.Supplier" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-supplier" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-supplier" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list supplier">
			
				<g:if test="${supplierInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="supplier.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${supplierInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="supplier.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${supplierInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.bankDetails}">
				<li class="fieldcontain">
					<span id="bankDetails-label" class="property-label"><g:message code="supplier.bankDetails.label" default="Bank Details" /></span>
					
						<span class="property-value" aria-labelledby="bankDetails-label"><g:fieldValue bean="${supplierInstance}" field="bankDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.filingReference}">
				<li class="fieldcontain">
					<span id="filingReference-label" class="property-label"><g:message code="supplier.filingReference.label" default="Filing Reference" /></span>
					
						<span class="property-value" aria-labelledby="filingReference-label"><g:fieldValue bean="${supplierInstance}" field="filingReference"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.nextIndentCount}">
				<li class="fieldcontain">
					<span id="nextIndentCount-label" class="property-label"><g:message code="supplier.nextIndentCount.label" default="Next Indent Count" /></span>
					
						<span class="property-value" aria-labelledby="nextIndentCount-label"><g:fieldValue bean="${supplierInstance}" field="nextIndentCount"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${supplierInstance?.id}" />
					<g:link class="edit" action="edit" id="${supplierInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

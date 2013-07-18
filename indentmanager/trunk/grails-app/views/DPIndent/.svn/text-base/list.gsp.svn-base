
<%@ page import="com.snehinternational.indentmanager.DPIndent" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'DPIndent.label', default: 'DPIndent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-DPIndent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-DPIndent" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="price" title="${message(code: 'DPIndent.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'DPIndent.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="portOfShipment" title="${message(code: 'DPIndent.portOfShipment.label', default: 'Port Of Shipment')}" />
					
						<g:sortableColumn property="portOfDischarge" title="${message(code: 'DPIndent.portOfDischarge.label', default: 'Port Of Discharge')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'DPIndent.remarks.label', default: 'Remarks')}" />
					
						<g:sortableColumn property="indentIdentifier" title="${message(code: 'DPIndent.indentIdentifier.label', default: 'Indent Identifier')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${DPIndentInstanceList}" status="i" var="DPIndentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${DPIndentInstance.id}">${fieldValue(bean: DPIndentInstance, field: "price")}</g:link></td>
					
						<td>${fieldValue(bean: DPIndentInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: DPIndentInstance, field: "portOfShipment")}</td>
					
						<td>${fieldValue(bean: DPIndentInstance, field: "portOfDischarge")}</td>
					
						<td>${fieldValue(bean: DPIndentInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: DPIndentInstance, field: "indentIdentifier")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${DPIndentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

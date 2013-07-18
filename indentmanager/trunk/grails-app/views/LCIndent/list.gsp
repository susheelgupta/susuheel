
<%@ page import="com.snehinternational.indentmanager.LCIndent" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LCIndent.label', default: 'LCIndent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-LCIndent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-LCIndent" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="price" title="${message(code: 'LCIndent.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'LCIndent.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="portOfShipment" title="${message(code: 'LCIndent.portOfShipment.label', default: 'Port Of Shipment')}" />
					
						<g:sortableColumn property="portOfDischarge" title="${message(code: 'LCIndent.portOfDischarge.label', default: 'Port Of Discharge')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'LCIndent.remarks.label', default: 'Remarks')}" />
					
						<g:sortableColumn property="indentIdentifier" title="${message(code: 'LCIndent.indentIdentifier.label', default: 'Indent Identifier')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LCIndentInstanceList}" status="i" var="LCIndentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LCIndentInstance.id}">${fieldValue(bean: LCIndentInstance, field: "price")}</g:link></td>
					
						<td>${fieldValue(bean: LCIndentInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: LCIndentInstance, field: "portOfShipment")}</td>
					
						<td>${fieldValue(bean: LCIndentInstance, field: "portOfDischarge")}</td>
					
						<td>${fieldValue(bean: LCIndentInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: LCIndentInstance, field: "indentIdentifier")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${LCIndentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

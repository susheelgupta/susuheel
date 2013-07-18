
<%@ page import="com.snehinternational.indentmanager.Buyer" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buyer.label', default: 'Buyer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buyer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-buyer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'buyer.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'buyer.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="bankDetails" title="${message(code: 'buyer.bankDetails.label', default: 'Bank Details')}" />
					
						<g:sortableColumn property="iecCode" title="${message(code: 'buyer.iecCode.label', default: 'Iec Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buyerInstanceList}" status="i" var="buyerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buyerInstance.id}">${fieldValue(bean: buyerInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: buyerInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: buyerInstance, field: "bankDetails")}</td>
					
						<td>${fieldValue(bean: buyerInstance, field: "iecCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${buyerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>


<%@ page import="com.snehinternational.indentmanager.ShippingAdviceDetail" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-shippingAdviceDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-shippingAdviceDetail" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="shippingAdviceDetail.commodity.label" default="Commodity" /></th>
					
						<g:sortableColumn property="containerNo" title="${message(code: 'shippingAdviceDetail.containerNo.label', default: 'Container No')}" />
					
						<g:sortableColumn property="netWeight" title="${message(code: 'shippingAdviceDetail.netWeight.label', default: 'Net Weight')}" />
					
						<g:sortableColumn property="sealNo" title="${message(code: 'shippingAdviceDetail.sealNo.label', default: 'Seal No')}" />
					
						<th><g:message code="shippingAdviceDetail.shippingAdvice.label" default="Shipping Advice" /></th>
					
						<g:sortableColumn property="units" title="${message(code: 'shippingAdviceDetail.units.label', default: 'Units')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shippingAdviceDetailInstanceList}" status="i" var="shippingAdviceDetailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${shippingAdviceDetailInstance.id}">${fieldValue(bean: shippingAdviceDetailInstance, field: "commodity")}</g:link></td>
					
						<td>${fieldValue(bean: shippingAdviceDetailInstance, field: "containerNo")}</td>
					
						<td>${fieldValue(bean: shippingAdviceDetailInstance, field: "netWeight")}</td>
					
						<td>${fieldValue(bean: shippingAdviceDetailInstance, field: "sealNo")}</td>
					
						<td>${fieldValue(bean: shippingAdviceDetailInstance, field: "shippingAdvice")}</td>
					
						<td>${fieldValue(bean: shippingAdviceDetailInstance, field: "units")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${shippingAdviceDetailInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

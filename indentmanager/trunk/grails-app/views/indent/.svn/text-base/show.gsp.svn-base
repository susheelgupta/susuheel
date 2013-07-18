
<%@ page import="com.snehinternational.indentmanager.Indent" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'indent.label', default: 'Indent')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-indent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-indent" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list indent">
			
				<g:if test="${indentInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="indent.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${indentInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="indent.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${indentInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.portOfShipment}">
				<li class="fieldcontain">
					<span id="portOfShipment-label" class="property-label"><g:message code="indent.portOfShipment.label" default="Port Of Shipment" /></span>
					
						<span class="property-value" aria-labelledby="portOfShipment-label"><g:fieldValue bean="${indentInstance}" field="portOfShipment.name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.portOfDischarge}">
				<li class="fieldcontain">
					<span id="portOfDischarge-label" class="property-label"><g:message code="indent.portOfDischarge.label" default="Port Of Discharge" /></span>
					
						<span class="property-value" aria-labelledby="portOfDischarge-label"><g:fieldValue bean="${indentInstance}" field="portOfDischarge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="indent.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${indentInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.indentIdentifier}">
				<li class="fieldcontain">
					<span id="indentIdentifier-label" class="property-label"><g:message code="indent.indentIdentifier.label" default="Indent Identifier" /></span>
					
						<span class="property-value" aria-labelledby="indentIdentifier-label"><g:fieldValue bean="${indentInstance}" field="indentIdentifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="indent.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${indentInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.lastUpdatedAt}">
				<li class="fieldcontain">
					<span id="lastUpdatedAt-label" class="property-label"><g:message code="indent.lastUpdatedAt.label" default="Last Updated At" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdatedAt-label"><g:formatDate date="${indentInstance?.lastUpdatedAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.lastUpdatedBy}">
				<li class="fieldcontain">
					<span id="lastUpdatedBy-label" class="property-label"><g:message code="indent.lastUpdatedBy.label" default="Last Updated By" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdatedBy-label"><g:link controller="user" action="show" id="${indentInstance?.lastUpdatedBy?.id}">${indentInstance?.lastUpdatedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.buyer}">
				<li class="fieldcontain">
					<span id="buyer-label" class="property-label"><g:message code="indent.buyer.label" default="Buyer" /></span>
					
						<span class="property-value" aria-labelledby="buyer-label"><g:link controller="buyer" action="show" id="${indentInstance?.buyer?.id}">${indentInstance?.buyer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.commissionCalculation}">
				<li class="fieldcontain">
					<span id="commissionCalculation-label" class="property-label"><g:message code="indent.commissionCalculation.label" default="Commission Calculation" /></span>
					
						<span class="property-value" aria-labelledby="commissionCalculation-label"><g:fieldValue bean="${indentInstance}" field="commissionCalculation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.commodity}">
				<li class="fieldcontain">
					<span id="commodity-label" class="property-label"><g:message code="indent.commodity.label" default="Commodity" /></span>
					
						<span class="property-value" aria-labelledby="commodity-label"><g:link controller="commodity" action="show" id="${indentInstance?.commodity?.id}">${indentInstance?.commodity?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="indent.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${indentInstance?.country?.id}">${indentInstance?.country?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.packing}">
				<li class="fieldcontain">
					<span id="packing-label" class="property-label"><g:message code="indent.packing.label" default="Packing" /></span>
					
						<span class="property-value" aria-labelledby="packing-label"><g:link controller="packing" action="show" id="${indentInstance?.packing?.id}">${indentInstance?.packing?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.partialTranshipment}">
				<li class="fieldcontain">
					<span id="partialTranshipment-label" class="property-label">
                        <g:message code="indent.partialTranshipment.label" default="Partial Transhipment" /></span>
						<span class="property-value" aria-labelledby="partialTranshipment-label">
                            <g:fieldValue bean="${indentInstance}" field="partialTranshipment"/>
                        </span>
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.paymentTerm}">
				<li class="fieldcontain">
					<span id="paymentTerm-label" class="property-label"><g:message code="indent.paymentTerm.label" default="Payment Term" /></span>
					
						<span class="property-value" aria-labelledby="paymentTerm-label"><g:link controller="paymentTerm" action="show" id="${indentInstance?.paymentTerm?.id}">${indentInstance?.paymentTerm?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.shippingAdvices}">
				<li class="fieldcontain">
					<span id="shippingAdvices-label" class="property-label"><g:message code="indent.shippingAdvices.label" default="Shipping Advices" /></span>
					
						<g:each in="${indentInstance.shippingAdvices}" var="s">
						<span class="property-value" aria-labelledby="shippingAdvices-label"><g:link controller="shippingAdvice" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${indentInstance?.supplier}">
				<li class="fieldcontain">
					<span id="supplier-label" class="property-label"><g:message code="indent.supplier.label" default="Supplier" /></span>
					
						<span class="property-value" aria-labelledby="supplier-label"><g:link controller="supplier" action="show" id="${indentInstance?.supplier?.id}">${indentInstance?.supplier?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${indentInstance?.id}" />
					<g:link class="edit" action="edit" id="${indentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

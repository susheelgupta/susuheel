<%@ page import="com.snehinternational.indentmanager.ShippingAdvice" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'shippingAdvice.label', default: 'ShippingAdvice')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-shippingAdvice" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list" controller="indent">All Indent List</g:link></li>
        <li><g:link class="list" action="buyerWiseList" controller="indent">Buyer Wise Indent List</g:link></li>
        <li><g:link class="list" action="supplierWiseList" controller="indent">Supplier Wise Indent List</g:link></li>
        <li><g:link class="create" action="create" controller="DPIndent">New DP Indent</g:link></li>
        <li><g:link class="create" action="create" controller="LCIndent">New LC Indent</g:link></li>
    </ul>
</div>

<div id="show-shippingAdvice" class="content scaffold-show" role="main">
<h1><g:message code="default.show.label" args="[entityName]"/></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ol class="property-list shippingAdvice">

<g:if test="${shippingAdviceInstance?.invoiceNumber}">
    <li class="fieldcontain">
        <span id="invoiceNumber-label" class="property-label"><g:message code="shippingAdvice.invoiceNumber.label" default="Invoice Number"/></span>
        <span class="property-value" aria-labelledby="invoiceNumber-label"><g:fieldValue bean="${shippingAdviceInstance}" field="invoiceNumber"/></span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.bLNumber}">
    <li class="fieldcontain">
        <span id="bLNumber-label" class="property-label"><g:message code="shippingAdvice.bLNumber.label" default="BL Number"/></span>
        <span class="property-value" aria-labelledby="bLNumber-label"><g:fieldValue bean="${shippingAdviceInstance}" field="bLNumber"/></span>
    </li>
</g:if>
<g:if test="${shippingAdviceInstance?.commissionStatus}">
    <li class="fieldcontain">
        <span id="commissionStatus-label" class="property-label"><g:message code="shippingAdvice.commissionStatus.label" default="Commission Status"/></span>
        <span class="property-value" aria-labelledby="commissionStatus-label">
            <td>${shippingAdviceInstance.commissionStatus.name}</td>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.createdDate}">
    <li class="fieldcontain">
        <span id="createdDate-label" class="property-label"><g:message code="shippingAdvice.createdDate.label" default="Created Date"/></span>
        <span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${shippingAdviceInstance?.createdDate}"/></span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.estimatedTimeOfDeparture}">
    <li class="fieldcontain">
        <span id="estimatedTimeOfDeparture-label" class="property-label">
            <g:message code="shippingAdvice.estimatedTimeOfDeparture.label" default="Estimated Time Of Departure"/>
        </span>
        <span class="property-value" aria-labelledby="estimatedTimeOfDeparture-label">
            <g:formatDate date="${shippingAdviceInstance?.estimatedTimeOfDeparture}"/>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.estimatedTimeOfArrival}">
    <li class="fieldcontain">
        <span id="estimatedTimeOfArrival-label" class="property-label">
            <g:message code="shippingAdvice.estimatedTimeOfArrival.label" default="Estimated Time Of Arrival"/>
        </span>
        <span class="property-value" aria-labelledby="estimatedTimeOfArrival-label">
            <g:formatDate date="${shippingAdviceInstance?.estimatedTimeOfArrival}"/>
        </span>
    </li>
</g:if>
<g:if test="${shippingAdviceInstance?.copyDocumentsSentOn}">
    <li class="fieldcontain">
        <span id="copyDocumentsSentOn-label" class="property-label">
            <g:message code="shippingAdvice.copyDocumentsSentOn.label" default="copyDocumentsSentOn"/>
        </span>
        <span class="property-value" aria-labelledby="copyDocumentsSentOn-label">
            <g:formatDate date="${shippingAdviceInstance?.copyDocumentsSentOn}"/>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.indent}">
    <li class="fieldcontain">
        <span id="indent-label" class="property-label"><g:message code="shippingAdvice.indent.label" default="Indent"/></span>
        <span class="property-value" aria-labelledby="indent-label">
            <g:fieldValue bean="${shippingAdviceInstance}" field="indent.indentIdentifier"/>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.lastUpdatedAt}">
    <li class="fieldcontain">
        <span id="lastUpdatedAt-label" class="property-label"><g:message code="shippingAdvice.lastUpdatedAt.label" default="Last Updated At"/></span>
        <span class="property-value" aria-labelledby="lastUpdatedAt-label"><g:formatDate date="${shippingAdviceInstance?.lastUpdatedAt}"/></span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.lastUpdatedBy}">
    <li class="fieldcontain">
        <span id="lastUpdatedBy-label" class="property-label"><g:message code="shippingAdvice.lastUpdatedBy.label" default="Last Updated By"/></span>
        <span class="property-value" aria-labelledby="lastUpdatedBy-label">
            <g:fieldValue bean="${shippingAdviceInstance}" field="lastUpdatedBy.username"/>
        </span>
    </li>
</g:if>
<g:if test="${shippingAdviceInstance?.noOfContainers}">
    <li class="fieldcontain">
        <span id="noOfContainers-label" class="property-label"><g:message code="shippingAdvice.noOfContainers.label" default="No Of Containers"/></span>
        <span class="property-value" aria-labelledby="noOfContainers-label">
            <g:fieldValue bean="${shippingAdviceInstance}" field="noOfContainers"/></span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.portOfDeparture}">
    <li class="fieldcontain">
        <span id="portOfDeparture-label" class="property-label">
            <g:message code="shippingAdvice.portOfDeparture.label" default="Port Of Departure"/>
        </span>
        <span class="property-value" aria-labelledby="portOfDeparture-label">
            <g:fieldValue bean="${shippingAdviceInstance}" field="portOfDeparture"/>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.portOfLanding}">
    <li class="fieldcontain">
        <span id="portOfLanding-label" class="property-label"><g:message code="shippingAdvice.portOfLanding.label" default="Port Of Discharge"/></span>
        <span class="property-value" aria-labelledby="portOfLanding-label"><g:fieldValue bean="${shippingAdviceInstance}" field="portOfLanding"/></span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.salesOrderNumber}">
    <li class="fieldcontain">
        <span id="salesOrderNumber-label" class="property-label">
            <g:message code="shippingAdvice.salesOrderNumber.label" default="Sales Order Number"/>
        </span>
        <span class="property-value" aria-labelledby="salesOrderNumber-label">
            <g:fieldValue bean="${shippingAdviceInstance}" field="salesOrderNumber"/>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.shippingAdviceStatus}">
    <li class="fieldcontain">
        <span id="shippingAdviceStatus-label" class="property-label">
            <g:message code="shippingAdvice.shippingAdviceStatus.label" default="Shipping Advice Status"/></span>
        <span class="property-value" aria-labelledby="shippingAdviceStatus-label">
            <g:fieldValue bean="${shippingAdviceInstance}" field="shippingAdviceStatus.name"/>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.shippingLine}">
    <li class="fieldcontain">
        <span id="shippingLine-label" class="property-label"><g:message code="shippingAdvice.shippingLine.label" default="Shipping Line"/></span>
        <span class="property-value" aria-labelledby="shippingLine-label"><g:fieldValue bean="${shippingAdviceInstance}" field="shippingLine"/></span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.valueOfShipment}">
    <li class="fieldcontain">
        <span id="valueOfShipment-label" class="property-label">
            <g:message code="shippingAdvice.valueOfShipment.label" default="Value Of Shipment"/>
        </span>
        <span class="property-value" aria-labelledby="valueOfShipment-label">
            <g:fieldValue bean="${shippingAdviceInstance}" field="valueOfShipment"/>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.currentLocation}">
    <li class="fieldcontain">
        <span id="currentLocation-label" class="property-label"><g:message code="shippingAdvice.currentLocation.label" default="Current Location"/></span>
        <span class="property-value" aria-labelledby="currentLocation-label"><g:fieldValue bean="${shippingAdviceInstance}" field="currentLocation"/></span>
    </li>
</g:if>
<g:if test="${shippingAdviceInstance?.airwayBillNumber}">
    <li class="fieldcontain">
        <span id="airwayBillNumber-label" class="property-label">
            <g:message code="shippingAdvice.airwayBillNumber.label" default="Airway Bill Number"/>
        </span>
        <span class="property-value" aria-labelledby="airwayBillNumber-label">
            <g:fieldValue bean="${shippingAdviceInstance}" field="airwayBillNumber"/>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.finalDestination}">
    <li class="fieldcontain">
        <span id="finalDestination-label" class="property-label">
            <g:message code="shippingAdvice.finalDestination.label" default="Final Destination"/>
        </span>
        <span class="property-value" aria-labelledby="finalDestination-label">
            <g:fieldValue bean="${shippingAdviceInstance}" field="finalDestination"/>
        </span>
    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.remarks}">
    <li class="fieldcontain">
        <span id="remarks-label" class="property-label"><g:message code="shippingAdvice.remarks.label" default="Remarks"/></span>

        <span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${shippingAdviceInstance}" field="remarks"/></span>

    </li>
</g:if>

<g:if test="${shippingAdviceInstance?.quantity}">
    <li class="fieldcontain">
        <span id="quantity-label" class="property-label"><g:message code="shippingAdvice.quantity.label" default="Quantity"/></span>

        <span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${shippingAdviceInstance}" field="quantity"/></span>
    </li>
</g:if>
<li class="fieldcontain">
    <span id="shippingAdvicesDetails-label" class="property-label">
        <g:message code="shippingAdvice.shippingAdvicesDetails.label" default="Shipping Advices Details"/>
    </span>
    %{--<g:if test="${shippingAdviceInstance?.shippingAdvicesDetails}">--}%
        %{--<g:each in="${shippingAdviceInstance.shippingAdvicesDetails}" var="shippingAdviceDetailInstance">--}%
            %{--<span class="property-value" aria-labelledby="shippingAdvicesDetails-label">--}%
                %{--<g:link controller="shippingAdviceDetail" action="show"--}%
                        %{--id="${shippingAdviceDetailInstance.id}">${shippingAdviceDetailInstance?.commodity?.name}</g:link>--}%
            %{--</span>--}%
        %{--</g:each>--}%
    %{--</g:if>--}%
    <span class="property-value">
        <g:link controller="shippingAdviceDetail" action="create"
                params="['shippingAdvice.id': shippingAdviceInstance?.id]">Add Container Details</g:link>
    </span>
</li>
</ol>
<g:form>
    <fieldset class="buttons">
        <g:hiddenField name="id" value="${shippingAdviceInstance?.id}"/>
        <g:link class="edit" action="edit" id="${shippingAdviceInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
    </fieldset>
</g:form>
</div>
</body>
</html>

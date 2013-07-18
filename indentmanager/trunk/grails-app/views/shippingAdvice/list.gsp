<%@ page import="com.snehinternational.indentmanager.Indent; com.snehinternational.indentmanager.ShippingAdvice" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main1">
    <g:set var="entityName" value="${message(code: 'shippingAdvice.label', default: 'ShippingAdvice')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-shippingAdvice" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                     default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-shippingAdvice" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="invoiceNumber"
                              title="${message(code: 'shippingAdvice.invoiceNumber.label', default: 'Invoice Number')}"/>
            <g:sortableColumn property="estimatedTimeOfArrival"
                              title="${message(code: 'shippingAdvice.estimatedTimeOfArrival.label', default: 'Estimated Time Of Arrival')}"/>
            <g:sortableColumn property="estimatedTimeOfDeparture"
                              title="${message(code: 'shippingAdvice.estimatedTimeOfDeparture.label', default: 'Estimated Time Of Departure')}"/>
            <g:sortableColumn property="currentLocation"
                              title="${message(code: 'shippingAdvice.currentLocation.label', default: 'Current Location')}"/>
            <g:sortableColumn property="salesOrderNumber"
                              title="${message(code: 'shippingAdvice.salesOrderNumber.label', default: 'Sales Order Number')}"/>
            <g:sortableColumn property="shippingLine"
                              title="${message(code: 'shippingAdvice.shippingLine.label', default: 'Shipping Line')}"/>
            <g:sortableColumn property="noOfContainers"
                              title="${message(code: 'shippingAdvice.noOfContainers.label', default: 'No Of Containers')}"/>
            <g:sortableColumn property="portOfLanding"
                              title="${message(code: 'shippingAdvice.portOfLanding.label', default: 'Port Of Landing')}"/>
            <g:sortableColumn property="portOfDeparture"
                              title="${message(code: 'shippingAdvice.portOfDeparture.label', default: 'Port Of Departure')}"/>
            <g:sortableColumn property="buyer"
                              title="${message(code: 'shippingAdvice.buyer.label', default: 'Buyer')}"/>
            <g:sortableColumn property="supplier"
                              title="${message(code: 'shippingAdvice.supplier.label', default: 'Supplier')}"/>
            <g:sortableColumn property="indentIdentifier"
                              title="${message(code: 'shippingAdvice.indentIdentifier.label', default: 'Indent Identifier')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${shippingAdviceInstanceList}" status="i" var="shippingAdviceInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${shippingAdviceInstance.id}">${fieldValue(bean: shippingAdviceInstance, field: "invoiceNumber")}</g:link></td>
                <td><g:formatDate date="${shippingAdviceInstance.estimatedTimeOfArrival}"/></td>
                <td><g:formatDate date="${shippingAdviceInstance.estimatedTimeOfDeparture}"/></td>
                <td>${shippingAdviceInstance.currentLocation}</td>
                <td>${shippingAdviceInstance.salesOrderNumber}</td>
                <td>${shippingAdviceInstance.shippingLine}</td>
                <td>${shippingAdviceInstance.noOfContainers}</td>
                <td>${shippingAdviceInstance.portOfLanding}</td>
                <td>${shippingAdviceInstance.portOfDeparture}</td>
                <td>${shippingAdviceInstance.indent.buyer.name}</td>
                <td>${shippingAdviceInstance.indent.supplier.name}</td>
                <td>${shippingAdviceInstance.indent.indentIdentifier}</td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${shippingAdviceInstanceTotal}"/>
    </div>
</div>
</body>
</html>

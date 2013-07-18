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
            <th>Invoice Number</th>
            <th>Quantity</th>
            <th>Estimated Time Of Arrival</th>
            <th>Estimated Time Of Departure</th>
            <th>Current Location</th>
            <th>Sales Order Number</th>
            <th>Shipping Line</th>
            <th>No Of Containers</th>
            <th>Port Of Landing</th>
            <th>Port Of Departure</th>
            <th>Buyer</th>
            <th>Supplier</th>
            <th>Indent Identifier</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${shippingAdviceInstanceList}" status="i" var="shippingAdviceInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"  controller="shippingAdvice"
                            id="${shippingAdviceInstance.id}">${fieldValue(bean: shippingAdviceInstance, field: "invoiceNumber")}</g:link></td>
                <td>${shippingAdviceInstance.quantity.encodeAsHTML()}</td>
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
    </div>
</div>
</body>
</html>

<%@ page import="com.snehinternational.indentmanager.LCIndent; com.snehinternational.indentmanager.ShippingAdviceStatus; com.snehinternational.indentmanager.Supplier; com.snehinternational.indentmanager.Buyer; com.snehinternational.indentmanager.Indent; com.snehinternational.indentmanager.ShippingAdvice" %>
<!doctype html>
<html>
<head>
    <r:require module="export"/>
    <meta name="layout" content="main1">
    <g:set var="entityName" value="${message(code: 'shippingAdvice.label', default: 'ShippingAdvice')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-shippingAdvice" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="buyerWiseList">Buyer Wise List</g:link></li>
        <li><g:link class="create" action="supplierWiseList">Supplier Wise List</g:link></li>
        <li><g:link class="create" action="statusWiseList">Status Wise List</g:link></li>
    </ul>
</div>

<div id="list-shippingAdvice" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form action="supplierWiseList" name="supplierWiseListForm">
        <div class="nav" role="navigation">
            <ul>
                <li>Supplier:</li>
                <li>
                    <g:select id="supplier" name="supplierId" from="${Supplier.list()}" optionKey="id" optionValue="name" value="${supplierId}"
                              class="many-to-one" style="width: 300px;" onchange="document.getElementById('supplierWiseListForm').submit();"/>
                </li>
                <li>Status:</li>
                <li><g:select id="shippingAdviceStatusId" name="shippingAdviceStatusId" from="${ShippingAdviceStatus.list()}" optionKey="id" optionValue="name"
                              value="${shippingAdviceStatusId}" class="many-to-one" style="width: 300px;" noSelection="${['':'All']}"
                              onchange="document.getElementById('supplierWiseListForm').submit();"/>
                </li>
                <li>
                    <export:formats formats="['csv']" params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]" class="csvexport"/>
                </li>
            </ul>
        </div>
    </g:form>
    <table>
        <thead>
        <tr>
            <g:sortableColumn property="indent.indentIdentifier" title="${message(code: 'shippingAdvice.indentIdentifier.label', default: 'Indent Identifier')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="indent.grade" title="${message(code: 'shippingAdvice.indent.grade.label', default: 'Grade')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="quantity" title="${message(code: 'shippingAdvice.quantity.label', default: 'Quantity')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="currentLocation" title="${message(code: 'shippingAdvice.currentLocation.label', default: 'Current Location')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="finalDestination" title="${message(code: 'shippingAdvice.finalDestination', default: 'Final Destination')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="invoiceNumber" title="${message(code: 'shippingAdvice.invoiceNumber.label', default: 'Invoice Number')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="bLNumber" title="${message(code: 'shippingAdvice.blNumber.label', default: 'BL Number')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="indent.buyer" title="${message(code: 'shippingAdvice.buyer.label', default: 'Buyer')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="shippingLine" title="${message(code: 'shippingAdvice.shippingLine.label', default: 'Shipping Line')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="noOfContainers" title="${message(code: 'shippingAdvice.noOfContainers.label', default: 'No Of Containers')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="shippingAdviceStatus.name" title="${message(code: 'shippingAdvice.shippingAdviceStatus.label', default: 'Status')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="estimatedTimeOfDeparture" title="${message(code: 'shippingAdvice.estimatedTimeOfDeparture.label', default: 'ETD')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
            <g:sortableColumn property="estimatedTimeOfArrival" title="${message(code: 'shippingAdvice.estimatedTimeOfArrival', default: 'ETA')}"
                              params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
        </tr>
        </thead>
        <tbody>
        <g:each in="${shippingAdviceInstanceList}" status="i" var="shippingAdviceInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fieldValue(bean: shippingAdviceInstance, field: "indent.indentIdentifier")}
                <g:if test="${shippingAdviceInstance.indent.instanceOf(LCIndent)}">(LC)</g:if> <g:else>(DP)</g:else>
                </td>
                <td>${fieldValue(bean: shippingAdviceInstance, field: "indent.grade")}</td>
                <td>${shippingAdviceInstance.quantity}</td>
                <td>${shippingAdviceInstance.currentLocation}</td>
                <td>${shippingAdviceInstance.finalDestination}</td>
                <td><g:link action="show" id="${shippingAdviceInstance.id}">${fieldValue(bean: shippingAdviceInstance, field: "invoiceNumber")}</g:link></td>
                <td>${shippingAdviceInstance.bLNumber}</td>
                <td>${shippingAdviceInstance.indent.buyer.name}</td>
                <td>${shippingAdviceInstance.shippingLine}</td>
                <td>${shippingAdviceInstance.noOfContainers}</td>
                <td>${shippingAdviceInstance.shippingAdviceStatus.name}</td>
                <td><g:formatDate date="${shippingAdviceInstance.estimatedTimeOfDeparture}" format="yyyy-MM-dd"/></td>
                <td><g:formatDate date="${shippingAdviceInstance.estimatedTimeOfArrival}" format="yyyy-MM-dd"/></td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${shippingAdviceInstanceTotal}" params="[supplierId:supplierId,shippingAdviceStatusId:shippingAdviceStatusId]"/>
    </div>
</div>
</body>
</html>

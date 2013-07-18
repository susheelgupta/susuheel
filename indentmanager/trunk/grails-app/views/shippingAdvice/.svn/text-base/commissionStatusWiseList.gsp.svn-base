<%@ page import="com.snehinternational.indentmanager.CommissionStatus; com.snehinternational.indentmanager.LCIndent; com.snehinternational.indentmanager.ShippingAdviceStatus; com.snehinternational.indentmanager.Supplier; com.snehinternational.indentmanager.Buyer; com.snehinternational.indentmanager.Indent; com.snehinternational.indentmanager.ShippingAdvice" %>
<!doctype html>
<html>
<head>
    <r:require module="export"/>
    <meta name="layout" content="main">
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
    <g:form action="commissionStatusWiseList" name="commissionStatusWiseListForm">
        <div class="nav" role="navigation">
            <ul>
                <li>Supplier:</li>
                <li>
                    <g:select id="supplier" name="supplierId" from="${Supplier.list()}" optionKey="id" optionValue="name" value="${supplierId}"
                              class="many-to-one" style="width: 300px;" onchange="document.getElementById('commissionStatusWiseListForm').submit();"/>
                </li>
                <li>Commission Status:</li>
                <li>
                    <g:select id="commissionStatus" name="commissionStatusId" from="${CommissionStatus.list()}" optionKey="id" optionValue="name"
                              value="${commissionStatusId}"
                              class="many-to-one" style="width: 190px;" noSelection="${['':'All']}" onchange="document.getElementById('commissionStatusWiseListForm').submit();"/>

                </li>
                <li>
                    <export:formats formats="['csv']" params="[commissionStatusId: commissionStatusId, supplierId:supplierId]" class="csvexport"/>
                </li>
            </ul>
        </div>
    </g:form>
    <table>
        <thead>
        <tr>
            <g:sortableColumn property="indent.indentIdentifier" title="${message(code: 'shippingAdvice.indentIdentifier.label', default: 'Indent Identifier')}"
                              params="[supplierId:supplierId,commissionStatusId:commissionStatusId]"/>
            <g:sortableColumn property="invoiceNumber" title="${message(code: 'shippingAdvice.invoiceNumber.label', default: 'Invoice Number')}"
                              params="[supplierId:supplierId,commissionStatusId:commissionStatusId]"/>
            <g:sortableColumn property="quantity" title="${message(code: 'shippingAdvice.quantity.label', default: 'Quantity')}"
                              params="[supplierId:supplierId,commissionStatusId:commissionStatusId]"/>
            <g:sortableColumn property="indent.buyer" title="${message(code: 'shippingAdvice.buyer.label', default: 'Buyer')}"
                              params="[supplierId:supplierId,commissionStatusId:commissionStatusId]"/>
            <g:sortableColumn property="indent.commission" title="${message(code: 'shippingAdvice.commission.label', default: 'Commission')}"
                              params="[supplierId:supplierId,commissionStatusId:commissionStatusId]"/>
            <g:sortableColumn property="indent.specialCommission"
                              title="${message(code: 'shippingAdvice.specialCommission.label', default: 'Special Commission')}"
                              params="[supplierId:supplierId,commissionStatusId:commissionStatusId]"/>
            <g:sortableColumn property="shippingAdviceStatus.name" title="${message(code: 'shippingAdvice.shippingAdviceStatus.label', default: 'Shipping Advice Status')}"
                              params="[supplierId:supplierId,commissionStatusId:commissionStatusId]"/>
            <g:sortableColumn property="commissionStatus.name" title="${message(code: 'shippingAdvice.commissionStatus.label', default: 'Commission Status')}"
                              params="[supplierId:supplierId,commissionStatusId:commissionStatusId]"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${shippingAdviceInstanceList}" status="i" var="shippingAdviceInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fieldValue(bean: shippingAdviceInstance, field: "indent.indentIdentifier")}
                <g:if test="${shippingAdviceInstance.indent.instanceOf(LCIndent)}">(LC)</g:if> <g:else>(DP)</g:else>
                </td>
                <td><g:link action="show" id="${shippingAdviceInstance.id}">${fieldValue(bean: shippingAdviceInstance, field: "invoiceNumber")}</g:link></td>
                <td>${shippingAdviceInstance.quantity}</td>
                <td>${shippingAdviceInstance.indent.buyer.name}</td>
                %{--<g:if test="${shippingAdviceInstance.shippingAdviceStatus.name.equals("Pending")}">--}%
                    %{--<td></td>--}%
                    %{--<td></td>--}%
                %{--</g:if>--}%
                %{--<g:else>--}%
                    %{--<td>${shippingAdviceInstance.indent.commission}</td>--}%
                    %{--<td>${shippingAdviceInstance.indent.specialCommission}</td>--}%

                %{--</g:else>--}%
                <td>${shippingAdviceInstance.indent.commission}</td>
                <td>${shippingAdviceInstance.indent.specialCommission}</td>
                <td>${shippingAdviceInstance.shippingAdviceStatus.name}</td>
                <td>${shippingAdviceInstance.commissionStatus.name}</td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${shippingAdviceInstanceTotal}" params="[supplierId:supplierId,commissionStatusId:commissionStatusId]"/>
    </div>
</div>
</body>
</html>

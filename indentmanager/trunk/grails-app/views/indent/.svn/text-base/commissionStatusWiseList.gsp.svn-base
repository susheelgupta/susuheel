<%@ page import="com.snehinternational.indentmanager.CommissionStatus; com.snehinternational.indentmanager.Supplier; com.snehinternational.indentmanager.LCIndent; com.snehinternational.indentmanager.Indent" %>
<!doctype html>
<html>
<head>
    <r:require module="export"/>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'indent.label', default: 'Indent')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-indent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

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

<div id="list-indent" class="content scaffold-list" role="main">
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
                              class="many-to-one" style="width: 190px;" onchange="document.getElementById('commissionStatusWiseListForm').submit();"/>

                </li>
                <li>
                    <export:formats formats="['csv']" params="[commissionStatusId: commissionStatusId]" class="csvexport"/>
                </li>
            </ul>
        </div>
    </g:form>
    <table>
        <thead>
        <tr>
            <g:sortableColumn property="indentIdentifier" title="${message(code: 'indent.indentIdentifier.label', default: 'Indent Identifier')}"/>
            <g:sortableColumn property="buyer.name" title="Buyer"/>
            <g:sortableColumn property="quantity" title="${message(code: 'indent.quantity.label', default: 'Quantity')}"/>
            <g:sortableColumn property="invoiceNumber" title="${message(code: 'indent.invoiceNumber.label', default: 'Invice Number')}"/>
            <g:sortableColumn property="commission" title="${message(code: 'indent.commission.label', default: 'Commission')}"/>
            <g:sortableColumn property="specialCommission" title="${message(code: 'indent.specialCommission.label', default: 'Special Commission')}"/>
            <th>${message(code: 'indent.indentStatus.label', default: 'Indent Status')}</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${indentInstanceList}" status="i" var="indentInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>
                    <g:if test="${indentInstance.instanceOf(LCIndent)}">
                        <g:link controller="LCIndent" action="show" id="${indentInstance.id}">${indentInstance.indentIdentifier}</g:link>
                    </g:if>
                    <g:else>
                        <g:link controller="DPIndent" action="show" id="${indentInstance.id}">${indentInstance.indentIdentifier}</g:link>
                    </g:else>
                </td>
                <td>${indentInstance.buyer.name}</td>
                <td>${indentInstance.supplier.name}</td>
                <td>${indentInstance.commodity.name}</td>
                <td>${indentInstance.quantity}</td>
                <td>${indentInstance.price}</td>
                <td>${indentInstance.commission}</td>
                <td>${indentInstance.specialCommission}</td>
                <td>${indentInstance.indentStatus}</td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${indentInstanceTotal}" params="[commissionStatusId:commissionStatusId]"/>
    </div>
</div>
</body>
</html>

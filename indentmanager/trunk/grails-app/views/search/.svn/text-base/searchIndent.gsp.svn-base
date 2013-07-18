<%@ page import="com.snehinternational.indentmanager.Buyer; com.snehinternational.indentmanager.Supplier; com.snehinternational.indentmanager.LCIndent; com.snehinternational.indentmanager.Indent" %>
<!doctype html>
<html>
<head>
    <r:require module="export"/>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'indent.label', default: 'Indent')}"/>
    <title>Search</title>
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
    <table>
        <thead>
        <tr>
            <th>Ident Identifier</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Port Of Shipment</th>
            <th>Port Of Discharge</th>
            <th>Remarks</th>
            <th>Commission</th>
            <th>Indent Status</th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${indentInstanceList}" status="i" var="indentInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td style="width: 150px;">
                    <g:if test="${indentInstance.instanceOf(LCIndent)}">
                        <g:link controller="LCIndent" action="show" id="${indentInstance.id}">${indentInstance.indentIdentifier + "(LC)"}</g:link>
                    </g:if>
                    <g:else>
                        <g:link controller="DPIndent" action="show" id="${indentInstance.id}">${indentInstance.indentIdentifier + "(DP)"}</g:link>
                    </g:else>
                </td>
                <td>${indentInstance.buyer.name}</td>
                <td>${indentInstance.supplier.name}</td>
                <td>${indentInstance.commodity.name}</td>
                <td>${indentInstance.quantity}</td>
                <td>${indentInstance.price}</td>
                <td>${indentInstance.commission}</td>
                <td>${indentInstance.indentStatus}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>

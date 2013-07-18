<%@ page import="com.snehinternational.indentmanager.Buyer; com.snehinternational.indentmanager.Supplier; com.snehinternational.indentmanager.LCIndent; com.snehinternational.indentmanager.Indent" %>
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
    <g:form action="buyerWiseList" name="buyerWiseListForm">
        <div class="nav" role="navigation">
            <ul>
                <li>Buyer:</li>
                <li>
                    <g:select id="buyer" name="buyerId" from="${Buyer.list()}" optionKey="id" optionValue="name" value="${buyerId}"
                              class="many-to-one" style="width: 300px;" onchange="document.getElementById('buyerWiseListForm').submit();"/>
                </li>
                <li>
                    <export:formats formats="['csv']" params="[buyerId: buyerId]" class="csvexport"/>
                </li>
            </ul>
        </div>
    </g:form>
    <table>
        <thead>
        <tr>
            <g:sortableColumn property="indentIdentifier" title="${message(code: 'indent.indentIdentifier.label', default: 'Indent no.')}"
                              params="[buyerId:buyerId]"/>
            <g:sortableColumn property="commodity.name" title="Commodity" params="[buyerId:buyerId]"/>
            <g:sortableColumn property="quantity" title="${message(code: 'indent.quantity.label', default: 'Quantity')}" params="[buyerId:buyerId]"/>
            <th>Special Instruction</th>
            <th>Remarks</th>
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
                <td>${indentInstance.commodity.name}</td>
                <td>${indentInstance.quantity}</td>
                <td>${indentInstance.specialInstruction}</td>
                <td>
                    <g:each in="${indentInstance?.shippingAdvices}" var="shippingAdvice">
                        <span>${shippingAdvice?.remarks.encodeAsHTML()}</span><br/>
                    </g:each>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${indentInstanceTotal}" params="[buyerId:buyerId]"/>
    </div>
</div>
</body>
</html>

<%@ page import="com.snehinternational.indentmanager.Supplier; com.snehinternational.indentmanager.CommissionStatus" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'commissionStatus.label', default: 'CommissionStatus')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-commissionStatus" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-commissionStatus" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form action="supplierWiseCommissionList" name="supplierWiseCommissionListForm">
        <div class="nav" role="navigation">
            <ul>
                <li>Supplier:</li>
                <li>
                    <g:select id="supplier" name="supplierId" from="${Supplier.list()}" optionKey="id" optionValue="name" value="${supplierId}"
                              class="many-to-one" style="width: 300px;" onchange="document.getElementById('supplierWiseCommissionListForm').submit();"/>
                </li>
                <li>Commission Status:</li>
                <li><g:select id="commissionStatusId" name="commissionStatusId" from="${CommissionStatus.list()}" optionKey="id" optionValue="name"
                              value="${commissionStatusId}" class="many-to-one" style="width: 300px;"
                              onchange="document.getElementById('supplierWiseCommissionListForm').submit();"/>
                </li>
                <li>
                    <export:formats formats="['csv']" params="[supplierId:supplierId,commissionStatusId:commissionStatusId]" class="csvexport"/>
                </li>
            </ul>
        </div>
    </g:form>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'commissionStatus.name.label', default: 'Name')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${commissionStatusInstanceList}" status="i" var="commissionStatusInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${commissionStatusInstance.id}">${fieldValue(bean: commissionStatusInstance, field: "name")}</g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${commissionStatusInstanceTotal}"/>
    </div>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Susheel
  Date: 4/29/13
  Time: 12:14 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Search For Indent Manager</title>
</head>

<body>
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

<div style="margin-left: 20px; margin-top: 20px;">
    <sec:ifLoggedIn>
        <g:form name="searchForm" action="search" controller="search" method="GET">
           Search For:  <g:textField name="query" value="${params.query}"/>
             Search In:<g:select id="searchType" name="searchType" value="${params.searchType}"
                                from="${['0': 'Indent Identifier', '1': 'Sales Order No','2':'Invoice Number','3':'Quantity']}"
                                optionKey="key" optionValue="value"/>
            <g:submitButton name="searchButton" value="Search"/>
        </g:form>
    </sec:ifLoggedIn>
</div>

</body>
</html>
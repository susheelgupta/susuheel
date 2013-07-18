<%@ page import="com.snehinternational.indentmanager.ShippingAdviceDetail" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'shippingAdviceDetail.label', default: 'ShippingAdviceDetail')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-shippingAdviceDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

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

<div id="show-shippingAdviceDetail" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list shippingAdviceDetail">
        %{--<g:if test="${shippingAdviceDetailInstance?.commodity}">--}%
            %{--<li class="fieldcontain">--}%
                %{--<span id="commodity-label" class="property-label"><g:message code="shippingAdviceDetail.commodity.label" default="Commodity"/></span>--}%
                %{--<span class="property-value" aria-labelledby="commodity-label">--}%
                    %{--<td>${shippingAdviceDetailInstance.commodity.name}</td>--}%
                %{--</span>--}%
            %{--</li>--}%
        %{--</g:if>--}%

        <g:if test="${shippingAdviceDetailInstance?.grade}">
            <li class="fieldcontain">
                <span id="grade-label" class="property-label"><g:message code="shippingAdviceDetail.grade.label" default="Grade"/></span>
                <span class="property-value" aria-labelledby="grade-label"><g:fieldValue bean="${shippingAdviceDetailInstance}" field="grade"/></span>
            </li>
        </g:if>

        <g:if test="${shippingAdviceDetailInstance?.containerNo}">
            <li class="fieldcontain">
                <span id="containerNo-label" class="property-label"><g:message code="shippingAdviceDetail.containerNo.label" default="Container No"/></span>
                <span class="property-value" aria-labelledby="containerNo-label">
                    <g:fieldValue bean="${shippingAdviceDetailInstance}" field="containerNo"/>
                </span>
            </li>
        </g:if>

        <g:if test="${shippingAdviceDetailInstance?.netWeight}">
            <li class="fieldcontain">
                <span id="netWeight-label" class="property-label"><g:message code="shippingAdviceDetail.netWeight.label" default="Net Weight"/></span>
                <span class="property-value" aria-labelledby="netWeight-label"><g:fieldValue bean="${shippingAdviceDetailInstance}" field="netWeight"/></span>
            </li>
        </g:if>

        <g:if test="${shippingAdviceDetailInstance?.sealNo}">
            <li class="fieldcontain">
                <span id="sealNo-label" class="property-label"><g:message code="shippingAdviceDetail.sealNo.label" default="Seal No"/></span>
                <span class="property-value" aria-labelledby="sealNo-label"><g:fieldValue bean="${shippingAdviceDetailInstance}" field="sealNo"/></span>
            </li>
        </g:if>

        <g:if test="${shippingAdviceDetailInstance?.shippingAdvice}">
            <li class="fieldcontain">
                <span id="shippingAdvice-label" class="property-label">
                    <g:message code="shippingAdviceDetail.shippingAdvice.label" default="Shipping Advice"/>
                </span>
                <span class="property-value" aria-labelledby="shippingAdvice-label">
                    <td>${shippingAdviceDetailInstance.shippingAdvice.id}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${shippingAdviceDetailInstance?.units}">
            <li class="fieldcontain">
                <span id="units-label" class="property-label"><g:message code="shippingAdviceDetail.units.label" default="Units"/></span>
                <span class="property-value" aria-labelledby="units-label"><g:fieldValue bean="${shippingAdviceDetailInstance}" field="units"/></span>
            </li>
        </g:if>
    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${shippingAdviceDetailInstance?.id}"/>
            <g:link class="edit" action="edit" id="${shippingAdviceDetailInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>

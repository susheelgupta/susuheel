<%@ page import="com.snehinternational.indentmanager.Buyer" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'buyer.label', default: 'Buyer')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-buyer" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-buyer" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list buyer">

        <g:if test="${buyerInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="buyer.name.label" default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:textArea readonly="" cols="20" rows="3"
                                                                                      name="name">${buyerInstance.name}</g:textArea></span>

            </li>
        </g:if>

        <g:if test="${buyerInstance?.address}">
            <li class="fieldcontain">
                <span id="address-label" class="property-label"><g:message code="buyer.address.label"
                                                                           default="Address"/></span>

                <span class="property-value" aria-labelledby="address-label"><g:textArea readonly="" cols="20" rows="3"
                                                                                         name="address">${buyerInstance.address}</g:textArea></span>

            </li>
        </g:if>

        <g:if test="${buyerInstance?.bankDetails}">
            <li class="fieldcontain">
                <span id="bankDetails-label" class="property-label"><g:message code="buyer.bankDetails.label"
                                                                               default="Bank Details"/></span>

                <span class="property-value" aria-labelledby="bankDetails-label"><g:textArea readonly="" cols="20"
                                                                                             rows="3"
                                                                                             name="tex">${buyerInstance.bankDetails}</g:textArea></span>

            </li>
        </g:if>

        <g:if test="${buyerInstance?.iecCode}">
            <li class="fieldcontain">
                <span id="iecCode-label" class="property-label"><g:message code="buyer.iecCode.label"
                                                                           default="Iec Code"/></span>

                <span class="property-value" aria-labelledby="iecCode-label"><g:fieldValue bean="${buyerInstance}"
                                                                                           field="iecCode"/></span>

            </li>
        </g:if>
        <g:if test="${buyerInstance?.chaDetails}">
            <li class="fieldcontain">
                <span id="chaDetails-label" class="property-label"><g:message code="buyer.chaDetails.label" default="CHA Details"/></span>

                <span class="property-value" aria-labelledby="chaDetails-label"><g:fieldValue bean="${buyerInstance}" field="chaDetails"/></span>
            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${buyerInstance?.id}"/>
            <g:link class="edit" action="edit" id="${buyerInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>

<%@ page import="com.snehinternational.indentmanager.DPIndent" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'DPIndent.label', default: 'DPIndent')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-DPIndent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

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

<div id="show-DPIndent" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list DPIndent">
        %{--<g:if test="${DPIndentInstance?.indentStatus}">--}%
            %{--<li class="fieldcontain">--}%
                %{--<span id="status-label" class="property-label"><g:message code="DPIndent.status.label" default="Status"/></span>--}%
                %{--<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${DPIndentInstance}" field="indentStatus"/></span>--}%
            %{--</li>--}%
        %{--</g:if>--}%
        <g:if test="${DPIndentInstance?.price}">
            <li class="fieldcontain">
                <span id="price-label" class="property-label"><g:message code="DPIndent.price.label" default="Price"/></span>
                <span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${DPIndentInstance}" field="price"/></span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.quantity}">
            <li class="fieldcontain">
                <span id="quantity-label" class="property-label"><g:message code="DPIndent.quantity.label" default="Quantity"/></span>
                <span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${DPIndentInstance}" field="quantity"/></span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.portOfDischarge}">
            <li class="fieldcontain">
                <span id="portOfDischarge-label" class="property-label"><g:message code="DPIndent.portOfDischarge.label" default="Port Of Discharge"/></span>
                <span class="property-value" aria-labelledby="portOfDischarge-label"><g:fieldValue bean="${DPIndentInstance}" field="portOfDischarge"/></span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.remarks}">
            <li class="fieldcontain">
                <span id="remarks-label" class="property-label"><g:message code="DPIndent.remarks.label" default="Remarks"/></span>
                <span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${DPIndentInstance}" field="remarks"/></span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.buyer}">
            <li class="fieldcontain">
                <span id="buyer-label" class="property-label"><g:message code="DPIndent.buyer.label" default="Buyer"/></span>
                <span class="property-value" aria-labelledby="buyer-label">
                    <td>${DPIndentInstance.buyer.name}</td>
                </span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.commodity}">
            <li class="fieldcontain">
                <span id="commodity-label" class="property-label"><g:message code="DPIndent.commodity.label" default="Commodity"/></span>
                <span class="property-value" aria-labelledby="commodity-label">
                    <td>${DPIndentInstance.commodity.name}</td>
                </span>
            </li>
        </g:if>
        %{--<g:if test="${DPIndentInstance?.commissionStatus}">--}%
            %{--<li class="fieldcontain">--}%
                %{--<span id="commissionStatus-label" class="property-label"><g:message code="DPIndent.commissionStatus.label" default="Commission Status"/></span>--}%
                %{--<span class="property-value" aria-labelledby="commissionStatus-label">--}%
                    %{--<td>${DPIndentInstance.commissionStatus.name}</td>--}%
                %{--</span>--}%
            %{--</li>--}%
        %{--</g:if>--}%

        <g:if test="${DPIndentInstance?.country}">
            <li class="fieldcontain">
                <span id="country-label" class="property-label"><g:message code="DPIndent.country.label" default="Country"/></span>
                <span class="property-value" aria-labelledby="country-label">
                    <td>${DPIndentInstance.country.name}</td>
                </span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.createdDate}">
            <li class="fieldcontain">
                <span id="createdDate-label" class="property-label"><g:message code="DPIndent.createdDate.label" default="Created Date"/></span>
                <span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${DPIndentInstance?.createdDate}"/></span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.indentIdentifier}">
            <li class="fieldcontain">
                <span id="indentIdentifier-label" class="property-label"><g:message code="DPIndent.indentIdentifier.label" default="Indent Identifier"/></span>
                <span class="property-value" aria-labelledby="indentIdentifier-label"><g:fieldValue bean="${DPIndentInstance}" field="indentIdentifier"/></span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.lastUpdatedAt}">
            <li class="fieldcontain">
                <span id="lastUpdatedAt-label" class="property-label"><g:message code="DPIndent.lastUpdatedAt.label" default="Last Updated At"/></span>
                <span class="property-value" aria-labelledby="lastUpdatedAt-label"><g:formatDate date="${DPIndentInstance?.lastUpdatedAt}"/></span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.lastUpdatedBy}">
            <li class="fieldcontain">
                <span id="lastUpdatedBy-label" class="property-label"><g:message code="DPIndent.lastUpdatedBy.label" default="Last Updated By"/></span>
                <span class="property-value" aria-labelledby="lastUpdatedBy-label">
                    <td>${DPIndentInstance.lastUpdatedBy.username}</td>
                </span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.packing}">
            <li class="fieldcontain">
                <span id="packing-label" class="property-label"><g:message code="DPIndent.packing.label" default="Packing"/></span>
                <span class="property-value" aria-labelledby="packing-label">
                    <td>${DPIndentInstance.packing.name}</td>
                </span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.paymentTermExtra}">
            <li class="fieldcontain">
                <span id="paymentTermExtra-label" class="property-label"><g:message code="DPIndent.paymentTermExtra.label" default="Payment Term "/></span>

                <span class="property-value" aria-labelledby="paymentTermExtra-label"><g:fieldValue bean="${DPIndentInstance}" field="paymentTermExtra"/></span>

            </li>
        </g:if>

        <g:if test="${DPIndentInstance?.commission}">
            <li class="fieldcontain">
                <span id="commission-label" class="property-label"><g:message code="DPIndent.commission.label" default="Commission"/></span>
                <span class="property-value" aria-labelledby="commission-label"><g:fieldValue bean="${DPIndentInstance}" field="commission"/></span>
            </li>
        </g:if>

        <g:if test="${DPIndentInstance?.specialCommission}">
            <li class="fieldcontain">
                <span id="specialCommission-label" class="property-label"><g:message code="DPIndent.specialCommission.label"
                                                                                     default="Special Commission"/></span>

                <span class="property-value" aria-labelledby="specialCommission-label"><g:fieldValue bean="${DPIndentInstance}"
                                                                                                     field="specialCommission"/></span>

            </li>
        </g:if>

       <g:if test="${DPIndentInstance?.partialTranshipment}">
            <li class="fieldcontain">
                <span id="partialTranshipment-label" class="property-label">
                    <g:message code="DPIndent.partialTranshipment.label" default="Partial Transhipment"/>
                </span>
                <span class="property-value" aria-labelledby="partialTranshipment-label">
                    <g:fieldValue bean="${DPIndentInstance}" field="partialTranshipment"/>
                </span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.portOfShipment}">
            <li class="fieldcontain">
                <span id="portOfShipment-label" class="property-label"><g:message code="DPIndent.portOfShipment.label" default="Port Of Shipment"/></span>
                <span class="property-value" aria-labelledby="portOfShipment-label"><g:fieldValue bean="${DPIndentInstance}"
                                                                                                  field="portOfShipment.name"/></span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.supplier}">
            <li class="fieldcontain">
                <span id="supplier-label" class="property-label"><g:message code="DPIndent.supplier.label" default="Supplier"/></span>
                <span class="property-value" aria-labelledby="supplier-label"><td>${DPIndentInstance.supplier.name}</td></span>
            </li>
        </g:if>
        <g:if test="${DPIndentInstance?.shippingAdvices}">
            <li class="fieldcontain">
                <span id="shippingAdvices-label" class="property-label"><g:message code="DPIndent.shippingAdvices.label" default="Shipping Advices"/></span>
                <g:each in="${DPIndentInstance.shippingAdvices}" var="shippingAdviceInstance">
                    <span class="property-value" aria-labelledby="shippingAdvices-label">
                        <g:link controller="shippingAdvice" action="show" id="${shippingAdviceInstance.id}">${shippingAdviceInstance?.invoiceNumber}</g:link>
                    </span>
                </g:each>
            </li>
        </g:if>
        <span class="add">
            <g:link controller="shippingAdvice" action="create" params="['indent.id': DPIndentInstance?.id]"
                    style="margin-left: 230px;">${message(code: 'default.add.label', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice')])}</g:link>
        </span>
    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${DPIndentInstance?.id}"/>
            <g:link class="edit" action="edit" id="${DPIndentInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:link class="edit" action="pdf" id="${DPIndentInstance.id}">Download as PDF</g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>

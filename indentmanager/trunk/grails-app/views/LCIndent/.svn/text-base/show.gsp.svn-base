<%@ page import="com.snehinternational.indentmanager.LCIndent" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'LCIndent.label', default: 'LCIndent')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-LCIndent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

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

<div id="show-LCIndent" class="content scaffold-show" role="main">
<h1><g:message code="default.show.label" args="[entityName]"/></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ol class="property-list LCIndent">
    %{--<g:if test="${LCIndentInstance?.indentStatus}">--}%
        %{--<li class="fieldcontain">--}%
            %{--<span id="status-label" class="property-label"><g:message code="DPIndent.status.label" default="Status"/></span>--}%
            %{--<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${LCIndentInstance}" field="indentStatus"/></span>--}%
        %{--</li>--}%
    %{--</g:if>--}%
    <g:if test="${LCIndentInstance?.price}">
        <li class="fieldcontain">
            <span id="price-label" class="property-label"><g:message code="LCIndent.price.label" default="Price"/></span>
            <span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${LCIndentInstance}" field="price"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.quantity}">
        <li class="fieldcontain">
            <span id="quantity-label" class="property-label"><g:message code="LCIndent.quantity.label" default="Quantity"/></span>
            <span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${LCIndentInstance}" field="quantity"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.portOfDischarge}">
        <li class="fieldcontain">
            <span id="portOfDischarge-label" class="property-label"><g:message code="LCIndent.portOfDischarge.label" default="Port Of Discharge"/></span>
            <span class="property-value" aria-labelledby="portOfDischarge-label"><g:fieldValue bean="${LCIndentInstance}" field="portOfDischarge"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.remarks}">
        <li class="fieldcontain">
            <span id="remarks-label" class="property-label"><g:message code="LCIndent.remarks.label" default="Remarks"/></span>
            <span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${LCIndentInstance}" field="remarks"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.validOfNegotiation}">
        <li class="fieldcontain">
            <span id="validOfNegotiation-label" class="property-label">
                <g:message code="LCIndent.validOfNegotiation.label" default="Valid Of Negotiation"/>
            </span>
            <span class="property-value" aria-labelledby="validOfNegotiation-label">
                <g:fieldValue bean="${LCIndentInstance}" field="validOfNegotiation"/>
            </span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.validForIndent}">
        <li class="fieldcontain">
            <span id="validForIndent-label" class="property-label"><g:message code="LCIndent.validForIndent.label" default="Validity Of indent"/></span>
            <span class="property-value" aria-labelledby="validForIndent-label"><g:fieldValue bean="${LCIndentInstance}" field="validForIndent"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.beneficiary}">
        <li class="fieldcontain">
            <span id="beneficiary-label" class="property-label"><g:message code="LCIndent.beneficiary.label" default="Beneficiary"/></span>
            <span class="property-value" aria-labelledby="beneficiary-label"><g:fieldValue bean="${LCIndentInstance}" field="beneficiary"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.validForShipment}">
        <li class="fieldcontain">
            <span id="validForShipment-label" class="property-label"><g:message code="LCIndent.validForShipment.label" default="Valid For Shipment"/></span>
            <span class="property-value" aria-labelledby="validForShipment-label"><g:fieldValue bean="${LCIndentInstance}" field="validForShipment"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.buyer}">
        <li class="fieldcontain">
            <span id="buyer-label" class="property-label"><g:message code="LCIndent.buyer.label" default="Buyer"/></span>
            <span class="property-value" aria-labelledby="buyer-label"><td>${LCIndentInstance?.buyer?.name.encodeAsHTML()}</td></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.commodity}">
        <li class="fieldcontain">
            <span id="commodity-label" class="property-label"><g:message code="LCIndent.commodity.label" default="Commodity"/></span>
            <span class="property-value" aria-labelledby="commodity-label"><td>${LCIndentInstance?.commodity?.name.encodeAsHTML()}</td></span>
        </li>
    </g:if>
    %{--<g:if test="${LCIndentInstance?.commissionStatus}">--}%
        %{--<li class="fieldcontain">--}%
            %{--<span id="commissionStatus-label" class="property-label"><g:message code="LCIndent.commissionStatus.label" default="Commission Status"/></span>--}%
            %{--<span class="property-value" aria-labelledby="commissionStatus-label"><td>${LCIndentInstance?.commissionStatus?.name.encodeAsHTML()}</td></span>--}%
        %{--</li>--}%
    %{--</g:if>--}%
    <g:if test="${LCIndentInstance?.paymentTermExtra}">
        <li class="fieldcontain">
            <span id="paymentTermExtra-label" class="property-label"><g:message code="LCIndent.paymentTermExtra.label" default="Payment Term "/></span>

            <span class="property-value" aria-labelledby="paymentTermExtra-label"><g:fieldValue bean="${LCIndentInstance}" field="paymentTermExtra"/></span>

        </li>
    </g:if>
    <g:if test="${LCIndentInstance?.country}">
        <li class="fieldcontain">
            <span id="country-label" class="property-label"><g:message code="LCIndent.country.label" default="Country"/></span>
            <span class="property-value" aria-labelledby="country-label"><td>${LCIndentInstance?.country?.name.encodeAsHTML()}</td></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.createdDate}">
        <li class="fieldcontain">
            <span id="createdDate-label" class="property-label"><g:message code="LCIndent.createdDate.label" default="Created Date"/></span>
            <span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${LCIndentInstance?.createdDate}"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.indentIdentifier}">
        <li class="fieldcontain">
            <span id="indentIdentifier-label" class="property-label"><g:message code="LCIndent.indentIdentifier.label" default="Indent Identifier"/></span>
            <span class="property-value" aria-labelledby="indentIdentifier-label"><g:fieldValue bean="${LCIndentInstance}" field="indentIdentifier"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.lastUpdatedAt}">
        <li class="fieldcontain">
            <span id="lastUpdatedAt-label" class="property-label"><g:message code="LCIndent.lastUpdatedAt.label" default="Last Updated At"/></span>
            <span class="property-value" aria-labelledby="lastUpdatedAt-label"><g:formatDate date="${LCIndentInstance?.lastUpdatedAt}"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.lastUpdatedBy}">
        <li class="fieldcontain">
            <span id="lastUpdatedBy-label" class="property-label"><g:message code="LCIndent.lastUpdatedBy.label" default="Last Updated By"/></span>
            <span class="property-value" aria-labelledby="lastUpdatedBy-label"><td>${LCIndentInstance?.lastUpdatedBy?.username.encodeAsHTML()}</td></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.packing}">
        <li class="fieldcontain">
            <span id="packing-label" class="property-label"><g:message code="LCIndent.packing.label" default="Packing"/></span>
            <span class="property-value" aria-labelledby="packing-label"><td>${LCIndentInstance?.packing?.name.encodeAsHTML()}</td></span>
        </li>
    </g:if>
    <g:if test="${LCIndentInstance?.commission}">
        <li class="fieldcontain">
            <span id="commission-label" class="property-label"><g:message code="DPIndent.commission.label" default="Commission"/></span>
            <span class="property-value" aria-labelledby="commission-label"><g:fieldValue bean="${LCIndentInstance}" field="commission"/></span>
        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.specialCommission}">
        <li class="fieldcontain">
            <span id="specialCommission-label" class="property-label"><g:message code="LCIndent.specialCommission.label" default="Special Commission"/></span>

            <span class="property-value" aria-labelledby="specialCommission-label"><g:fieldValue bean="${LCIndentInstance}" field="specialCommission"/></span>

        </li>
    </g:if>

    <g:if test="${LCIndentInstance?.partialTranshipment}">
        <li class="fieldcontain">
            <span id="partialTranshipment-label" class="property-label">
                <g:message code="LCIndent.partialTranshipment.label" default="Partial Transhipment"/>
            </span>
            <span class="property-value" aria-labelledby="partialTranshipment-label">
                <g:fieldValue bean="${LCIndentInstance}" field="partialTranshipment"/>
            </span>
        </li>
    </g:if>
    <g:if test="${LCIndentInstance?.portOfShipment}">
        <li class="fieldcontain">
            <span id="portOfShipment-label" class="property-label"><g:message code="LCIndent.portOfShipment.label" default="Port Of Shipment"/></span>
            <span class="property-value" aria-labelledby="portOfShipment-label"><g:fieldValue bean="${LCIndentInstance}"
                                                                                              field="portOfShipment.name"/></span>
        </li>
    </g:if>
    <g:if test="${LCIndentInstance?.supplier}">
        <li class="fieldcontain">
            <span id="supplier-label" class="property-label"><g:message code="LCIndent.supplier.label" default="Supplier"/></span>
            <span class="property-value" aria-labelledby="supplier-label"><td>${LCIndentInstance?.supplier?.name.encodeAsHTML()}</td></span>
        </li>
    </g:if>
    <g:if test="${LCIndentInstance?.shippingAdvices}">
        <li class="fieldcontain">
            <span id="shippingAdvices-label" class="property-label"><g:message code="LCIndent.shippingAdvices.label" default="Shipping Advices"/></span>
            <g:each in="${LCIndentInstance.shippingAdvices}" var="s">
                <span class="property-value" aria-labelledby="shippingAdvices-label">
                    <g:link controller="shippingAdvice" action="show" id="${s.id}">${s?.invoiceNumber?.encodeAsHTML()}</g:link>
                </span>
            </g:each>
        </li>
    </g:if>
    <span class="add">
        <g:link controller="shippingAdvice" action="create" params="['indent.id': LCIndentInstance?.id]"
                style="margin-left: 230px;">${message(code: 'default.add.label', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice')])}</g:link>
    </span>
</ol>
<g:form>
    <fieldset class="buttons">
        <g:hiddenField name="id" value="${LCIndentInstance?.id}"/>
        <g:link class="edit" action="edit" id="${LCIndentInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
        <g:link class="edit" action="pdf" id="${LCIndentInstance.id}">Download as PDF</g:link>
    </fieldset>
</g:form>
</div>
</body>
</html>

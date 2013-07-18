<%@ page import="com.snehinternational.indentmanager.Indent; com.snehinternational.indentmanager.ShippingAdvice" %>
<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'invoiceNumber', 'error')} ">
    <label for="invoiceNumber">
        <g:message code="shippingAdvice.invoiceNumber.label" default="Invoice Number"/>
    </label>
    <g:textArea name="invoiceNumber" rows="3" cols="25" value="${shippingAdviceInstance?.invoiceNumber}" style="width: 340px; height:140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'bLNumber', 'error')} ">
    <label for="bLNumber">
        <g:message code="shippingAdvice.bLNumber.label" default="BL Number"/>
    </label>
    <g:textArea name="bLNumber" rows="3" cols="25" value="${shippingAdviceInstance?.bLNumber}" style="width: 340px; height:140px;"/>
</div>
<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'commissionStatus', 'error')} required">
    <label for="commissionStatus">
        <g:message code="shippingAdvice.commissionStatus.label" default="Commission Status"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="commissionStatus" name="commissionStatus.id" from="${com.snehinternational.indentmanager.CommissionStatus.list()}" optionKey="id"
              optionValue="name" required=""
              value="${shippingAdviceInstance?.commissionStatus?.id}" class="many-to-one" style="width: 300px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'estimatedTimeOfDeparture', 'error')} required">
    <label for="estimatedTimeOfDeparture">
        <g:message code="shippingAdvice.estimatedTimeOfDeparture.label" default="Estimated Time Of Departure"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="estimatedTimeOfDeparture" precision="day" value="${shippingAdviceInstance?.estimatedTimeOfDeparture}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'estimatedTimeOfArrival', 'error')} required">
    <label for="estimatedTimeOfArrival">
        <g:message code="shippingAdvice.estimatedTimeOfArrival.label" default="Estimated Time Of Arrival"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="estimatedTimeOfArrival" precision="day" value="${shippingAdviceInstance?.estimatedTimeOfArrival}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'copyDocumentsSentOn', 'error')} required">
    <label for="copyDocumentsSentOn">
        <g:message code="shippingAdvice.copyDocumentsSentOn.label" default="Copy Documents Sent On"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="copyDocumentsSentOn" precision="day" value="${shippingAdviceInstance?.copyDocumentsSentOn}"/>
</div>

<g:hiddenField name="indent.id" value="${shippingAdviceInstance?.indent?.id}"/>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'noOfContainers', 'error')} ">
    <label for="noOfContainers">
        <g:message code="shippingAdvice.noOfContainers.label" default="No Of Containers"/>
    </label>
    <g:textArea name="noOfContainers" rows="3" cols="25" value="${shippingAdviceInstance?.noOfContainers}" style="width: 340px; height:140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'portOfDeparture', 'error')} ">
    <label for="portOfDeparture">
        <g:message code="shippingAdvice.portOfDeparture.label" default="Port Of Departure"/>
    </label>
    <g:textArea name="portOfDeparture" rows="3" cols="25" value="${shippingAdviceInstance?.portOfDeparture}" style="width: 340px; height:140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'portOfLanding', 'error')} ">
    <label for="portOfLanding">
        <g:message code="shippingAdvice.portOfLanding.label" default="Port Of Discharge "/>
    </label>
    <g:textArea name="portOfLanding" rows="3" cols="25" value="${shippingAdviceInstance?.portOfLanding}" style="width: 340px; height:140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'salesOrderNumber', 'error')} ">
    <label for="salesOrderNumber">
        <g:message code="shippingAdvice.salesOrderNumber.label" default="Sales Order Number"/>
    </label>
    <g:textArea name="salesOrderNumber" rows="25" cols="3" value="${shippingAdviceInstance?.salesOrderNumber}" style="width: 340px; height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'shippingAdviceStatus', 'error')} required">
    <label for="shippingAdviceStatus">
        <g:message code="shippingAdvice.shippingAdviceStatus.label" default="Shipping Advice Status"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="shippingAdviceStatus" name="shippingAdviceStatus.id" from="${com.snehinternational.indentmanager.ShippingAdviceStatus.list()}"
              optionValue="name" optionKey="id" required="" value="${shippingAdviceInstance?.shippingAdviceStatus?.id}" class="many-to-one"
              style="width: 355px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'shippingLine', 'error')} ">
    <label for="shippingLine">
        <g:message code="shippingAdvice.shippingLine.label" default="Shipping Line"/>
    </label>
    <g:textArea name="shippingLine" rows="3" cols="25" value="${shippingAdviceInstance?.shippingLine}" style="width: 340px;height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'valueOfShipment', 'error')} required">
    <label for="valueOfShipment">
        <g:message code="shippingAdvice.valueOfShipment.label" default="Value Of Shipment"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="valueOfShipment" rows="3" cols="25" value="${shippingAdviceInstance?.valueOfShipment}" style="width: 340px;height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'quantity', 'error')} ">
    <label for="quantity">
        <g:message code="shippingAdvice.quantity.label" default="Quantity"/>
    </label>
    <g:textField name="quantity" value="${fieldValue(bean: shippingAdviceInstance, field: 'quantity')}" style="width: 340px;"/>
    <span>MTS</span>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'remarks', 'error')} ">
    <label for="remarks">
        <g:message code="shippingAdvice.remarks.label" default="Remarks"/>

    </label>
    <g:textArea name="remarks" rows="3" cols="25" value="${shippingAdviceInstance?.remarks}" style="width: 340px;height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'currentLocation', 'error')} ">
    <label for="currentLocation">
        <g:message code="shippingAdvice.currentLocation.label" default="Current Location"/>
    </label>
    <g:textArea name="currentLocation" rows="3" cols="25" value="${shippingAdviceInstance?.currentLocation}" style="width: 340px;height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'airwayBillNumber', 'error')} ">
    <label for="airwayBillNumber">
        <g:message code="shippingAdvice.airwayBillNumber.label" default="Airway Bill Number"/>
    </label>
    <g:textArea name="airwayBillNumber" rows="3" cols="25" value="${shippingAdviceInstance?.airwayBillNumber}" style="width: 340px;height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'finalDestination', 'error')} ">
    <label for="finalDestination">
        <g:message code="shippingAdvice.finalDestination.label" default="Final Destination"/>
    </label>
    <g:textArea name="finalDestination" rows="3" cols="25" value="${shippingAdviceInstance?.finalDestination}" style="width: 340px;height: 140px;"/>
</div>

<g:if test="${isUpdate}">
    <div class="fieldcontain ${hasErrors(bean: shippingAdviceInstance, field: 'shippingAdvicesDetails', 'error')} ">
        <label for="shippingAdvicesDetails">
            <g:message code="shippingAdvice.shippingAdvicesDetails.label" default="Shipping Advices Details"/>
        </label>
        <ul class="one-to-many">
            <g:each in="${shippingAdviceInstance?.shippingAdvicesDetails?}" var="shippingAdviceDetailInstance">
                <li>
                    <g:link controller="shippingAdviceDetail" action="show"
                            id="${shippingAdviceDetailInstance.id}">${shippingAdviceDetailInstance?.grade}</g:link>
                </li>
            </g:each>
            <li class="add">
                <g:link controller="shippingAdviceDetail" action="create"
                        params="['shippingAdvice.id': shippingAdviceInstance?.id]">Add Container Details</g:link>
            </li>
        </ul>
    </div>
</g:if>


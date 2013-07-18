<%@ page import="com.snehinternational.indentmanager.DPIndent" %>
<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'createdDate', 'error')} required">
    <label for="createdDate">
        <g:message code="DPIndent.createdDate.label" default="Created Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="createdDate" precision="day" value="${DPIndentInstance?.createdDate}"/>
</div>
<g:if test="${isUpdate}">
    <div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'supplier', 'error')} required">
        <label for="supplier">
            <g:message code="DPIndent.supplier.label" default="Supplier"/>
            <span class="required-indicator">*</span>
        </label>
        <g:fieldValue bean="${DPIndentInstance}" field="supplier.name"/>
    </div>
</g:if>
<g:else>
    <div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'supplier', 'error')} required">
        <label for="supplier">
            <g:message code="DPIndent.supplier.label" default="Supplier"/>
            <span class="required-indicator">*</span>
        </label>
        <g:select id="supplier" name="supplier.id" from="${com.snehinternational.indentmanager.Supplier.list()}" optionValue="name" optionKey="id" required=""
                  value="${DPIndentInstance?.supplier?.id}" noSelection="${['': '--Select Supplier--']}" class="many-to-one" style="width: 300px;"/>
    </div>
</g:else>

<script type="text/javascript">
    $(document).ready(function () {
        $("#supplier").unbind("change").bind("change", function () {
            $.ajax({
                method:'GET',
                dataType:'JSON',
                url:'getCurrentIndentIdentifier',
                data:{supplierId:$(this).val()},
                success:function (result) {
                    $("#currentIndentIdentifier").html(result.indentIdentifier);
                }
            });
        });
    });
    $(document).ready(function () {
        $("#buyer").unbind("change").bind("change", function () {
            $.ajax({
                method:'GET',
                dataType:'JSON',
                url:'${request.contextPath}/DPIndent/getBankDetails',
                data:{buyerId:$(this).val()},
                success:function (result) {
                    $('#paymentTermExtra').val(result.bankDetails);
                }
            });
        });
    });
</script>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'buyer', 'error')} required">
    <label for="buyer">
        <g:message code="DPIndent.indentIdentifier.label" default="Indent Identifier"/>
        <span class="required-indicator">*</span>
    </label>

    <span id="currentIndentIdentifier" style="">${DPIndentInstance.indentIdentifier}</span>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'buyer', 'error')} required">
    <label for="buyer">
        <g:message code="DPIndent.buyer.label" default="Buyer"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="buyer" name="buyer.id" from="${com.snehinternational.indentmanager.Buyer.list()}" optionKey="id" optionValue="name" required=""
              value="${DPIndentInstance?.buyer?.id}" noSelection="${['': '--Select Buyer--']}" class="many-to-one" style="width: 300px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'commodity', 'error')} required">
    <label for="commodity">
        <g:message code="DPIndent.commodity.label" default="Commodity"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="commodity" name="commodity.id" from="${com.snehinternational.indentmanager.Commodity.list()}" optionValue="name" optionKey="id" required=""
              value="${DPIndentInstance?.commodity?.id}" class="many-to-one" style="width: 300px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'country', 'error')} required">
    <label for="country">
        <g:message code="DPIndent.country.label" default="Country"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="country" name="country.id" from="${com.snehinternational.indentmanager.Country.list()}" optionKey="id" optionValue="name" required=""
              value="${DPIndentInstance?.country?.id}" class="many-to-one" style="width: 300px"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'commissionStatus', 'error')} required">--}%
%{--<label for="country">--}%
%{--<g:message code="DPIndent.commissionStatus.label" default="Commission Status"/>--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:select id="commissionStatus" name="commissionStatus.id" from="${com.snehinternational.indentmanager.CommissionStatus.list()}" optionKey="id"--}%
%{--optionValue="name" required=""--}%
%{--value="${DPIndentInstance?.commissionStatus?.id}" class="many-to-one" style="width: 300px"/>--}%
%{--</div>--}%

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'paymentTermExtra', 'error')} ">
    <label for="paymentTermExtra">
        <g:message code="DPIndent.paymentTermExtra.label" default="Payment Term"/>

    </label>
    <g:textArea name="paymentTermExtra" rows="3" cols="3" value="${DPIndentInstance?.paymentTermExtra}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'specialInstruction', 'error')} ">
    <label for="specialInstruction">
        <g:message code="DPIndent.specialInstruction.label" default="Special Instruction"/>

    </label>
    <g:textArea name="specialInstruction" rows="3" cols="3" value="${DPIndentInstance?.specialInstruction}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'price', 'error')} ">
    <label for="price">
        <g:message code="DPIndent.price.label" default="Price"/>
    </label>
    <g:textArea name="price" rows="3" cols="3" value="${DPIndentInstance?.price}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'quantity', 'error')} ">
    <label for="quantity">
        <g:message code="DPIndent.quantity.label" default="Quantity"/>
    </label>
    <g:textArea name="quantity" rows="3" cols="3" value="${DPIndentInstance?.quantity}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'packing', 'error')} required">
    <label for="packing">
        <g:message code="DPIndent.packing.label" default="Packing"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="packing" name="packing.id" from="${com.snehinternational.indentmanager.Packing.list()}" optionKey="id" optionValue="name" required=""
              value="${DPIndentInstance?.packing?.id}" class="many-to-one" style="width: 300px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'commission', 'error')}">
    <label for="commission">
        <g:message code="DPIndent.commission.label" default="Commission"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="commission" required="" value="${fieldValue(bean: DPIndentInstance, field: 'commission')}" style="width: 285px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'specialCommission', 'error')} required">
    <label for="specialCommission">
        <g:message code="DPIndent.specialCommission.label" default="Special Commission"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="specialCommission" required="" value="${fieldValue(bean: DPIndentInstance, field: 'specialCommission')}"
             style="width: 285px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'portOfShipment', 'error')} ">
    <label for="portOfShipment">
        <g:message code="DPIndent.portOfShipment.label" default="Port Of Shipment"/>
    </label>
    <g:select id="portOfShipment" name="portOfShipment.id" from="${com.snehinternational.indentmanager.PortOfShipment.list()}" optionKey="id" optionValue="name"
              required=""
              value="${DPIndentInstance?.portOfShipment?.id}" class="many-to-one" style="width: 300px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'portOfDischarge', 'error')} ">
    <label for="portOfDischarge">
        <g:message code="DPIndent.portOfDischarge.label" default="Port Of Discharge"/>
    </label>
    <g:textArea name="portOfDischarge" rows="3" cols="3" value="${DPIndentInstance?.portOfDischarge}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'partialTranshipment', 'error')} ">
    <label for="partialTranshipment">
        <g:message code="DPIndent.partialTranshipment.label" default="Partial Transhipment"/>
    </label>
    <g:textArea name="partialTranshipment" rows="3" cols="3" value="${DPIndentInstance?.partialTranshipment}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'grade', 'error')} ">
    <label for="grade">
        <g:message code="DPIndent.grade.label" default="Grade"/>

    </label>
    <g:textArea rows="3" cols="3" name="grade" value="${DPIndentInstance?.grade}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'remarks', 'error')} ">
    <label for="remarks">
        <g:message code="DPIndent.remarks.label" default="Remarks"/>
    </label>
    <g:textArea name="remarks" rows="20" cols="20" value="${DPIndentInstance?.remarks}" style="width: 287px; height: 114px;"/>
</div>

<g:if test="${isUpdate}">
    <div class="fieldcontain ${hasErrors(bean: DPIndentInstance, field: 'shippingAdvices', 'error')} ">
        <label for="shippingAdvices">
            <g:message code="DPIndent.shippingAdvices.label" default="Shipping Advices"/>
        </label>
        <ul class="one-to-many">
            <g:each in="${DPIndentInstance?.shippingAdvices?}" var="s">
                <li><g:link controller="shippingAdvice" action="show" id="${s.id}">${s?.invoiceNumber?.encodeAsHTML()}</g:link></li>
            </g:each>
            <li class="add">
                <g:link controller="shippingAdvice" action="create"
                        params="['indent.id': DPIndentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice')])}</g:link>
            </li>
        </ul>
    </div>
</g:if>
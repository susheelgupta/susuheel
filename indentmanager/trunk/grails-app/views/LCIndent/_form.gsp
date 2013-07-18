<%@ page import="com.snehinternational.indentmanager.LCIndent" %>
<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'createdDate', 'error')} required">
    <label for="createdDate">
        <g:message code="LCIndent.createdDate.label" default="Created Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="createdDate" precision="day" value="${LCIndentInstance?.createdDate}"/>
</div>
<g:if test="${isUpdate}">
    <div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'supplier', 'error')} required">
        <label for="supplier">
            <g:message code="LCIndent.supplier.label" default="Supplier"/>
            <span class="required-indicator">*</span>
        </label>
        <g:fieldValue bean="${LCIndentInstance}" field="supplier.name"/>
    </div>
</g:if>
<g:else>
    <div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'supplier', 'error')} required">
        <label for="supplier">
            <g:message code="LCIndent.supplier.label" default="Supplier"/>
            <span class="required-indicator">*</span>
        </label>
        <g:select id="supplier" name="supplier.id" from="${com.snehinternational.indentmanager.Supplier.list()}" optionValue="name" optionKey="id" required=""
                  value="${LCIndentInstance?.supplier?.id}" noSelection="${['': '--Select Supplier--']}" class="many-to-one" style="width: 300px;"/>
    </div>
</g:else>
<script type="text/javascript">
    $(document).ready(function () {
        $("#supplier").unbind("change").bind("change", function () {
            $.ajax({
                method:'GET',
                dataType:'JSON',
                url:'getSupplierData',
                data:{supplierId:$(this).val()},
                success:function (result) {
                    $("#currentIndentIdentifier").html(result.indentIdentifier);
                    $("#paymentTermExtra").html("BY IRREVOCABLE LC ALLOWING 180 DAYS CREDIT FREE\n" + "USANCE FROM THE DATE OF SHIPMENT THROUGH:\n" + result.bankDetails);
                    var html = result.supplierName + "\n" + result.beneficiary;
                    $("#beneficiary").html(html);
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
    <span id="currentIndentIdentifier" style="">${LCIndentInstance.indentIdentifier}</span>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'buyer', 'error')} required">
    <label for="buyer">
        <g:message code="LCIndent.buyer.label" default="Buyer"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="buyer" name="buyer.id" from="${com.snehinternational.indentmanager.Buyer.list()}" optionKey="id" optionValue="name" required=""
              value="${LCIndentInstance?.buyer?.id}" noSelection="${['': '--Select Buyer--']}" class="many-to-one" style="width: 300px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'commodity', 'error')} required">
    <label for="commodity">
        <g:message code="LCIndent.commodity.label" default="Commodity"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="commodity" name="commodity.id" from="${com.snehinternational.indentmanager.Commodity.list()}" optionValue="name" optionKey="id" required=""
              value="${LCIndentInstance?.commodity?.id}" class="many-to-one" style="width: 300px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'country', 'error')} required">
    <label for="country">
        <g:message code="LCIndent.country.label" default="Country"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="country" name="country.id" from="${com.snehinternational.indentmanager.Country.list()}" optionKey="id" optionValue="name" required=""
              value="${LCIndentInstance?.country?.id}" class="many-to-one" style="width: 300px"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'commissionStatus', 'error')} required">--}%
    %{--<label for="commissionStatus">--}%
        %{--<g:message code="LCIndent.commissionStatus.label" default="Commission Status"/>--}%
        %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:select id="commissionStatus" name="commissionStatus.id" from="${com.snehinternational.indentmanager.CommissionStatus.list()}" optionKey="id"--}%
              %{--optionValue="name" required=""--}%
              %{--value="${LCIndentInstance?.commissionStatus?.id}" class="many-to-one" style="width: 300px"/>--}%
%{--</div>--}%

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'paymentTermExtra', 'error')} ">
    <label for="paymentTermExtra">
        <g:message code="LCIndent.paymentTermExtra.label" default="Payment Term"/>

    </label>
    <g:textArea name="paymentTermExtra" rows="3" cols="3" value="${LCIndentInstance?.paymentTermExtra}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'price', 'error')} ">
    <label for="price">
        <g:message code="LCIndent.price.label" default="Price"/>
    </label>
    <g:textArea name="price" rows="3" cols="3" value="${LCIndentInstance?.price}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'quantity', 'error')} ">
    <label for="quantity">
        <g:message code="LCIndent.quantity.label" default="Quantity"/>
    </label>
    <g:textArea name="quantity" rows="3" cols="3" value="${LCIndentInstance?.quantity}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'packing', 'error')} required">
    <label for="packing">
        <g:message code="LCIndent.packing.label" default="Packing"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="packing" name="packing.id" from="${com.snehinternational.indentmanager.Packing.list()}" optionKey="id" optionValue="name" required=""
              value="${LCIndentInstance?.packing?.id}" class="many-to-one" style="width: 300px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'beneficiary', 'error')} ">
    <label for="beneficiary">
        <g:message code="LCIndent.beneficiary.label" default="Beneficiary"/>
    </label>
    <g:textArea name="beneficiary" rows="3" cols="3" value="${LCIndentInstance?.beneficiary}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'specialInstruction', 'error')} ">
    <label for="specialInstruction">
        <g:message code="LCIndent.specialInstruction.label" default="Special Instruction"/>

    </label>
    <g:textArea name="specialInstruction" rows="3" cols="3" value="${LCIndentInstance?.specialInstruction}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'validForShipment', 'error')} ">
    <label for="validForShipment">
        <g:message code="LCIndent.validForShipment.label" default="Valid For Shipment"/>
    </label>
    <g:textArea name="validForShipment" rows="3" cols="3" value="${LCIndentInstance?.validForShipment}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'validOfNegotiation', 'error')} ">
    <label for="validOfNegotiation">
        <g:message code="LCIndent.validOfNegotiation.label" default="Valid Of Negotiation"/>
    </label>
    <g:textArea name="validOfNegotiation" rows="3" cols="3" value="${LCIndentInstance?.validOfNegotiation}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'commission', 'error')}">
    <label for="commission">
        <g:message code="LCIndent.commission.label" default="Commission"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="commission" required="" value="${fieldValue(bean: LCIndentInstance, field: 'commission')}" style="width: 285px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'specialCommission', 'error')}">
    <label for="specialCommission">
        <g:message code="LCIndent.specialCommission.label" default="Special Commission"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="specialCommission" required="" value="${fieldValue(bean: DPIndentInstance, field: 'specialCommission')}"
             style="width: 285px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'portOfShipment', 'error')} ">
    <label for="portOfShipment">
        <g:message code="LCIndent.portOfShipment.label" default="Port Of Shipment"/>
    </label>
    <g:select id="portOfShipment" name="portOfShipment.id" from="${com.snehinternational.indentmanager.PortOfShipment.list()}" optionKey="id" optionValue="name"
              required=""
              value="${LCIndentInstance?.portOfShipment?.id}" class="many-to-one" style="width: 300px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'portOfDischarge', 'error')} ">
    <label for="portOfDischarge">
        <g:message code="LCIndent.portOfDischarge.label" default="Port Of Discharge"/>
    </label>
    <g:textArea name="portOfDischarge" rows="3" cols="3" value="${LCIndentInstance?.portOfDischarge}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'partialTranshipment', 'error')} ">
    <label for="partialTranshipment">
        <g:message code="LCIndent.partialTranshipment.label" default="Partial Transhipment"/>
    </label>
    <g:textArea name="partialTranshipment" rows="3" cols="3" value="${LCIndentInstance?.partialTranshipment}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'validForIndent', 'error')} ">
    <label for="validForIndent">
        <g:message code="LCIndent.validForIndent.label" default="Validiy Of indent"/>
    </label>
    <g:textArea name="validForIndent" rows="3" cols="3" value="${LCIndentInstance?.validForIndent}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'grade', 'error')} ">
    <label for="grade">
        <g:message code="LCIndent.grade.label" default="Grade"/>

    </label>
    <g:textArea rows="3" cols="3" name="grade" value="${LCIndentInstance?.grade}" style="width: 287px; height: 114px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'remarks', 'error')} ">
    <label for="remarks">
        <g:message code="LCIndent.remarks.label" default="Remarks"/>
    </label>
    <g:textArea name="remarks" rows="3" cols="3" value="${LCIndentInstance?.remarks}" style="width: 287px; height: 114px;"/>
</div>

<g:if test="${isUpdate}">
    <div class="fieldcontain ${hasErrors(bean: LCIndentInstance, field: 'shippingAdvices', 'error')} ">
        <label for="shippingAdvices">
            <g:message code="LCIndent.shippingAdvices.label" default="Shipping Advices"/>
        </label>
        <ul class="one-to-many">
            <g:each in="${LCIndentInstance?.shippingAdvices?}" var="s">
                <li><g:link controller="shippingAdvice" action="show" id="${s.id}">${s?.invoiceNumber?.encodeAsHTML()}</g:link></li>
            </g:each>
            <li class="add">
                <g:link controller="shippingAdvice" action="create"
                        params="['indent.id': LCIndentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'shippingAdvice.label', default: 'ShippingAdvice')])}</g:link>
            </li>
        </ul>
    </div>
</g:if>


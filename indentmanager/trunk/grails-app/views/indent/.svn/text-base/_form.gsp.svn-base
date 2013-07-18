<%@ page import="com.snehinternational.indentmanager.Indent" %>



<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'price', 'error')} ">
    <label for="price">
        <g:message code="indent.price.label" default="Price"/>

    </label>
    <g:textField name="price" value="${indentInstance?.price}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'quantity', 'error')} ">
    <label for="quantity">
        <g:message code="indent.quantity.label" default="Quantity"/>

    </label>
    <g:textField name="quantity" value="${indentInstance?.quantity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'portOfDischarge', 'error')} ">
    <label for="portOfDischarge">
        <g:message code="indent.portOfDischarge.label" default="Port Of Discharge"/>

    </label>
    <g:textField name="portOfDischarge" value="${indentInstance?.portOfDischarge}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'remarks', 'error')} ">
    <label for="remarks">
        <g:message code="indent.remarks.label" default="Remarks"/>

    </label>
    <g:textField name="remarks" value="${indentInstance?.remarks}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'buyer', 'error')} required">
    <label for="buyer">
        <g:message code="indent.buyer.label" default="Buyer"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="buyer" name="buyer.id" from="${com.snehinternational.indentmanager.Buyer.list()}" optionKey="id"
              required="" value="${indentInstance?.buyer?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'commodity', 'error')} required">
    <label for="commodity">
        <g:message code="indent.commodity.label" default="Commodity"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="commodity" name="commodity.id" from="${com.snehinternational.indentmanager.Commodity.list()}"
              optionKey="id" required="" value="${indentInstance?.commodity?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'country', 'error')} required">
    <label for="country">
        <g:message code="indent.country.label" default="Country"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="country" name="country.id" from="${com.snehinternational.indentmanager.Country.list()}" optionKey="id"
              required="" value="${indentInstance?.country?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'createdDate', 'error')} required">
    <label for="createdDate">
        <g:message code="indent.createdDate.label" default="Created Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="createdDate" precision="day" value="${indentInstance?.createdDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'commissionCalculation', 'error')} required">
    <label for="commissionCalculation">
        <g:message code="indent.commissionCalculation.label" default="Commission Calculation"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="commissionCalculation" required="" value="${fieldValue(bean: indentInstance, field: 'commissionCalculation')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'lastUpdatedAt', 'error')} required">
    <label for="lastUpdatedAt">
        <g:message code="indent.lastUpdatedAt.label" default="Last Updated At"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="lastUpdatedAt" precision="day" value="${indentInstance?.lastUpdatedAt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'lastUpdatedBy', 'error')} required">
    <label for="lastUpdatedBy">
        <g:message code="indent.lastUpdatedBy.label" default="Last Updated By"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="lastUpdatedBy" name="lastUpdatedBy.id" from="${com.snehinternational.indentmanager.User.list()}"
              optionKey="id" required="" value="${indentInstance?.lastUpdatedBy?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'packing', 'error')} required">
    <label for="packing">
        <g:message code="indent.packing.label" default="Packing"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="packing" name="packing.id" from="${com.snehinternational.indentmanager.Packing.list()}" optionKey="id"
              required="" value="${indentInstance?.packing?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'partialTranshipmentAllowed', 'error')} ">
    <label for="partialTranshipmentAllowed">
        <g:message code="indent.partialTranshipmentAllowed.label" default="Partial Transhipment Allowed"/>

    </label>
    <g:checkBox name="partialTranshipmentAllowed" value="${indentInstance?.partialTranshipmentAllowed}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'paymentTerm', 'error')} required">
    <label for="paymentTerm">
        <g:message code="indent.paymentTerm.label" default="Payment Term"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="paymentTerm" name="paymentTerm.id" from="${com.snehinternational.indentmanager.PaymentTerm.list()}"
              optionKey="id" required="" value="${indentInstance?.paymentTerm?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'shippingAdvices', 'error')} ">
    <label for="shippingAdvices">
        <g:message code="indent.shippingAdvices.label" default="Shipping Advices"/>

</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'supplier', 'error')} required">
    <label for="supplier">
        <g:message code="indent.supplier.label" default="Supplier"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="supplier" name="supplier.id" from="${com.snehinternational.indentmanager.Supplier.list()}"
              optionKey="id" required="" value="${indentInstance?.supplier?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: indentInstance, field: 'grade', 'error')} ">
    <label for="grade">
        <g:message code="indent.grade.label" default="Grade"/>

    </label>
    <g:textField name="grade" value="${indentInstance?.grade}"/>
</div>

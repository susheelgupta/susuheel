<%@ page import="com.snehinternational.indentmanager.Buyer" %>



<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="buyer.name.label" default="Name"/>

    </label>
    <g:textArea cols="3" rows="25" name="name" value="${buyerInstance?.name}" style="width: 330px;height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'address', 'error')} ">
    <label for="address">
        <g:message code="buyer.address.label" default="Address"/>

    </label>
    <g:textArea cols="3" rows="25" name="address" value="${buyerInstance?.address}" style="width: 330px;height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'bankDetails', 'error')} ">
    <label for="bankDetails">
        <g:message code="buyer.bankDetails.label" default="Bank Details"/>

    </label>
    <g:textArea cols="3" rows="25" name="bankDetails" value="${buyerInstance?.bankDetails}" style="width: 330px;height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'iecCode', 'error')} ">
    <label for="iecCode">
        <g:message code="buyer.iecCode.label" default="Iec Code"/>

    </label>
    <g:textArea cols="3" rows="25" name="iecCode" value="${buyerInstance?.iecCode}" style="width: 330px;height: 140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'chaDetails', 'error')} ">
    <label for="chaDetails">
        <g:message code="buyer.chaDetails.label" default="CHA Details"/>
    </label>
    <g:textArea cols="3" rows="25" name="chaDetails" value="${buyerInstance?.chaDetails}" style="width: 330px;height: 140px;"/>
</div>
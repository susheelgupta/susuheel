<%@ page import="com.snehinternational.indentmanager.ShippingAdviceDetail" %>



%{--<div class="fieldcontain ${hasErrors(bean: shippingAdviceDetailInstance, field: 'commodity', 'error')} required">--}%
    %{--<label for="commodity">--}%
        %{--<g:message code="shippingAdviceDetail.commodity.label" default="Commodity"/>--}%
        %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:select id="commodity" name="commodity.id" from="${com.snehinternational.indentmanager.Commodity.list()}" optionValue="name" optionKey="id" required=""--}%
              %{--value="${shippingAdviceDetailInstance?.commodity?.id}" class="many-to-one" style="width: 340px;"/>--}%
%{--</div>--}%

<div class="fieldcontain ${hasErrors(bean: shippingAdviceDetailInstance, field: 'grade', 'error')} ">
    <label for="grade">
        <g:message code="shippingAdviceDetail.grade.label" default="Grade"/>

    </label>
    <g:textArea name="grade" rows="3" cols="25" value="${shippingAdviceDetailInstance?.grade}" style="width: 330px; height:140px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceDetailInstance, field: 'containerNo', 'error')} ">
    <label for="containerNo">
        <g:message code="shippingAdviceDetail.containerNo.label" default="Container No"/>

    </label>
    <g:textArea name="containerNo" rows="3" cols="25" value="${shippingAdviceDetailInstance?.containerNo}" style="width: 330px; height:140px;"/>
    %{--<g:textField name="containerNo" value="${shippingAdviceDetailInstance?.containerNo}"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceDetailInstance, field: 'netWeight', 'error')} ">
    <label for="netWeight">
        <g:message code="shippingAdviceDetail.netWeight.label" default="Net Weight"/>

    </label>
    <g:textArea name="netWeight" rows="3" cols="25" value="${shippingAdviceDetailInstance?.netWeight}" style="width: 330px; height:140px;"/>
    %{--<g:textField name="netWeight" value="${shippingAdviceDetailInstance?.netWeight}"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: shippingAdviceDetailInstance, field: 'sealNo', 'error')} ">
    <label for="sealNo">
        <g:message code="shippingAdviceDetail.sealNo.label" default="Seal No"/>

    </label>
    <g:textArea name="sealNo" rows="3" cols="25" value="${shippingAdviceDetailInstance?.sealNo}" style="width: 330px; height:140px;"/>
    %{--<g:textField name="sealNo" value="${shippingAdviceDetailInstance?.sealNo}"/>--}%
</div>

<div>
    <g:hiddenField name="shippingAdvice.id" value="${shippingAdviceDetailInstance?.shippingAdvice?.id}"/>
</div>
%{--<div class="fieldcontain ${hasErrors(bean: shippingAdviceDetailInstance, field: 'shippingAdvice', 'error')} required">--}%
%{--<label for="shippingAdvice">--}%
%{--<g:message code="shippingAdviceDetail.shippingAdvice.label" default="Shipping Advice"/>--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:select id="shippingAdvice" name="shippingAdvice.id" from="${com.snehinternational.indentmanager.ShippingAdvice.list()}" optionValue="invoiceNumber"--}%
%{--optionKey="id" required="" value="${shippingAdviceDetailInstance?.shippingAdvice?.id}" class="many-to-one" style="width: 340px"/>--}%
%{--</div>--}%

<div class="fieldcontain ${hasErrors(bean: shippingAdviceDetailInstance, field: 'units', 'error')} ">
    <label for="units">
        <g:message code="shippingAdviceDetail.units.label" default="Units"/>

    </label>
    <g:textArea name="units" rows="3" cols="25" value="${shippingAdviceDetailInstance?.units}" style="width: 330px; height:140px;"/>
    %{--<g:textField name="units" value="${shippingAdviceDetailInstance?.units}"/>--}%
</div>


<%@ page import="com.snehinternational.indentmanager.DPIndent" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
</head>

<body>
<table>
    <tr>
        <td align="center">
            %{--<rendering:inlineJpeg bytes="${headerBytes}"/>--}%
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            <table border="0" width="90%">
                <tr>
                    <td style="text-align: left; width: 40%;">${LCIndentInstance.indentIdentifier.encodeAsHTML()}</td>
                    <td style="text-align: right;width: 60%;">${LCIndentInstance.createdDate.format('dd-MMM-yyyy')}</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2">${LCIndentInstance.buyer.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2">${LCIndentInstance.buyer.address.encodeAsHTML().replaceAll('\n', '<br/>')}</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2"><b>IEC Code No ${LCIndentInstance.buyer.iecCode.encodeAsHTML()}</b></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2">Dear Sir,</td>
                </tr>
                <tr>
                    <td style="text-align: left;"
                        colspan="2">This has reference to your order, we are pleased to give the particulars of our indent as under:</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">1. Commodity:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.commodity.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">2. Country of origin:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.country.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">3. Price:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.price.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">4. Quantity:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.quantity.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">5. Packing:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.packing.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">6. Payment Terms:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.paymentTermExtra.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">7. Beneficiary:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.beneficiary.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">8. Valid for shipment:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.validForShipment.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">9. Valid of negotiation:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.validOfNegotiation.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">10. Port of shipment:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.portOfShipment.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">11. Port of discharge:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.portOfDischarge.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">12. Partial/Transhipment:</td>
                    <td style="text-align: left;width: 60%;">Allowed</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">13. Validity of indent:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.validForIndent.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">14. Remarks:</td>
                    <td style="text-align: left;width: 60%;">${LCIndentInstance.remarks.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2">Thanking you</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2">Yours truly,</td>
                </tr>
                <tr>
                    <td style="text-align: left;">For SNEH INTERNATIONAL</td>
                    <td style="text-align: right;">Accepted by Buyer</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2">(Authorised Signatory)</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="center">
            %{--<rendering:inlineJpeg bytes="${footerBytes}"/>--}%
        </td>
    </tr>
</table>
</body>
</html>
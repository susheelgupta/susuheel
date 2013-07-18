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
            <table border="0" width="80%">
                <tr>
                    <td style="text-align: left;">${DPIndentInstance.indentIdentifier.encodeAsHTML()}</td>
                    <td style="text-align: right;">${DPIndentInstance.createdDate.format('dd-MMM-yyyy')}</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2">${DPIndentInstance.buyer.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2">${DPIndentInstance.buyer.address.encodeAsHTML().replaceAll('\n', '<br/>')}</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2"><b>IEC Code No ${DPIndentInstance.buyer.iecCode.encodeAsHTML()}</b></td>
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
                    <td style="text-align: left;width: 60%;">${DPIndentInstance.commodity.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">2. Country of origin:</td>
                    <td style="text-align: left;width: 60%;">${DPIndentInstance.country.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">3. Price:</td>
                    <td style="text-align: left;width: 60%;">${DPIndentInstance.price.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">4. Quantity:</td>
                    <td style="text-align: left;width: 60%;">${DPIndentInstance.quantity.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">5. Packing:</td>
                    <td style="text-align: left;width: 60%;">${DPIndentInstance.packing.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">6. Payment Terms:</td>
                    <td style="text-align: left;width: 60%;">${DPIndentInstance.paymentTermExtra.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">7. Port of shipment:</td>
                    <td style="text-align: left;width: 60%;">${DPIndentInstance.portOfShipment.name.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">8. Port of discharge:</td>
                    <td style="text-align: left;width: 60%;">${DPIndentInstance.portOfDischarge.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;width: 40%;">9. Partial/Transhipment:</td>
                    <td style="text-align: left;width: 60%;">${DPIndentInstance.partialTranshipment.encodeAsHTML()}</td>
                </tr>
                <tr>
                    <td style="text-align: left;" colspan="2">10. Remarks:${DPIndentInstance.remarks.encodeAsHTML()}</td>
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
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
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
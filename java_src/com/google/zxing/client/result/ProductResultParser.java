package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.oned.UPCEReader;

/* JADX INFO: loaded from: classes5.dex */
public final class ProductResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public ProductParsedResult parse(Result result) {
        BarcodeFormat barcodeFormat = result.getBarcodeFormat();
        if (barcodeFormat != BarcodeFormat.UPC_A && barcodeFormat != BarcodeFormat.UPC_E && barcodeFormat != BarcodeFormat.EAN_8 && barcodeFormat != BarcodeFormat.EAN_13) {
            return null;
        }
        String text = result.getText();
        int length = text.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = text.charAt(i10);
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
        }
        return new ProductParsedResult(text, barcodeFormat == BarcodeFormat.UPC_E ? UPCEReader.convertUPCEtoUPCA(text) : text);
    }
}

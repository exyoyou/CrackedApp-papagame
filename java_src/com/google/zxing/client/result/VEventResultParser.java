package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class VEventResultParser extends ResultParser {
    private static String matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z10) {
        List<String> listMatchSingleVCardPrefixedField = VCardResultParser.matchSingleVCardPrefixedField(charSequence, str, z10);
        if (listMatchSingleVCardPrefixedField == null || listMatchSingleVCardPrefixedField.isEmpty()) {
            return null;
        }
        return listMatchSingleVCardPrefixedField.get(0);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public CalendarParsedResult parse(Result result) {
        double d10;
        double d11;
        String text = result.getText();
        if (text == null || text.indexOf("BEGIN:VEVENT") < 0) {
            return null;
        }
        String strMatchSingleVCardPrefixedField = matchSingleVCardPrefixedField("SUMMARY", text, true);
        String strMatchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("DTSTART", text, true);
        if (strMatchSingleVCardPrefixedField2 == null) {
            return null;
        }
        String strMatchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("DTEND", text, true);
        String strMatchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField("LOCATION", text, true);
        String strMatchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField("DESCRIPTION", text, true);
        String strMatchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField("GEO", text, true);
        if (strMatchSingleVCardPrefixedField6 == null) {
            d10 = Double.NaN;
            d11 = Double.NaN;
        } else {
            int iIndexOf = strMatchSingleVCardPrefixedField6.indexOf(59);
            try {
                d10 = Double.parseDouble(strMatchSingleVCardPrefixedField6.substring(0, iIndexOf));
                d11 = Double.parseDouble(strMatchSingleVCardPrefixedField6.substring(iIndexOf + 1));
            } catch (NumberFormatException | IllegalArgumentException unused) {
                return null;
            }
        }
        return new CalendarParsedResult(strMatchSingleVCardPrefixedField, strMatchSingleVCardPrefixedField2, strMatchSingleVCardPrefixedField3, strMatchSingleVCardPrefixedField4, null, strMatchSingleVCardPrefixedField5, d10, d11);
    }
}

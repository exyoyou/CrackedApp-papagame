package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class EmailAddressResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String str;
        String text = result.getText();
        String str2 = null;
        if (!text.startsWith(MailTo.MAILTO_SCHEME) && !text.startsWith("MAILTO:")) {
            if (!EmailDoCoMoResultParser.isBasicallyValidEmailAddress(text)) {
                return null;
            }
            return new EmailAddressParsedResult(text, null, null, MailTo.MAILTO_SCHEME + text);
        }
        String strSubstring = text.substring(7);
        int iIndexOf = strSubstring.indexOf(63);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring.substring(0, iIndexOf);
        }
        Map<String, String> nameValuePairs = ResultParser.parseNameValuePairs(text);
        if (nameValuePairs != null) {
            if (strSubstring.length() == 0) {
                strSubstring = nameValuePairs.get("to");
            }
            str2 = nameValuePairs.get("subject");
            str = nameValuePairs.get("body");
        } else {
            str = null;
        }
        return new EmailAddressParsedResult(strSubstring, str2, str, text);
    }
}

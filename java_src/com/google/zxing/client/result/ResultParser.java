package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import x.a;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ResultParser {
    private static final ResultParser[] PARSERS = {new BookmarkDoCoMoResultParser(), new AddressBookDoCoMoResultParser(), new EmailDoCoMoResultParser(), new AddressBookAUResultParser(), new VCardResultParser(), new BizcardResultParser(), new VEventResultParser(), new EmailAddressResultParser(), new SMTPResultParser(), new TelResultParser(), new SMSMMSResultParser(), new SMSTOMMSTOResultParser(), new GeoResultParser(), new WifiResultParser(), new URLTOResultParser(), new URIResultParser(), new ISBNResultParser(), new ProductResultParser(), new ExpandedProductResultParser()};
    private static final Pattern DIGITS = Pattern.compile("\\d*");
    private static final Pattern ALPHANUM = Pattern.compile("[a-zA-Z0-9]*");
    private static final Pattern AMPERSAND = Pattern.compile(a.f97576d);
    private static final Pattern EQUALS = Pattern.compile(SimpleComparison.EQUAL_TO_OPERATION);

    private static void appendKeyValue(CharSequence charSequence, Map<String, String> map) {
        String[] strArrSplit = EQUALS.split(charSequence, 2);
        if (strArrSplit.length == 2) {
            try {
                map.put(strArrSplit[0], URLDecoder.decode(strArrSplit[1], "UTF-8"));
            } catch (UnsupportedEncodingException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    protected static boolean isStringOfDigits(CharSequence charSequence, int i10) {
        return charSequence != null && i10 == charSequence.length() && DIGITS.matcher(charSequence).matches();
    }

    protected static boolean isSubstringOfAlphaNumeric(CharSequence charSequence, int i10, int i11) {
        int i12;
        return charSequence != null && charSequence.length() >= (i12 = i11 + i10) && ALPHANUM.matcher(charSequence.subSequence(i10, i12)).matches();
    }

    protected static boolean isSubstringOfDigits(CharSequence charSequence, int i10, int i11) {
        int i12;
        return charSequence != null && charSequence.length() >= (i12 = i11 + i10) && DIGITS.matcher(charSequence.subSequence(i10, i12)).matches();
    }

    static String[] matchPrefixedField(String str, String str2, char c10, boolean z10) {
        int length = str2.length();
        ArrayList arrayList = null;
        int i10 = 0;
        while (i10 < length) {
            int iIndexOf = str2.indexOf(str, i10);
            if (iIndexOf < 0) {
                break;
            }
            int length2 = iIndexOf + str.length();
            ArrayList arrayList2 = arrayList;
            boolean z11 = true;
            int length3 = length2;
            while (z11) {
                int iIndexOf2 = str2.indexOf(c10, length3);
                if (iIndexOf2 < 0) {
                    length3 = str2.length();
                } else if (str2.charAt(iIndexOf2 - 1) == '\\') {
                    length3 = iIndexOf2 + 1;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(3);
                    }
                    String strUnescapeBackslash = unescapeBackslash(str2.substring(length2, iIndexOf2));
                    if (z10) {
                        strUnescapeBackslash = strUnescapeBackslash.trim();
                    }
                    arrayList2.add(strUnescapeBackslash);
                    length3 = iIndexOf2 + 1;
                }
                z11 = false;
            }
            i10 = length3;
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    static String matchSinglePrefixedField(String str, String str2, char c10, boolean z10) {
        String[] strArrMatchPrefixedField = matchPrefixedField(str, str2, c10, z10);
        if (strArrMatchPrefixedField == null) {
            return null;
        }
        return strArrMatchPrefixedField[0];
    }

    protected static void maybeAppend(String str, StringBuilder sb2) {
        if (str != null) {
            sb2.append('\n');
            sb2.append(str);
        }
    }

    protected static String[] maybeWrap(String str) {
        if (str == null) {
            return null;
        }
        return new String[]{str};
    }

    protected static int parseHexDigit(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (c10 < 'a' || c10 > 'f') {
            c11 = 'A';
            if (c10 < 'A' || c10 > 'F') {
                return -1;
            }
        }
        return (c10 - c11) + 10;
    }

    static Map<String, String> parseNameValuePairs(String str) {
        int iIndexOf = str.indexOf(63);
        if (iIndexOf < 0) {
            return null;
        }
        HashMap map = new HashMap(3);
        for (String str2 : AMPERSAND.split(str.substring(iIndexOf + 1))) {
            appendKeyValue(str2, map);
        }
        return map;
    }

    public static ParsedResult parseResult(Result result) {
        for (ResultParser resultParser : PARSERS) {
            ParsedResult parsedResult = resultParser.parse(result);
            if (parsedResult != null) {
                return parsedResult;
            }
        }
        return new TextParsedResult(result.getText(), null);
    }

    protected static String unescapeBackslash(String str) {
        int iIndexOf = str.indexOf(92);
        if (iIndexOf < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(length - 1);
        sb2.append(str.toCharArray(), 0, iIndexOf);
        boolean z10 = false;
        while (iIndexOf < length) {
            char cCharAt = str.charAt(iIndexOf);
            if (z10 || cCharAt != '\\') {
                sb2.append(cCharAt);
                z10 = false;
            } else {
                z10 = true;
            }
            iIndexOf++;
        }
        return sb2.toString();
    }

    public abstract ParsedResult parse(Result result);

    protected static void maybeAppend(String[] strArr, StringBuilder sb2) {
        if (strArr != null) {
            for (String str : strArr) {
                sb2.append('\n');
                sb2.append(str);
            }
        }
    }
}

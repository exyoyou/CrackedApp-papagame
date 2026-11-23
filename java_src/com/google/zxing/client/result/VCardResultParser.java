package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class VCardResultParser extends ResultParser {
    private static final Pattern BEGIN_VCARD = Pattern.compile("BEGIN:VCARD", 2);
    private static final Pattern VCARD_LIKE_DATE = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
    private static final Pattern CR_LF_SPACE_TAB = Pattern.compile("\r\n[ \t]");
    private static final Pattern NEWLINE_ESCAPE = Pattern.compile("\\\\[nN]");
    private static final Pattern VCARD_ESCAPES = Pattern.compile("\\\\([,;\\\\])");
    private static final Pattern EQUALS = Pattern.compile(SimpleComparison.EQUAL_TO_OPERATION);
    private static final Pattern SEMICOLON = Pattern.compile(";");

    private static String decodeQuotedPrintable(CharSequence charSequence, String str) {
        char cCharAt;
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        while (i10 < length) {
            char cCharAt2 = charSequence.charAt(i10);
            if (cCharAt2 != '\n' && cCharAt2 != '\r') {
                if (cCharAt2 != '=') {
                    maybeAppendFragment(byteArrayOutputStream, str, sb2);
                    sb2.append(cCharAt2);
                } else if (i10 < length - 2 && (cCharAt = charSequence.charAt(i10 + 1)) != '\r' && cCharAt != '\n') {
                    i10 += 2;
                    char cCharAt3 = charSequence.charAt(i10);
                    int hexDigit = ResultParser.parseHexDigit(cCharAt);
                    int hexDigit2 = ResultParser.parseHexDigit(cCharAt3);
                    if (hexDigit >= 0 && hexDigit2 >= 0) {
                        byteArrayOutputStream.write((hexDigit << 4) + hexDigit2);
                    }
                }
            }
            i10++;
        }
        maybeAppendFragment(byteArrayOutputStream, str, sb2);
        return sb2.toString();
    }

    private static void formatNames(Iterable<List<String>> iterable) {
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    int iIndexOf = str.indexOf(59, i10);
                    if (iIndexOf > 0) {
                        strArr[i11] = str.substring(i10, iIndexOf);
                        i11++;
                        i10 = iIndexOf + 1;
                    }
                }
                strArr[i11] = str.substring(i10);
                StringBuilder sb2 = new StringBuilder(100);
                maybeAppendComponent(strArr, 3, sb2);
                maybeAppendComponent(strArr, 1, sb2);
                maybeAppendComponent(strArr, 2, sb2);
                maybeAppendComponent(strArr, 0, sb2);
                maybeAppendComponent(strArr, 4, sb2);
                list.set(0, sb2.toString().trim());
            }
        }
    }

    private static boolean isLikeVCardDate(CharSequence charSequence) {
        return charSequence == null || VCARD_LIKE_DATE.matcher(charSequence).matches();
    }

    static List<String> matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z10) {
        List<List<String>> listMatchVCardPrefixedField = matchVCardPrefixedField(charSequence, str, z10);
        if (listMatchVCardPrefixedField == null || listMatchVCardPrefixedField.isEmpty()) {
            return null;
        }
        return listMatchVCardPrefixedField.get(0);
    }

    private static List<List<String>> matchVCardPrefixedField(CharSequence charSequence, String str, boolean z10) {
        ArrayList arrayList;
        boolean z11;
        String str2;
        int iIndexOf;
        String strReplaceAll;
        int length = str.length();
        int i10 = 0;
        ArrayList arrayList2 = null;
        while (i10 < length) {
            int i11 = 2;
            Matcher matcher = Pattern.compile("(?:^|\n)" + ((Object) charSequence) + "(?:;([^:]*))?:", 2).matcher(str);
            if (i10 > 0) {
                i10--;
            }
            if (!matcher.find(i10)) {
                break;
            }
            int iEnd = matcher.end(0);
            String strGroup = matcher.group(1);
            if (strGroup != null) {
                String[] strArrSplit = SEMICOLON.split(strGroup);
                int length2 = strArrSplit.length;
                int i12 = 0;
                arrayList = null;
                z11 = false;
                str2 = null;
                while (i12 < length2) {
                    String str3 = strArrSplit[i12];
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(str3);
                    String[] strArrSplit2 = EQUALS.split(str3, i11);
                    if (strArrSplit2.length > 1) {
                        String str4 = strArrSplit2[0];
                        String str5 = strArrSplit2[1];
                        if ("ENCODING".equalsIgnoreCase(str4) && "QUOTED-PRINTABLE".equalsIgnoreCase(str5)) {
                            z11 = true;
                        } else if ("CHARSET".equalsIgnoreCase(str4)) {
                            str2 = str5;
                        }
                    }
                    i12++;
                    i11 = 2;
                }
            } else {
                arrayList = null;
                z11 = false;
                str2 = null;
            }
            int i13 = iEnd;
            while (true) {
                iIndexOf = str.indexOf(10, i13);
                if (iIndexOf < 0) {
                    break;
                }
                if (iIndexOf < str.length() - 1) {
                    int i14 = iIndexOf + 1;
                    if (str.charAt(i14) == ' ' || str.charAt(i14) == '\t') {
                        i13 = iIndexOf + 2;
                    }
                }
                if (!z11 || (str.charAt(iIndexOf - 1) != '=' && str.charAt(iIndexOf - 2) != '=')) {
                    break;
                }
                i13 = iIndexOf + 1;
            }
            if (iIndexOf < 0) {
                i10 = length;
            } else {
                if (iIndexOf > iEnd) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                    }
                    if (str.charAt(iIndexOf - 1) == '\r') {
                        iIndexOf--;
                    }
                    String strSubstring = str.substring(iEnd, iIndexOf);
                    if (z10) {
                        strSubstring = strSubstring.trim();
                    }
                    if (z11) {
                        strReplaceAll = decodeQuotedPrintable(strSubstring, str2);
                    } else {
                        strReplaceAll = VCARD_ESCAPES.matcher(NEWLINE_ESCAPE.matcher(CR_LF_SPACE_TAB.matcher(strSubstring).replaceAll("")).replaceAll("\n")).replaceAll("$1");
                    }
                    if (arrayList == null) {
                        ArrayList arrayList3 = new ArrayList(1);
                        arrayList3.add(strReplaceAll);
                        arrayList2.add(arrayList3);
                    } else {
                        arrayList.add(0, strReplaceAll);
                        arrayList2.add(arrayList);
                    }
                }
                i10 = iIndexOf + 1;
            }
        }
        return arrayList2;
    }

    private static void maybeAppendComponent(String[] strArr, int i10, StringBuilder sb2) {
        if (strArr[i10] != null) {
            sb2.append(' ');
            sb2.append(strArr[i10]);
        }
    }

    private static void maybeAppendFragment(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb2) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray);
                }
            }
            byteArrayOutputStream.reset();
            sb2.append(str2);
        }
    }

    private static String toPrimaryValue(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static String[] toPrimaryValues(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<List<String>> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().get(0));
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    private static String[] toTypes(Collection<List<String>> collection) {
        String strSubstring;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            int i10 = 1;
            while (true) {
                if (i10 >= list.size()) {
                    strSubstring = null;
                    break;
                }
                strSubstring = list.get(i10);
                int iIndexOf = strSubstring.indexOf(61);
                if (iIndexOf < 0) {
                    break;
                }
                if ("TYPE".equalsIgnoreCase(strSubstring.substring(0, iIndexOf))) {
                    strSubstring = strSubstring.substring(iIndexOf + 1);
                    break;
                }
                i10++;
            }
            arrayList.add(strSubstring);
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String text = result.getText();
        Matcher matcher = BEGIN_VCARD.matcher(text);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> listMatchVCardPrefixedField = matchVCardPrefixedField("FN", text, true);
        if (listMatchVCardPrefixedField == null) {
            listMatchVCardPrefixedField = matchVCardPrefixedField("N", text, true);
            formatNames(listMatchVCardPrefixedField);
        }
        List<List<String>> listMatchVCardPrefixedField2 = matchVCardPrefixedField("TEL", text, true);
        List<List<String>> listMatchVCardPrefixedField3 = matchVCardPrefixedField("EMAIL", text, true);
        List<String> listMatchSingleVCardPrefixedField = matchSingleVCardPrefixedField("NOTE", text, false);
        List<List<String>> listMatchVCardPrefixedField4 = matchVCardPrefixedField("ADR", text, true);
        if (listMatchVCardPrefixedField4 != null) {
            for (List<String> list : listMatchVCardPrefixedField4) {
                list.set(0, list.get(0));
            }
        }
        List<String> listMatchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("ORG", text, true);
        List<String> listMatchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("BDAY", text, true);
        return new AddressBookParsedResult(toPrimaryValues(listMatchVCardPrefixedField), null, toPrimaryValues(listMatchVCardPrefixedField2), toTypes(listMatchVCardPrefixedField2), toPrimaryValues(listMatchVCardPrefixedField3), toTypes(listMatchVCardPrefixedField3), toPrimaryValue(matchSingleVCardPrefixedField("IMPP", text, true)), toPrimaryValue(listMatchSingleVCardPrefixedField), toPrimaryValues(listMatchVCardPrefixedField4), toTypes(listMatchVCardPrefixedField4), toPrimaryValue(listMatchSingleVCardPrefixedField2), toPrimaryValue((listMatchSingleVCardPrefixedField3 == null || isLikeVCardDate(listMatchSingleVCardPrefixedField3.get(0))) ? listMatchSingleVCardPrefixedField3 : null), toPrimaryValue(matchSingleVCardPrefixedField("TITLE", text, true)), toPrimaryValue(matchSingleVCardPrefixedField("URL", text, true)));
    }
}

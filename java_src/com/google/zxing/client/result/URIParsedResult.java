package com.google.zxing.client.result;

import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class URIParsedResult extends ParsedResult {
    private static final Pattern USER_IN_HOST = Pattern.compile(":/*([^/@]+)@[^/]+");
    private final String title;
    private final String uri;

    public URIParsedResult(String str, String str2) {
        super(ParsedResultType.URI);
        this.uri = massageURI(str);
        this.title = str2;
    }

    private static boolean isColonFollowedByPortNumber(String str, int i10) {
        int i11 = i10 + 1;
        int iIndexOf = str.indexOf(47, i11);
        if (iIndexOf < 0) {
            iIndexOf = str.length();
        }
        if (iIndexOf <= i11) {
            return false;
        }
        while (i11 < iIndexOf) {
            if (str.charAt(i11) < '0' || str.charAt(i11) > '9') {
                return false;
            }
            i11++;
        }
        return true;
    }

    private static String massageURI(String str) {
        String strTrim = str.trim();
        int iIndexOf = strTrim.indexOf(58);
        if (iIndexOf < 0) {
            return "http://" + strTrim;
        }
        if (isColonFollowedByPortNumber(strTrim, iIndexOf)) {
            return "http://" + strTrim;
        }
        return strTrim.substring(0, iIndexOf).toLowerCase(Locale.ENGLISH) + strTrim.substring(iIndexOf);
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb2 = new StringBuilder(30);
        ParsedResult.maybeAppend(this.title, sb2);
        ParsedResult.maybeAppend(this.uri, sb2);
        return sb2.toString();
    }

    public String getTitle() {
        return this.title;
    }

    public String getURI() {
        return this.uri;
    }

    public boolean isPossiblyMaliciousURI() {
        return USER_IN_HOST.matcher(this.uri).find();
    }
}

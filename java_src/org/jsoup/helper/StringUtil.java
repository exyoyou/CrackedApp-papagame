package org.jsoup.helper;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
public final class StringUtil {
    private static final String[] padding = {"", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          "};

    public static boolean in(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isBlank(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                if (!isWhitespace(str.codePointAt(i10))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isNumeric(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isDigit(str.codePointAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhitespace(int i10) {
        return i10 == 32 || i10 == 9 || i10 == 10 || i10 == 12 || i10 == 13;
    }

    public static String join(Collection collection, String str) {
        return join(collection.iterator(), str);
    }

    public static String normaliseWhitespace(String str) {
        StringBuilder sb2 = new StringBuilder(str.length());
        int length = str.length();
        int iCharCount = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (!isWhitespace(iCodePointAt)) {
                sb2.appendCodePoint(iCodePointAt);
                z11 = false;
            } else if (z11) {
                z10 = true;
            } else {
                if (iCodePointAt != 32) {
                    z10 = true;
                }
                sb2.append(' ');
                z11 = true;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return z10 ? sb2.toString() : str;
    }

    public static String padding(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("width must be > 0");
        }
        String[] strArr = padding;
        if (i10 < strArr.length) {
            return strArr[i10];
        }
        char[] cArr = new char[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            cArr[i11] = ' ';
        }
        return String.valueOf(cArr);
    }

    public static String join(Iterator it2, String str) {
        if (!it2.hasNext()) {
            return "";
        }
        String string = it2.next().toString();
        if (!it2.hasNext()) {
            return string;
        }
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(string);
        while (it2.hasNext()) {
            sb2.append(str);
            sb2.append(it2.next());
        }
        return sb2.toString();
    }
}

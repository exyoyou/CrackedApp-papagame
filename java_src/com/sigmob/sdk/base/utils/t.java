package com.sigmob.sdk.base.utils;

/* JADX INFO: loaded from: classes5.dex */
public class t {
    public static String a(String input) {
        int i10;
        if (a((CharSequence) input)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int i11 = 0;
        while (i11 < input.length()) {
            char cCharAt = input.charAt(i11);
            if (cCharAt == '\\' && (i10 = i11 + 1) < input.length() && input.charAt(i10) == 'u') {
                int i12 = i11 + 2;
                int i13 = i11 + 6;
                try {
                    sb2.append((char) Integer.parseInt(input.substring(i12, i13), 16));
                    i10 = i13;
                } catch (NumberFormatException unused) {
                    sb2.append(cCharAt);
                }
                i11 = i10;
            } else {
                sb2.append(cCharAt);
                i11++;
            }
        }
        return sb2.toString();
    }

    public static boolean b(CharSequence str) {
        return !a(str);
    }

    public static boolean a(CharSequence str) {
        return str == null || str.length() == 0;
    }

    public static boolean b(CharSequence str01, CharSequence str02) {
        return !a(str01, str02);
    }

    public static boolean a(CharSequence str01, CharSequence str02) {
        return b(str01) && str01.equals(str02);
    }

    public static boolean a(String str01, String str02) {
        return b(str01) && str01.equalsIgnoreCase(str02);
    }
}

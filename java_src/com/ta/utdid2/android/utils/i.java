package com.ta.utdid2.android.utils;

/* JADX INFO: loaded from: classes2.dex */
public class i {
    public static String a(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof Integer) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(((Integer) obj).intValue());
            return sb2.toString();
        }
        if (obj instanceof Long) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(((Long) obj).longValue());
            return sb3.toString();
        }
        if (obj instanceof Double) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(((Double) obj).doubleValue());
            return sb4.toString();
        }
        if (obj instanceof Float) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(((Float) obj).floatValue());
            return sb5.toString();
        }
        if (obj instanceof Short) {
            StringBuilder sb6 = new StringBuilder();
            sb6.append((int) ((Short) obj).shortValue());
            return sb6.toString();
        }
        if (obj instanceof Byte) {
            StringBuilder sb7 = new StringBuilder();
            sb7.append((int) ((Byte) obj).byteValue());
            return sb7.toString();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).toString();
        }
        return obj instanceof Character ? ((Character) obj).toString() : obj.toString();
    }

    public static int b(String str) {
        if (str.length() <= 0) {
            return 0;
        }
        int i10 = 0;
        for (char c10 : str.toCharArray()) {
            i10 = (i10 * 31) + c10;
        }
        return i10;
    }

    public static boolean c(String str) {
        return str == null || str.length() <= 0;
    }
}

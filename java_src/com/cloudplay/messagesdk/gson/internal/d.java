package com.cloudplay.messagesdk.gson.internal;

/* JADX INFO: loaded from: classes9.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f23798a = a();

    private static int a() {
        return b(System.getProperty("java.version"));
    }

    static int b(String str) {
        int iC = c(str);
        if (iC == -1) {
            iC = a(str);
        }
        if (iC == -1) {
            return 6;
        }
        return iC;
    }

    private static int c(String str) {
        try {
            String[] strArrSplit = str.split("[._]");
            int i10 = Integer.parseInt(strArrSplit[0]);
            return (i10 != 1 || strArrSplit.length <= 1) ? i10 : Integer.parseInt(strArrSplit[1]);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    private static int a(String str) {
        try {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < str.length(); i10++) {
                char cCharAt = str.charAt(i10);
                if (!Character.isDigit(cCharAt)) {
                    break;
                }
                sb2.append(cCharAt);
            }
            return Integer.parseInt(sb2.toString());
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static int b() {
        return f23798a;
    }

    public static boolean c() {
        return f23798a >= 9;
    }
}

package com.aggmoread.sdk.z.c.a.a.e.v;

import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f5299a = "i";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static boolean f5300b = true;

    public static boolean a(String[] strArr) {
        if (f5300b || strArr == null) {
            return true;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(f5299a, "---- contains enter , classPrefix = " + Arrays.toString(strArr));
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int length = stackTrace.length - 1;
        for (int i10 = 0; i10 < length; i10++) {
            String className = stackTrace[i10].getClassName();
            for (String str : strArr) {
                if (className.startsWith(str)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("className = ");
                    sb2.append(className);
                    sb2.append(" , count = ");
                    sb2.append(i10 - 3);
                    sb2.append(" , len = ");
                    sb2.append(length);
                    com.aggmoread.sdk.z.c.a.a.e.e.b("xxxx", sb2.toString());
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean b(String[] strArr) {
        if (strArr == null) {
            return false;
        }
        try {
            com.aggmoread.sdk.z.c.a.a.e.e.b(f5299a, "---- contains enter , classPrefix = " + Arrays.toString(strArr));
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            int length = stackTrace.length - 1;
            for (int i10 = 0; i10 < length; i10++) {
                String className = stackTrace[i10].getClassName();
                for (String str : strArr) {
                    if (className.startsWith(str)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("className = ");
                        sb2.append(className);
                        sb2.append(" , count = ");
                        sb2.append(i10 - 3);
                        sb2.append(" , len = ");
                        sb2.append(length);
                        com.aggmoread.sdk.z.c.a.a.e.e.b("xxxx", sb2.toString());
                        return true;
                    }
                }
            }
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(f5299a, "cp err " + e10.getMessage());
        }
        return false;
    }
}

package com.sdk.r;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static Boolean a(String str) {
        return (str == null || str.length() == 0 || str.trim().length() == 0 || "null".equals(str)) ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Boolean b(String str) {
        return (str == null || str.length() == 0 || str.trim().length() == 0 || "null".equals(str) || str.equals("")) ? Boolean.FALSE : Boolean.TRUE;
    }
}

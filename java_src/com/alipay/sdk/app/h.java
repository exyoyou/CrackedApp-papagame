package com.alipay.sdk.app;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f7050a;

    public static String a() {
        i iVarA = i.a(i.CANCELED.a());
        return b(iVarA.a(), iVarA.b(), "");
    }

    public static String b(int i10, String str, String str2) {
        return "resultStatus={" + i10 + "};memo={" + str + "};result={" + str2 + "}";
    }

    private static void c(String str) {
        f7050a = str;
    }

    private static String d() {
        return f7050a;
    }

    private static String e() {
        i iVarA = i.a(i.DOUBLE_REQUEST.a());
        return b(iVarA.a(), iVarA.b(), "");
    }

    private static String f() {
        i iVarA = i.a(i.PARAMS_ERROR.a());
        return b(iVarA.a(), iVarA.b(), "");
    }
}

package com.switfpass.pay.activity;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f82536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f82537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f82538c;

    public q(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (String str2 : str.split(";")) {
            if (str2.startsWith("resultStatus")) {
                this.f82536a = a(str2, "resultStatus");
            }
            if (str2.startsWith("result")) {
                this.f82537b = a(str2, "result");
            }
            if (str2.startsWith("memo")) {
                this.f82538c = a(str2, "memo");
            }
        }
    }

    private static String a(String str, String str2) {
        String str3 = String.valueOf(str2) + "={";
        return str.substring(str.indexOf(str3) + str3.length(), str.lastIndexOf("}"));
    }

    public String b() {
        return this.f82538c;
    }

    public String c() {
        return this.f82537b;
    }

    public String d() {
        return this.f82536a;
    }

    public String toString() {
        return "resultStatus={" + this.f82536a + "};memo={" + this.f82538c + "};result={" + this.f82537b + "}";
    }
}

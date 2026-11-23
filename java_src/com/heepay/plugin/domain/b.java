package com.heepay.plugin.domain;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34325c;

    public b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (String str2 : str.split(";")) {
            if (str2.startsWith("resultStatus")) {
                this.f34323a = a(str2, "resultStatus");
            }
            if (str2.startsWith("result")) {
                this.f34324b = a(str2, "result");
            }
            if (str2.startsWith("memo")) {
                this.f34325c = a(str2, "memo");
            }
        }
    }

    public String a() {
        return this.f34323a;
    }

    public String toString() {
        return "resultStatus={" + this.f34323a + "};memo={" + this.f34325c + "};result={" + this.f34324b + "}";
    }

    private String a(String str, String str2) {
        String str3 = str2 + "={";
        return str.substring(str.indexOf(str3) + str3.length(), str.lastIndexOf("}"));
    }
}

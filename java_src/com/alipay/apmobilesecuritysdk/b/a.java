package com.alipay.apmobilesecuritysdk.b;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6989c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6990d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6992f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6993g;

    public a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f6987a = str;
        this.f6988b = str2;
        this.f6989c = str3;
        this.f6990d = str4;
        this.f6991e = str5;
        this.f6992f = str6;
        this.f6993g = str7;
    }

    public final String toString() {
        StringBuilder sb2;
        String strSubstring;
        StringBuilder sb3;
        String strSubstring2;
        StringBuilder sb4;
        String strSubstring3;
        StringBuffer stringBuffer = new StringBuffer(new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()));
        stringBuffer.append("," + this.f6987a);
        stringBuffer.append("," + this.f6988b);
        stringBuffer.append("," + this.f6989c);
        stringBuffer.append("," + this.f6990d);
        if (c0.a.b(this.f6991e) || this.f6991e.length() < 20) {
            sb2 = new StringBuilder(",");
            strSubstring = this.f6991e;
        } else {
            sb2 = new StringBuilder(",");
            strSubstring = this.f6991e.substring(0, 20);
        }
        sb2.append(strSubstring);
        stringBuffer.append(sb2.toString());
        if (c0.a.b(this.f6992f) || this.f6992f.length() < 20) {
            sb3 = new StringBuilder(",");
            strSubstring2 = this.f6992f;
        } else {
            sb3 = new StringBuilder(",");
            strSubstring2 = this.f6992f.substring(0, 20);
        }
        sb3.append(strSubstring2);
        stringBuffer.append(sb3.toString());
        if (c0.a.b(this.f6993g) || this.f6993g.length() < 20) {
            sb4 = new StringBuilder(",");
            strSubstring3 = this.f6993g;
        } else {
            sb4 = new StringBuilder(",");
            strSubstring3 = this.f6993g.substring(0, 20);
        }
        sb4.append(strSubstring3);
        stringBuffer.append(sb4.toString());
        return stringBuffer.toString();
    }
}

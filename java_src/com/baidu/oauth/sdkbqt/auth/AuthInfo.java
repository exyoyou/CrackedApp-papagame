package com.baidu.oauth.sdkbqt.auth;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public class AuthInfo implements com.baidu.oauth.sdkbqt.a.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f8148a = "AuthInfo";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f8149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f8150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f8152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f8153f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f8154g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f8155h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private FindViewDelegate f8156i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f8157j;

    public interface FindViewDelegate extends com.baidu.oauth.sdkbqt.a.e {
        int oauthResID(String str);
    }

    public AuthInfo(Context context, String str, String str2, String str3) {
        this(context, str, str2, str3, false);
    }

    public String getAppKey() {
        return this.f8150c;
    }

    public Context getContext() {
        return this.f8149b;
    }

    public String getDeviceId() {
        return this.f8155h;
    }

    public FindViewDelegate getFindViewDelegate() {
        return this.f8156i;
    }

    public String getPackSign() {
        return this.f8154g;
    }

    public String getPackageName() {
        return this.f8153f;
    }

    public String getRedirectUrl() {
        return this.f8151d;
    }

    public String getScope() {
        return this.f8152e;
    }

    public AuthInfo isDebug(boolean z10) {
        com.baidu.oauth.sdkbqt.a.d.f8142b = z10;
        com.baidu.oauth.sdkbqt.a.d.a("oauthAuthInfo", "packageName:" + this.f8153f + " ,packSign= " + this.f8154g + " ,useSha1= " + this.f8157j);
        return this;
    }

    public boolean isUseSha1() {
        return this.f8157j;
    }

    public AuthInfo setEnv(int i10) {
        com.baidu.oauth.sdkbqt.a.c.a(i10);
        return this;
    }

    public void setFindViewDelegate(FindViewDelegate findViewDelegate) {
        this.f8156i = findViewDelegate;
    }

    public void setUseSha1(boolean z10) {
        this.f8157j = z10;
        if (z10) {
            this.f8154g = com.baidu.oauth.sdkbqt.a.h.b(this.f8149b, this.f8153f);
        } else {
            this.f8154g = com.baidu.oauth.sdkbqt.a.h.a(this.f8149b, this.f8153f);
        }
    }

    public AuthInfo(Context context, String str, String str2, String str3, String str4) {
        this(context, str, str2, str3, false, str4);
    }

    public AuthInfo(Context context, String str, String str2, String str3, boolean z10) {
        this(context, str, str2, str3, z10, "");
    }

    public AuthInfo(Context context, String str, String str2, String str3, boolean z10, String str4) {
        this.f8150c = "";
        this.f8151d = "";
        this.f8152e = "";
        this.f8153f = "";
        this.f8154g = "";
        this.f8155h = "";
        this.f8157j = false;
        com.baidu.oauth.sdkbqt.a.h.a((Object) context, "AuthInfo Constructor params context is null");
        com.baidu.oauth.sdkbqt.a.h.a(str, "AuthInfo Constructor params appKey is null");
        com.baidu.oauth.sdkbqt.a.h.a(str2, "AuthInfo Constructor params redirectUrl is null");
        com.baidu.oauth.sdkbqt.a.h.a(str3, "AuthInfo Constructor params scope is null");
        this.f8149b = context.getApplicationContext();
        this.f8150c = str;
        this.f8151d = str2;
        this.f8152e = str3;
        String packageName = context.getPackageName();
        this.f8153f = packageName;
        this.f8155h = str4;
        this.f8157j = z10;
        if (z10) {
            this.f8154g = com.baidu.oauth.sdkbqt.a.h.b(context, packageName);
        } else {
            this.f8154g = com.baidu.oauth.sdkbqt.a.h.a(context, packageName);
        }
    }
}

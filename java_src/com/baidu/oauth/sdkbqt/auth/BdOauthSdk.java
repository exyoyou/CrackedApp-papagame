package com.baidu.oauth.sdkbqt.auth;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.oauth.sdkbqt.callback.QrCodeCallback;
import com.baidu.oauth.sdkbqt.callback.QrLoginStatusCheckCallback;

/* JADX INFO: loaded from: classes6.dex */
public class BdOauthSdk implements com.baidu.oauth.sdkbqt.a.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static BdOauthSdk f8158c = new BdOauthSdk();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8159a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AuthInfo f8160b;

    private BdOauthSdk() {
    }

    private static void a() {
        if (!f8158c.f8159a) {
            throw new RuntimeException("bd sdk was not initall! please use: BdSdk.init() in your app Application or your main Activity. when you want to use bd sdk function, make sure call BdSdk.init() before this function");
        }
    }

    public static void changeInfo(AuthInfo authInfo) {
        if (!f8158c.f8159a) {
            throw new RuntimeException("bd sdk was not initall! please use: BdSdk.init() in your app Application or your main Activity. when you want to use bd sdk function, make sure call BdSdk.init() before this function");
        }
        if (authInfo == null || TextUtils.isEmpty(authInfo.getAppKey()) || TextUtils.isEmpty(authInfo.getRedirectUrl())) {
            throw new RuntimeException("please set right app info (appKey,redirect");
        }
        f8158c.f8160b = authInfo;
    }

    public static void clearCookies(Context context) {
        new a().b(context, "");
        new a().d(context, "");
        new a().c(context, "");
    }

    public static AuthInfo getAuthInfo() {
        a();
        return f8158c.f8160b;
    }

    public static BdOauthSdk getInstance() {
        a();
        return f8158c;
    }

    public static void init(AuthInfo authInfo) {
        if (f8158c.f8159a) {
            return;
        }
        if (authInfo == null || TextUtils.isEmpty(authInfo.getAppKey()) || TextUtils.isEmpty(authInfo.getRedirectUrl())) {
            throw new RuntimeException("please set right app info (appKey,redirect");
        }
        BdOauthSdk bdOauthSdk = f8158c;
        bdOauthSdk.f8160b = authInfo;
        bdOauthSdk.f8159a = true;
    }

    public void getQrCode(String str, QrCodeCallback qrCodeCallback) {
        new c().a(str, qrCodeCallback);
    }

    public boolean isQrLoginSchema(String str) {
        return com.baidu.oauth.sdkbqt.a.h.c(str);
    }

    public void qrLoginStatusCheck(String str, QrLoginStatusCheckCallback qrLoginStatusCheckCallback) {
        new c().a(str, true, qrLoginStatusCheckCallback);
    }

    public void stopLoginStatusCheck() {
        new c().a();
    }
}

package com.baidu.oauth.sdkbqt.auth;

import android.os.Looper;
import com.baidu.oauth.sdkbqt.callback.QrCodeCallback;
import com.baidu.oauth.sdkbqt.callback.QrLoginStatusCheckCallback;
import com.baidu.oauth.sdkbqt.result.QrCodeResult;
import com.baidu.oauth.sdkbqt.result.QrLoginStatusCheckResult;
import com.baidu.passbqt.http.PassHttpClientRequest;
import com.baidu.passbqt.http.ReqPriority;
import java.net.HttpCookie;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f8182c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.baidu.oauth.sdkbqt.a.a.a f8183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PassHttpClientRequest f8184b;

    c() {
    }

    void a(com.baidu.oauth.sdkbqt.callback.a aVar) {
        new b(new d(this, aVar)).execute(com.baidu.oauth.sdkbqt.a.h.b(com.baidu.oauth.sdkbqt.a.b.f8126f));
    }

    void a(String str, QrCodeCallback qrCodeCallback) {
        com.baidu.oauth.sdkbqt.a.h.a(qrCodeCallback, "QrCodeCallback can not null");
        com.baidu.oauth.sdkbqt.a.a.g gVar = new com.baidu.oauth.sdkbqt.a.a.g();
        gVar.a("response_type", "sso_qrcode");
        AuthInfo authInfo = BdOauthSdk.getAuthInfo();
        gVar.a("client_id", authInfo.getAppKey());
        gVar.a("redirect_uri", authInfo.getRedirectUrl());
        gVar.a("scope", authInfo.getScope());
        gVar.a("get_auth_code", "1");
        f8182c = str;
        new com.baidu.oauth.sdkbqt.a.a.a().a(com.baidu.oauth.sdkbqt.a.c.a(com.baidu.oauth.sdkbqt.a.b.f8128h), gVar, new e(this, Looper.getMainLooper(), qrCodeCallback, new QrCodeResult()));
    }

    void a() {
        PassHttpClientRequest passHttpClientRequest = this.f8184b;
        if (passHttpClientRequest != null) {
            passHttpClientRequest.a();
        }
        if (this.f8183a != null) {
            this.f8183a = null;
            f8182c = null;
        }
    }

    void a(String str, boolean z10, QrLoginStatusCheckCallback qrLoginStatusCheckCallback) {
        com.baidu.oauth.sdkbqt.a.h.a(qrLoginStatusCheckCallback, "QrLoginStatusCheckCallback can not null");
        com.baidu.oauth.sdkbqt.a.h.a(str, "channelId can not null");
        f fVar = new f(this, qrLoginStatusCheckCallback);
        com.baidu.oauth.sdkbqt.a.a.g gVar = new com.baidu.oauth.sdkbqt.a.a.g();
        gVar.a("channel_id", str);
        gVar.a("tpl", "dev");
        gVar.a(com.alipay.sdk.authjs.a.f7124i, "cb");
        QrLoginStatusCheckResult qrLoginStatusCheckResult = new QrLoginStatusCheckResult();
        this.f8183a = new com.baidu.oauth.sdkbqt.a.a.a();
        this.f8184b = this.f8183a.a(com.baidu.oauth.sdkbqt.a.c.a() + com.baidu.oauth.sdkbqt.a.h.b(com.baidu.oauth.sdkbqt.a.b.f8129i), ReqPriority.IMMEDIATE, gVar, (List<HttpCookie>) null, (String) null, 40000, new g(this, Looper.getMainLooper(), z10, fVar, qrLoginStatusCheckResult, str));
    }
}

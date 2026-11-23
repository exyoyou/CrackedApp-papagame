package com.sina.weibo.sdk.auth;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.BuildConfig;
import com.sina.weibo.sdk.b.c;
import com.sina.weibo.sdk.common.UiError;
import com.sina.weibo.sdk.net.h;
import com.sina.weibo.sdk.web.WebActivity;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WbAuthListener f82230d;

    public final void a(Activity activity) {
        c.a("WBSsoTag", "startClientAuth()");
        try {
            com.sina.weibo.sdk.b.a.C1038a c1038aE = com.sina.weibo.sdk.b.a.e(activity);
            Intent intent = new Intent();
            if (c1038aE == null) {
                intent.setClassName(BuildConfig.APPLICATION_ID, "com.sina.weibo.SSOActivity");
            } else {
                intent.setClassName(c1038aE.packageName, c1038aE.ag);
            }
            AuthInfo authInfoA = com.sina.weibo.sdk.a.a();
            intent.putExtra("appKey", authInfoA.getAppKey());
            intent.putExtra("redirectUri", authInfoA.getRedirectUrl());
            intent.putExtra("scope", authInfoA.getScope());
            intent.putExtra("packagename", authInfoA.getPackageName());
            intent.putExtra("key_hash", authInfoA.getHash());
            intent.putExtra("_weibo_command_type", 3);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(System.currentTimeMillis());
            intent.putExtra("_weibo_transaction", sb2.toString());
            if (activity == null) {
                this.f82230d.onError(new UiError(-1, "activity is null", ""));
            } else if (!com.sina.weibo.sdk.b.a.a(activity, intent)) {
                this.f82230d.onError(new UiError(-2, "your app is illegal", ""));
            } else {
                activity.startActivityForResult(intent, 32973);
                c.a("WBSsoTag", "start SsoActivity ");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            c.b("WBSsoTag", e10.getMessage());
            this.f82230d.onError(new UiError(-3, "occur exception", e10.getMessage()));
        }
    }

    public final void b(Activity activity) {
        h hVar = new h();
        AuthInfo authInfoA = com.sina.weibo.sdk.a.a();
        if (authInfoA == null) {
            return;
        }
        hVar.put("client_id", authInfoA.getAppKey());
        hVar.put("redirect_uri", authInfoA.getRedirectUrl());
        hVar.put("scope", authInfoA.getScope());
        hVar.put("packagename", authInfoA.getPackageName());
        hVar.put("key_hash", authInfoA.getHash());
        hVar.put("response_type", "code");
        hVar.put("version", "0041005000");
        hVar.put("luicode", "10000360");
        hVar.put("lfid", "OP_" + authInfoA.getAppKey());
        Oauth2AccessToken accessToken = AccessTokenHelper.readAccessToken(activity);
        if (accessToken != null) {
            String accessToken2 = accessToken.getAccessToken();
            if (!TextUtils.isEmpty(accessToken.getAccessToken())) {
                hVar.put("trans_token", accessToken2);
                hVar.put("trans_access_token", accessToken2);
            }
        }
        String str = "https://open.weibo.cn/oauth2/authorize?" + hVar.g();
        if (this.f82230d != null) {
            b bVarB = b.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(System.currentTimeMillis());
            String string = sb2.toString();
            bVarB.a(string, this.f82230d);
            Intent intent = new Intent(activity, (Class<?>) WebActivity.class);
            com.sina.weibo.sdk.web.b.a aVar = new com.sina.weibo.sdk.web.b.a(authInfoA, str, string);
            Bundle bundle = new Bundle();
            aVar.writeToBundle(bundle);
            intent.putExtras(bundle);
            activity.startActivity(intent);
        }
    }
}

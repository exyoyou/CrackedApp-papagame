package cn.sharesdk.sina.weibo.utils;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
import cn.sharesdk.framework.utils.SSDKLog;
import com.bykv.vk.component.ttvideo.player.C;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class a extends cn.sharesdk.framework.authorize.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2800a;

    public a(WebAuthorizeActivity webAuthorizeActivity) {
        super(webAuthorizeActivity);
    }

    @Override // cn.sharesdk.framework.authorize.b
    protected void onComplete(String str) {
        int i10;
        if (this.f2800a) {
            return;
        }
        this.f2800a = true;
        Bundle bundleUrlToBundle = ResHelper.urlToBundle(str);
        String string = bundleUrlToBundle.getString("error");
        String string2 = bundleUrlToBundle.getString("error_code");
        if (this.listener != null) {
            if (string == null && string2 == null) {
                String string3 = bundleUrlToBundle.getString("code");
                if (TextUtils.isEmpty(string3)) {
                    this.listener.onError(new Throwable("Authorize code is empty"));
                }
                a(this.activity.getHelper().getPlatform(), string3);
                return;
            }
            if (string.equals("access_denied")) {
                this.listener.onCancel();
                return;
            }
            try {
                i10 = ResHelper.parseInt(string2);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
                i10 = 0;
            }
            this.listener.onError(new Throwable(string + " (" + i10 + ")"));
        }
    }

    @Override // cn.sharesdk.framework.h, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (!TextUtils.isEmpty(this.redirectUri) && str.startsWith(this.redirectUri)) {
            webView.stopLoading();
            this.activity.finish();
            onComplete(str);
            return;
        }
        if (!str.startsWith("sms:")) {
            super.onPageStarted(webView, str, bitmap);
            return;
        }
        String strSubstring = str.substring(4);
        try {
            try {
                Intent intentA = a(strSubstring);
                intentA.setPackage("com.android.mms");
                webView.getContext().startActivity(intentA);
            } catch (Throwable th) {
                AuthorizeListener authorizeListener = this.listener;
                if (authorizeListener != null) {
                    authorizeListener.onError(th);
                }
            }
        } catch (Throwable unused) {
            webView.getContext().startActivity(a(strSubstring));
        }
    }

    @Override // cn.sharesdk.framework.h, android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!TextUtils.isEmpty(this.redirectUri) && str.startsWith(this.redirectUri)) {
            webView.stopLoading();
            this.activity.finish();
            onComplete(str);
            return true;
        }
        if (!str.startsWith("sms:")) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        String strSubstring = str.substring(4);
        try {
            try {
                Intent intentA = a(strSubstring);
                intentA.setPackage("com.android.mms");
                webView.getContext().startActivity(intentA);
            } catch (Throwable th) {
                AuthorizeListener authorizeListener = this.listener;
                if (authorizeListener != null) {
                    authorizeListener.onError(th);
                }
            }
        } catch (Throwable unused) {
            webView.getContext().startActivity(a(strSubstring));
        }
        return true;
    }

    private void a(final Platform platform, final String str) {
        new Thread() { // from class: cn.sharesdk.sina.weibo.utils.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String strB;
                try {
                    try {
                        strB = cn.sharesdk.sina.weibo.a.a(platform).b(str);
                    } catch (Throwable th) {
                        ((cn.sharesdk.framework.authorize.b) a.this).listener.onError(th);
                        strB = null;
                    }
                    if (strB == null) {
                        ((cn.sharesdk.framework.authorize.b) a.this).listener.onError(new Throwable("Authorize token is empty"));
                        return;
                    }
                    HashMap mapFromJson = new Hashon().fromJson(strB);
                    Bundle bundle = new Bundle();
                    bundle.putString("uid", String.valueOf(mapFromJson.get("uid")));
                    bundle.putString("remind_in", String.valueOf(mapFromJson.get("remind_in")));
                    bundle.putString("expires_in", String.valueOf(mapFromJson.get("expires_in")));
                    bundle.putString("access_token", String.valueOf(mapFromJson.get("access_token")));
                    ((cn.sharesdk.framework.authorize.b) a.this).listener.onComplete(bundle);
                } catch (Throwable th2) {
                    SSDKLog.b().a(th2);
                }
            }
        }.start();
    }

    private Intent a(String str) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + str));
        intent.putExtra("sms_body", "");
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        return intent;
    }
}

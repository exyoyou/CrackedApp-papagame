package com.baidu.oauth.sdkbqt.auth;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class t extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8245a;

    t(i iVar) {
        this.f8245a = iVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (com.baidu.oauth.sdkbqt.a.h.a(this.f8245a.getContext()) && this.f8245a.f8203g != null && this.f8245a.f8203g.getVisibility() != 4) {
            this.f8245a.f8203g.setVisibility(4);
        }
        if (this.f8245a.f8201e != null) {
            this.f8245a.loadUrl("javascript:prompt(JSON.stringify({action:{name:'action_set_title',params:[document.title, 'prompt_on_cancel', 'prompt_on_cancel']}}));");
        }
        this.f8245a.f8210n.removeCallbacks(this.f8245a.f8211o);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        if (!com.baidu.oauth.sdkbqt.a.h.a(this.f8245a.getContext()) && !str.startsWith("javascript:")) {
            this.f8245a.i();
        }
        this.f8245a.f8211o.a(str);
        this.f8245a.f8210n.postDelayed(this.f8245a.f8211o, this.f8245a.f8209m);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        super.onReceivedError(webView, i10, str, str2);
        this.f8245a.h();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.f8245a.h();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.baidu.oauth.sdkbqt.a.d.a(i.f8198b, "override the loading url that is " + str);
        if (TextUtils.isEmpty(str) || !str.contains(BdOauthSdk.getAuthInfo().getRedirectUrl())) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        HashMap<String, String> mapA = com.baidu.oauth.sdkbqt.a.h.a(str.substring(str.indexOf("#") + 1, str.length()));
        com.baidu.oauth.sdkbqt.result.b bVar = new com.baidu.oauth.sdkbqt.result.b();
        if (mapA.containsKey("error")) {
            bVar.setResultCode(OauthResult.ERROR_CODE_RESPONSE_INVALID);
            bVar.setResultMsg(mapA.get("error_description"));
            this.f8245a.f8215s.onFailure(bVar);
        } else {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("code", mapA.get("code"));
                jSONObject.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, mapA.get(NoticeTopAnimActivityDialog_.STATE_EXTRA));
                jSONObject.put("showLogin", this.f8245a.f8206j ? "1" : "0");
                jSONObject.put("finishLogin", "1");
                bVar.f8263a = jSONObject;
                bVar.setResultCode(0);
                this.f8245a.f8215s.onSuccess(bVar);
            } catch (JSONException e10) {
                com.baidu.oauth.sdkbqt.a.d.a(e10);
                bVar.setResultCode(OauthResult.ERROR_CODE_UNKNOW_ERROR);
                this.f8245a.f8215s.onFailure(bVar);
            }
        }
        this.f8245a.c();
        return true;
    }
}

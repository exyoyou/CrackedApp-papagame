package com.baidu.oauth.sdkbqt.view;

import android.content.Intent;
import com.baidu.oauth.sdkbqt.auth.BdSsoHandler;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class k implements com.baidu.oauth.sdkbqt.auth.i.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f8289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f8290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f8291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ WebViewActivity f8292d;

    k(WebViewActivity webViewActivity, String str, String str2, String str3) {
        this.f8292d = webViewActivity;
        this.f8289a = str;
        this.f8290b = str2;
        this.f8291c = str3;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.d
    public void a(String str) {
        com.baidu.oauth.sdkbqt.a.d.a(WebViewActivity.f8264a, "the url of BdOauthWebCallback is " + str);
        Intent intent = new Intent();
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("errNo");
            if (iOptInt == -301) {
                WebViewActivity webViewActivity = this.f8292d;
                webViewActivity.setResult(0, webViewActivity.a(OauthResult.ERROR_CODE_USER_CANCEL));
                this.f8292d.finish();
                return;
            }
            String str2 = "1";
            if (iOptInt == 80103 || iOptInt == 80104) {
                com.baidu.oauth.sdkbqt.a.d.a(WebViewActivity.f8264a, "oauth_sso_hash is old, just need generate a new value");
                HashMap map = new HashMap();
                map.put("client", "android");
                map.put("clientfrom", "native");
                map.put("suppcheck", "1");
                map.put("oauth_redirect_uri", this.f8289a);
                map.put("getauthorizationcode", "1");
                this.f8292d.oauthWebView.a(this.f8290b, (Map<String, String>) map);
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("accessToken", jSONObject.optString("access_token"));
            jSONObject2.put("openid", jSONObject.optString("openid"));
            jSONObject2.put("expiresIn", jSONObject.optString("expires_in"));
            jSONObject2.put("scope", this.f8291c);
            jSONObject2.put("code", jSONObject.optString("authorization_code"));
            if (!this.f8292d.f8268e) {
                str2 = "0";
            }
            jSONObject2.put("showLogin", str2);
            jSONObject.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, jSONObject.optString(NoticeTopAnimActivityDialog_.STATE_EXTRA));
            intent.putExtra(BdSsoHandler.EXTRA_OAUTH_RESULT_JSON, jSONObject2.toString());
            this.f8292d.setResult(-1, intent);
            this.f8292d.finish();
        } catch (JSONException e10) {
            com.baidu.oauth.sdkbqt.a.d.a(e10);
            WebViewActivity webViewActivity2 = this.f8292d;
            webViewActivity2.setResult(0, webViewActivity2.a(OauthResult.ERROR_CODE_UNKNOW_ERROR));
        }
    }
}

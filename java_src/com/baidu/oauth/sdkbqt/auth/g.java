package com.baidu.oauth.sdkbqt.auth;

import android.os.Looper;
import com.baidu.oauth.sdkbqt.callback.QrLoginStatusCheckCallback;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.baidu.oauth.sdkbqt.result.QrLoginStatusCheckResult;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class g extends com.baidu.oauth.sdkbqt.a.a.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f8192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ QrLoginStatusCheckCallback f8193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ QrLoginStatusCheckResult f8194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ String f8195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ c f8196e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    g(c cVar, Looper looper, boolean z10, QrLoginStatusCheckCallback qrLoginStatusCheckCallback, QrLoginStatusCheckResult qrLoginStatusCheckResult, String str) {
        super(looper);
        this.f8196e = cVar;
        this.f8192a = z10;
        this.f8193b = qrLoginStatusCheckCallback;
        this.f8194c = qrLoginStatusCheckResult;
        this.f8195d = str;
    }

    @Override // com.baidu.oauth.sdkbqt.a.a.f
    protected void a() {
        if (this.f8192a) {
            this.f8193b.onStart();
        }
    }

    @Override // com.baidu.oauth.sdkbqt.a.a.f
    protected void b() {
    }

    @Override // com.baidu.oauth.sdkbqt.a.a.f
    protected void a(Throwable th, int i10, String str) {
        this.f8194c.setResultCode(i10);
        this.f8193b.onFailure(this.f8194c);
        this.f8193b.onFinish();
    }

    @Override // com.baidu.oauth.sdkbqt.a.a.f
    protected void a(int i10, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str.substring(3, str.length() - 2));
            int iOptInt = jSONObject.optInt("errno", -1);
            String strOptString = jSONObject.optString("errmsg");
            this.f8194c.setResultCode(iOptInt);
            this.f8194c.setResultMsg(strOptString);
            if (iOptInt == 0) {
                JSONObject jSONObject2 = new JSONObject(jSONObject.optString("channel_v"));
                int iOptInt2 = jSONObject2.optInt("status");
                if (iOptInt2 == 0) {
                    this.f8194c.setCode(jSONObject2.optString("code"));
                    this.f8194c.setState(c.f8182c);
                    this.f8193b.onSuccess(this.f8194c);
                } else if (iOptInt2 == 1) {
                    this.f8193b.onScanQrCodeDone(this.f8194c);
                    this.f8196e.a(this.f8195d, false, this.f8193b);
                } else if (iOptInt2 == 2) {
                    this.f8194c.setResultCode(-208);
                    this.f8193b.onFailure(this.f8194c);
                    this.f8193b.onFinish();
                } else {
                    this.f8194c.setResultCode(OauthResult.ERROR_CODE_UNKNOW_ERROR);
                    this.f8193b.onFailure(this.f8194c);
                    this.f8193b.onFinish();
                }
            } else if (iOptInt == 1) {
                this.f8196e.a(this.f8195d, false, this.f8193b);
            } else {
                this.f8193b.onFailure(this.f8194c);
                this.f8193b.onFinish();
            }
        } catch (Exception e10) {
            this.f8194c.setResultCode(OauthResult.ERROR_CODE_UNKNOW_ERROR);
            this.f8193b.onFailure(this.f8194c);
            this.f8193b.onFinish();
            com.baidu.oauth.sdkbqt.a.d.a(e10);
        }
    }
}

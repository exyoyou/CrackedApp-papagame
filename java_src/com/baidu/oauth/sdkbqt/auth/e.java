package com.baidu.oauth.sdkbqt.auth;

import android.os.Looper;
import com.baidu.oauth.sdkbqt.callback.QrCodeCallback;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.baidu.oauth.sdkbqt.result.QrCodeResult;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class e extends com.baidu.oauth.sdkbqt.a.a.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ QrCodeCallback f8187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ QrCodeResult f8188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ c f8189c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e(c cVar, Looper looper, QrCodeCallback qrCodeCallback, QrCodeResult qrCodeResult) {
        super(looper);
        this.f8189c = cVar;
        this.f8187a = qrCodeCallback;
        this.f8188b = qrCodeResult;
    }

    @Override // com.baidu.oauth.sdkbqt.a.a.f
    protected void a() {
        this.f8187a.onStart();
    }

    @Override // com.baidu.oauth.sdkbqt.a.a.f
    protected void b() {
        this.f8187a.onFinish();
    }

    @Override // com.baidu.oauth.sdkbqt.a.a.f
    protected void a(Throwable th, int i10, String str) {
        this.f8188b.setResultCode(i10);
        this.f8187a.onFailure(this.f8188b);
    }

    @Override // com.baidu.oauth.sdkbqt.a.a.f
    protected void a(int i10, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f8188b.channelId = jSONObject.optString("channelid");
            this.f8188b.url = jSONObject.optString("url");
            this.f8187a.onSuccess(this.f8188b);
        } catch (JSONException e10) {
            com.baidu.oauth.sdkbqt.a.d.a(e10);
            this.f8188b.setResultCode(OauthResult.ERROR_CODE_UNKNOW_ERROR);
            this.f8187a.onFailure(this.f8188b);
        }
    }
}

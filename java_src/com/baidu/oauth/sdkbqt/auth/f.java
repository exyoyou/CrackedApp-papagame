package com.baidu.oauth.sdkbqt.auth;

import com.baidu.oauth.sdkbqt.callback.QrLoginStatusCheckCallback;
import com.baidu.oauth.sdkbqt.result.QrLoginStatusCheckResult;

/* JADX INFO: loaded from: classes6.dex */
class f extends QrLoginStatusCheckCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ QrLoginStatusCheckCallback f8190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f8191b;

    f(c cVar, QrLoginStatusCheckCallback qrLoginStatusCheckCallback) {
        this.f8191b = cVar;
        this.f8190a = qrLoginStatusCheckCallback;
    }

    @Override // com.baidu.oauth.sdkbqt.callback.OauthCallback
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(QrLoginStatusCheckResult qrLoginStatusCheckResult) {
        this.f8190a.onSuccess(qrLoginStatusCheckResult);
        this.f8191b.f8183a = null;
    }

    @Override // com.baidu.oauth.sdkbqt.callback.OauthCallback
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onFailure(QrLoginStatusCheckResult qrLoginStatusCheckResult) {
        this.f8190a.onFailure(qrLoginStatusCheckResult);
        this.f8191b.f8183a = null;
    }

    @Override // com.baidu.oauth.sdkbqt.callback.OauthCallback
    public void onFinish() {
        this.f8190a.onFinish();
    }

    @Override // com.baidu.oauth.sdkbqt.callback.QrLoginStatusCheckCallback
    public void onScanQrCodeDone(QrLoginStatusCheckResult qrLoginStatusCheckResult) {
        this.f8190a.onScanQrCodeDone(qrLoginStatusCheckResult);
    }

    @Override // com.baidu.oauth.sdkbqt.callback.OauthCallback
    public void onStart() {
        this.f8190a.onStart();
    }
}

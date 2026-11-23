package com.baidu.oauth.sdkbqt.auth;

/* JADX INFO: loaded from: classes6.dex */
class l extends com.baidu.oauth.sdkbqt.callback.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f8234a;

    l(k kVar) {
        this.f8234a = kVar;
    }

    @Override // com.baidu.oauth.sdkbqt.callback.OauthCallback
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(com.baidu.oauth.sdkbqt.result.a aVar) {
        this.f8234a.f8233a.loadUrl(this.f8234a.f8233a.d(aVar.f8262a));
    }
}

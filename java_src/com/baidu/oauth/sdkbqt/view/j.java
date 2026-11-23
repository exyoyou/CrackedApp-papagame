package com.baidu.oauth.sdkbqt.view;

import android.content.Intent;
import com.baidu.oauth.sdkbqt.auth.BdSsoHandler;

/* JADX INFO: loaded from: classes6.dex */
class j extends com.baidu.oauth.sdkbqt.callback.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ WebViewActivity f8288a;

    j(WebViewActivity webViewActivity) {
        this.f8288a = webViewActivity;
    }

    @Override // com.baidu.oauth.sdkbqt.callback.OauthCallback
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(com.baidu.oauth.sdkbqt.result.b bVar) {
        Intent intent = new Intent();
        intent.putExtra(BdSsoHandler.EXTRA_OAUTH_RESULT_JSON, bVar.f8263a.toString());
        this.f8288a.f8269f = true;
        this.f8288a.setResult(-1, intent);
        this.f8288a.finish();
    }

    @Override // com.baidu.oauth.sdkbqt.callback.OauthCallback
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onFailure(com.baidu.oauth.sdkbqt.result.b bVar) {
        this.f8288a.setResult(0, com.baidu.oauth.sdkbqt.a.i.a(bVar.getResultCode(), bVar.getResultMsg()));
        this.f8288a.finish();
    }
}

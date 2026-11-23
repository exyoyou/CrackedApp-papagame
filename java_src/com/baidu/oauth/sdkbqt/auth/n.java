package com.baidu.oauth.sdkbqt.auth;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class n extends com.baidu.oauth.sdkbqt.callback.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Map f8236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f8237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ i f8238c;

    n(i iVar, Map map, String str) {
        this.f8238c = iVar;
        this.f8236a = map;
        this.f8237b = str;
    }

    @Override // com.baidu.oauth.sdkbqt.callback.OauthCallback
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(com.baidu.oauth.sdkbqt.result.a aVar) {
        com.baidu.oauth.sdkbqt.a.d.a(i.f8198b, "generate sso_hash success, which is " + aVar.f8262a);
        this.f8236a.put("oauth_sso_hash", aVar.f8262a);
        this.f8238c.loadUrl(this.f8237b + i.a((Map<String, String>) this.f8236a, true));
    }
}

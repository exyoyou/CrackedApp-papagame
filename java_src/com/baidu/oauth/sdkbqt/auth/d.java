package com.baidu.oauth.sdkbqt.auth;

/* JADX INFO: loaded from: classes6.dex */
class d implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.baidu.oauth.sdkbqt.callback.a f8185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f8186b;

    d(c cVar, com.baidu.oauth.sdkbqt.callback.a aVar) {
        this.f8186b = cVar;
        this.f8185a = aVar;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.b.a
    public void a(long j10) {
        com.baidu.oauth.sdkbqt.result.a aVar = new com.baidu.oauth.sdkbqt.result.a();
        aVar.f8262a = new h().a(Long.valueOf(j10));
        aVar.setResultCode(0);
        this.f8185a.onSuccess(aVar);
    }
}

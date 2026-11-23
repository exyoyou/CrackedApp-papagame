package com.baidu.oauth.sdkbqt.auth;

/* JADX INFO: loaded from: classes6.dex */
class x extends i.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8253a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    x(i iVar) {
        super();
        this.f8253a = iVar;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.a
    public String a(i.e eVar) {
        return this.f8253a.f8200d.containsKey(eVar.b().get(0)) ? "1" : "0";
    }
}

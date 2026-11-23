package com.baidu.oauth.sdkbqt.auth;

/* JADX INFO: loaded from: classes6.dex */
class ab extends i.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8178a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ab(i iVar) {
        super();
        this.f8178a = iVar;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.a
    public String a(i.e eVar) {
        if (this.f8178a.canGoBack()) {
            this.f8178a.goBack();
            return null;
        }
        this.f8178a.c();
        return null;
    }
}

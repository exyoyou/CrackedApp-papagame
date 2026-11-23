package com.baidu.oauth.sdkbqt.auth;

/* JADX INFO: loaded from: classes6.dex */
class aa extends i.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8177a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aa(i iVar) {
        super();
        this.f8177a = iVar;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.a
    public String a(i.e eVar) {
        String str = eVar.b().get(0);
        if (this.f8177a.f8201e == null) {
            return null;
        }
        this.f8177a.f8201e.a(str);
        return null;
    }
}

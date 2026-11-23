package com.baidu.oauth.sdkbqt.auth;

/* JADX INFO: loaded from: classes6.dex */
class m extends i.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8235a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    m(i iVar) {
        super();
        this.f8235a = iVar;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.a
    public String a(i.e eVar) {
        com.baidu.oauth.sdkbqt.a.d.a(i.f8198b, "user has clicked Authorized login");
        if (this.f8235a.f8216t == null) {
            return null;
        }
        this.f8235a.f8216t.f8223a.a(eVar.b().get(0));
        return null;
    }
}

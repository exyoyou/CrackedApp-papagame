package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
class bk implements aa.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ bj f7585c;

    bk(bj bjVar) {
        this.f7585c = bjVar;
    }

    @Override // com.baidu.mobads.sdk.internal.aa.a
    public void onFailure() {
        this.f7585c.f7575k.a(bj.f7566b, "AbstractProdTemplate,load-dex请求，回调失败");
        this.f7585c.i();
    }

    @Override // com.baidu.mobads.sdk.internal.aa.a
    public void onSuccess() {
        this.f7585c.f7575k.a(bj.f7566b, "AbstractProdTemplate,load-dex请求，回调成功");
        this.f7585c.h();
    }
}

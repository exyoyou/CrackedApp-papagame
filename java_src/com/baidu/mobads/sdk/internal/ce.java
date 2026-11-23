package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
class ce implements cp.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cb f7708a;

    ce(cb cbVar) {
        this.f7708a = cbVar;
    }

    @Override // com.baidu.mobads.sdk.internal.cp.a
    public void a(String str) {
        try {
            this.f7708a.b();
            this.f7708a.a(str);
        } catch (Throwable th) {
            bv.a().a(th);
        }
    }
}

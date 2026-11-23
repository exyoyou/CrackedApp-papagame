package com.switfpass.pay.thread;

/* JADX INFO: loaded from: classes2.dex */
final class m implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ l f82708a;

    m(l lVar) {
        this.f82708a = lVar;
    }

    @Override // com.switfpass.pay.thread.a
    public final void a(int i10) {
        this.f82708a.publishProgress(Integer.valueOf(i10));
    }
}

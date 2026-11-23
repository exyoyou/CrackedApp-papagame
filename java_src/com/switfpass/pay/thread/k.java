package com.switfpass.pay.thread;

/* JADX INFO: loaded from: classes2.dex */
final class k implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ e f82705a;

    k(e eVar) {
        this.f82705a = eVar;
    }

    @Override // com.switfpass.pay.thread.a
    public final void a(int i10) {
        e eVar = this.f82705a;
        if (eVar != null) {
            eVar.onProgress(i10);
        }
    }
}

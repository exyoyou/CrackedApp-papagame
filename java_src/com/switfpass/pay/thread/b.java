package com.switfpass.pay.thread;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f82681a;

    public abstract Object a();

    public void b(a aVar) {
        this.f82681a = aVar;
    }

    public void c(int i10) {
        a aVar = this.f82681a;
        if (aVar != null) {
            aVar.a(i10);
        }
    }
}

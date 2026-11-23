package com.tencent.stat;

/* JADX INFO: loaded from: classes2.dex */
class s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f83965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f83966b;

    s(n nVar, b bVar) {
        this.f83966b = nVar;
        this.f83965a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f83966b.b(this.f83965a);
    }
}

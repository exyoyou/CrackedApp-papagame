package com.tencent.stat;

/* JADX INFO: loaded from: classes2.dex */
class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.tencent.stat.a.e f83962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f83963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ n f83964c;

    r(n nVar, com.tencent.stat.a.e eVar, c cVar) {
        this.f83964c = nVar;
        this.f83962a = eVar;
        this.f83963b = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f83964c.b(this.f83962a, this.f83963b);
    }
}

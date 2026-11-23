package org.greenrobot.eventbus;

/* JADX INFO: loaded from: classes10.dex */
class a implements Runnable, k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f95239b = new j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f95240c;

    a(c cVar) {
        this.f95240c = cVar;
    }

    @Override // org.greenrobot.eventbus.k
    public void a(o oVar, Object obj) {
        this.f95239b.a(i.a(oVar, obj));
        this.f95240c.g().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        i iVarB = this.f95239b.b();
        if (iVarB == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f95240c.l(iVarB);
    }
}

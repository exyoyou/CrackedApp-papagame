package org.greenrobot.eventbus;

import java.util.logging.Level;

/* JADX INFO: loaded from: classes10.dex */
final class b implements Runnable, k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f95241b = new j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f95242c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f95243d;

    b(c cVar) {
        this.f95242c = cVar;
    }

    @Override // org.greenrobot.eventbus.k
    public void a(o oVar, Object obj) {
        i iVarA = i.a(oVar, obj);
        synchronized (this) {
            this.f95241b.a(iVarA);
            if (!this.f95243d) {
                this.f95243d = true;
                this.f95242c.g().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                try {
                    i iVarC = this.f95241b.c(1000);
                    if (iVarC == null) {
                        synchronized (this) {
                            iVarC = this.f95241b.b();
                            if (iVarC == null) {
                                this.f95243d = false;
                                this.f95243d = false;
                                return;
                            }
                        }
                    }
                    this.f95242c.l(iVarC);
                } catch (InterruptedException e10) {
                    this.f95242c.h().b(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e10);
                    this.f95243d = false;
                    return;
                }
            } catch (Throwable th) {
                this.f95243d = false;
                throw th;
            }
        }
    }
}

package com.byazt.xl;

import android.content.Context;
import android.view.View;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1459, 130})
public class m implements da {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicBoolean f21942a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f21943c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ScheduledFuture<?> f21944n;
    public com.byazt.ol.c tt;
    public u uj;
    public x ve;

    @com.byazt.zqa.c(c = {0, 1, 1459, 600})
    private class c implements Runnable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public da.c f21946c;
        public int ve;

        public c(int i10, da.c cVar) {
            this.ve = i10;
            this.f21946c = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.ve == 1) {
                m.this.tt.c(true);
                m.this.c(this.f21946c, 107, null);
            }
        }
    }

    public m(Context context, u uVar, com.byazt.ol.c cVar, x xVar) {
        this.f21943c = context;
        this.uj = uVar;
        this.ve = xVar;
        this.tt = cVar;
        cVar.c(this.ve);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        try {
            ScheduledFuture<?> scheduledFuture = this.f21944n;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.f21944n.cancel(false);
            this.f21944n = null;
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public com.byazt.ol.c tt() {
        return this.tt;
    }

    @Override // com.byazt.xl.da
    public boolean c(final da.c cVar) {
        int iX = this.uj.x();
        if (iX < 0) {
            c(cVar, 107, "time is ".concat(String.valueOf(iX)));
        } else {
            this.f21944n = com.byazt.or.n.c(new c(1, cVar), iX, TimeUnit.MILLISECONDS);
            this.tt.c(new sp() { // from class: com.byazt.xl.m.1
                @Override // com.byazt.xl.sp
                public void c(View view, yp ypVar) {
                    z zVarTt;
                    m.this.ve();
                    if (cVar.ve() || (zVarTt = cVar.tt()) == null) {
                        return;
                    }
                    zVarTt.c(m.this.tt, ypVar);
                    cVar.c(true);
                }

                @Override // com.byazt.xl.sp
                public void c(int i10, String str) {
                    m.this.c(cVar, i10, str);
                }
            });
        }
        return true;
    }

    @Override // com.byazt.xl.da
    public void c() {
        this.tt.uj();
        ve();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(da.c cVar, int i10, String str) {
        z zVarTt;
        if (cVar.ve() || this.f21942a.get()) {
            return;
        }
        ve();
        this.uj.sp().c(i10, str);
        if (cVar.tt(this)) {
            cVar.c(this);
        } else {
            if (cVar.ve() || (zVarTt = cVar.tt()) == null) {
                return;
            }
            cVar.c(true);
            zVarTt.a_(i10);
        }
        this.f21942a.getAndSet(true);
    }
}

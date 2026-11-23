package com.byazt.iuu;

import com.byazt.ete.x;
import com.byazt.iu.n;
import com.byazt.nr.da;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1651, 15})
public class uj extends tt implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f15554c;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AtomicBoolean f15555t;
    public final AtomicBoolean tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f15556u;
    public final AtomicBoolean uj;
    public final AtomicBoolean ve;
    public final String yp;

    public uj(n nVar, x.ve veVar, int i10, String str) {
        super(nVar);
        this.f15554c = new AtomicBoolean(false);
        this.tt = new AtomicBoolean(false);
        this.ve = new AtomicBoolean(false);
        this.uj = new AtomicBoolean(false);
        this.f15555t = new AtomicBoolean(false);
        this.f15552n = veVar;
        this.f15556u = i10;
        this.yp = str;
    }

    private long n() {
        long jC = com.byazt.wi.tt.c().c(this.f15556u, this.yp);
        if (jC > 0) {
            return jC;
        }
        x.ve veVar = this.f15552n;
        if (veVar == null || veVar.a() <= 0) {
            return 10000L;
        }
        return this.f15552n.a();
    }

    @Override // com.byazt.iuu.tt
    public void c(int i10, String str) {
        this.f15551i = i10;
        this.f15550da = str;
        this.ve.set(true);
        this.f15555t.set(true);
        tt();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f15554c.set(true);
        tt();
    }

    public void tt() {
        com.byazt.iu.ve veVar;
        if (!this.f15555t.get()) {
            if (this.f15554c.get() && this.uj.get()) {
                if (x.c(this.sl).c("forbid_realtime_use_cache", new x.tt.c().c(-666).c()) || (veVar = this.sp) == null) {
                    return;
                }
                c(veVar, 2);
                return;
            }
            return;
        }
        da.tt().removeCallbacks(this);
        com.byazt.iu.ve veVar2 = this.f15549a;
        if (veVar2 != null) {
            c(veVar2, 1);
            return;
        }
        if (this.uj.get()) {
            if (this.ve.get()) {
                if (this.f15552n.c("forbid_realtime_use_cache", new x.tt.c().c(this.f15551i).c())) {
                    c((com.byazt.iu.ve) null, 3);
                    return;
                }
            }
            com.byazt.iu.ve veVar3 = this.sp;
            if (veVar3 != null) {
                c(veVar3, 2);
            } else {
                c((com.byazt.iu.ve) null, 3);
            }
        }
    }

    @Override // com.byazt.iuu.tt
    public void ve() {
        this.f15555t.set(true);
        tt();
    }

    public void c() {
        da.tt().postDelayed(this, n());
    }

    private void c(com.byazt.iu.ve veVar, int i10) {
        com.byazt.iu.ve veVar2;
        com.byazt.iu.ve veVar3;
        if (this.tt.compareAndSet(false, true)) {
            this.sl = i10;
            if (i10 == 3) {
                n nVar = this.f15553x;
                if (nVar != null) {
                    nVar.c(this.f15551i, this.f15550da);
                }
            } else if (veVar != null) {
                veVar.c();
            }
            if (i10 == 1 && (veVar3 = this.sp) != null) {
                veVar3.ve();
            }
            if (i10 != 2 || (veVar2 = this.f15549a) == null) {
                return;
            }
            veVar2.ve();
            return;
        }
        if (i10 == this.sl || veVar == null) {
            return;
        }
        veVar.ve();
    }

    @Override // com.byazt.iuu.tt
    public void c(boolean z10) {
        this.uj.set(true);
        tt();
    }
}

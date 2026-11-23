package com.byazt.iuu;

import com.byazt.ete.x;
import com.byazt.iu.n;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1651, 20})
public abstract class c extends tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f15548c;
    public final AtomicBoolean tt;
    public final AtomicBoolean uj;
    public final AtomicBoolean ve;

    public c(n nVar, x.ve veVar) {
        super(nVar);
        this.f15548c = new AtomicBoolean(false);
        this.tt = new AtomicBoolean(false);
        this.ve = new AtomicBoolean(false);
        this.uj = new AtomicBoolean(false);
        this.f15552n = veVar;
    }

    public abstract void c();

    @Override // com.byazt.iuu.tt
    public void c(int i10, String str) {
        this.f15551i = i10;
        this.f15550da = str;
        this.uj.set(true);
        tt();
    }

    public void tt() {
        com.byazt.iu.ve veVar;
        if (this.ve.get() && (veVar = this.sp) != null) {
            c(veVar, 2);
            return;
        }
        if (this.uj.get()) {
            com.byazt.iu.ve veVar2 = this.f15549a;
            if (veVar2 != null) {
                c(veVar2, 1);
            } else {
                c((com.byazt.iu.ve) null, 3);
            }
        }
    }

    @Override // com.byazt.iuu.tt
    public void ve() {
        this.uj.set(true);
        tt();
    }

    private void c(com.byazt.iu.ve veVar, int i10) {
        if (this.f15548c.compareAndSet(false, true)) {
            if (i10 != 3) {
                if (veVar != null) {
                    veVar.c();
                }
            } else {
                n nVar = this.f15553x;
                if (nVar != null) {
                    nVar.c(this.f15551i, this.f15550da);
                }
            }
        }
    }

    @Override // com.byazt.iuu.tt
    public void c(boolean z10) {
        if (z10) {
            this.ve.set(true);
            tt();
        } else {
            this.tt.set(true);
            c();
        }
    }
}

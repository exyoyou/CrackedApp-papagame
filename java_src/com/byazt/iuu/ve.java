package com.byazt.iuu;

import com.byazt.ete.x;
import com.byazt.iu.n;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1651, 54})
public class ve extends tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f15557c;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AtomicBoolean f15558t;
    public final AtomicBoolean tt;
    public final AtomicBoolean uj;
    public final AtomicBoolean ve;

    public ve(n nVar, x.ve veVar) {
        super(nVar);
        this.f15557c = new AtomicBoolean(false);
        this.tt = new AtomicBoolean(false);
        this.ve = new AtomicBoolean(false);
        this.uj = new AtomicBoolean(false);
        this.f15558t = new AtomicBoolean(false);
        this.f15552n = veVar;
    }

    @Override // com.byazt.iuu.tt
    public void c(int i10, String str) {
        this.f15551i = i10;
        this.f15550da = str;
        this.tt.set(true);
        this.f15558t.set(true);
        c();
    }

    @Override // com.byazt.iuu.tt
    public void ve() {
        this.f15558t.set(true);
        c();
    }

    public void c() {
        com.byazt.iu.ve veVar;
        if (this.uj.get() && this.sl != 2 && (veVar = this.sp) != null) {
            c(veVar, 2);
            return;
        }
        if (this.f15558t.get()) {
            com.byazt.iu.ve veVar2 = this.f15549a;
            if (veVar2 != null) {
                c(veVar2, 1);
            } else if (this.ve.get()) {
                c((com.byazt.iu.ve) null, 3);
            }
        }
    }

    private void c(com.byazt.iu.ve veVar, int i10) {
        if (!this.f15557c.compareAndSet(false, true)) {
            if (veVar != null) {
                veVar.ve();
                return;
            }
            return;
        }
        this.sl = i10;
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

    @Override // com.byazt.iuu.tt
    public void c(boolean z10) {
        if (z10) {
            this.uj.set(true);
            c();
        } else {
            this.ve.set(true);
            c();
        }
    }
}

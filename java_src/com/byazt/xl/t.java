package com.byazt.xl;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1459, 66})
public class t implements da.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public z f21947c;
    public List<da> tt;
    public AtomicBoolean uj = new AtomicBoolean(false);
    public i ve;

    public t(List<da> list, i iVar) {
        this.tt = list;
        this.ve = iVar;
    }

    @Override // com.byazt.xl.da.c
    public void c() {
        this.ve.a();
        Iterator<da> it2 = this.tt.iterator();
        while (it2.hasNext() && !it2.next().c(this)) {
        }
    }

    @Override // com.byazt.xl.da.c
    public boolean tt(da daVar) {
        int iIndexOf = this.tt.indexOf(daVar);
        return iIndexOf < this.tt.size() - 1 && iIndexOf >= 0;
    }

    @Override // com.byazt.xl.da.c
    public boolean ve() {
        return this.uj.get();
    }

    @Override // com.byazt.xl.da.c
    public z tt() {
        return this.f21947c;
    }

    @Override // com.byazt.xl.da.c
    public void c(da daVar) {
        int iIndexOf = this.tt.indexOf(daVar);
        if (iIndexOf < 0) {
            return;
        }
        do {
            iIndexOf++;
            if (iIndexOf >= this.tt.size()) {
                return;
            }
        } while (!this.tt.get(iIndexOf).c(this));
    }

    @Override // com.byazt.xl.da.c
    public void c(z zVar) {
        this.f21947c = zVar;
    }

    @Override // com.byazt.xl.da.c
    public void c(boolean z10) {
        this.uj.getAndSet(z10);
    }
}

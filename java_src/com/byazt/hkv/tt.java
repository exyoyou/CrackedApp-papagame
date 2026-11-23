package com.byazt.hkv;

import android.content.Context;
import android.view.View;
import com.byazt.ete.da;
import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 19, 13})
public class tt extends uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ic f14949c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.zo.ve f14950n;
    public final String tt;
    public int uj;
    public final int ve;

    public tt(Context context, ic icVar, String str, int i10) {
        super(context);
        this.uj = 1;
        this.f14949c = icVar;
        this.tt = str;
        this.ve = i10;
        n();
    }

    private void n() {
        com.byazt.zo.ve veVarC = this.f14955x.c(this.f14949c, this.f14954a, this, c());
        this.f14950n = veVarC;
        veVarC.c(this.sp);
        ((com.byazt.vis.c) c(com.byazt.vis.c.class)).c(this.tt);
        ((com.byazt.nat.c) c(com.byazt.nat.c.class)).c(this.tt);
        ((com.byazt.nat.c) c(com.byazt.nat.c.class)).c(this.ve);
        if (c()) {
            ((com.byazt.nat.c) c(com.byazt.nat.c.class)).uj(true);
        }
    }

    public boolean c() {
        return false;
    }

    public da tt() {
        return this.sp;
    }

    public void uj(int i10) {
        this.sp.tt(i10);
    }

    public void ve(int i10) {
        this.sp.ve(i10);
    }

    public void c(int i10) {
        this.uj = i10;
        da daVar = this.sp;
        if (daVar != null) {
            daVar.c(i10);
        }
    }

    public void tt(View view) {
        this.sp.c(view);
    }

    public void tt(int i10) {
        this.sp.uj(i10);
    }

    public void c(da daVar) {
        this.sp = daVar;
    }

    public void c(View view) {
        this.sp.tt(view);
    }

    @Override // com.byazt.hkv.uj
    public void c(View view, da daVar) {
        if (ic.a(this.f14949c)) {
            return;
        }
        ((com.byazt.nat.c) c(com.byazt.nat.c.class)).c(((com.byazt.vis.c) c(com.byazt.vis.c.class)).n());
        this.f14950n.c(view);
        if (daVar == null) {
            daVar = new da();
        }
        this.f14950n.c(daVar);
        this.f14950n.tt();
        ic.sp(this.f14949c);
    }
}

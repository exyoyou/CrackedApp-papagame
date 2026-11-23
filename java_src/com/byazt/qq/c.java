package com.byazt.qq;

import android.app.Activity;
import com.byazt.ete.g;
import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 88, 20})
public abstract class c extends tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f19213a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19214c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f19215n;
    public int tt;
    public boolean uj;
    public boolean ve;

    public c(Activity activity, ic icVar) {
        super(activity, icVar);
    }

    public void c(int i10) {
        this.f19214c = i10;
    }

    public void tt(int i10) {
        this.tt = i10;
    }

    public void uj(boolean z10) {
        this.f19215n = z10;
    }

    public void ve(boolean z10) {
        this.f19213a = z10;
    }

    public c(Activity activity, ic icVar, g gVar) {
        super(activity, icVar, gVar);
    }

    public void c(boolean z10) {
        this.ve = z10;
    }

    public void tt(boolean z10) {
        this.uj = z10;
    }

    @Override // com.byazt.qq.tt
    public tt.c tt(da daVar) {
        u uVar = new u(this.f19223x, this.sp);
        uVar.tt(this.uj);
        uVar.c(this.ve);
        uVar.c(this.f19214c);
        uVar.tt(this.tt);
        uVar.uj(this.sl);
        uVar.ve(this.f19221t);
        uVar.c(this.f19220m);
        uVar.tt(this.f19224z);
        uVar.ve(this.f19213a);
        uVar.uj(this.f19215n);
        return uVar.tt(daVar);
    }
}

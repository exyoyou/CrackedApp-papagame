package com.byazt.zy;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 195})
public class gt extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f23008a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f23009n;
    public final com.byazt.dg.c<Integer, Integer> sp;
    public final com.byazt.zk.ve uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.dg.c<ColorFilter, ColorFilter> f23010x;

    public gt(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.rh rhVar) {
        super(xVar, veVar, rhVar.sp().c(), rhVar.x().c(), rhVar.i(), rhVar.ve(), rhVar.uj(), rhVar.n(), rhVar.a());
        this.uj = veVar;
        this.f23009n = rhVar.c();
        this.f23008a = rhVar.da();
        com.byazt.dg.c<Integer, Integer> cVarC = rhVar.tt().c();
        this.sp = cVarC;
        cVarC.c(this);
        veVar.c(cVarC);
    }

    @Override // com.byazt.zy.c, com.byazt.zy.n
    public void c(Canvas canvas, Matrix matrix, int i10) {
        if (this.f23008a) {
            return;
        }
        this.tt.setColor(((com.byazt.dg.tt) this.sp).i());
        com.byazt.dg.c<ColorFilter, ColorFilter> cVar = this.f23010x;
        if (cVar != null) {
            this.tt.setColorFilter(cVar.sp());
        }
        super.c(canvas, matrix, i10);
    }
}

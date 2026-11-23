package com.byazt.zy;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 91})
public class sp implements n, sl, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f23031a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f23032c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.dg.c<ColorFilter, ColorFilter> f23033da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.dg.c<Integer, Integer> f23034i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f23035n;
    public final com.byazt.ga.x sl;
    public final List<u> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.dg.c<Float, Float> f23036t;
    public final Path tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.dg.ve f23037u;
    public final com.byazt.zk.ve uj;
    public final Paint ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.dg.c<Integer, Integer> f23038x;

    public sp(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.z zVar) {
        Path path = new Path();
        this.tt = path;
        this.ve = new com.byazt.xg.c(1);
        this.sp = new ArrayList();
        this.uj = veVar;
        this.f23035n = zVar.c();
        this.f23031a = zVar.n();
        this.sl = xVar;
        if (veVar.t() != null) {
            com.byazt.dg.c<Float, Float> cVarC = veVar.t().c().c();
            this.f23036t = cVarC;
            cVarC.c(this);
            veVar.c(this.f23036t);
        }
        if (veVar.u() != null) {
            this.f23037u = new com.byazt.dg.ve(this, veVar, veVar.u());
        }
        if (zVar.tt() == null || zVar.ve() == null) {
            this.f23038x = null;
            this.f23034i = null;
            return;
        }
        path.setFillType(zVar.uj());
        com.byazt.dg.c<Integer, Integer> cVarC2 = zVar.tt().c();
        this.f23038x = cVarC2;
        cVarC2.c(this);
        veVar.c(cVarC2);
        com.byazt.dg.c<Integer, Integer> cVarC3 = zVar.ve().c();
        this.f23034i = cVarC3;
        cVarC3.c(this);
        veVar.c(cVarC3);
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        this.sl.invalidateSelf();
    }

    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            ve veVar = list2.get(i10);
            if (veVar instanceof u) {
                this.sp.add((u) veVar);
            }
        }
    }

    @Override // com.byazt.zy.n
    public void c(Canvas canvas, Matrix matrix, int i10) {
        if (this.f23031a) {
            return;
        }
        com.byazt.ga.n.c("FillContent#draw");
        this.ve.setColor((com.byazt.kk.i.c((int) ((((i10 / 255.0f) * this.f23034i.sp().intValue()) / 100.0f) * 255.0f), 0, 255) << 24) | (((com.byazt.dg.tt) this.f23038x).i() & 16777215));
        com.byazt.dg.c<ColorFilter, ColorFilter> cVar = this.f23033da;
        if (cVar != null) {
            this.ve.setColorFilter(cVar.sp());
        }
        com.byazt.dg.c<Float, Float> cVar2 = this.f23036t;
        if (cVar2 != null) {
            float fFloatValue = cVar2.sp().floatValue();
            if (fFloatValue == 0.0f) {
                this.ve.setMaskFilter(null);
            } else if (fFloatValue != this.f23032c) {
                this.ve.setMaskFilter(this.uj.tt(fFloatValue));
            }
            this.f23032c = fFloatValue;
        }
        com.byazt.dg.ve veVar = this.f23037u;
        if (veVar != null) {
            veVar.c(this.ve);
        }
        this.tt.reset();
        for (int i11 = 0; i11 < this.sp.size(); i11++) {
            this.tt.addPath(this.sp.get(i11).uj(), matrix);
        }
        canvas.drawPath(this.tt, this.ve);
        com.byazt.ga.n.tt("FillContent#draw");
    }

    @Override // com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        this.tt.reset();
        for (int i10 = 0; i10 < this.sp.size(); i10++) {
            this.tt.addPath(this.sp.get(i10).uj(), matrix);
        }
        this.tt.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }
}

package com.byazt.zy;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 71})
public class x implements n, sl, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f23051c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final List<u> f23052da;
    public com.byazt.dg.c<Float, Float> gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RectF f23053i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.dg.c<ColorFilter, ColorFilter> f23054m;
    public final int my;
    public com.byazt.dg.nu nu;
    public final com.byazt.ga.x rh;
    public com.byazt.dg.ve rl;
    public final com.byazt.jx.sp sl;
    public final Path sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final com.byazt.dg.c<com.byazt.jx.uj, com.byazt.jx.uj> f23056t;
    public final String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final com.byazt.dg.c<Integer, Integer> f23057u;
    public final com.byazt.zk.ve uj;
    public final boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Paint f23058x;
    public final com.byazt.dg.c<PointF, PointF> yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final com.byazt.dg.c<PointF, PointF> f23059z;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final LongSparseArray<LinearGradient> f23055n = new LongSparseArray<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LongSparseArray<RadialGradient> f23050a = new LongSparseArray<>();

    public x(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar, com.byazt.jx.n nVar) {
        Path path = new Path();
        this.sp = path;
        this.f23058x = new com.byazt.xg.c(1);
        this.f23053i = new RectF();
        this.f23052da = new ArrayList();
        this.f23051c = 0.0f;
        this.uj = veVar;
        this.tt = nVar.c();
        this.ve = nVar.x();
        this.rh = xVar;
        this.sl = nVar.tt();
        path.setFillType(nVar.ve());
        this.my = (int) (aVar.n() / 32.0f);
        com.byazt.dg.c<com.byazt.jx.uj, com.byazt.jx.uj> cVarC = nVar.uj().c();
        this.f23056t = cVarC;
        cVarC.c(this);
        veVar.c(cVarC);
        com.byazt.dg.c<Integer, Integer> cVarC2 = nVar.n().c();
        this.f23057u = cVarC2;
        cVarC2.c(this);
        veVar.c(cVarC2);
        com.byazt.dg.c<PointF, PointF> cVarC3 = nVar.a().c();
        this.yp = cVarC3;
        cVarC3.c(this);
        veVar.c(cVarC3);
        com.byazt.dg.c<PointF, PointF> cVarC4 = nVar.sp().c();
        this.f23059z = cVarC4;
        cVarC4.c(this);
        veVar.c(cVarC4);
        if (veVar.t() != null) {
            com.byazt.dg.c<Float, Float> cVarC5 = veVar.t().c().c();
            this.gt = cVarC5;
            cVarC5.c(this);
            veVar.c(this.gt);
        }
        if (veVar.u() != null) {
            this.rl = new com.byazt.dg.ve(this, veVar, veVar.u());
        }
    }

    private LinearGradient tt() {
        long jUj = uj();
        LinearGradient linearGradient = this.f23055n.get(jUj);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointFSp = this.yp.sp();
        PointF pointFSp2 = this.f23059z.sp();
        com.byazt.jx.uj ujVarSp = this.f23056t.sp();
        LinearGradient linearGradient2 = new LinearGradient(pointFSp.x, pointFSp.y, pointFSp2.x, pointFSp2.y, c(ujVarSp.tt()), ujVarSp.c(), Shader.TileMode.CLAMP);
        this.f23055n.put(jUj, linearGradient2);
        return linearGradient2;
    }

    private int uj() {
        int iRound = Math.round(this.yp.x() * this.my);
        int iRound2 = Math.round(this.f23059z.x() * this.my);
        int iRound3 = Math.round(this.f23056t.x() * this.my);
        int i10 = iRound != 0 ? iRound * 527 : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private RadialGradient ve() {
        long jUj = uj();
        RadialGradient radialGradient = this.f23050a.get(jUj);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointFSp = this.yp.sp();
        PointF pointFSp2 = this.f23059z.sp();
        com.byazt.jx.uj ujVarSp = this.f23056t.sp();
        int[] iArrC = c(ujVarSp.tt());
        float[] fArrC = ujVarSp.c();
        float f10 = pointFSp.x;
        float f11 = pointFSp.y;
        float fHypot = (float) Math.hypot(pointFSp2.x - f10, pointFSp2.y - f11);
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, fHypot <= 0.0f ? 0.001f : fHypot, iArrC, fArrC, Shader.TileMode.CLAMP);
        this.f23050a.put(jUj, radialGradient2);
        return radialGradient2;
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        this.rh.invalidateSelf();
    }

    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            ve veVar = list2.get(i10);
            if (veVar instanceof u) {
                this.f23052da.add((u) veVar);
            }
        }
    }

    @Override // com.byazt.zy.n
    public void c(Canvas canvas, Matrix matrix, int i10) {
        Shader shaderVe;
        if (this.ve) {
            return;
        }
        com.byazt.ga.n.c("GradientFillContent#draw");
        this.sp.reset();
        for (int i11 = 0; i11 < this.f23052da.size(); i11++) {
            this.sp.addPath(this.f23052da.get(i11).uj(), matrix);
        }
        this.sp.computeBounds(this.f23053i, false);
        if (this.sl == com.byazt.jx.sp.LINEAR) {
            shaderVe = tt();
        } else {
            shaderVe = ve();
        }
        shaderVe.setLocalMatrix(matrix);
        this.f23058x.setShader(shaderVe);
        com.byazt.dg.c<ColorFilter, ColorFilter> cVar = this.f23054m;
        if (cVar != null) {
            this.f23058x.setColorFilter(cVar.sp());
        }
        com.byazt.dg.c<Float, Float> cVar2 = this.gt;
        if (cVar2 != null) {
            float fFloatValue = cVar2.sp().floatValue();
            if (fFloatValue == 0.0f) {
                this.f23058x.setMaskFilter(null);
            } else if (fFloatValue != this.f23051c) {
                this.f23058x.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f23051c = fFloatValue;
        }
        com.byazt.dg.ve veVar = this.rl;
        if (veVar != null) {
            veVar.c(this.f23058x);
        }
        this.f23058x.setAlpha(com.byazt.kk.i.c((int) ((((i10 / 255.0f) * this.f23057u.sp().intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.sp, this.f23058x);
        com.byazt.ga.n.tt("GradientFillContent#draw");
    }

    @Override // com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        this.sp.reset();
        for (int i10 = 0; i10 < this.f23052da.size(); i10++) {
            this.sp.addPath(this.f23052da.get(i10).uj(), matrix);
        }
        this.sp.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    private int[] c(int[] iArr) {
        com.byazt.dg.nu nuVar = this.nu;
        if (nuVar != null) {
            Integer[] numArr = (Integer[]) nuVar.sp();
            int i10 = 0;
            if (iArr.length == numArr.length) {
                while (i10 < iArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i10 < numArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            }
        }
        return iArr;
    }
}

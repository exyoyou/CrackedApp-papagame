package com.byazt.zy;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 42})
public class i extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LongSparseArray<LinearGradient> f23011a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final int f23012da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.jx.sp f23013i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f23014n;
    public final com.byazt.dg.c<com.byazt.jx.uj, com.byazt.jx.uj> sl;
    public final LongSparseArray<RadialGradient> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final com.byazt.dg.c<PointF, PointF> f23015t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final com.byazt.dg.c<PointF, PointF> f23016u;
    public final String uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final RectF f23017x;
    public com.byazt.dg.nu yp;

    public i(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.a aVar) {
        super(xVar, veVar, aVar.x().c(), aVar.i().c(), aVar.t(), aVar.uj(), aVar.sp(), aVar.da(), aVar.sl());
        this.f23011a = new LongSparseArray<>();
        this.sp = new LongSparseArray<>();
        this.f23017x = new RectF();
        this.uj = aVar.c();
        this.f23013i = aVar.tt();
        this.f23014n = aVar.u();
        this.f23012da = (int) (xVar.p().n() / 32.0f);
        com.byazt.dg.c<com.byazt.jx.uj, com.byazt.jx.uj> cVarC = aVar.ve().c();
        this.sl = cVarC;
        cVarC.c(this);
        veVar.c(cVarC);
        com.byazt.dg.c<PointF, PointF> cVarC2 = aVar.n().c();
        this.f23015t = cVarC2;
        cVarC2.c(this);
        veVar.c(cVarC2);
        com.byazt.dg.c<PointF, PointF> cVarC3 = aVar.a().c();
        this.f23016u = cVarC3;
        cVarC3.c(this);
        veVar.c(cVarC3);
    }

    private LinearGradient tt() {
        long jUj = uj();
        LinearGradient linearGradient = this.f23011a.get(jUj);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointFSp = this.f23015t.sp();
        PointF pointFSp2 = this.f23016u.sp();
        com.byazt.jx.uj ujVarSp = this.sl.sp();
        LinearGradient linearGradient2 = new LinearGradient(pointFSp.x, pointFSp.y, pointFSp2.x, pointFSp2.y, c(ujVarSp.tt()), ujVarSp.c(), Shader.TileMode.CLAMP);
        this.f23011a.put(jUj, linearGradient2);
        return linearGradient2;
    }

    private int uj() {
        int iRound = Math.round(this.f23015t.x() * this.f23012da);
        int iRound2 = Math.round(this.f23016u.x() * this.f23012da);
        int iRound3 = Math.round(this.sl.x() * this.f23012da);
        int i10 = iRound != 0 ? iRound * 527 : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private RadialGradient ve() {
        long jUj = uj();
        RadialGradient radialGradient = this.sp.get(jUj);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointFSp = this.f23015t.sp();
        PointF pointFSp2 = this.f23016u.sp();
        com.byazt.jx.uj ujVarSp = this.sl.sp();
        int[] iArrC = c(ujVarSp.tt());
        float[] fArrC = ujVarSp.c();
        float f10 = pointFSp.x;
        float f11 = pointFSp.y;
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, (float) Math.hypot(pointFSp2.x - f10, pointFSp2.y - f11), iArrC, fArrC, Shader.TileMode.CLAMP);
        this.sp.put(jUj, radialGradient2);
        return radialGradient2;
    }

    @Override // com.byazt.zy.c, com.byazt.zy.n
    public void c(Canvas canvas, Matrix matrix, int i10) {
        if (this.f23014n) {
            return;
        }
        c(this.f23017x, matrix, false);
        Shader shaderTt = this.f23013i == com.byazt.jx.sp.LINEAR ? tt() : ve();
        shaderTt.setLocalMatrix(matrix);
        this.tt.setShader(shaderTt);
        super.c(canvas, matrix, i10);
    }

    private int[] c(int[] iArr) {
        com.byazt.dg.nu nuVar = this.yp;
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

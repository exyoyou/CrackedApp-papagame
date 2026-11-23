package com.byazt.dg;

import android.graphics.Matrix;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 186, 130})
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c<PointF, PointF> f12881a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f12882c = new Matrix();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public c<Integer, Integer> f12883da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c<Float, Float> f12884i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float[] f12885n;
    public uj sl;
    public c<?, PointF> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public uj f12886t;
    public final Matrix tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public c<?, Float> f12887u;
    public final Matrix uj;
    public final Matrix ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public c<com.byazt.vc.uj, com.byazt.vc.uj> f12888x;
    public c<?, Float> yp;

    public m(com.byazt.kd.t tVar) {
        this.f12881a = tVar.c() == null ? null : tVar.c().c();
        this.sp = tVar.tt() == null ? null : tVar.tt().c();
        this.f12888x = tVar.ve() == null ? null : tVar.ve().c();
        this.f12884i = tVar.uj() == null ? null : tVar.uj().c();
        uj ujVar = tVar.x() == null ? null : (uj) tVar.x().c();
        this.sl = ujVar;
        if (ujVar != null) {
            this.tt = new Matrix();
            this.ve = new Matrix();
            this.uj = new Matrix();
            this.f12885n = new float[9];
        } else {
            this.tt = null;
            this.ve = null;
            this.uj = null;
            this.f12885n = null;
        }
        this.f12886t = tVar.i() == null ? null : (uj) tVar.i().c();
        if (tVar.n() != null) {
            this.f12883da = tVar.n().c();
        }
        if (tVar.a() != null) {
            this.f12887u = tVar.a().c();
        } else {
            this.f12887u = null;
        }
        if (tVar.sp() != null) {
            this.yp = tVar.sp().c();
        } else {
            this.yp = null;
        }
    }

    private void n() {
        for (int i10 = 0; i10 < 9; i10++) {
            this.f12885n[i10] = 0.0f;
        }
    }

    public void c(com.byazt.zk.ve veVar) {
        veVar.c(this.f12883da);
        veVar.c(this.f12887u);
        veVar.c(this.yp);
        veVar.c(this.f12881a);
        veVar.c(this.sp);
        veVar.c(this.f12888x);
        veVar.c(this.f12884i);
        veVar.c(this.sl);
        veVar.c(this.f12886t);
    }

    public c<?, Float> tt() {
        return this.f12887u;
    }

    public Matrix uj() {
        PointF pointFSp;
        PointF pointFSp2;
        this.f12882c.reset();
        c<?, PointF> cVar = this.sp;
        if (cVar != null && (pointFSp2 = cVar.sp()) != null) {
            float f10 = pointFSp2.x;
            if (f10 != 0.0f || pointFSp2.y != 0.0f) {
                this.f12882c.preTranslate(f10, pointFSp2.y);
            }
        }
        c<Float, Float> cVar2 = this.f12884i;
        if (cVar2 != null) {
            float fFloatValue = cVar2 instanceof nu ? cVar2.sp().floatValue() : ((uj) cVar2).i();
            if (fFloatValue != 0.0f) {
                this.f12882c.preRotate(fFloatValue);
            }
        }
        uj ujVar = this.sl;
        if (ujVar != null) {
            uj ujVar2 = this.f12886t;
            float fCos = ujVar2 == null ? 0.0f : (float) Math.cos(Math.toRadians((-ujVar2.i()) + 90.0f));
            uj ujVar3 = this.f12886t;
            float fSin = ujVar3 == null ? 1.0f : (float) Math.sin(Math.toRadians((-ujVar3.i()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(ujVar.i()));
            n();
            float[] fArr = this.f12885n;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f11 = -fSin;
            fArr[3] = f11;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            this.tt.setValues(fArr);
            n();
            float[] fArr2 = this.f12885n;
            fArr2[0] = 1.0f;
            fArr2[3] = fTan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.ve.setValues(fArr2);
            n();
            float[] fArr3 = this.f12885n;
            fArr3[0] = fCos;
            fArr3[1] = f11;
            fArr3[3] = fSin;
            fArr3[4] = fCos;
            fArr3[8] = 1.0f;
            this.uj.setValues(fArr3);
            this.ve.preConcat(this.tt);
            this.uj.preConcat(this.ve);
            this.f12882c.preConcat(this.uj);
        }
        c<com.byazt.vc.uj, com.byazt.vc.uj> cVar3 = this.f12888x;
        if (cVar3 != null) {
            com.byazt.vc.uj ujVarSp = cVar3.sp();
            if (ujVarSp.c() != 1.0f || ujVarSp.tt() != 1.0f) {
                this.f12882c.preScale(ujVarSp.c(), ujVarSp.tt());
            }
        }
        c<PointF, PointF> cVar4 = this.f12881a;
        if (cVar4 != null && (((pointFSp = cVar4.sp()) != null && pointFSp.x != 0.0f) || pointFSp.y != 0.0f)) {
            this.f12882c.preTranslate(-pointFSp.x, -pointFSp.y);
        }
        return this.f12882c;
    }

    public c<?, Float> ve() {
        return this.yp;
    }

    public Matrix tt(float f10) {
        c<?, PointF> cVar = this.sp;
        PointF pointFSp = cVar == null ? null : cVar.sp();
        c<com.byazt.vc.uj, com.byazt.vc.uj> cVar2 = this.f12888x;
        com.byazt.vc.uj ujVarSp = cVar2 == null ? null : cVar2.sp();
        this.f12882c.reset();
        if (pointFSp != null) {
            this.f12882c.preTranslate(pointFSp.x * f10, pointFSp.y * f10);
        }
        if (ujVarSp != null) {
            double d10 = f10;
            this.f12882c.preScale((float) Math.pow(ujVarSp.c(), d10), (float) Math.pow(ujVarSp.tt(), d10));
        }
        c<Float, Float> cVar3 = this.f12884i;
        if (cVar3 != null) {
            float fFloatValue = cVar3.sp().floatValue();
            c<PointF, PointF> cVar4 = this.f12881a;
            PointF pointFSp2 = cVar4 != null ? cVar4.sp() : null;
            this.f12882c.preRotate(fFloatValue * f10, pointFSp2 == null ? 0.0f : pointFSp2.x, pointFSp2 != null ? pointFSp2.y : 0.0f);
        }
        return this.f12882c;
    }

    public void c(c.InterfaceC0291c interfaceC0291c) {
        c<Integer, Integer> cVar = this.f12883da;
        if (cVar != null) {
            cVar.c(interfaceC0291c);
        }
        c<?, Float> cVar2 = this.f12887u;
        if (cVar2 != null) {
            cVar2.c(interfaceC0291c);
        }
        c<?, Float> cVar3 = this.yp;
        if (cVar3 != null) {
            cVar3.c(interfaceC0291c);
        }
        c<PointF, PointF> cVar4 = this.f12881a;
        if (cVar4 != null) {
            cVar4.c(interfaceC0291c);
        }
        c<?, PointF> cVar5 = this.sp;
        if (cVar5 != null) {
            cVar5.c(interfaceC0291c);
        }
        c<com.byazt.vc.uj, com.byazt.vc.uj> cVar6 = this.f12888x;
        if (cVar6 != null) {
            cVar6.c(interfaceC0291c);
        }
        c<Float, Float> cVar7 = this.f12884i;
        if (cVar7 != null) {
            cVar7.c(interfaceC0291c);
        }
        uj ujVar = this.sl;
        if (ujVar != null) {
            ujVar.c(interfaceC0291c);
        }
        uj ujVar2 = this.f12886t;
        if (ujVar2 != null) {
            ujVar2.c(interfaceC0291c);
        }
    }

    public void c(float f10) {
        c<Integer, Integer> cVar = this.f12883da;
        if (cVar != null) {
            cVar.c(f10);
        }
        c<?, Float> cVar2 = this.f12887u;
        if (cVar2 != null) {
            cVar2.c(f10);
        }
        c<?, Float> cVar3 = this.yp;
        if (cVar3 != null) {
            cVar3.c(f10);
        }
        c<PointF, PointF> cVar4 = this.f12881a;
        if (cVar4 != null) {
            cVar4.c(f10);
        }
        c<?, PointF> cVar5 = this.sp;
        if (cVar5 != null) {
            cVar5.c(f10);
        }
        c<com.byazt.vc.uj, com.byazt.vc.uj> cVar6 = this.f12888x;
        if (cVar6 != null) {
            cVar6.c(f10);
        }
        c<Float, Float> cVar7 = this.f12884i;
        if (cVar7 != null) {
            cVar7.c(f10);
        }
        uj ujVar = this.sl;
        if (ujVar != null) {
            ujVar.c(f10);
        }
        uj ujVar2 = this.f12886t;
        if (ujVar2 != null) {
            ujVar2.c(f10);
        }
    }

    public c<?, Integer> c() {
        return this.f12883da;
    }
}

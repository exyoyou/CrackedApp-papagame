package com.byazt.zy;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 20})
public abstract class c implements n, sl, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.zk.ve f22998c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final float[] f22999da;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.dg.c<Float, Float> f23001m;
    public com.byazt.dg.ve nu;
    public final com.byazt.dg.c<?, Float> sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final com.byazt.dg.c<?, Integer> f23003t;
    public final Paint tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final List<com.byazt.dg.c<?, Float>> f23004u;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.ga.x f23005x;
    public final com.byazt.dg.c<?, Float> yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.dg.c<ColorFilter, ColorFilter> f23006z;
    public final PathMeasure uj = new PathMeasure();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Path f23002n = new Path();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f22997a = new Path();
    public final RectF sp = new RectF();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<C0508c> f23000i = new ArrayList();

    /* JADX INFO: renamed from: com.byazt.zy.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 1698, 44})
    private static final class C0508c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<u> f23007c;
        public final rl tt;

        private C0508c(rl rlVar) {
            this.f23007c = new ArrayList();
            this.tt = rlVar;
        }
    }

    public c(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, Paint.Cap cap, Paint.Join join, float f10, com.byazt.kd.uj ujVar, com.byazt.kd.tt ttVar, List<com.byazt.kd.tt> list, com.byazt.kd.tt ttVar2) {
        com.byazt.xg.c cVar = new com.byazt.xg.c(1);
        this.tt = cVar;
        this.ve = 0.0f;
        this.f23005x = xVar;
        this.f22998c = veVar;
        cVar.setStyle(Paint.Style.STROKE);
        cVar.setStrokeCap(cap);
        cVar.setStrokeJoin(join);
        cVar.setStrokeMiter(f10);
        this.f23003t = ujVar.c();
        this.sl = ttVar.c();
        if (ttVar2 == null) {
            this.yp = null;
        } else {
            this.yp = ttVar2.c();
        }
        this.f23004u = new ArrayList(list.size());
        this.f22999da = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f23004u.add(list.get(i10).c());
        }
        veVar.c(this.f23003t);
        veVar.c(this.sl);
        for (int i11 = 0; i11 < this.f23004u.size(); i11++) {
            veVar.c(this.f23004u.get(i11));
        }
        com.byazt.dg.c<?, Float> cVar2 = this.yp;
        if (cVar2 != null) {
            veVar.c(cVar2);
        }
        this.f23003t.c(this);
        this.sl.c(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.f23004u.get(i12).c(this);
        }
        com.byazt.dg.c<?, Float> cVar3 = this.yp;
        if (cVar3 != null) {
            cVar3.c(this);
        }
        if (veVar.t() != null) {
            com.byazt.dg.c<Float, Float> cVarC = veVar.t().c().c();
            this.f23001m = cVarC;
            cVarC.c(this);
            veVar.c(this.f23001m);
        }
        if (veVar.u() != null) {
            this.nu = new com.byazt.dg.ve(this, veVar, veVar.u());
        }
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        this.f23005x.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0069 A[SYNTHETIC] */
    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        rl rlVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            ve veVar = list.get(size);
            if (veVar instanceof rl) {
                rl rlVar2 = (rl) veVar;
                if (rlVar2.getType() == com.byazt.jx.my.c.INDIVIDUALLY) {
                    rlVar = rlVar2;
                }
            }
        }
        if (rlVar != null) {
            rlVar.c(this);
        }
        C0508c c0508c = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            ve veVar2 = list2.get(size2);
            if (veVar2 instanceof rl) {
                rl rlVar3 = (rl) veVar2;
                if (rlVar3.getType() == com.byazt.jx.my.c.INDIVIDUALLY) {
                    if (c0508c != null) {
                        this.f23000i.add(c0508c);
                    }
                    c0508c = new C0508c(rlVar3);
                    rlVar3.c(this);
                } else if (!(veVar2 instanceof u)) {
                    if (c0508c == null) {
                        c0508c = new C0508c(rlVar);
                    }
                    c0508c.f23007c.add((u) veVar2);
                }
            } else if (!(veVar2 instanceof u)) {
                if (c0508c == null) {
                    c0508c = new C0508c(rlVar);
                }
                c0508c.f23007c.add((u) veVar2);
            }
        }
        if (c0508c != null) {
            this.f23000i.add(c0508c);
        }
    }

    @Override // com.byazt.zy.n
    public void c(Canvas canvas, Matrix matrix, int i10) {
        com.byazt.ga.n.c("StrokeContent#draw");
        if (com.byazt.kk.da.tt(matrix)) {
            com.byazt.ga.n.tt("StrokeContent#draw");
            return;
        }
        this.tt.setAlpha(com.byazt.kk.i.c((int) ((((i10 / 255.0f) * ((com.byazt.dg.a) this.f23003t).i()) / 100.0f) * 255.0f), 0, 255));
        this.tt.setStrokeWidth(((com.byazt.dg.uj) this.sl).i() * com.byazt.kk.da.c(matrix));
        if (this.tt.getStrokeWidth() <= 0.0f) {
            com.byazt.ga.n.tt("StrokeContent#draw");
            return;
        }
        c(matrix);
        com.byazt.dg.c<ColorFilter, ColorFilter> cVar = this.f23006z;
        if (cVar != null) {
            this.tt.setColorFilter(cVar.sp());
        }
        com.byazt.dg.c<Float, Float> cVar2 = this.f23001m;
        if (cVar2 != null) {
            float fFloatValue = cVar2.sp().floatValue();
            if (fFloatValue == 0.0f) {
                this.tt.setMaskFilter(null);
            } else if (fFloatValue != this.ve) {
                this.tt.setMaskFilter(this.f22998c.tt(fFloatValue));
            }
            this.ve = fFloatValue;
        }
        com.byazt.dg.ve veVar = this.nu;
        if (veVar != null) {
            veVar.c(this.tt);
        }
        for (int i11 = 0; i11 < this.f23000i.size(); i11++) {
            C0508c c0508c = this.f23000i.get(i11);
            if (c0508c.tt != null) {
                c(canvas, c0508c, matrix);
            } else {
                com.byazt.ga.n.c("StrokeContent#buildPath");
                this.f23002n.reset();
                for (int size = c0508c.f23007c.size() - 1; size >= 0; size--) {
                    this.f23002n.addPath(((u) c0508c.f23007c.get(size)).uj(), matrix);
                }
                com.byazt.ga.n.tt("StrokeContent#buildPath");
                com.byazt.ga.n.c("StrokeContent#drawPath");
                canvas.drawPath(this.f23002n, this.tt);
                com.byazt.ga.n.tt("StrokeContent#drawPath");
            }
        }
        com.byazt.ga.n.tt("StrokeContent#draw");
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0113  */
    private void c(Canvas canvas, C0508c c0508c, Matrix matrix) {
        float f10;
        float f11;
        float fMin;
        com.byazt.ga.n.c("StrokeContent#applyTrimPath");
        if (c0508c.tt == null) {
            com.byazt.ga.n.tt("StrokeContent#applyTrimPath");
            return;
        }
        this.f23002n.reset();
        for (int size = c0508c.f23007c.size() - 1; size >= 0; size--) {
            this.f23002n.addPath(((u) c0508c.f23007c.get(size)).uj(), matrix);
        }
        float fFloatValue = c0508c.tt.tt().sp().floatValue() / 100.0f;
        float fFloatValue2 = c0508c.tt.ve().sp().floatValue() / 100.0f;
        float fFloatValue3 = c0508c.tt.uj().sp().floatValue() / 360.0f;
        if (fFloatValue < 0.01f && fFloatValue2 > 0.99f) {
            canvas.drawPath(this.f23002n, this.tt);
            com.byazt.ga.n.tt("StrokeContent#applyTrimPath");
            return;
        }
        this.uj.setPath(this.f23002n, false);
        float length = this.uj.getLength();
        while (this.uj.nextContour()) {
            length += this.uj.getLength();
        }
        float f12 = fFloatValue3 * length;
        float f13 = (fFloatValue * length) + f12;
        float fMin2 = Math.min((fFloatValue2 * length) + f12, (f13 + length) - 1.0f);
        float f14 = 0.0f;
        for (int size2 = c0508c.f23007c.size() - 1; size2 >= 0; size2--) {
            this.f22997a.set(((u) c0508c.f23007c.get(size2)).uj());
            this.f22997a.transform(matrix);
            this.uj.setPath(this.f22997a, false);
            float length2 = this.uj.getLength();
            if (fMin2 > length) {
                float f15 = fMin2 - length;
                if (f15 >= f14 + length2 || f14 >= f15) {
                    f10 = f14 + length2;
                    if (f10 < f13 && f14 <= fMin2) {
                        if (f10 > fMin2 || f13 >= f14) {
                            f11 = f13 < f14 ? 0.0f : (f13 - f14) / length2;
                            fMin = fMin2 > f10 ? 1.0f : (fMin2 - f14) / length2;
                        } else {
                            canvas.drawPath(this.f22997a, this.tt);
                        }
                    }
                } else {
                    f11 = f13 > length ? (f13 - length) / length2 : 0.0f;
                    fMin = Math.min(f15 / length2, 1.0f);
                }
                com.byazt.kk.da.c(this.f22997a, f11, fMin, 0.0f);
                canvas.drawPath(this.f22997a, this.tt);
            } else {
                f10 = f14 + length2;
                if (f10 < f13) {
                }
            }
            f14 += length2;
        }
        com.byazt.ga.n.tt("StrokeContent#applyTrimPath");
    }

    @Override // com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        com.byazt.ga.n.c("StrokeContent#getBounds");
        this.f23002n.reset();
        for (int i10 = 0; i10 < this.f23000i.size(); i10++) {
            C0508c c0508c = this.f23000i.get(i10);
            for (int i11 = 0; i11 < c0508c.f23007c.size(); i11++) {
                this.f23002n.addPath(((u) c0508c.f23007c.get(i11)).uj(), matrix);
            }
        }
        this.f23002n.computeBounds(this.sp, false);
        float fI = ((com.byazt.dg.uj) this.sl).i();
        RectF rectF2 = this.sp;
        float f10 = fI / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.sp);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.byazt.ga.n.tt("StrokeContent#getBounds");
    }

    private void c(Matrix matrix) {
        com.byazt.ga.n.c("StrokeContent#applyDashPattern");
        if (this.f23004u.isEmpty()) {
            com.byazt.ga.n.tt("StrokeContent#applyDashPattern");
            return;
        }
        float fC = com.byazt.kk.da.c(matrix);
        for (int i10 = 0; i10 < this.f23004u.size(); i10++) {
            this.f22999da[i10] = this.f23004u.get(i10).sp().floatValue();
            if (i10 % 2 == 0) {
                float[] fArr = this.f22999da;
                if (fArr[i10] < 1.0f) {
                    fArr[i10] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f22999da;
                if (fArr2[i10] < 0.1f) {
                    fArr2[i10] = 0.1f;
                }
            }
            float[] fArr3 = this.f22999da;
            fArr3[i10] = fArr3[i10] * fC;
        }
        com.byazt.dg.c<?, Float> cVar = this.yp;
        this.tt.setPathEffect(new DashPathEffect(this.f22999da, cVar == null ? 0.0f : fC * cVar.sp().floatValue()));
        com.byazt.ga.n.tt("StrokeContent#applyDashPattern");
    }
}

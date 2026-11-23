package com.byazt.zy;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 215})
public class yp implements sl, u, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f23060a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final com.byazt.dg.c<?, Float> f23062da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.dg.c<?, Float> f23063i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f23064n;
    public final com.byazt.dg.c<?, Float> sl;
    public final com.byazt.dg.c<?, Float> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final com.byazt.dg.c<?, Float> f23065t;
    public final String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final com.byazt.dg.c<?, Float> f23066u;
    public final com.byazt.jx.da.c uj;
    public final com.byazt.ga.x ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.dg.c<?, PointF> f23067x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f23068z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f23061c = new Path();
    public final tt yp = new tt();

    /* JADX INFO: renamed from: com.byazt.zy.yp$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 1698, 212})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f23069c;

        static {
            int[] iArr = new int[com.byazt.jx.da.c.values().length];
            f23069c = iArr;
            try {
                iArr[com.byazt.jx.da.c.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23069c[com.byazt.jx.da.c.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public yp(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.da daVar) {
        this.ve = xVar;
        this.tt = daVar.c();
        com.byazt.jx.da.c type = daVar.getType();
        this.uj = type;
        this.f23064n = daVar.i();
        this.f23060a = daVar.da();
        com.byazt.dg.c<Float, Float> cVarC = daVar.tt().c();
        this.sp = cVarC;
        com.byazt.dg.c<PointF, PointF> cVarC2 = daVar.ve().c();
        this.f23067x = cVarC2;
        com.byazt.dg.c<Float, Float> cVarC3 = daVar.uj().c();
        this.f23063i = cVarC3;
        com.byazt.dg.c<Float, Float> cVarC4 = daVar.a().c();
        this.sl = cVarC4;
        com.byazt.dg.c<Float, Float> cVarC5 = daVar.x().c();
        this.f23066u = cVarC5;
        com.byazt.jx.da.c cVar = com.byazt.jx.da.c.STAR;
        if (type == cVar) {
            this.f23062da = daVar.n().c();
            this.f23065t = daVar.sp().c();
        } else {
            this.f23062da = null;
            this.f23065t = null;
        }
        veVar.c(cVarC);
        veVar.c(cVarC2);
        veVar.c(cVarC3);
        veVar.c(cVarC4);
        veVar.c(cVarC5);
        if (type == cVar) {
            veVar.c(this.f23062da);
            veVar.c(this.f23065t);
        }
        cVarC.c(this);
        cVarC2.c(this);
        cVarC3.c(this);
        cVarC4.c(this);
        cVarC5.c(this);
        if (type == cVar) {
            this.f23062da.c(this);
            this.f23065t.c(this);
        }
    }

    private void n() {
        int iFloor = (int) Math.floor(this.sp.sp().floatValue());
        com.byazt.dg.c<?, Float> cVar = this.f23063i;
        double radians = Math.toRadians((cVar == null ? 0.0d : cVar.sp().floatValue()) - 90.0d);
        double d10 = iFloor;
        float fFloatValue = this.f23066u.sp().floatValue() / 100.0f;
        float fFloatValue2 = this.sl.sp().floatValue();
        double d11 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d11);
        float fSin = (float) (Math.sin(radians) * d11);
        this.f23061c.moveTo(fCos, fSin);
        double d12 = (float) (6.283185307179586d / d10);
        double d13 = radians + d12;
        double dCeil = Math.ceil(d10);
        int i10 = 0;
        while (i10 < dCeil) {
            float fCos2 = (float) (Math.cos(d13) * d11);
            double d14 = dCeil;
            float fSin2 = (float) (d11 * Math.sin(d13));
            if (fFloatValue != 0.0f) {
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                double dAtan3 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float f10 = fFloatValue2 * fFloatValue * 0.25f;
                this.f23061c.cubicTo(fCos - (fCos3 * f10), fSin - (fSin3 * f10), fCos2 + (((float) Math.cos(dAtan3)) * f10), fSin2 + (f10 * ((float) Math.sin(dAtan3))), fCos2, fSin2);
            } else {
                this.f23061c.lineTo(fCos2, fSin2);
            }
            d13 += d12;
            i10++;
            fSin = fSin2;
            fCos = fCos2;
            dCeil = d14;
            d11 = d11;
            d12 = d12;
        }
        PointF pointFSp = this.f23067x.sp();
        this.f23061c.offset(pointFSp.x, pointFSp.y);
        this.f23061c.close();
    }

    private void tt() {
        this.f23068z = false;
        this.ve.invalidateSelf();
    }

    private void ve() {
        float f10;
        float f11;
        double d10;
        float fSin;
        float f12;
        float f13;
        float f14;
        float fFloatValue = this.sp.sp().floatValue();
        com.byazt.dg.c<?, Float> cVar = this.f23063i;
        double radians = Math.toRadians((cVar == null ? 0.0d : cVar.sp().floatValue()) - 90.0d);
        double d11 = fFloatValue;
        float f15 = (float) (6.283185307179586d / d11);
        if (this.f23060a) {
            f15 *= -1.0f;
        }
        float f16 = f15 / 2.0f;
        float f17 = fFloatValue - ((int) fFloatValue);
        if (f17 != 0.0f) {
            radians += (double) ((1.0f - f17) * f16);
        }
        float fFloatValue2 = this.sl.sp().floatValue();
        float fFloatValue3 = this.f23062da.sp().floatValue();
        com.byazt.dg.c<?, Float> cVar2 = this.f23065t;
        float fFloatValue4 = cVar2 != null ? cVar2.sp().floatValue() / 100.0f : 0.0f;
        com.byazt.dg.c<?, Float> cVar3 = this.f23066u;
        float fFloatValue5 = cVar3 != null ? cVar3.sp().floatValue() / 100.0f : 0.0f;
        if (f17 != 0.0f) {
            f12 = ((fFloatValue2 - fFloatValue3) * f17) + fFloatValue3;
            double d12 = f12;
            float fCos = (float) (d12 * Math.cos(radians));
            fSin = (float) (d12 * Math.sin(radians));
            this.f23061c.moveTo(fCos, fSin);
            d10 = radians + ((double) ((f15 * f17) / 2.0f));
            f10 = fCos;
            f11 = f16;
        } else {
            double d13 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d13);
            float fSin2 = (float) (d13 * Math.sin(radians));
            this.f23061c.moveTo(fCos2, fSin2);
            f10 = fCos2;
            f11 = f16;
            d10 = radians + ((double) f11);
            fSin = fSin2;
            f12 = 0.0f;
        }
        double dCeil = Math.ceil(d11) * 2.0d;
        int i10 = 0;
        float f18 = f11;
        float f19 = f10;
        boolean z10 = false;
        while (true) {
            double d14 = i10;
            if (d14 >= dCeil) {
                PointF pointFSp = this.f23067x.sp();
                this.f23061c.offset(pointFSp.x, pointFSp.y);
                this.f23061c.close();
                return;
            }
            float f20 = z10 ? fFloatValue2 : fFloatValue3;
            float f21 = (f12 == 0.0f || d14 != dCeil - 2.0d) ? f18 : (f15 * f17) / 2.0f;
            if (f12 == 0.0f || d14 != dCeil - 1.0d) {
                f12 = f20;
            }
            double d15 = f12;
            double d16 = dCeil;
            float fCos3 = (float) (d15 * Math.cos(d10));
            float fSin3 = (float) (d15 * Math.sin(d10));
            if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                this.f23061c.lineTo(fCos3, fSin3);
                f13 = fFloatValue4;
                f14 = fFloatValue5;
            } else {
                f13 = fFloatValue4;
                double dAtan2 = (float) (Math.atan2(fSin, f19) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin4 = (float) Math.sin(dAtan2);
                f14 = fFloatValue5;
                double dAtan3 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan3);
                float fSin5 = (float) Math.sin(dAtan3);
                float f22 = z10 ? f13 : f14;
                float f23 = z10 ? f14 : f13;
                float f24 = (z10 ? fFloatValue3 : fFloatValue2) * f22 * 0.47829f;
                float f25 = fCos4 * f24;
                float f26 = f24 * fSin4;
                float f27 = (z10 ? fFloatValue2 : fFloatValue3) * f23 * 0.47829f;
                float f28 = fCos5 * f27;
                float f29 = f27 * fSin5;
                if (f17 != 0.0f) {
                    if (i10 == 0) {
                        f25 *= f17;
                        f26 *= f17;
                    } else if (d14 == d16 - 1.0d) {
                        f28 *= f17;
                        f29 *= f17;
                    }
                }
                this.f23061c.cubicTo(f19 - f25, fSin - f26, fCos3 + f28, fSin3 + f29, fCos3, fSin3);
            }
            d10 += (double) f21;
            z10 = !z10;
            i10++;
            f19 = fCos3;
            fSin = fSin3;
            fFloatValue5 = f14;
            fFloatValue4 = f13;
            f12 = f12;
            f15 = f15;
            dCeil = d16;
        }
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        tt();
    }

    @Override // com.byazt.zy.u
    public Path uj() {
        if (this.f23068z) {
            return this.f23061c;
        }
        this.f23061c.reset();
        if (this.f23064n) {
            this.f23068z = true;
            return this.f23061c;
        }
        int i10 = AnonymousClass1.f23069c[this.uj.ordinal()];
        if (i10 == 1) {
            ve();
        } else if (i10 == 2) {
            n();
        }
        this.f23061c.close();
        this.yp.c(this.f23061c);
        this.f23068z = true;
        return this.f23061c;
    }

    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            ve veVar = list.get(i10);
            if (veVar instanceof rl) {
                rl rlVar = (rl) veVar;
                if (rlVar.getType() == com.byazt.jx.my.c.SIMULTANEOUSLY) {
                    this.yp.c(rlVar);
                    rlVar.c(this);
                }
            }
        }
    }
}

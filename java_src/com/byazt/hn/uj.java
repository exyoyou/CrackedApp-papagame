package com.byazt.hn;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 25, 15})
public final class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f15003a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final tt f15004c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final float[] f15005da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f15006i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f15007m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float[] f15008n;
    public int nu;
    public int rh;
    public final float[] sl;
    public final float[] sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final float[] f15009t;
    public final tt.ve tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int[] f15010u;
    public final float[] uj;
    public final tt.uj[] ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final float[] f15011x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float[] f15012z;

    public uj(tt ttVar) {
        this.f15004c = ttVar;
        this.tt = ttVar.c();
        tt.uj[] ujVarArr = (tt.uj[]) ttVar.tt().toArray(new tt.uj[0]);
        this.ve = ujVarArr;
        this.uj = new float[600];
        this.f15008n = new float[600];
        this.f15003a = new float[600];
        this.sp = new float[600];
        this.f15011x = new float[600];
        this.f15006i = new float[600];
        this.f15005da = new float[600];
        this.sl = new float[600];
        this.f15009t = new float[600];
        this.f15010u = new int[600];
        this.f15012z = new float[ujVarArr.length];
        int iNanoTime = (int) (System.nanoTime() ^ ((long) System.identityHashCode(this)));
        this.f15007m = iNanoTime == 0 ? 305441741 : iNanoTime;
    }

    private float ve() {
        int i10 = this.f15007m;
        int i11 = i10 ^ (i10 << 13);
        int i12 = i11 ^ (i11 >>> 17);
        int i13 = i12 ^ (i12 << 5);
        if (i13 == 0) {
            i13 = -1640531527;
        }
        this.f15007m = i13;
        return (i13 >>> 8) * 5.9604645E-8f;
    }

    public void c(int i10, int i11) {
        this.nu = i10;
        this.rh = i11;
    }

    public tt tt() {
        return this.f15004c;
    }

    public void update(float f10) {
        if (this.nu <= 0 || this.rh <= 0 || this.ve.length == 0) {
            return;
        }
        c(f10);
        tt(f10);
    }

    private void tt(float f10) {
        tt.uj[] ujVarArr = this.ve;
        float[] fArr = this.f15012z;
        for (int i10 = 0; i10 < ujVarArr.length; i10++) {
            tt.uj ujVar = ujVarArr[i10];
            float f11 = ujVar.tt;
            if (f11 > 0.0f) {
                fArr[i10] = fArr[i10] + (f11 * f10);
                while (true) {
                    float f12 = fArr[i10];
                    if (f12 < 1.0f || this.yp >= 600) {
                        break;
                    }
                    fArr[i10] = f12 - 1.0f;
                    c(i10, ujVar);
                }
                if (this.yp >= 600) {
                    fArr[i10] = 0.0f;
                }
            }
        }
    }

    public tt.uj[] c() {
        return this.ve;
    }

    private void c(float f10) {
        float[] fArr = this.uj;
        float[] fArr2 = this.f15008n;
        float[] fArr3 = this.f15003a;
        float[] fArr4 = this.sp;
        float[] fArr5 = this.f15011x;
        float[] fArr6 = this.f15006i;
        float[] fArr7 = this.sl;
        float[] fArr8 = this.f15009t;
        int i10 = 0;
        while (i10 < this.yp) {
            float f11 = fArr5[i10] + f10;
            if (f11 >= fArr6[i10]) {
                c(i10);
            } else {
                float f12 = fArr7[i10] + (fArr8[i10] * f10);
                if (f12 <= 0.0f) {
                    c(i10);
                } else {
                    if (f12 > 1.0f) {
                        f12 = 1.0f;
                    }
                    fArr5[i10] = f11;
                    fArr7[i10] = f12;
                    fArr[i10] = fArr[i10] + (fArr3[i10] * f10);
                    fArr2[i10] = fArr2[i10] + (fArr4[i10] * f10);
                    i10++;
                }
            }
        }
    }

    private void tt(int i10) {
        float fC = this.tt.f15000i.c(this.nu);
        float fC2 = this.tt.f14999da.c(this.rh);
        float f10 = fC < 0.0f ? 0.0f : fC;
        float f11 = fC2 < 0.0f ? 0.0f : fC2;
        float fC3 = this.tt.sp.c(this.nu);
        float fC4 = this.tt.f15002x.c(this.rh);
        float f12 = f10 / 2.0f;
        float f13 = fC3 - f12;
        float f14 = f11 / 2.0f;
        float f15 = fC4 - f14;
        tt.ve veVar = this.tt;
        int i11 = veVar.uj;
        int i12 = veVar.f15001n;
        if (i11 == 2) {
            if (i12 == 1) {
                c(i10, f13, f15, f10, f11);
                return;
            } else {
                this.uj[i10] = f13 + (ve() * f10);
                this.f15008n[i10] = f15 + (ve() * f11);
                return;
            }
        }
        if (i11 == 3 || i11 == 4) {
            float fVe = ve() * 6.2831855f;
            float fSqrt = i12 == 1 ? 1.0f : (float) Math.sqrt(ve());
            double d10 = fVe;
            this.uj[i10] = fC3 + (((float) Math.cos(d10)) * f12 * fSqrt);
            this.f15008n[i10] = fC4 + (((float) Math.sin(d10)) * f14 * fSqrt);
            return;
        }
        if (i11 == 1) {
            this.uj[i10] = f13 + (ve() * f10);
            this.f15008n[i10] = fC4;
        } else {
            this.uj[i10] = fC3;
            this.f15008n[i10] = fC4;
        }
    }

    private void c(int i10) {
        int i11 = this.yp - 1;
        this.yp = i11;
        if (i10 != i11) {
            float[] fArr = this.uj;
            fArr[i10] = fArr[i11];
            float[] fArr2 = this.f15008n;
            fArr2[i10] = fArr2[i11];
            float[] fArr3 = this.f15003a;
            fArr3[i10] = fArr3[i11];
            float[] fArr4 = this.sp;
            fArr4[i10] = fArr4[i11];
            float[] fArr5 = this.f15011x;
            fArr5[i10] = fArr5[i11];
            float[] fArr6 = this.f15006i;
            fArr6[i10] = fArr6[i11];
            float[] fArr7 = this.f15005da;
            fArr7[i10] = fArr7[i11];
            float[] fArr8 = this.sl;
            fArr8[i10] = fArr8[i11];
            float[] fArr9 = this.f15009t;
            fArr9[i10] = fArr9[i11];
            int[] iArr = this.f15010u;
            iArr[i10] = iArr[i11];
        }
    }

    private void c(int i10, tt.uj ujVar) {
        int i11 = this.yp;
        this.yp = i11 + 1;
        float fC = c(ujVar.ve, ujVar.uj);
        if (fC < 0.01f) {
            fC = 0.01f;
        }
        float fC2 = c(ujVar.f14994n, ujVar.f14990a);
        if (fC2 < 0.0f) {
            fC2 = 0.0f;
        }
        float fC3 = c(ujVar.sp, ujVar.f14996x);
        if (fC3 < 0.0f) {
            fC3 = 0.0f;
        }
        float fVe = ve() * 6.2831855f;
        float radians = (float) Math.toRadians(ujVar.f14993i);
        if (radians > 0.0f) {
            fVe += (ve() - 0.5f) * radians;
        }
        float fVe2 = 1.0f - (ujVar.f14992da > 0.0f ? ve() * ujVar.f14992da : 0.0f);
        if (fVe2 < 0.0f) {
            fVe2 = 0.0f;
        }
        this.f15011x[i11] = 0.0f;
        this.f15006i[i11] = fC;
        this.f15005da[i11] = fC2;
        double d10 = fVe;
        this.f15003a[i11] = ((float) Math.cos(d10)) * fC3;
        this.sp[i11] = ((float) Math.sin(d10)) * fC3;
        this.sl[i11] = fVe2;
        this.f15009t[i11] = ujVar.sl;
        this.f15010u[i11] = i10;
        tt(i11);
    }

    private void c(int i10, float f10, float f11, float f12, float f13) {
        float f14 = f12 + f13;
        float f15 = f14 * 2.0f;
        if (f15 <= 0.0f) {
            this.uj[i10] = f10;
            this.f15008n[i10] = f11;
            return;
        }
        float fVe = ve() * f15;
        if (fVe < f12) {
            this.uj[i10] = f10 + fVe;
            this.f15008n[i10] = f11;
            return;
        }
        if (fVe < f14) {
            this.uj[i10] = f10 + f12;
            this.f15008n[i10] = f11 + (fVe - f12);
            return;
        }
        float f16 = 2.0f * f12;
        if (fVe < f16 + f13) {
            this.uj[i10] = (f10 + f12) - ((fVe - f12) - f13);
            this.f15008n[i10] = f11 + f13;
        } else {
            this.uj[i10] = f10;
            this.f15008n[i10] = (f11 + f13) - ((fVe - f16) - f13);
        }
    }

    private float c(float f10, float f11) {
        return f11 <= 0.0f ? f10 : f10 + (((ve() * 2.0f) - 1.0f) * f11);
    }

    public void c(a aVar) {
        int i10 = this.yp;
        aVar.c(600);
        aVar.f14970c = i10;
        System.arraycopy(this.uj, 0, aVar.ve, 0, i10);
        System.arraycopy(this.f15008n, 0, aVar.uj, 0, i10);
        System.arraycopy(this.f15005da, 0, aVar.f14972n, 0, i10);
        System.arraycopy(this.sl, 0, aVar.f14969a, 0, i10);
        System.arraycopy(this.f15011x, 0, aVar.sp, 0, i10);
        System.arraycopy(this.f15010u, 0, aVar.f14973x, 0, i10);
        aVar.tt = this.tt.f14997a;
    }
}

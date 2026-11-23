package it.sephiroth.android.library.widget;

import android.content.Context;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f92047f = 250;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f92048g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f92049h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static float f92050i = 8.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static float f92051j = 1.0f / B(1.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f92052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f92053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f92054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Interpolator f92055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f92056e;

    static class a {
        private static final int A = 1;
        private static final int B = 2;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static final float f92057p = 2000.0f;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static final float f92059r = 0.35f;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static final float f92060s = 0.5f;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private static final float f92061t = 1.0f;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private static final float f92062u = 0.175f;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private static final float f92063v = 0.35000002f;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private static final int f92064w = 100;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private static final int f92067z = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f92068a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f92069b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f92070c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f92071d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f92072e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f92073f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f92074g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f92075h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f92076i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f92077j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f92079l;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private float f92082o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static float f92058q = (float) (Math.log(0.78d) / Math.log(0.9d));

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private static final float[] f92065x = new float[101];

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private static final float[] f92066y = new float[101];

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private float f92080m = ViewConfiguration.getScrollFriction();

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f92081n = 0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f92078k = true;

        static {
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            float f18;
            float f19;
            float f20 = 0.0f;
            float f21 = 0.0f;
            for (int i10 = 0; i10 < 100; i10++) {
                float f22 = i10 / 100.0f;
                float f23 = 1.0f;
                while (true) {
                    f10 = 2.0f;
                    f11 = ((f23 - f20) / 2.0f) + f20;
                    f12 = 3.0f;
                    f13 = 1.0f - f11;
                    f14 = f11 * 3.0f * f13;
                    f15 = f11 * f11 * f11;
                    float f24 = (((f13 * 0.175f) + (f11 * f92063v)) * f14) + f15;
                    if (Math.abs(f24 - f22) < 1.0E-5d) {
                        break;
                    } else if (f24 > f22) {
                        f23 = f11;
                    } else {
                        f20 = f11;
                    }
                }
                f92065x[i10] = (f14 * ((f13 * 0.5f) + f11)) + f15;
                float f25 = 1.0f;
                while (true) {
                    f16 = ((f25 - f21) / f10) + f21;
                    f17 = 1.0f - f16;
                    f18 = f16 * f12 * f17;
                    f19 = f16 * f16 * f16;
                    float f26 = (((f17 * 0.5f) + f16) * f18) + f19;
                    if (Math.abs(f26 - f22) < 1.0E-5d) {
                        break;
                    }
                    if (f26 > f22) {
                        f25 = f16;
                    } else {
                        f21 = f16;
                    }
                    f10 = 2.0f;
                    f12 = 3.0f;
                }
                f92066y[i10] = (f18 * ((f17 * 0.175f) + (f16 * f92063v))) + f19;
            }
            float[] fArr = f92065x;
            f92066y[100] = 1.0f;
            fArr[100] = 1.0f;
        }

        a(Context context) {
            this.f92082o = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        }

        private void B(int start, int end, int velocity) {
            this.f92078k = false;
            this.f92081n = 1;
            this.f92068a = start;
            this.f92070c = end;
            int i10 = start - end;
            this.f92073f = p(i10);
            this.f92071d = -i10;
            this.f92079l = Math.abs(i10);
            this.f92075h = (int) (Math.sqrt((((double) i10) * (-2.0d)) / ((double) this.f92073f)) * 1000.0d);
        }

        private void j(int start, int oldFinal, int newFinal) {
            float fAbs = Math.abs((newFinal - start) / (oldFinal - start));
            int i10 = (int) (fAbs * 100.0f);
            if (i10 < 100) {
                float f10 = i10 / 100.0f;
                int i11 = i10 + 1;
                float[] fArr = f92066y;
                float f11 = fArr[i10];
                this.f92075h = (int) (this.f92075h * (f11 + (((fAbs - f10) / ((i11 / 100.0f) - f10)) * (fArr[i11] - f11))));
            }
        }

        private void n(int start, int end, int velocity) {
            float f10 = this.f92073f;
            float fSqrt = (float) Math.sqrt((((double) ((((velocity * velocity) / 2.0f) / Math.abs(f10)) + Math.abs(end - start))) * 2.0d) / ((double) Math.abs(this.f92073f)));
            this.f92074g -= (long) ((int) ((fSqrt - ((-velocity) / f10)) * 1000.0f));
            this.f92068a = end;
            this.f92071d = (int) ((-this.f92073f) * fSqrt);
        }

        private static float p(int velocity) {
            if (velocity > 0) {
                return -2000.0f;
            }
            return f92057p;
        }

        private double q(int velocity) {
            return Math.log((Math.abs(velocity) * f92059r) / (this.f92080m * this.f92082o));
        }

        private double r(int velocity) {
            double dQ = q(velocity);
            float f10 = f92058q;
            return ((double) (this.f92080m * this.f92082o)) * Math.exp((((double) f10) / (((double) f10) - 1.0d)) * dQ);
        }

        private int s(int velocity) {
            return (int) (Math.exp(q(velocity) / (((double) f92058q) - 1.0d)) * 1000.0d);
        }

        private void u() {
            int i10 = this.f92071d;
            float fAbs = (i10 * i10) / (Math.abs(this.f92073f) * 2.0f);
            float fSignum = Math.signum(this.f92071d);
            int i11 = this.f92079l;
            if (fAbs > i11) {
                float f10 = -fSignum;
                int i12 = this.f92071d;
                this.f92073f = ((f10 * i12) * i12) / (i11 * 2.0f);
                fAbs = i11;
            }
            this.f92079l = (int) fAbs;
            this.f92081n = 2;
            int i13 = this.f92068a;
            int i14 = this.f92071d;
            if (i14 <= 0) {
                fAbs = -fAbs;
            }
            this.f92070c = i13 + ((int) fAbs);
            this.f92075h = -((int) ((i14 * 1000.0f) / this.f92073f));
        }

        private void y(int start, int min, int max, int velocity) {
            if (start > min && start < max) {
                this.f92078k = true;
                return;
            }
            boolean z10 = start > max;
            int i10 = z10 ? max : min;
            int i11 = start - i10;
            if (i11 * velocity >= 0) {
                z(start, i10, velocity);
            } else if (r(velocity) > Math.abs(i11)) {
                o(start, velocity, z10 ? min : start, z10 ? start : max, this.f92079l);
            } else {
                B(start, i10, velocity);
            }
        }

        private void z(int start, int end, int velocity) {
            this.f92073f = p(velocity == 0 ? start - end : velocity);
            n(start, end, velocity);
            u();
        }

        void A(int start, int distance, int duration) {
            this.f92078k = false;
            this.f92068a = start;
            this.f92070c = start + distance;
            this.f92074g = AnimationUtils.currentAnimationTimeMillis();
            this.f92075h = duration;
            this.f92073f = 0.0f;
            this.f92071d = 0;
        }

        void C(float q10) {
            int i10 = this.f92068a;
            this.f92069b = i10 + Math.round(q10 * (this.f92070c - i10));
        }

        boolean k() {
            int i10 = this.f92081n;
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                if (i10 == 2) {
                    this.f92074g += (long) this.f92075h;
                    B(this.f92070c, this.f92068a, 0);
                }
            } else {
                if (this.f92075h >= this.f92076i) {
                    return false;
                }
                this.f92068a = this.f92070c;
                int i11 = (int) this.f92072e;
                this.f92071d = i11;
                this.f92073f = p(i11);
                this.f92074g += (long) this.f92075h;
                u();
            }
            update();
            return true;
        }

        void l(int extend) {
            this.f92075h = ((int) (AnimationUtils.currentAnimationTimeMillis() - this.f92074g)) + extend;
            this.f92078k = false;
        }

        void m() {
            this.f92069b = this.f92070c;
            this.f92078k = true;
        }

        void o(int start, int velocity, int min, int max, int over) {
            double dR;
            this.f92079l = over;
            this.f92078k = false;
            this.f92071d = velocity;
            float f10 = velocity;
            this.f92072e = f10;
            this.f92076i = 0;
            this.f92075h = 0;
            this.f92074g = AnimationUtils.currentAnimationTimeMillis();
            this.f92068a = start;
            this.f92069b = start;
            if (start > max || start < min) {
                y(start, min, max, velocity);
                return;
            }
            this.f92081n = 0;
            if (velocity != 0) {
                int iS = s(velocity);
                this.f92076i = iS;
                this.f92075h = iS;
                dR = r(velocity);
            } else {
                dR = 0.0d;
            }
            int iSignum = (int) (dR * ((double) Math.signum(f10)));
            this.f92077j = iSignum;
            int i10 = start + iSignum;
            this.f92070c = i10;
            if (i10 < min) {
                j(this.f92068a, i10, min);
                this.f92070c = min;
            }
            int i11 = this.f92070c;
            if (i11 > max) {
                j(this.f92068a, i11, max);
                this.f92070c = max;
            }
        }

        void t(int start, int end, int over) {
            if (this.f92081n == 0) {
                this.f92079l = over;
                this.f92074g = AnimationUtils.currentAnimationTimeMillis();
                y(start, end, end, (int) this.f92072e);
            }
        }

        boolean update() {
            float f10;
            float f11;
            double d10;
            double d11;
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.f92074g;
            int i10 = this.f92075h;
            if (jCurrentAnimationTimeMillis > i10) {
                return false;
            }
            int i11 = this.f92081n;
            if (i11 != 0) {
                if (i11 == 1) {
                    float f12 = jCurrentAnimationTimeMillis / i10;
                    float f13 = f12 * f12;
                    float fSignum = Math.signum(this.f92071d);
                    int i12 = this.f92079l;
                    d10 = i12 * fSignum * ((3.0f * f13) - ((2.0f * f12) * f13));
                    this.f92072e = fSignum * i12 * 6.0f * ((-f12) + f13);
                } else if (i11 != 2) {
                    d11 = 0.0d;
                } else {
                    float f14 = jCurrentAnimationTimeMillis / 1000.0f;
                    int i13 = this.f92071d;
                    float f15 = this.f92073f;
                    this.f92072e = i13 + (f15 * f14);
                    d11 = (i13 * f14) + (((f15 * f14) * f14) / 2.0f);
                }
                this.f92069b = this.f92068a + ((int) Math.round(d11));
                return true;
            }
            int i14 = this.f92076i;
            float f16 = jCurrentAnimationTimeMillis / i14;
            int i15 = (int) (f16 * 100.0f);
            if (i15 < 100) {
                float f17 = i15 / 100.0f;
                int i16 = i15 + 1;
                float[] fArr = f92065x;
                float f18 = fArr[i15];
                f11 = (fArr[i16] - f18) / ((i16 / 100.0f) - f17);
                f10 = f18 + ((f16 - f17) * f11);
            } else {
                f10 = 1.0f;
                f11 = 0.0f;
            }
            int i17 = this.f92077j;
            d10 = f10 * i17;
            this.f92072e = ((f11 * i17) / i14) * 1000.0f;
            d11 = d10;
            this.f92069b = this.f92068a + ((int) Math.round(d11));
            return true;
        }

        void v(int position) {
            this.f92070c = position;
            this.f92078k = false;
        }

        void w(float friction) {
            this.f92080m = friction;
        }

        boolean x(int start, int min, int max) {
            this.f92078k = true;
            this.f92070c = start;
            this.f92068a = start;
            this.f92071d = 0;
            this.f92074g = AnimationUtils.currentAnimationTimeMillis();
            this.f92075h = 0;
            if (start < min) {
                B(start, min, 0);
            } else if (start > max) {
                B(start, max, 0);
            }
            return !this.f92078k;
        }
    }

    public c(Context context) {
        this(context, null);
    }

    public static float B(float x10) {
        float f10 = x10 * f92050i;
        return (f10 < 1.0f ? f10 - (1.0f - ((float) Math.exp(-f10))) : 0.36787945f + ((1.0f - ((float) Math.exp(1.0f - f10))) * 0.63212055f)) * f92051j;
    }

    public int A() {
        return (int) (AnimationUtils.currentAnimationTimeMillis() - Math.min(this.f92053b.f92074g, this.f92054c.f92074g));
    }

    public void a() {
        this.f92053b.m();
        this.f92054c.m();
    }

    public boolean b() {
        if (o()) {
            return false;
        }
        int i10 = this.f92052a;
        if (i10 == 0) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.f92053b.f92074g;
            int i11 = this.f92053b.f92075h;
            if (jCurrentAnimationTimeMillis < i11) {
                float f10 = jCurrentAnimationTimeMillis / i11;
                Interpolator interpolator = this.f92055d;
                float fB = interpolator == null ? B(f10) : interpolator.getInterpolation(f10);
                this.f92053b.C(fB);
                this.f92054c.C(fB);
            } else {
                a();
            }
        } else if (i10 == 1) {
            if (!this.f92053b.f92078k && !this.f92053b.update() && !this.f92053b.k()) {
                this.f92053b.m();
            }
            if (!this.f92054c.f92078k && !this.f92054c.update() && !this.f92054c.k()) {
                this.f92054c.m();
            }
        }
        return true;
    }

    @Deprecated
    public void c(int extend) {
        this.f92053b.l(extend);
        this.f92054c.l(extend);
    }

    public void d(int startX, int startY, int velocityX, int velocityY, int minX, int maxX, int minY, int maxY) {
        e(startX, startY, velocityX, velocityY, minX, maxX, minY, maxY, 0, 0);
    }

    public void e(int startX, int startY, int velocityX, int velocityY, int minX, int maxX, int minY, int maxY, int overX, int overY) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (this.f92056e && !o()) {
            float f10 = this.f92053b.f92072e;
            float f11 = this.f92054c.f92072e;
            i10 = velocityX;
            float f12 = i10;
            if (Math.signum(f12) == Math.signum(f10)) {
                i11 = velocityY;
                float f13 = i11;
                if (Math.signum(f13) == Math.signum(f11)) {
                    i12 = (int) (f13 + f11);
                    i13 = (int) (f12 + f10);
                }
                this.f92052a = 1;
                this.f92053b.o(startX, i13, minX, maxX, overX);
                this.f92054c.o(startY, i12, minY, maxY, overY);
            }
            i12 = i11;
            i13 = i10;
            this.f92052a = 1;
            this.f92053b.o(startX, i13, minX, maxX, overX);
            this.f92054c.o(startY, i12, minY, maxY, overY);
        }
        i10 = velocityX;
        i11 = velocityY;
        i12 = i11;
        i13 = i10;
        this.f92052a = 1;
        this.f92053b.o(startX, i13, minX, maxX, overX);
        this.f92054c.o(startY, i12, minY, maxY, overY);
    }

    public final void f(boolean finished) {
        this.f92053b.f92078k = this.f92054c.f92078k = finished;
    }

    public float g() {
        return (float) Math.sqrt((this.f92053b.f92072e * this.f92053b.f92072e) + (this.f92054c.f92072e * this.f92054c.f92072e));
    }

    public final int h() {
        return this.f92053b.f92069b;
    }

    public final int i() {
        return this.f92054c.f92069b;
    }

    @Deprecated
    public final int j() {
        return Math.max(this.f92053b.f92075h, this.f92054c.f92075h);
    }

    public final int k() {
        return this.f92053b.f92070c;
    }

    public final int l() {
        return this.f92054c.f92070c;
    }

    public final int m() {
        return this.f92053b.f92068a;
    }

    public final int n() {
        return this.f92054c.f92068a;
    }

    public final boolean o() {
        return this.f92053b.f92078k && this.f92054c.f92078k;
    }

    public boolean p() {
        return ((this.f92053b.f92078k || this.f92053b.f92081n == 0) && (this.f92054c.f92078k || this.f92054c.f92081n == 0)) ? false : true;
    }

    public boolean q(float xvel, float yvel) {
        return !o() && Math.signum(xvel) == Math.signum((float) (this.f92053b.f92070c - this.f92053b.f92068a)) && Math.signum(yvel) == Math.signum((float) (this.f92054c.f92070c - this.f92054c.f92068a));
    }

    public void r(int startX, int finalX, int overX) {
        this.f92053b.t(startX, finalX, overX);
    }

    public void s(int startY, int finalY, int overY) {
        this.f92054c.t(startY, finalY, overY);
    }

    @Deprecated
    public void t(int newX) {
        this.f92053b.v(newX);
    }

    @Deprecated
    public void u(int newY) {
        this.f92054c.v(newY);
    }

    public final void v(float friction) {
        this.f92053b.w(friction);
        this.f92054c.w(friction);
    }

    void w(Interpolator interpolator) {
        this.f92055d = interpolator;
    }

    public boolean x(int startX, int startY, int minX, int maxX, int minY, int maxY) {
        this.f92052a = 1;
        return this.f92053b.x(startX, minX, maxX) || this.f92054c.x(startY, minY, maxY);
    }

    public void y(int startX, int startY, int dx, int dy) {
        z(startX, startY, dx, dy, 250);
    }

    public void z(int startX, int startY, int dx, int dy, int duration) {
        this.f92052a = 0;
        this.f92053b.A(startX, dx, duration);
        this.f92054c.A(startY, dy, duration);
    }

    public c(Context context, Interpolator interpolator) {
        this(context, interpolator, true);
    }

    public c(Context context, Interpolator interpolator, boolean flywheel) {
        this.f92055d = interpolator;
        this.f92056e = flywheel;
        this.f92053b = new a(context);
        this.f92054c = new a(context);
    }

    public c(Context context, Interpolator interpolator, float bounceCoefficientX, float bounceCoefficientY) {
        this(context, interpolator, true);
    }

    public c(Context context, Interpolator interpolator, float bounceCoefficientX, float bounceCoefficientY, boolean flywheel) {
        this(context, interpolator, flywheel);
    }
}

package ru.noties.scrollable;

import android.content.Context;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes10.dex */
public class n {
    private static final int A = 0;
    private static final int B = 1;
    private static final float D = 0.35f;
    private static final float E = 0.5f;
    private static final float F = 1.0f;
    private static final float G = 0.175f;
    private static final float H = 0.35000002f;
    private static final int I = 100;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Interpolator f96947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f96948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f96949c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f96950d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f96951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f96952f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f96953g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f96954h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f96955i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f96956j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f96957k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f96958l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f96959m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f96960n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f96961o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f96962p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f96963q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f96965s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f96966t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f96967u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f96968v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f96970x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final float f96971y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f96972z;
    private static float C = (float) (Math.log(0.78d) / Math.log(0.9d));
    private static final float[] J = new float[101];

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f96969w = ViewConfiguration.getScrollFriction();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f96964r = true;

    static class a implements Interpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final float f96973a = 8.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final float f96974b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final float f96975c;

        static {
            float fA = 1.0f / a(1.0f);
            f96974b = fA;
            f96975c = 1.0f - (fA * a(1.0f));
        }

        a() {
        }

        private static float a(float f10) {
            float f11 = f10 * 8.0f;
            return f11 < 1.0f ? f11 - (1.0f - ((float) Math.exp(-f11))) : 0.36787945f + ((1.0f - ((float) Math.exp(1.0f - f11))) * 0.63212055f);
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float fA = f96974b * a(f10);
            return fA > 0.0f ? fA + f96975c : fA;
        }
    }

    static {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i10 = 0; i10 < 100; i10++) {
            float f16 = i10 / 100.0f;
            float f17 = 1.0f;
            while (true) {
                f10 = ((f17 - f14) / 2.0f) + f14;
                f11 = 1.0f - f10;
                f12 = f10 * 3.0f * f11;
                f13 = f10 * f10 * f10;
                float f18 = (((0.175f * f11) + (H * f10)) * f12) + f13;
                if (Math.abs(f18 - f16) < 1.0E-5d) {
                    break;
                } else if (f18 > f16) {
                    f17 = f10;
                } else {
                    f14 = f10;
                }
            }
            J[i10] = (f12 * ((f11 * 0.5f) + f10)) + f13;
            float f19 = 1.0f;
            while (true) {
                float f20 = ((f19 - f15) / 2.0f) + f15;
                float f21 = 1.0f - f20;
                float f22 = (f20 * 3.0f * f21 * ((f21 * 0.5f) + f20)) + (f20 * f20 * f20);
                if (Math.abs(f22 - f16) < 1.0E-5d) {
                    break;
                } else if (f22 > f16) {
                    f19 = f20;
                } else {
                    f15 = f20;
                }
            }
        }
        J[100] = 1.0f;
    }

    public n(Context context, Interpolator interpolator, boolean z10) {
        if (interpolator == null) {
            this.f96947a = new a();
        } else {
            this.f96947a = interpolator;
        }
        this.f96971y = context.getResources().getDisplayMetrics().density * 160.0f;
        this.f96970x = b(ViewConfiguration.getScrollFriction());
        this.f96965s = z10;
        this.f96972z = b(0.84f);
    }

    private float b(float f10) {
        return this.f96971y * 386.0878f * f10;
    }

    private double i(float f10) {
        return Math.log((Math.abs(f10) * D) / (this.f96969w * this.f96972z));
    }

    private double j(float f10) {
        double dI = i(f10);
        float f11 = C;
        return ((double) (this.f96969w * this.f96972z)) * Math.exp((((double) f11) / (((double) f11) - 1.0d)) * dI);
    }

    public void a() {
        this.f96957k = this.f96951e;
        this.f96958l = this.f96952f;
        this.f96964r = true;
    }

    public boolean c() {
        float f10;
        float f11;
        if (this.f96964r) {
            return false;
        }
        int iCurrentAnimationTimeMillis = (int) (AnimationUtils.currentAnimationTimeMillis() - this.f96959m);
        int i10 = this.f96960n;
        if (iCurrentAnimationTimeMillis < i10) {
            int i11 = this.f96948b;
            if (i11 == 0) {
                float interpolation = this.f96947a.getInterpolation(iCurrentAnimationTimeMillis * this.f96961o);
                this.f96957k = this.f96949c + Math.round(this.f96962p * interpolation);
                this.f96958l = this.f96950d + Math.round(interpolation * this.f96963q);
            } else if (i11 == 1) {
                float f12 = iCurrentAnimationTimeMillis / i10;
                int i12 = (int) (f12 * 100.0f);
                if (i12 < 100) {
                    float f13 = i12 / 100.0f;
                    int i13 = i12 + 1;
                    float[] fArr = J;
                    float f14 = fArr[i12];
                    f11 = (fArr[i13] - f14) / ((i13 / 100.0f) - f13);
                    f10 = f14 + ((f12 - f13) * f11);
                } else {
                    f10 = 1.0f;
                    f11 = 0.0f;
                }
                this.f96967u = ((f11 * this.f96968v) / i10) * 1000.0f;
                int i14 = this.f96949c;
                int iRound = i14 + Math.round((this.f96951e - i14) * f10);
                this.f96957k = iRound;
                int iMin = Math.min(iRound, this.f96954h);
                this.f96957k = iMin;
                this.f96957k = Math.max(iMin, this.f96953g);
                int i15 = this.f96950d;
                int iRound2 = i15 + Math.round(f10 * (this.f96952f - i15));
                this.f96958l = iRound2;
                int iMin2 = Math.min(iRound2, this.f96956j);
                this.f96958l = iMin2;
                int iMax = Math.max(iMin2, this.f96955i);
                this.f96958l = iMax;
                if (this.f96957k == this.f96951e && iMax == this.f96952f) {
                    this.f96964r = true;
                }
            }
        } else {
            this.f96957k = this.f96951e;
            this.f96958l = this.f96952f;
            this.f96964r = true;
        }
        return true;
    }

    public void d(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (this.f96965s && !this.f96964r) {
            float fE = e();
            float f10 = this.f96951e - this.f96949c;
            float f11 = this.f96952f - this.f96950d;
            float fHypot = (float) Math.hypot(f10, f11);
            float f12 = (f10 / fHypot) * fE;
            float f13 = (f11 / fHypot) * fE;
            float f14 = i12;
            if (Math.signum(f14) == Math.signum(f12)) {
                float f15 = i13;
                if (Math.signum(f15) == Math.signum(f13)) {
                    i12 = (int) (f14 + f12);
                    i13 = (int) (f15 + f13);
                }
            }
        }
        this.f96948b = 1;
        this.f96964r = false;
        float fHypot2 = (float) Math.hypot(i12, i13);
        this.f96966t = fHypot2;
        this.f96960n = k(fHypot2);
        this.f96959m = AnimationUtils.currentAnimationTimeMillis();
        this.f96949c = i10;
        this.f96950d = i11;
        float f16 = fHypot2 == 0.0f ? 1.0f : i12 / fHypot2;
        float f17 = fHypot2 != 0.0f ? i13 / fHypot2 : 1.0f;
        double dJ = j(fHypot2);
        this.f96968v = (int) (((double) Math.signum(fHypot2)) * dJ);
        this.f96953g = i14;
        this.f96954h = i15;
        this.f96955i = i16;
        this.f96956j = i17;
        int iRound = i10 + ((int) Math.round(((double) f16) * dJ));
        this.f96951e = iRound;
        int iMin = Math.min(iRound, this.f96954h);
        this.f96951e = iMin;
        this.f96951e = Math.max(iMin, this.f96953g);
        int iRound2 = i11 + ((int) Math.round(dJ * ((double) f17)));
        this.f96952f = iRound2;
        int iMin2 = Math.min(iRound2, this.f96956j);
        this.f96952f = iMin2;
        this.f96952f = Math.max(iMin2, this.f96955i);
    }

    public float e() {
        return this.f96948b == 1 ? this.f96967u : this.f96966t - ((this.f96970x * n()) / 2000.0f);
    }

    public final int f() {
        return this.f96958l;
    }

    public final int g() {
        return this.f96960n;
    }

    public final int h() {
        return this.f96952f;
    }

    int k(float f10) {
        return (int) (Math.exp(i(f10) / (((double) C) - 1.0d)) * 1000.0d);
    }

    public void l(int i10) {
        this.f96952f = i10;
        this.f96963q = i10 - this.f96950d;
        this.f96964r = false;
    }

    public final void m(float f10) {
        this.f96970x = b(f10);
        this.f96969w = f10;
    }

    public int n() {
        return (int) (AnimationUtils.currentAnimationTimeMillis() - this.f96959m);
    }
}

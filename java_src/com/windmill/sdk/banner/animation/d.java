package com.windmill.sdk.banner.animation;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;

/* JADX INFO: loaded from: classes8.dex */
public class d implements f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float[] f86564c = {0.0f, 0.0f, 1.0f, 0.0f};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final float[] f86565d = {0.0f, 0.0f, -1.0f, 0.0f};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float[] f86566e = {-1.0f, 0.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final float[] f86567f = {1.0f, 0.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final float[] f86568g = {0.0f, 0.0f, 0.0f, -1.0f};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final float[] f86569h = {0.0f, 0.0f, 0.0f, 1.0f};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final float[] f86570i = {0.0f, 1.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final float[] f86571j = {0.0f, -1.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animation f86572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Animation f86573b;

    /* JADX INFO: renamed from: com.windmill.sdk.banner.animation.d$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f86574a;

        static {
            int[] iArr = new int[g.values().length];
            f86574a = iArr;
            try {
                iArr[g.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86574a[g.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86574a[g.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86574a[g.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public d(long duration, g direction) {
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        this.f86572a = a(a(direction), accelerateInterpolator, duration);
        this.f86573b = a(b(direction), accelerateInterpolator, duration);
    }

    private float[] a(g direction) {
        int i10 = AnonymousClass1.f86574a[direction.ordinal()];
        if (i10 == 1) {
            return f86564c;
        }
        if (i10 == 2) {
            return f86565d;
        }
        if (i10 != 3) {
            return i10 != 4 ? f86564c : f86567f;
        }
        return f86566e;
    }

    private float[] b(g direction) {
        int i10 = AnonymousClass1.f86574a[direction.ordinal()];
        if (i10 == 1) {
            return f86568g;
        }
        if (i10 == 2) {
            return f86569h;
        }
        if (i10 != 3) {
            return i10 != 4 ? f86568g : f86571j;
        }
        return f86570i;
    }

    private Animation a(float[] direction, Interpolator interpolator, long duration) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, direction[0], 2, direction[1], 2, direction[2], 2, direction[3]);
        translateAnimation.setInterpolator(interpolator);
        translateAnimation.setDuration(duration);
        return translateAnimation;
    }

    @Override // com.windmill.sdk.banner.animation.f
    public Animation b() {
        return this.f86573b;
    }

    @Override // com.windmill.sdk.banner.animation.f
    public Animation a() {
        return this.f86572a;
    }
}

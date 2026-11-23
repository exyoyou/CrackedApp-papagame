package com.windmill.sdk.banner.animation;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;

/* JADX INFO: loaded from: classes8.dex */
public class c implements f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float[] f86557c = {0.0f, 0.0f, 1.0f, 0.0f};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final float[] f86558d = {0.0f, 0.0f, -1.0f, 0.0f};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float[] f86559e = {-1.0f, 0.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final float[] f86560f = {1.0f, 0.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animation f86561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Animation f86562b;

    /* JADX INFO: renamed from: com.windmill.sdk.banner.animation.c$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f86563a;

        static {
            int[] iArr = new int[g.values().length];
            f86563a = iArr;
            try {
                iArr[g.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86563a[g.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86563a[g.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86563a[g.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public c(long duration, g direction) {
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        a(a(direction), linearInterpolator, duration);
        b(a(direction), linearInterpolator, duration);
    }

    private float[] a(g direction) {
        int i10 = AnonymousClass1.f86563a[direction.ordinal()];
        if (i10 == 1) {
            return f86557c;
        }
        if (i10 == 2) {
            return f86558d;
        }
        if (i10 != 3) {
            return i10 != 4 ? f86557c : f86560f;
        }
        return f86559e;
    }

    private void b(float[] direction, Interpolator interpolator, long duration) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 1.0f, 2, 0.0f, 2, 0.0f);
        this.f86562b = translateAnimation;
        translateAnimation.setFillAfter(true);
        this.f86562b.setDuration(duration);
        this.f86562b.setInterpolator(interpolator);
    }

    @Override // com.windmill.sdk.banner.animation.f
    public Animation b() {
        return this.f86562b;
    }

    private void a(float[] direction, Interpolator interpolator, long duration) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, direction[0], 2, direction[1], 2, direction[2], 2, direction[3]);
        this.f86561a = translateAnimation;
        translateAnimation.setInterpolator(interpolator);
        this.f86561a.setFillAfter(true);
        this.f86561a.setDuration(duration);
    }

    @Override // com.windmill.sdk.banner.animation.f
    public Animation a() {
        return this.f86561a;
    }
}

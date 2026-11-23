package com.windmill.sdk.banner.animation;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;

/* JADX INFO: loaded from: classes8.dex */
public class e implements f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float[] f86575c = {0.0f, 0.0f, 0.0f, -1.0f};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final float[] f86576d = {0.0f, 0.0f, 0.0f, 1.0f};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float[] f86577e = {0.0f, 1.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final float[] f86578f = {0.0f, -1.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animation f86579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Animation f86580b;

    /* JADX INFO: renamed from: com.windmill.sdk.banner.animation.e$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f86581a;

        static {
            int[] iArr = new int[g.values().length];
            f86581a = iArr;
            try {
                iArr[g.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86581a[g.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86581a[g.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86581a[g.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public e(long duration, g direction) {
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        a(accelerateInterpolator, duration);
        a(a(direction), accelerateInterpolator, duration);
    }

    private void a(Interpolator interpolator, long duration) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        this.f86579a = alphaAnimation;
        alphaAnimation.setDuration(duration);
        this.f86579a.setInterpolator(interpolator);
    }

    @Override // com.windmill.sdk.banner.animation.f
    public Animation b() {
        return this.f86580b;
    }

    private void a(float[] direction, Interpolator interpolator, long duration) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, direction[0], 2, direction[1], 2, direction[2], 2, direction[3]);
        translateAnimation.setInterpolator(interpolator);
        translateAnimation.setDuration(duration);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(duration);
        alphaAnimation.setInterpolator(interpolator);
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        this.f86580b = animationSet;
    }

    private float[] a(g direction) {
        int i10 = AnonymousClass1.f86581a[direction.ordinal()];
        if (i10 == 1) {
            return f86575c;
        }
        if (i10 == 2) {
            return f86576d;
        }
        if (i10 == 3) {
            return f86577e;
        }
        if (i10 != 4) {
            return f86575c;
        }
        return f86578f;
    }

    @Override // com.windmill.sdk.banner.animation.f
    public Animation a() {
        return this.f86579a;
    }
}

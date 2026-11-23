package com.windmill.sdk.banner.animation;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes8.dex */
public class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animation f86555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Animation f86556b;

    public b(long duration) {
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        a(accelerateInterpolator, duration);
        b(accelerateInterpolator, duration);
    }

    private void a(Interpolator interpolator, long duration) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        this.f86555a = alphaAnimation;
        alphaAnimation.setDuration(duration);
        this.f86555a.setInterpolator(interpolator);
    }

    private void b(Interpolator interpolator, long duration) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        this.f86556b = alphaAnimation;
        alphaAnimation.setDuration(duration);
        this.f86556b.setInterpolator(interpolator);
    }

    @Override // com.windmill.sdk.banner.animation.f
    public Animation a() {
        return this.f86555a;
    }

    @Override // com.windmill.sdk.banner.animation.f
    public Animation b() {
        return this.f86556b;
    }
}

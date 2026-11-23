package ru.noties.scrollable;

import android.animation.ValueAnimator;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes10.dex */
public class i implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Interpolator f96940a;

    public i(Interpolator interpolator) {
        this.f96940a = interpolator;
    }

    @Override // ru.noties.scrollable.d
    public void a(ValueAnimator valueAnimator) {
        valueAnimator.setInterpolator(this.f96940a);
    }
}

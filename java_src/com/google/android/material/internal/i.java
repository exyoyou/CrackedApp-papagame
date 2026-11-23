package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class i implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final View f30930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final View f30931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f30932d = new float[2];

    public i(@Nullable View view, @Nullable View view2) {
        this.f30930b = view;
        this.f30931c = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        j.a(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f30932d);
        View view = this.f30930b;
        if (view != null) {
            view.setAlpha(this.f30932d[0]);
        }
        View view2 = this.f30931c;
        if (view2 != null) {
            view2.setAlpha(this.f30932d[1]);
        }
    }
}

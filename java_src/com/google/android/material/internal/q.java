package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class q implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f30959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View[] f30960c;

    interface a {
        void a(@NonNull ValueAnimator valueAnimator, @NonNull View view);
    }

    @SuppressLint({"LambdaLast"})
    public q(@NonNull a aVar, @NonNull View... viewArr) {
        this.f30959b = aVar;
        this.f30960c = viewArr;
    }

    @NonNull
    public static q e(@NonNull Collection<View> collection) {
        return new q(new p(), collection);
    }

    @NonNull
    public static q f(@NonNull View... viewArr) {
        return new q(new p(), viewArr);
    }

    @NonNull
    public static q g(@NonNull Collection<View> collection) {
        return new q(new n(), collection);
    }

    @NonNull
    public static q h(@NonNull View... viewArr) {
        return new q(new n(), viewArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i(@NonNull ValueAnimator valueAnimator, @NonNull View view) {
        view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j(@NonNull ValueAnimator valueAnimator, @NonNull View view) {
        Float f10 = (Float) valueAnimator.getAnimatedValue();
        view.setScaleX(f10.floatValue());
        view.setScaleY(f10.floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(@NonNull ValueAnimator valueAnimator, @NonNull View view) {
        view.setTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(@NonNull ValueAnimator valueAnimator, @NonNull View view) {
        view.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @NonNull
    public static q m(@NonNull Collection<View> collection) {
        return new q(new m(), collection);
    }

    @NonNull
    public static q n(@NonNull View... viewArr) {
        return new q(new m(), viewArr);
    }

    @NonNull
    public static q o(@NonNull Collection<View> collection) {
        return new q(new o(), collection);
    }

    @NonNull
    public static q p(@NonNull View... viewArr) {
        return new q(new o(), viewArr);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        for (View view : this.f30960c) {
            this.f30959b.a(valueAnimator, view);
        }
    }

    @SuppressLint({"LambdaLast"})
    public q(@NonNull a aVar, @NonNull Collection<View> collection) {
        this.f30959b = aVar;
        this.f30960c = (View[]) collection.toArray(new View[0]);
    }
}

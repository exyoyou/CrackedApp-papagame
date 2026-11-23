package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class p implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f32613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f32614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f32615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f32616d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32617e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f32618f;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f32619b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f32620c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f32621d;

        a(View view, float f10, float f11) {
            this.f32619b = view;
            this.f32620c = f10;
            this.f32621d = f11;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f32619b.setScaleX(this.f32620c);
            this.f32619b.setScaleY(this.f32621d);
        }
    }

    public p() {
        this(true);
    }

    private static Animator c(View view, float f10, float f11) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, scaleX * f10, scaleX * f11), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, f10 * scaleY, f11 * scaleY));
        objectAnimatorOfPropertyValuesHolder.addListener(new a(view, scaleX, scaleY));
        return objectAnimatorOfPropertyValuesHolder;
    }

    @Override // com.google.android.material.transition.t
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f32618f) {
            return this.f32617e ? c(view, this.f32613a, this.f32614b) : c(view, this.f32616d, this.f32615c);
        }
        return null;
    }

    @Override // com.google.android.material.transition.t
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f32617e ? c(view, this.f32615c, this.f32616d) : c(view, this.f32614b, this.f32613a);
    }

    public float d() {
        return this.f32616d;
    }

    public float e() {
        return this.f32615c;
    }

    public float f() {
        return this.f32614b;
    }

    public float g() {
        return this.f32613a;
    }

    public boolean h() {
        return this.f32617e;
    }

    public boolean i() {
        return this.f32618f;
    }

    public void j(boolean z10) {
        this.f32617e = z10;
    }

    public void k(float f10) {
        this.f32616d = f10;
    }

    public void l(float f10) {
        this.f32615c = f10;
    }

    public void m(float f10) {
        this.f32614b = f10;
    }

    public void n(float f10) {
        this.f32613a = f10;
    }

    public void o(boolean z10) {
        this.f32618f = z10;
    }

    public p(boolean z10) {
        this.f32613a = 1.0f;
        this.f32614b = 1.1f;
        this.f32615c = 0.8f;
        this.f32616d = 1.0f;
        this.f32618f = true;
        this.f32617e = z10;
    }
}

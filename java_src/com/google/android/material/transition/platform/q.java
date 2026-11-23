package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
public final class q implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f32765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f32766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f32767c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f32768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f32770f;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f32771b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f32772c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f32773d;

        a(View view, float f10, float f11) {
            this.f32771b = view;
            this.f32772c = f10;
            this.f32773d = f11;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f32771b.setScaleX(this.f32772c);
            this.f32771b.setScaleY(this.f32773d);
        }
    }

    public q() {
        this(true);
    }

    private static Animator c(View view, float f10, float f11) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, scaleX * f10, scaleX * f11), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, f10 * scaleY, f11 * scaleY));
        objectAnimatorOfPropertyValuesHolder.addListener(new a(view, scaleX, scaleY));
        return objectAnimatorOfPropertyValuesHolder;
    }

    @Override // com.google.android.material.transition.platform.u
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f32770f) {
            return this.f32769e ? c(view, this.f32765a, this.f32766b) : c(view, this.f32768d, this.f32767c);
        }
        return null;
    }

    @Override // com.google.android.material.transition.platform.u
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f32769e ? c(view, this.f32767c, this.f32768d) : c(view, this.f32766b, this.f32765a);
    }

    public float d() {
        return this.f32768d;
    }

    public float e() {
        return this.f32767c;
    }

    public float f() {
        return this.f32766b;
    }

    public float g() {
        return this.f32765a;
    }

    public boolean h() {
        return this.f32769e;
    }

    public boolean i() {
        return this.f32770f;
    }

    public void j(boolean z10) {
        this.f32769e = z10;
    }

    public void k(float f10) {
        this.f32768d = f10;
    }

    public void l(float f10) {
        this.f32767c = f10;
    }

    public void m(float f10) {
        this.f32766b = f10;
    }

    public void n(float f10) {
        this.f32765a = f10;
    }

    public void o(boolean z10) {
        this.f32770f = z10;
    }

    public q(boolean z10) {
        this.f32765a = 1.0f;
        this.f32766b = 1.1f;
        this.f32767c = 0.8f;
        this.f32768d = 1.0f;
        this.f32770f = true;
        this.f32769e = z10;
    }
}

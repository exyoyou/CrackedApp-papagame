package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
public final class d implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f32709a = 1.0f;

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f32710b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f32711c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f32712d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ float f32713e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ float f32714f;

        a(View view, float f10, float f11, float f12, float f13) {
            this.f32710b = view;
            this.f32711c = f10;
            this.f32712d = f11;
            this.f32713e = f12;
            this.f32714f = f13;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f32710b.setAlpha(t.n(this.f32711c, this.f32712d, this.f32713e, this.f32714f, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f32715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f32716c;

        b(View view, float f10) {
            this.f32715b = view;
            this.f32716c = f10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f32715b.setAlpha(this.f32716c);
        }
    }

    private static Animator c(View view, float f10, float f11, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f12, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f13, float f14) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new a(view, f10, f11, f12, f13));
        valueAnimatorOfFloat.addListener(new b(view, f14));
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.transition.platform.u
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, alpha, 0.0f, 0.0f, 1.0f, alpha);
    }

    @Override // com.google.android.material.transition.platform.u
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, 0.0f, alpha, 0.0f, this.f32709a, alpha);
    }

    public float d() {
        return this.f32709a;
    }

    public void e(float f10) {
        this.f32709a = f10;
    }
}

package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.RoundedCorner;
import android.view.View;
import android.view.WindowInsets;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.android.material.R;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.p0;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class h extends com.google.android.material.motion.a<View> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final float f31051q = 0.9f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f31052k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final float f31053l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f31054m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private Rect f31055n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private Rect f31056o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private Integer f31057p;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f31058b;

        a(View view) {
            this.f31058b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View view = this.f31058b;
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public h(@NonNull View view) {
        super(view);
        Resources resources = view.getResources();
        this.f31052k = resources.getDimension(R.dimen.m3_back_progress_main_container_min_edge_gap);
        this.f31053l = resources.getDimension(R.dimen.m3_back_progress_main_container_max_translation_y);
    }

    @NonNull
    private ValueAnimator h(final ClippableRoundedCornerLayout clippableRoundedCornerLayout) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(clippableRoundedCornerLayout.getCornerRadius(), k());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.motion.g
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                h.q(clippableRoundedCornerLayout, valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    @NonNull
    private AnimatorSet i(@Nullable View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f31035b, (Property<V, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f31035b, (Property<V, Float>) View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.f31035b, (Property<V, Float>) View.TRANSLATION_X, 0.0f), ObjectAnimator.ofFloat(this.f31035b, (Property<V, Float>) View.TRANSLATION_Y, 0.0f));
        animatorSet.addListener(new a(view));
        return animatorSet;
    }

    private int n() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 31 || (rootWindowInsets = this.f31035b.getRootWindowInsets()) == null) {
            return 0;
        }
        return Math.max(Math.max(o(rootWindowInsets, 0), o(rootWindowInsets, 1)), Math.max(o(rootWindowInsets, 3), o(rootWindowInsets, 2)));
    }

    @RequiresApi(31)
    private int o(WindowInsets windowInsets, int i10) {
        RoundedCorner roundedCorner = windowInsets.getRoundedCorner(i10);
        if (roundedCorner != null) {
            return roundedCorner.getRadius();
        }
        return 0;
    }

    private boolean p() {
        int[] iArr = new int[2];
        this.f31035b.getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q(ClippableRoundedCornerLayout clippableRoundedCornerLayout, ValueAnimator valueAnimator) {
        clippableRoundedCornerLayout.e(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void r() {
        this.f31054m = 0.0f;
        this.f31055n = null;
        this.f31056o = null;
    }

    public void g(@Nullable View view) {
        if (super.b() == null) {
            return;
        }
        AnimatorSet animatorSetI = i(view);
        V v10 = this.f31035b;
        if (v10 instanceof ClippableRoundedCornerLayout) {
            animatorSetI.playTogether(h((ClippableRoundedCornerLayout) v10));
        }
        animatorSetI.setDuration(this.f31038e);
        animatorSetI.start();
        r();
    }

    public void j(long j10, @Nullable View view) {
        AnimatorSet animatorSetI = i(view);
        animatorSetI.setDuration(j10);
        animatorSetI.start();
        r();
    }

    public int k() {
        if (this.f31057p == null) {
            this.f31057p = Integer.valueOf(p() ? n() : 0);
        }
        return this.f31057p.intValue();
    }

    @Nullable
    public Rect l() {
        return this.f31056o;
    }

    @Nullable
    public Rect m() {
        return this.f31055n;
    }

    @VisibleForTesting
    public void s(float f10, @Nullable View view) {
        this.f31055n = p0.d(this.f31035b);
        if (view != null) {
            this.f31056o = p0.c(this.f31035b, view);
        }
        this.f31054m = f10;
    }

    public void t(@NonNull BackEventCompat backEventCompat, @Nullable View view) {
        super.d(backEventCompat);
        s(backEventCompat.getTouchY(), view);
    }

    @VisibleForTesting
    public void u(float f10, boolean z10, float f11, float f12) {
        float fA = a(f10);
        float width = this.f31035b.getWidth();
        float height = this.f31035b.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float fA2 = com.google.android.material.animation.b.a(1.0f, f31051q, fA);
        float fA3 = com.google.android.material.animation.b.a(0.0f, Math.max(0.0f, ((width - (f31051q * width)) / 2.0f) - this.f31052k), fA) * (z10 ? 1 : -1);
        float fMin = Math.min(Math.max(0.0f, ((height - (fA2 * height)) / 2.0f) - this.f31052k), this.f31053l);
        float f13 = f11 - this.f31054m;
        float fA4 = com.google.android.material.animation.b.a(0.0f, fMin, Math.abs(f13) / height) * Math.signum(f13);
        this.f31035b.setScaleX(fA2);
        this.f31035b.setScaleY(fA2);
        this.f31035b.setTranslationX(fA3);
        this.f31035b.setTranslationY(fA4);
        V v10 = this.f31035b;
        if (v10 instanceof ClippableRoundedCornerLayout) {
            ((ClippableRoundedCornerLayout) v10).e(com.google.android.material.animation.b.a(k(), f12, fA));
        }
    }

    public void v(@NonNull BackEventCompat backEventCompat, @Nullable View view, float f10) {
        if (super.e(backEventCompat) == null) {
            return;
        }
        if (view != null && view.getVisibility() != 4) {
            view.setVisibility(4);
        }
        u(backEventCompat.getProgress(), backEventCompat.getSwipeEdge() == 0, backEventCompat.getTouchY(), f10);
    }
}

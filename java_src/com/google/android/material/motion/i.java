package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class i extends com.google.android.material.motion.a<View> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f31060k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final float f31061l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f31062m;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f31063b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f31064c;

        a(boolean z10, int i10) {
            this.f31063b = z10;
            this.f31064c = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i.this.f31035b.setTranslationX(0.0f);
            i.this.k(0.0f, this.f31063b, this.f31064c);
        }
    }

    public i(@NonNull View view) {
        super(view);
        Resources resources = view.getResources();
        this.f31060k = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.f31061l = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.f31062m = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    private boolean g(@GravityInt int i10, @GravityInt int i11) {
        return (GravityCompat.getAbsoluteGravity(i10, ViewCompat.getLayoutDirection(this.f31035b)) & i11) == i11;
    }

    private int i(boolean z10) {
        ViewGroup.LayoutParams layoutParams = this.f31035b.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return 0;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return z10 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
    }

    public void f() {
        if (super.b() == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f31035b, (Property<V, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f31035b, (Property<V, Float>) View.SCALE_Y, 1.0f));
        V v10 = this.f31035b;
        if (v10 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) v10;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i10), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(this.f31038e);
        animatorSet.start();
    }

    public void h(@NonNull BackEventCompat backEventCompat, @GravityInt int i10, @Nullable Animator.AnimatorListener animatorListener, @Nullable ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        boolean z10 = backEventCompat.getSwipeEdge() == 0;
        boolean zG = g(i10, 3);
        float width = (this.f31035b.getWidth() * this.f31035b.getScaleX()) + i(zG);
        V v10 = this.f31035b;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (zG) {
            width = -width;
        }
        fArr[0] = width;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(v10, (Property<V, Float>) property, fArr);
        if (animatorUpdateListener != null) {
            objectAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
        }
        objectAnimatorOfFloat.setInterpolator(new FastOutSlowInInterpolator());
        objectAnimatorOfFloat.setDuration(com.google.android.material.animation.b.c(this.f31036c, this.f31037d, backEventCompat.getProgress()));
        objectAnimatorOfFloat.addListener(new a(z10, i10));
        if (animatorListener != null) {
            objectAnimatorOfFloat.addListener(animatorListener);
        }
        objectAnimatorOfFloat.start();
    }

    public void j(@NonNull BackEventCompat backEventCompat) {
        super.d(backEventCompat);
    }

    @VisibleForTesting
    public void k(float f10, boolean z10, @GravityInt int i10) {
        float fA = a(f10);
        boolean zG = g(i10, 3);
        boolean z11 = z10 == zG;
        int width = this.f31035b.getWidth();
        int height = this.f31035b.getHeight();
        float f11 = width;
        if (f11 > 0.0f) {
            float f12 = height;
            if (f12 <= 0.0f) {
                return;
            }
            float f13 = this.f31060k / f11;
            float f14 = this.f31061l / f11;
            float f15 = this.f31062m / f12;
            V v10 = this.f31035b;
            if (zG) {
                f11 = 0.0f;
            }
            v10.setPivotX(f11);
            if (!z11) {
                f14 = -f13;
            }
            float fA2 = com.google.android.material.animation.b.a(0.0f, f14, fA);
            float f16 = fA2 + 1.0f;
            this.f31035b.setScaleX(f16);
            float fA3 = 1.0f - com.google.android.material.animation.b.a(0.0f, f15, fA);
            this.f31035b.setScaleY(fA3);
            V v11 = this.f31035b;
            if (v11 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) v11;
                for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                    View childAt = viewGroup.getChildAt(i11);
                    childAt.setPivotX(zG ? (width - childAt.getRight()) + childAt.getWidth() : -childAt.getLeft());
                    childAt.setPivotY(-childAt.getTop());
                    float f17 = z11 ? 1.0f - fA2 : 1.0f;
                    float f18 = fA3 != 0.0f ? (f16 / fA3) * f17 : 1.0f;
                    childAt.setScaleX(f17);
                    childAt.setScaleY(f18);
                }
            }
        }
    }

    public void l(@NonNull BackEventCompat backEventCompat, @GravityInt int i10) {
        if (super.e(backEventCompat) == null) {
            return;
        }
        k(backEventCompat.getProgress(), backEventCompat.getSwipeEdge() == 0, i10);
    }
}

package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f30911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f30912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<AnimatorListenerAdapter> f30913c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<View> f30914d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private ValueAnimator.AnimatorUpdateListener f30915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f30916f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f30917g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f30918h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            g.this.f30912b.setVisibility(0);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            g.this.f30912b.setVisibility(8);
        }
    }

    public g(@NonNull View view, @NonNull View view2) {
        this.f30911a = view;
        this.f30912b = view2;
    }

    private void f(Animator animator, List<AnimatorListenerAdapter> list) {
        Iterator<AnimatorListenerAdapter> it2 = list.iterator();
        while (it2.hasNext()) {
            animator.addListener(it2.next());
        }
    }

    private AnimatorSet g(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(k(z10), l(z10), i(z10));
        return animatorSet;
    }

    private Animator i(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat((this.f30912b.getLeft() - this.f30911a.getLeft()) + (this.f30911a.getRight() - this.f30912b.getRight()), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(q.m(this.f30914d));
        valueAnimatorOfFloat.setDuration(this.f30916f);
        valueAnimatorOfFloat.setInterpolator(v.a(z10, com.google.android.material.animation.b.f29368b));
        return valueAnimatorOfFloat;
    }

    private Animator k(boolean z10) {
        Rect rectE = p0.e(this.f30911a, this.f30917g);
        Rect rectE2 = p0.e(this.f30912b, this.f30918h);
        final Rect rect = new Rect(rectE);
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new u(rect), rectE, rectE2);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f30909b.m(rect, valueAnimator);
            }
        });
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f30915e;
        if (animatorUpdateListener != null) {
            valueAnimatorOfObject.addUpdateListener(animatorUpdateListener);
        }
        valueAnimatorOfObject.setDuration(this.f30916f);
        valueAnimatorOfObject.setInterpolator(v.a(z10, com.google.android.material.animation.b.f29368b));
        return valueAnimatorOfObject;
    }

    private Animator l(boolean z10) {
        List<View> listK = p0.k(this.f30912b);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(q.e(listK));
        valueAnimatorOfFloat.setDuration(this.f30916f);
        valueAnimatorOfFloat.setInterpolator(v.a(z10, com.google.android.material.animation.b.f29367a));
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(Rect rect, ValueAnimator valueAnimator) {
        p0.A(this.f30912b, rect);
    }

    @NonNull
    @CanIgnoreReturnValue
    public g c(@NonNull Collection<View> collection) {
        this.f30914d.addAll(collection);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public g d(@NonNull View... viewArr) {
        Collections.addAll(this.f30914d, viewArr);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public g e(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f30913c.add(animatorListenerAdapter);
        return this;
    }

    @NonNull
    public Animator h() {
        AnimatorSet animatorSetG = g(false);
        animatorSetG.addListener(new b());
        f(animatorSetG, this.f30913c);
        return animatorSetG;
    }

    @NonNull
    public Animator j() {
        AnimatorSet animatorSetG = g(true);
        animatorSetG.addListener(new a());
        f(animatorSetG, this.f30913c);
        return animatorSetG;
    }

    @NonNull
    @CanIgnoreReturnValue
    public g n(@Nullable ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f30915e = animatorUpdateListener;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public g o(int i10) {
        this.f30917g = i10;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public g p(long j10) {
        this.f30916f = j10;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public g q(int i10) {
        this.f30918h = i10;
        return this;
    }
}

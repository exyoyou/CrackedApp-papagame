package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.motion.j;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f29471k = 225;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f29472l = 175;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f29473m = R.attr.motionDurationLong2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f29474n = R.attr.motionDurationMedium4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f29475o = R.attr.motionEasingEmphasizedInterpolator;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f29476p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f29477q = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinkedHashSet<b> f29478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f29479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f29480d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TimeInterpolator f29481e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TimeInterpolator f29482f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29483g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ScrollState
    private int f29484h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f29485i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private ViewPropertyAnimator f29486j;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface ScrollState {
    }

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f29486j = null;
        }
    }

    public interface b {
        void a(@NonNull View view, @ScrollState int i10);
    }

    public HideBottomViewOnScrollBehavior() {
        this.f29478b = new LinkedHashSet<>();
        this.f29483g = 0;
        this.f29484h = 2;
        this.f29485i = 0;
    }

    private void j(@NonNull V v10, int i10, long j10, TimeInterpolator timeInterpolator) {
        this.f29486j = v10.animate().translationY(i10).setInterpolator(timeInterpolator).setDuration(j10).setListener(new a());
    }

    private void t(@NonNull V v10, @ScrollState int i10) {
        this.f29484h = i10;
        Iterator<b> it2 = this.f29478b.iterator();
        while (it2.hasNext()) {
            it2.next().a(v10, this.f29484h);
        }
    }

    public void i(@NonNull b bVar) {
        this.f29478b.add(bVar);
    }

    public void k() {
        this.f29478b.clear();
    }

    public boolean l() {
        return this.f29484h == 1;
    }

    public boolean m() {
        return this.f29484h == 2;
    }

    public void n(@NonNull b bVar) {
        this.f29478b.remove(bVar);
    }

    public void o(@NonNull V v10, @Dimension int i10) {
        this.f29485i = i10;
        if (this.f29484h == 1) {
            v10.setTranslationY(this.f29483g + i10);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10) {
        this.f29483g = v10.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v10.getLayoutParams()).bottomMargin;
        this.f29479c = j.f(v10.getContext(), f29473m, 225);
        this.f29480d = j.f(v10.getContext(), f29474n, 175);
        Context context = v10.getContext();
        int i11 = f29475o;
        this.f29481e = j.g(context, i11, com.google.android.material.animation.b.f29370d);
        this.f29482f = j.g(v10.getContext(), i11, com.google.android.material.animation.b.f29369c);
        return super.onLayoutChild(coordinatorLayout, v10, i10);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
        if (i11 > 0) {
            p(v10);
        } else if (i11 < 0) {
            r(v10);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, @NonNull View view2, int i10, int i11) {
        return i10 == 2;
    }

    public void p(@NonNull V v10) {
        q(v10, true);
    }

    public void q(@NonNull V v10, boolean z10) {
        if (l()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f29486j;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v10.clearAnimation();
        }
        t(v10, 1);
        int i10 = this.f29483g + this.f29485i;
        if (z10) {
            j(v10, i10, this.f29480d, this.f29482f);
        } else {
            v10.setTranslationY(i10);
        }
    }

    public void r(@NonNull V v10) {
        s(v10, true);
    }

    public void s(@NonNull V v10, boolean z10) {
        if (m()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f29486j;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v10.clearAnimation();
        }
        t(v10, 2);
        if (z10) {
            j(v10, 0, this.f29479c, this.f29481e);
        } else {
            v10.setTranslationY(0);
        }
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29478b = new LinkedHashSet<>();
        this.f29483g = 0;
        this.f29484h = 2;
        this.f29485i = 0;
    }
}

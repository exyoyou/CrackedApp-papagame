package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.h0;
import com.google.android.material.internal.p0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
class d0 {
    private static final long A = 250;
    private static final float B = 0.95f;
    private static final long C = 350;
    private static final long D = 150;
    private static final long E = 300;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final long f31444p = 300;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final long f31445q = 50;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f31446r = 250;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f31447s = 150;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final long f31448t = 75;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final long f31449u = 300;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final long f31450v = 250;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final long f31451w = 42;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final long f31452x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final long f31453y = 83;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final long f31454z = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SearchView f31455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f31456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ClippableRoundedCornerLayout f31457c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FrameLayout f31458d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final FrameLayout f31459e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Toolbar f31460f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Toolbar f31461g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TextView f31462h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final EditText f31463i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ImageButton f31464j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View f31465k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final TouchObserverFrameLayout f31466l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final com.google.android.material.motion.h f31467m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private AnimatorSet f31468n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private SearchBar f31469o;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!d0.this.f31455a.x()) {
                d0.this.f31455a.U();
            }
            d0.this.f31455a.setTransitionState(SearchView.TransitionState.SHOWN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.f31457c.setVisibility(0);
            d0.this.f31469o.K();
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.this.f31457c.setVisibility(8);
            if (!d0.this.f31455a.x()) {
                d0.this.f31455a.t();
            }
            d0.this.f31455a.setTransitionState(SearchView.TransitionState.HIDDEN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.f31455a.setTransitionState(SearchView.TransitionState.HIDING);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!d0.this.f31455a.x()) {
                d0.this.f31455a.U();
            }
            d0.this.f31455a.setTransitionState(SearchView.TransitionState.SHOWN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.f31457c.setVisibility(0);
            d0.this.f31455a.setTransitionState(SearchView.TransitionState.SHOWING);
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.this.f31457c.setVisibility(8);
            if (!d0.this.f31455a.x()) {
                d0.this.f31455a.t();
            }
            d0.this.f31455a.setTransitionState(SearchView.TransitionState.HIDDEN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.f31455a.setTransitionState(SearchView.TransitionState.HIDING);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f31474b;

        e(boolean z10) {
            this.f31474b = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.this.U(this.f31474b ? 1.0f : 0.0f);
            d0.this.f31457c.a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.U(this.f31474b ? 0.0f : 1.0f);
        }
    }

    d0(SearchView searchView) {
        this.f31455a = searchView;
        this.f31456b = searchView.f31403b;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = searchView.f31404c;
        this.f31457c = clippableRoundedCornerLayout;
        this.f31458d = searchView.f31407f;
        this.f31459e = searchView.f31408g;
        this.f31460f = searchView.f31409h;
        this.f31461g = searchView.f31410i;
        this.f31462h = searchView.f31411j;
        this.f31463i = searchView.f31412k;
        this.f31464j = searchView.f31413l;
        this.f31465k = searchView.f31414m;
        this.f31466l = searchView.f31415n;
        this.f31467m = new com.google.android.material.motion.h(clippableRoundedCornerLayout);
    }

    private Animator A(boolean z10) {
        return K(z10, true, this.f31463i);
    }

    private AnimatorSet B(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (!(this.f31468n != null)) {
            animatorSet.playTogether(s(z10), t(z10));
        }
        animatorSet.playTogether(H(z10), G(z10), u(z10), w(z10), F(z10), z(z10), q(z10), A(z10), I(z10));
        animatorSet.addListener(new e(z10));
        return animatorSet;
    }

    private int C(View view) {
        int marginEnd = MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        return p0.s(this.f31469o) ? this.f31469o.getLeft() - marginEnd : (this.f31469o.getRight() - this.f31455a.getWidth()) + marginEnd;
    }

    private int D(View view) {
        int marginStart = MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        int paddingStart = ViewCompat.getPaddingStart(this.f31469o);
        return p0.s(this.f31469o) ? ((this.f31469o.getWidth() - this.f31469o.getRight()) + marginStart) - paddingStart : (this.f31469o.getLeft() - marginStart) + paddingStart;
    }

    private int E() {
        return ((this.f31469o.getTop() + this.f31469o.getBottom()) / 2) - ((this.f31459e.getTop() + this.f31459e.getBottom()) / 2);
    }

    private Animator F(boolean z10) {
        return K(z10, false, this.f31458d);
    }

    private Animator G(boolean z10) {
        Rect rectM = this.f31467m.m();
        Rect rectL = this.f31467m.l();
        if (rectM == null) {
            rectM = p0.d(this.f31455a);
        }
        if (rectL == null) {
            rectL = p0.c(this.f31457c, this.f31469o);
        }
        final Rect rect = new Rect(rectL);
        final float cornerSize = this.f31469o.getCornerSize();
        final float fMax = Math.max(this.f31457c.getCornerRadius(), this.f31467m.k());
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new com.google.android.material.internal.u(rect), rectL, rectM);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.c0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f31435b.P(cornerSize, fMax, rect, valueAnimator);
            }
        });
        valueAnimatorOfObject.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfObject.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29368b));
        return valueAnimatorOfObject;
    }

    private Animator H(boolean z10) {
        TimeInterpolator timeInterpolator = z10 ? com.google.android.material.animation.b.f29367a : com.google.android.material.animation.b.f29368b;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, timeInterpolator));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(this.f31456b));
        return valueAnimatorOfFloat;
    }

    private Animator I(boolean z10) {
        return K(z10, true, this.f31462h);
    }

    private AnimatorSet J(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(L());
        k(animatorSet);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29368b));
        animatorSet.setDuration(z10 ? C : 300L);
        return animatorSet;
    }

    private Animator K(boolean z10, boolean z11, View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z11 ? D(view) : C(view), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.n(view));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.p(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29368b));
        return animatorSet;
    }

    private Animator L() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f31457c.getHeight(), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.p(this.f31457c));
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void N(DrawerArrowDrawable drawerArrowDrawable, ValueAnimator valueAnimator) {
        drawerArrowDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void O(com.google.android.material.internal.h hVar, ValueAnimator valueAnimator) {
        hVar.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P(float f10, float f11, Rect rect, ValueAnimator valueAnimator) {
        this.f31457c.c(rect, com.google.android.material.animation.b.a(f10, f11, valueAnimator.getAnimatedFraction()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q() {
        AnimatorSet animatorSetB = B(true);
        animatorSetB.addListener(new a());
        animatorSetB.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.f31457c;
        clippableRoundedCornerLayout.setTranslationY(clippableRoundedCornerLayout.getHeight());
        AnimatorSet animatorSetJ = J(true);
        animatorSetJ.addListener(new c());
        animatorSetJ.start();
    }

    private void T(float f10) {
        ActionMenuView actionMenuViewB;
        if (!this.f31455a.B() || (actionMenuViewB = h0.b(this.f31460f)) == null) {
            return;
        }
        actionMenuViewB.setAlpha(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(float f10) {
        this.f31464j.setAlpha(f10);
        this.f31465k.setAlpha(f10);
        this.f31466l.setAlpha(f10);
        T(f10);
    }

    private void V(Drawable drawable) {
        if (drawable instanceof DrawerArrowDrawable) {
            ((DrawerArrowDrawable) drawable).setProgress(1.0f);
        }
        if (drawable instanceof com.google.android.material.internal.h) {
            ((com.google.android.material.internal.h) drawable).a(1.0f);
        }
    }

    private void W(Toolbar toolbar) {
        ActionMenuView actionMenuViewB = h0.b(toolbar);
        if (actionMenuViewB != null) {
            for (int i10 = 0; i10 < actionMenuViewB.getChildCount(); i10++) {
                View childAt = actionMenuViewB.getChildAt(i10);
                childAt.setClickable(false);
                childAt.setFocusable(false);
                childAt.setFocusableInTouchMode(false);
            }
        }
    }

    private void Y() {
        Menu menu = this.f31461g.getMenu();
        if (menu != null) {
            menu.clear();
        }
        if (this.f31469o.getMenuResId() == -1 || !this.f31455a.B()) {
            this.f31461g.setVisibility(8);
            return;
        }
        this.f31461g.inflateMenu(this.f31469o.getMenuResId());
        W(this.f31461g);
        this.f31461g.setVisibility(0);
    }

    private AnimatorSet b0() {
        if (this.f31455a.x()) {
            this.f31455a.t();
        }
        AnimatorSet animatorSetB = B(false);
        animatorSetB.addListener(new b());
        animatorSetB.start();
        return animatorSetB;
    }

    private AnimatorSet c0() {
        if (this.f31455a.x()) {
            this.f31455a.t();
        }
        AnimatorSet animatorSetJ = J(false);
        animatorSetJ.addListener(new d());
        animatorSetJ.start();
        return animatorSetJ;
    }

    private void d0() {
        if (this.f31455a.x()) {
            this.f31455a.U();
        }
        this.f31455a.setTransitionState(SearchView.TransitionState.SHOWING);
        Y();
        this.f31463i.setText(this.f31469o.getText());
        EditText editText = this.f31463i;
        editText.setSelection(editText.getText().length());
        this.f31457c.setVisibility(4);
        this.f31457c.post(new Runnable() { // from class: com.google.android.material.search.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f31522b.Q();
            }
        });
    }

    private void e0() {
        if (this.f31455a.x()) {
            final SearchView searchView = this.f31455a;
            Objects.requireNonNull(searchView);
            searchView.postDelayed(new Runnable() { // from class: com.google.android.material.search.a0
                @Override // java.lang.Runnable
                public final void run() {
                    searchView.U();
                }
            }, 150L);
        }
        this.f31457c.setVisibility(4);
        this.f31457c.post(new Runnable() { // from class: com.google.android.material.search.b0
            @Override // java.lang.Runnable
            public final void run() {
                this.f31433b.R();
            }
        });
    }

    private void j(AnimatorSet animatorSet) {
        ActionMenuView actionMenuViewB = h0.b(this.f31460f);
        if (actionMenuViewB == null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(C(actionMenuViewB), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.n(actionMenuViewB));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.p(actionMenuViewB));
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
    }

    private void k(AnimatorSet animatorSet) {
        ImageButton imageButtonE = h0.e(this.f31460f);
        if (imageButtonE == null) {
            return;
        }
        Drawable drawableUnwrap = DrawableCompat.unwrap(imageButtonE.getDrawable());
        if (!this.f31455a.y()) {
            V(drawableUnwrap);
        } else {
            m(animatorSet, drawableUnwrap);
            n(animatorSet, drawableUnwrap);
        }
    }

    private void l(AnimatorSet animatorSet) {
        ImageButton imageButtonE = h0.e(this.f31460f);
        if (imageButtonE == null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(D(imageButtonE), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.n(imageButtonE));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.p(imageButtonE));
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
    }

    private void m(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof DrawerArrowDrawable) {
            final DrawerArrowDrawable drawerArrowDrawable = (DrawerArrowDrawable) drawable;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.y
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    d0.N(drawerArrowDrawable, valueAnimator);
                }
            });
            animatorSet.playTogether(valueAnimatorOfFloat);
        }
    }

    private void n(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof com.google.android.material.internal.h) {
            final com.google.android.material.internal.h hVar = (com.google.android.material.internal.h) drawable;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.x
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    d0.O(hVar, valueAnimator);
                }
            });
            animatorSet.playTogether(valueAnimatorOfFloat);
        }
    }

    private Animator q(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29368b));
        if (this.f31455a.B()) {
            valueAnimatorOfFloat.addUpdateListener(new com.google.android.material.internal.i(h0.b(this.f31461g), h0.b(this.f31460f)));
        }
        return valueAnimatorOfFloat;
    }

    private AnimatorSet s(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        k(animatorSet);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29368b));
        return animatorSet;
    }

    private AnimatorSet t(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        l(animatorSet);
        j(animatorSet);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29368b));
        return animatorSet;
    }

    private Animator u(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? f31445q : f31451w);
        valueAnimatorOfFloat.setStartDelay(z10 ? 250L : 0L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29367a));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(this.f31464j));
        return valueAnimatorOfFloat;
    }

    private Animator v(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 150L : f31453y);
        valueAnimatorOfFloat.setStartDelay(z10 ? 75L : 0L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29367a));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(this.f31465k, this.f31466l));
        return valueAnimatorOfFloat;
    }

    private Animator w(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(v(z10), y(z10), x(z10));
        return animatorSet;
    }

    private Animator x(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(B, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29368b));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.h(this.f31466l));
        return valueAnimatorOfFloat;
    }

    private Animator y(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat((this.f31466l.getHeight() * 0.050000012f) / 2.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, com.google.android.material.animation.b.f29368b));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.p(this.f31465k));
        return valueAnimatorOfFloat;
    }

    private Animator z(boolean z10) {
        return K(z10, false, this.f31461g);
    }

    @CanIgnoreReturnValue
    AnimatorSet M() {
        return this.f31469o != null ? b0() : c0();
    }

    @Nullable
    public BackEventCompat S() {
        return this.f31467m.c();
    }

    void X(SearchBar searchBar) {
        this.f31469o = searchBar;
    }

    void Z() {
        if (this.f31469o != null) {
            d0();
        } else {
            e0();
        }
    }

    void a0(@NonNull BackEventCompat backEventCompat) {
        this.f31467m.t(backEventCompat, this.f31469o);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @RequiresApi(34)
    public void f0(@NonNull BackEventCompat backEventCompat) {
        if (backEventCompat.getProgress() <= 0.0f) {
            return;
        }
        com.google.android.material.motion.h hVar = this.f31467m;
        SearchBar searchBar = this.f31469o;
        hVar.v(backEventCompat, searchBar, searchBar.getCornerSize());
        AnimatorSet animatorSet = this.f31468n;
        if (animatorSet != null) {
            animatorSet.setCurrentPlayTime((long) (backEventCompat.getProgress() * this.f31468n.getDuration()));
            return;
        }
        if (this.f31455a.x()) {
            this.f31455a.t();
        }
        if (this.f31455a.y()) {
            AnimatorSet animatorSetS = s(false);
            this.f31468n = animatorSetS;
            animatorSetS.start();
            this.f31468n.pause();
        }
    }

    @RequiresApi(34)
    public void o() {
        this.f31467m.g(this.f31469o);
        AnimatorSet animatorSet = this.f31468n;
        if (animatorSet != null) {
            animatorSet.reverse();
        }
        this.f31468n = null;
    }

    @RequiresApi(34)
    public void p() {
        this.f31467m.j(M().getTotalDuration(), this.f31469o);
        if (this.f31468n != null) {
            t(false).start();
            this.f31468n.resume();
        }
        this.f31468n = null;
    }

    com.google.android.material.motion.h r() {
        return this.f31467m;
    }
}

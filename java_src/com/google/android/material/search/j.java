package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.ViewCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.h0;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
class j {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f31480j = 250;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f31481k = 500;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f31482l = 750;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f31483m = 250;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f31484n = 250;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f31485o = 300;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final long f31486p = 75;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final long f31487q = 250;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f31488r = 100;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Animator f31492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private Animator f31493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f31494f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f31495g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<SearchBar.b> f31489a = new LinkedHashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<AnimatorListenerAdapter> f31490b = new LinkedHashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<AnimatorListenerAdapter> f31491c = new LinkedHashSet();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f31496h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Animator f31497i = null;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.k(new g() { // from class: com.google.android.material.search.i
                @Override // com.google.android.material.search.j.g
                public final void a(SearchBar.b bVar) {
                    bVar.a();
                }
            });
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f31499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Animator f31500c;

        b(View view, Animator animator) {
            this.f31499b = view;
            this.f31500c = animator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f31499b.setVisibility(8);
            this.f31500c.start();
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.f31497i = null;
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchBar f31503b;

        d(SearchBar searchBar) {
            this.f31503b = searchBar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.f31494f = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f31503b.setVisibility(4);
        }
    }

    class e extends AnimatorListenerAdapter {
        e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.f31497i = null;
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchBar f31506b;

        f(SearchBar searchBar) {
            this.f31506b = searchBar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f31506b.setVisibility(0);
            j.this.f31495g = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f31506b.K();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface g {
        void a(SearchBar.b bVar);
    }

    j() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void A(MaterialShapeDrawable materialShapeDrawable, View view, ValueAnimator valueAnimator) {
        materialShapeDrawable.q0(1.0f - valueAnimator.getAnimatedFraction());
        ViewCompat.setBackground(view, materialShapeDrawable);
        view.setAlpha(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(SearchBar searchBar, View view, AppBarLayout appBarLayout, boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(t(searchBar, view), o(searchBar, view, appBarLayout));
        animatorSet.addListener(new c());
        Iterator<AnimatorListenerAdapter> it2 = this.f31490b.iterator();
        while (it2.hasNext()) {
            animatorSet.addListener(it2.next());
        }
        if (z10) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.f31497i = animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(g gVar) {
        Iterator<SearchBar.b> it2 = this.f31489a.iterator();
        while (it2.hasNext()) {
            gVar.a(it2.next());
        }
    }

    private Animator l(SearchBar searchBar, View view, AppBarLayout appBarLayout) {
        return p(searchBar, view, appBarLayout).p(250L).e(new f(searchBar)).h();
    }

    private Animator m(@Nullable View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(view));
        TimeInterpolator timeInterpolator = com.google.android.material.animation.b.f29367a;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(this.f31496h ? 250L : 0L);
        valueAnimatorOfFloat.setStartDelay(this.f31496h ? f31481k : 0L);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.f(view));
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(250L);
        valueAnimatorOfFloat2.setStartDelay(f31482l);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        return animatorSet;
    }

    private List<View> n(View view) {
        boolean zS = p0.s(view);
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if ((!zS && (childAt instanceof ActionMenuView)) || (zS && !(childAt instanceof ActionMenuView))) {
                    arrayList.add(childAt);
                }
            }
        }
        return arrayList;
    }

    private Animator o(SearchBar searchBar, View view, @Nullable AppBarLayout appBarLayout) {
        return p(searchBar, view, appBarLayout).p(f31485o).e(new d(searchBar)).j();
    }

    private com.google.android.material.internal.g p(SearchBar searchBar, View view, @Nullable AppBarLayout appBarLayout) {
        return new com.google.android.material.internal.g(searchBar, view).n(q(searchBar, view)).o(appBarLayout != null ? appBarLayout.getTop() : 0).c(n(view));
    }

    private ValueAnimator.AnimatorUpdateListener q(SearchBar searchBar, final View view) {
        final MaterialShapeDrawable materialShapeDrawableM = MaterialShapeDrawable.m(view.getContext());
        materialShapeDrawableM.l0(searchBar.getCornerSize());
        materialShapeDrawableM.o0(ViewCompat.getElevation(searchBar));
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                j.A(materialShapeDrawableM, view, valueAnimator);
            }
        };
    }

    private List<View> r(SearchBar searchBar) {
        List<View> listK = p0.k(searchBar);
        if (searchBar.getCenterView() != null) {
            listK.remove(searchBar.getCenterView());
        }
        return listK;
    }

    private Animator s(SearchBar searchBar) {
        List<View> listR = r(searchBar);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.e(listR));
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.animation.b.f29367a);
        return valueAnimatorOfFloat;
    }

    private Animator t(SearchBar searchBar, final View view) {
        List<View> listR = r(searchBar);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.e(listR));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setAlpha(0.0f);
            }
        });
        valueAnimatorOfFloat.setDuration(75L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.animation.b.f29367a);
        return valueAnimatorOfFloat;
    }

    private Animator u(@Nullable View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(view));
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.animation.b.f29367a);
        valueAnimatorOfFloat.setDuration(250L);
        return valueAnimatorOfFloat;
    }

    private Animator v(TextView textView, @Nullable View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setStartDelay(250L);
        animatorSet.play(w(textView));
        if (view != null) {
            animatorSet.play(u(view));
        }
        return animatorSet;
    }

    private Animator w(TextView textView) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(textView));
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.animation.b.f29367a);
        valueAnimatorOfFloat.setDuration(250L);
        return valueAnimatorOfFloat;
    }

    boolean D(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f31491c.remove(animatorListenerAdapter);
    }

    boolean E(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f31490b.remove(animatorListenerAdapter);
    }

    boolean F(SearchBar.b bVar) {
        return this.f31489a.remove(bVar);
    }

    void G(boolean z10) {
        this.f31496h = z10;
    }

    void H(SearchBar searchBar, View view, @Nullable AppBarLayout appBarLayout, boolean z10) {
        Animator animator;
        if (y() && (animator = this.f31497i) != null) {
            animator.cancel();
        }
        this.f31495g = true;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(l(searchBar, view, appBarLayout), s(searchBar));
        animatorSet.addListener(new e());
        Iterator<AnimatorListenerAdapter> it2 = this.f31491c.iterator();
        while (it2.hasNext()) {
            animatorSet.addListener(it2.next());
        }
        if (z10) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.f31497i = animatorSet;
    }

    void I(final SearchBar searchBar, final View view, @Nullable final AppBarLayout appBarLayout, final boolean z10) {
        Animator animator;
        if (x() && (animator = this.f31497i) != null) {
            animator.cancel();
        }
        this.f31494f = true;
        view.setVisibility(4);
        view.post(new Runnable() { // from class: com.google.android.material.search.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f31439b.C(searchBar, view, appBarLayout, z10);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    void J(SearchBar searchBar) {
        k(new g() { // from class: com.google.android.material.search.g
            @Override // com.google.android.material.search.j.g
            public final void a(SearchBar.b bVar) {
                bVar.b();
            }
        });
        TextView textView = searchBar.getTextView();
        View centerView = searchBar.getCenterView();
        View viewF = h0.f(searchBar);
        final Animator animatorV = v(textView, viewF);
        animatorV.addListener(new a());
        this.f31492d = animatorV;
        textView.setAlpha(0.0f);
        if (viewF != null) {
            viewF.setAlpha(0.0f);
        }
        if (centerView instanceof com.google.android.material.animation.a) {
            ((com.google.android.material.animation.a) centerView).b(new com.google.android.material.animation.a.InterfaceC0592a() { // from class: com.google.android.material.search.h
                @Override // com.google.android.material.animation.a.InterfaceC0592a
                public final void a() {
                    animatorV.start();
                }
            });
            return;
        }
        if (centerView == 0) {
            animatorV.start();
            return;
        }
        centerView.setAlpha(0.0f);
        centerView.setVisibility(0);
        Animator animatorM = m(centerView);
        this.f31493e = animatorM;
        animatorM.addListener(new b(centerView, animatorV));
        animatorM.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void K(SearchBar searchBar) {
        Animator animator = this.f31492d;
        if (animator != null) {
            animator.end();
        }
        Animator animator2 = this.f31493e;
        if (animator2 != null) {
            animator2.end();
        }
        View centerView = searchBar.getCenterView();
        if (centerView instanceof com.google.android.material.animation.a) {
            ((com.google.android.material.animation.a) centerView).a();
        }
        if (centerView != 0) {
            centerView.setAlpha(0.0f);
        }
    }

    void h(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f31491c.add(animatorListenerAdapter);
    }

    void i(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f31490b.add(animatorListenerAdapter);
    }

    void j(SearchBar.b bVar) {
        this.f31489a.add(bVar);
    }

    boolean x() {
        return this.f31495g;
    }

    boolean y() {
        return this.f31494f;
    }

    boolean z() {
        return this.f31496h;
    }
}

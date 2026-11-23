package com.join.android.app.component.xrecyclerview;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* JADX INFO: loaded from: classes5.dex */
public class QuickReturnFooterBehavior extends CoordinatorLayout.Behavior<View> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Interpolator f35249f = new FastOutSlowInInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f35250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f35251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f35252d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f35253e;

    class a implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f35254b;

        a(final View val$view) {
            this.f35254b = val$view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            QuickReturnFooterBehavior.this.f35252d = false;
            if (QuickReturnFooterBehavior.this.f35251c) {
                return;
            }
            QuickReturnFooterBehavior.this.p(this.f35254b);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QuickReturnFooterBehavior.this.f35252d = false;
            this.f35254b.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    class b implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f35256b;

        b(final View val$view) {
            this.f35256b = val$view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            QuickReturnFooterBehavior.this.f35251c = false;
            if (QuickReturnFooterBehavior.this.f35252d) {
                return;
            }
            QuickReturnFooterBehavior.this.n(this.f35256b);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QuickReturnFooterBehavior.this.f35251c = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f35256b.setVisibility(0);
        }
    }

    public QuickReturnFooterBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f35253e = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(final View view) {
        this.f35252d = true;
        ViewPropertyAnimator duration = view.animate().translationY(view.getHeight()).setInterpolator(f35249f).setDuration(200L);
        duration.setListener(new a(view));
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(final View view) {
        this.f35251c = true;
        ViewPropertyAnimator duration = view.animate().translationY(0.0f).setInterpolator(f35249f).setDuration(200L);
        duration.setListener(new b(view));
        duration.start();
    }

    public void o(View view, boolean visible) {
        boolean z10 = this.f35253e;
        if (z10 == visible) {
            if (z10) {
                if (view.getVisibility() == 0) {
                    return;
                }
            } else if (view.getVisibility() == 8) {
                return;
            }
        }
        this.f35253e = visible;
        view.animate().cancel();
        if (this.f35253e) {
            if (this.f35251c) {
                return;
            }
            p(view);
        } else {
            if (this.f35252d) {
                return;
            }
            n(view);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View child, View target, int dx, int dy, int[] consumed) {
        if (this.f35253e) {
            if ((dy > 0 && this.f35250b < 0) || (dy < 0 && this.f35250b > 0)) {
                child.animate().cancel();
                this.f35250b = 0;
            }
            int i10 = this.f35250b + dy;
            this.f35250b = i10;
            if (i10 > child.getHeight() && child.getVisibility() == 0 && !this.f35252d) {
                n(child);
            } else {
                if (this.f35250b >= 0 || child.getVisibility() != 8 || this.f35251c) {
                    return;
                }
                p(child);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View child, View directTargetChild, View target, int nestedScrollAxes) {
        return this.f35253e && (nestedScrollAxes & 2) != 0;
    }
}

package com.join.mgps.Util;

import android.animation.Animator;
import android.app.Activity;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import androidx.annotation.IdRes;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* JADX INFO: loaded from: classes4.dex */
public class n3 {

    public static class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Interpolator f49812e = new FastOutSlowInInterpolator();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f49813a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f49814b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f49815c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f49816d;

        /* JADX INFO: renamed from: com.join.mgps.Util.n3$a$a, reason: collision with other inner class name */
        class C0664a implements Animator.AnimatorListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f49817b;

            C0664a(final View val$view) {
                this.f49817b = val$view;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                a.this.f49814b = false;
                if (a.this.f49813a) {
                    return;
                }
                a.this.m(this.f49817b);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.f49814b = false;
                this.f49817b.setVisibility(8);
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
            final /* synthetic */ View f49819b;

            b(final View val$view) {
                this.f49819b = val$view;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                a.this.f49813a = false;
                if (a.this.f49814b) {
                    return;
                }
                a.this.j(this.f49819b);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.f49813a = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                this.f49819b.setVisibility(0);
            }
        }

        public a(View view) {
            this.f49816d = view;
            k(view, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(final View view) {
            int i10 = i();
            this.f49814b = true;
            ViewPropertyAnimator duration = view.animate().translationY(i10).setInterpolator(f49812e).setDuration(200L);
            duration.setListener(new C0664a(view));
            duration.start();
        }

        private void k(View view, boolean visible) {
            if (view == null) {
                return;
            }
            boolean z10 = this.f49815c;
            if (z10 == visible) {
                if (z10) {
                    if (view.getVisibility() == 0) {
                        return;
                    }
                } else if (view.getVisibility() == 8) {
                    return;
                }
            }
            this.f49815c = visible;
            view.animate().cancel();
            if (this.f49815c) {
                if (this.f49813a) {
                    return;
                }
                m(view);
            } else {
                if (this.f49814b) {
                    return;
                }
                j(view);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(final View view) {
            this.f49813a = true;
            ViewPropertyAnimator duration = view.animate().translationY(0.0f).setInterpolator(f49812e).setDuration(200L);
            duration.setListener(new b(view));
            duration.start();
        }

        public void g() {
            View view = this.f49816d;
            if (view != null) {
                view.animate().cancel();
            }
        }

        public int h() {
            View view = this.f49816d;
            if (view == null) {
                return 0;
            }
            return view.getHeight();
        }

        public int i() {
            int height = this.f49816d.getHeight();
            if (this.f49816d.getParent() == null || !(this.f49816d.getParent() instanceof View)) {
                return height;
            }
            View view = (View) this.f49816d.getParent();
            return view.getBottom() != this.f49816d.getBottom() ? view.getBottom() - this.f49816d.getTop() : height;
        }

        public void l(boolean visible) {
            k(this.f49816d, visible);
        }
    }

    private n3() {
    }

    public static <V extends View> V a(Activity activity, @IdRes int i10) {
        return (V) activity.findViewById(i10);
    }

    public static <V extends View> V b(View view, @IdRes int i10) {
        return (V) view.findViewById(i10);
    }

    public static void c(View view, ViewTreeObserver.OnGlobalLayoutListener listener) {
        view.getViewTreeObserver();
    }
}

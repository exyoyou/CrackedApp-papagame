package com.byazt.tp;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ouz.NativeExpressView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 436, 20})
public class c extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.ouz.c f20339a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f20340c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f20341da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f20342i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.dj.tt f20343n;
    public com.byazt.ft.ve sp;
    public NativeExpressView tt;
    public ic uj;
    public NativeExpressView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f20344x;

    public c(Context context, ic icVar, com.byazt.dj.tt ttVar) {
        super(context);
        this.f20341da = com.byazt.dyf.tt.AD_TAG_BANNER;
        this.f20340c = context;
        this.uj = icVar;
        this.f20343n = ttVar;
        c();
    }

    private ObjectAnimator tt(NativeExpressView nativeExpressView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(nativeExpressView, "translationX", getWidth(), 0.0f);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.byazt.tp.c.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                c.this.f20342i = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        return objectAnimatorOfFloat;
    }

    public void a() {
        if (this.f20342i || this.ve == null || this.tt == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(c(this.tt)).with(tt(this.ve));
        animatorSet.setDuration(this.f20344x).start();
        pf.c((View) this.ve, 0);
        this.f20342i = true;
        NativeExpressView nativeExpressView = this.tt;
        this.tt = this.ve;
        this.ve = nativeExpressView;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.ve.t();
            this.ve = null;
        }
    }

    public void c() {
        NativeExpressView nativeExpressView = new NativeExpressView(this.f20340c, this.uj, this.f20343n, this.f20341da);
        this.tt = nativeExpressView;
        addView(nativeExpressView, new ViewGroup.LayoutParams(-1, -1));
    }

    public NativeExpressView getCurView() {
        return this.tt;
    }

    public NativeExpressView getNextView() {
        return this.ve;
    }

    public void n() {
        NativeExpressView nativeExpressView = this.tt;
        if (nativeExpressView != null) {
            nativeExpressView.m();
        }
    }

    public void setDuration(int i10) {
        this.f20344x = i10;
    }

    public void setExpressInteractionListener(com.byazt.ouz.c cVar) {
        this.f20339a = cVar;
        NativeExpressView nativeExpressView = this.tt;
        if (nativeExpressView != null) {
            nativeExpressView.setExpressInteractionListener(new com.byazt.ouz.c() { // from class: com.byazt.tp.c.2
                @Override // com.byazt.ouz.c
                public void c(View view, int i10) {
                    c cVar2 = c.this;
                    com.byazt.ouz.c cVar3 = cVar2.f20339a;
                    if (cVar3 != null) {
                        cVar3.c(cVar2, i10);
                    }
                }

                @Override // com.byazt.ouz.c
                public void c(View view, String str, int i10) {
                    c cVar2 = c.this;
                    com.byazt.ouz.c cVar3 = cVar2.f20339a;
                    if (cVar3 != null) {
                        cVar3.c(cVar2, str, i10);
                    }
                }

                @Override // com.byazt.ouz.c
                public void c(View view, float f10, float f11) {
                    if (!(view instanceof NativeExpressView) || !((NativeExpressView) view).rl()) {
                        c.this.c(f10, f11);
                    }
                    c cVar2 = c.this;
                    com.byazt.ouz.c cVar3 = cVar2.f20339a;
                    if (cVar3 != null) {
                        cVar3.c(cVar2, f10, f11);
                    }
                }
            });
        }
    }

    public void setVideoAdListener(com.byazt.ft.ve veVar) {
        this.sp = veVar;
    }

    public void uj() {
        NativeExpressView nativeExpressView = this.tt;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.tt.t();
            this.tt = null;
        }
        NativeExpressView nativeExpressView2 = this.ve;
        if (nativeExpressView2 != null) {
            removeView(nativeExpressView2);
            this.ve.t();
            this.ve = null;
        }
    }

    public void ve() {
        NativeExpressView nativeExpressView = this.ve;
        if (nativeExpressView != null) {
            nativeExpressView.m();
        }
    }

    public void c(ic icVar, com.byazt.dj.tt ttVar) {
        NativeExpressView nativeExpressView = new NativeExpressView(this.f20340c, icVar, ttVar, this.f20341da);
        this.ve = nativeExpressView;
        nativeExpressView.setExpressInteractionListener(new com.byazt.ouz.c() { // from class: com.byazt.tp.c.1
            @Override // com.byazt.ouz.c
            public void c(View view, int i10) {
                c cVar = c.this;
                com.byazt.ouz.c cVar2 = cVar.f20339a;
                if (cVar2 != null) {
                    cVar2.c(cVar, i10);
                }
            }

            @Override // com.byazt.ouz.c
            public void c(View view, float f10, float f11) {
                c.this.c(f10, f11);
                c.this.a();
            }
        });
        pf.c((View) this.ve, 8);
        addView(this.ve, new ViewGroup.LayoutParams(-1, -1));
    }

    public boolean tt() {
        return this.ve != null;
    }

    public void c(float f10, float f11) {
        int iVe = pf.ve(this.f20340c, f10);
        int iVe2 = pf.ve(this.f20340c, f11);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(iVe, iVe2);
        }
        layoutParams.width = iVe;
        layoutParams.height = iVe2;
        setLayoutParams(layoutParams);
    }

    private ObjectAnimator c(NativeExpressView nativeExpressView) {
        return ObjectAnimator.ofFloat(nativeExpressView, "translationX", 0.0f, -getWidth());
    }
}

package com.byazt.rn;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.UiThread;
import com.byazt.eu.tt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 433, 434})
public class RefreshableBannerView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f19475a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f19476c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ViewTreeObserver.OnScrollChangedListener f19477n;
    public boolean tt;
    public final Rect uj;
    public boolean ve;

    public interface c {
        void c(boolean z10);
    }

    public RefreshableBannerView(Context context) {
        super(context);
        this.f19476c = true;
        this.tt = true;
        this.ve = true;
        this.uj = new Rect();
        this.f19477n = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.rn.RefreshableBannerView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                RefreshableBannerView refreshableBannerView = RefreshableBannerView.this;
                refreshableBannerView.tt = refreshableBannerView.getGlobalVisibleRect(refreshableBannerView.uj);
                RefreshableBannerView refreshableBannerView2 = RefreshableBannerView.this;
                refreshableBannerView2.c(refreshableBannerView2.tt);
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f19477n);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this.f19477n);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        boolean z10 = i10 == 0;
        this.f19476c = z10;
        c(z10);
    }

    public void setVisibilityChangeListener(c cVar) {
        this.f19475a = cVar;
    }

    @UiThread
    public void c(View view) {
        view.setTranslationX(getWidth());
        addView(view);
        ObjectAnimator.ofFloat(view, "translationX", 0.0f).setDuration(250L).start();
        if (getChildCount() > 1) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(getChildAt(0), "translationX", -getWidth()).setDuration(250L);
            duration.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.rn.RefreshableBannerView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (RefreshableBannerView.this.getChildCount() > 1) {
                        RefreshableBannerView.this.removeViewAt(0);
                        tt.c("TMe", "--==-- after remove, view count: " + RefreshableBannerView.this.getChildCount());
                    }
                }
            });
            duration.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z10) {
        boolean z11 = this.f19476c && this.tt;
        if (z10) {
            if (!z11 || this.ve) {
                return;
            }
            this.ve = true;
            c cVar = this.f19475a;
            if (cVar != null) {
                cVar.c(true);
                return;
            }
            return;
        }
        if (z11 || !this.ve) {
            return;
        }
        this.ve = false;
        c cVar2 = this.f19475a;
        if (cVar2 != null) {
            cVar2.c(false);
        }
    }
}

package com.byazt.nk;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.oq.ClickSlideUpShakeView;
import com.byazt.oq.ShakeAnimationView;
import com.byazt.oq.ShakeClickView;
import com.byazt.oq.SlideUpView;
import com.byazt.tm.DynamicBaseWidget;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 234, 34})
public class a extends nu<ClickSlideUpShakeView> implements z {
    public a(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar, com.byazt.aq.da daVar, boolean z10, int i10) {
        super(context, dynamicBaseWidget, spVar);
        this.tt = context;
        this.uj = spVar;
        this.ve = dynamicBaseWidget;
        c(daVar, spVar, z10, i10);
    }

    private void c(com.byazt.aq.da daVar, com.byazt.aq.sp spVar, boolean z10, int i10) {
        int iLr;
        this.f17400c = new ClickSlideUpShakeView(this.tt, daVar, z10, i10);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.byazt.or.x.c(this.tt, 300.0f));
        layoutParams.gravity = 81;
        Context context = this.tt;
        if (spVar.lr() > 0) {
            iLr = spVar.lr();
        } else {
            iLr = com.byazt.sr.uj.c() ? 0 : 120;
        }
        layoutParams.bottomMargin = (int) com.byazt.or.x.c(context, iLr);
        this.f17400c.setLayoutParams(layoutParams);
        this.f17400c.setClipChildren(false);
        this.f17400c.setSlideText(this.uj.lt());
        SlideUpView slideUpView = this.f17400c;
        if (slideUpView instanceof ClickSlideUpShakeView) {
            ((ClickSlideUpShakeView) slideUpView).setShakeText(this.uj.tk());
            final ShakeClickView shakeView = ((ClickSlideUpShakeView) this.f17400c).getShakeView();
            if (shakeView != null) {
                shakeView.setOnShakeViewListener(new ShakeAnimationView.c() { // from class: com.byazt.nk.a.1
                    @Override // com.byazt.oq.ShakeAnimationView.c
                    public void c(boolean z11) {
                        if (a.this.ve.getDynamicClickListener() != null) {
                            a.this.ve.getDynamicClickListener().c(z11, a.this);
                        }
                        shakeView.performClick();
                    }
                });
                shakeView.setOnClickListener((View.OnClickListener) this.ve.getDynamicClickListener());
            }
        }
    }

    @Override // com.byazt.nk.z
    public void n() {
        if (this.f17400c.getParent() != null) {
            ((ViewGroup) this.f17400c.getParent()).setVisibility(8);
        }
    }

    @Override // com.byazt.nk.nu
    public void uj() {
    }
}

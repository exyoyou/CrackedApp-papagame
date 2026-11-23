package com.byazt.tm;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.aq.x;
import com.byazt.oq.TTRatingBar2;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2242})
public class DynamicStarView extends DynamicBaseWidgetImp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f20316c;

    public DynamicStarView(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        this.f20316c = 0;
        TTRatingBar2 tTRatingBar2 = new TTRatingBar2(context, null);
        this.f20276z = tTRatingBar2;
        tTRatingBar2.setTag(Integer.valueOf(getClickArea()));
        addView(this.f20276z, getWidgetLayoutParams());
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        int iC = (int) ((com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.n()) * 5.0f) + com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.ve() + com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.uj())));
        if (this.sp > iC && 4 == this.f20273t.x()) {
            this.f20316c = (this.sp - iC) / 2;
        }
        this.sp = iC;
        return new FrameLayout.LayoutParams(this.sp, this.f20275x);
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public void n() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.sp, this.f20275x);
        layoutParams.topMargin = this.f20269da;
        int i10 = this.f20270i + this.f20316c;
        layoutParams.leftMargin = i10;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        DynamicRootView dynamicRootView;
        super.x();
        double dU = this.f20273t.u();
        if (com.byazt.sr.uj.c() && (dU < 0.0d || dU > 5.0d || ((dynamicRootView = this.yp) != null && dynamicRootView.getRenderRequest() != null && this.yp.getRenderRequest().t() != 4))) {
            this.f20276z.setVisibility(8);
            return true;
        }
        double d10 = (dU < 0.0d || dU > 5.0d) ? 5.0d : dU;
        this.f20276z.setVisibility(0);
        ((TTRatingBar2) this.f20276z).c(d10, this.f20273t.sp(), (int) this.f20273t.n(), ((int) com.byazt.or.x.c(this.sl, this.f20273t.tt())) + ((int) com.byazt.or.x.c(this.sl, this.f20273t.c())) + ((int) com.byazt.or.x.c(this.sl, this.f20273t.n())));
        return true;
    }
}

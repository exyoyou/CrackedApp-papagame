package com.byazt.tm;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.aq.x;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2526})
public class DynamicSkipCountDownContainer extends DynamicBaseWidgetImp implements com.byazt.kn.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f20315c;
    public int gt;
    public int tt;

    public DynamicSkipCountDownContainer(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        setTag(Integer.valueOf(getClickArea()));
        dynamicRootView.setTimeOutListener(this);
        i();
    }

    private void i() {
        List<x> listSl = this.f20274u.sl();
        if (listSl == null || listSl.size() <= 0) {
            return;
        }
        for (x xVar : listSl) {
            if (xVar.da().c() == 21) {
                this.f20315c = (int) (this.sp - com.byazt.or.x.c(this.sl, xVar.x()));
            }
            if (xVar.da().c() == 20) {
                this.tt = (int) (this.sp - com.byazt.or.x.c(this.sl, xVar.x()));
            }
        }
    }

    @Override // com.byazt.kn.ve
    public void c(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        this.gt = i10;
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public void n() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i10 = this.f20270i;
        layoutParams.leftMargin = i10;
        layoutParams.topMargin = this.f20269da;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.gt == 0) {
            setMeasuredDimension(this.tt, this.f20275x);
        } else {
            setMeasuredDimension(this.f20315c, this.f20275x);
        }
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        setBackground(getBackgroundDrawable());
        setPadding((int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.ve()), (int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.tt()), (int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.uj()), (int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.c()));
        return true;
    }
}

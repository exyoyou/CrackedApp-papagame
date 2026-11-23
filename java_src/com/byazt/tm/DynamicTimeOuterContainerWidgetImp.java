package com.byazt.tm;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.aq.x;
import com.byazt.or.sp;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 1369})
public class DynamicTimeOuterContainerWidgetImp extends DynamicBaseWidgetImp implements com.byazt.kn.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f20319c;
    public int gt;
    public boolean qy;
    public int rl;
    public boolean tt;

    public DynamicTimeOuterContainerWidgetImp(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        this.rl = 0;
        setTag(Integer.valueOf(getClickArea()));
        i();
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().p()) {
            return;
        }
        View view = this.f20276z;
        if (view != null) {
            view.setVisibility(8);
        }
        setVisibility(8);
    }

    private void i() {
        List<x> listSl = this.f20274u.sl();
        if (listSl == null || listSl.size() <= 0) {
            return;
        }
        for (x xVar : listSl) {
            if (TextUtils.equals("skip-with-time-skip-btn", xVar.da().getType())) {
                int iC = (int) com.byazt.or.x.c(this.sl, xVar.x() + (com.byazt.sr.uj.c() ? xVar.u() : 0));
                this.gt = iC;
                this.f20319c = this.sp - iC;
                break;
            }
        }
        this.rl = this.sp - this.f20319c;
    }

    @Override // com.byazt.kn.ve
    public void c(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        if (z11 && this.qy != z11) {
            this.qy = z11;
            n();
            return;
        }
        if (z10 && this.tt != z10) {
            this.tt = z10;
            n();
        }
        this.tt = z10;
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public void n() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (this.tt) {
            layoutParams.leftMargin = this.f20270i;
        } else {
            layoutParams.leftMargin = this.f20270i + this.rl;
        }
        if (this.qy && this.f20273t != null) {
            layoutParams.leftMargin = ((this.f20270i + this.rl) - ((int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.ve()))) - ((int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.uj()));
        }
        if (com.byazt.sr.uj.c()) {
            layoutParams.topMargin = this.f20269da - ((int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.tt()));
        } else {
            layoutParams.topMargin = this.f20269da;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.qy && this.f20273t != null) {
            setMeasuredDimension(this.gt + ((int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.ve())) + ((int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.uj())), this.f20275x);
        } else if (this.tt) {
            setMeasuredDimension(this.sp, this.f20275x);
        } else {
            setMeasuredDimension(this.f20319c, this.f20275x);
        }
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        if (sp.tt(this.yp.getRenderRequest().a())) {
            return true;
        }
        super.x();
        setPadding((int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.ve()), (int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.tt()), (int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.uj()), (int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.c()));
        return true;
    }
}

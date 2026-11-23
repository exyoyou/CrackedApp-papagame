package com.byazt.tm;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.aq.x;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2520})
public class DynamicSkipCountDownBtn extends DynamicButton implements com.byazt.kn.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f20314c;
    public int gt;
    public int tt;

    public DynamicSkipCountDownBtn(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        dynamicRootView.setTimeOutListener(this);
    }

    private void i() {
        int iC = (int) com.byazt.or.x.c(this.sl, this.f20273t.n());
        this.tt = ((this.f20275x - iC) / 2) - this.f20273t.c();
        this.gt = 0;
    }

    @Override // com.byazt.kn.ve
    @SuppressLint({"SetTextI18n"})
    public void c(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        if (i10 == 0) {
            this.f20276z.setVisibility(0);
            ((TextView) this.f20276z).setText("| 跳过");
            this.f20276z.measure(-2, -2);
            this.f20314c = new int[]{this.f20276z.getMeasuredWidth() + 1, this.f20276z.getMeasuredHeight()};
            View view = this.f20276z;
            int[] iArr = this.f20314c;
            view.setLayoutParams(new FrameLayout.LayoutParams(iArr[0], iArr[1]));
            ((TextView) this.f20276z).setGravity(17);
            ((TextView) this.f20276z).setIncludeFontPadding(false);
            i();
            this.f20276z.setPadding(this.f20273t.ve(), this.tt, this.f20273t.uj(), this.gt);
        }
        requestLayout();
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public void n() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.sp, this.f20275x);
        layoutParams.gravity = 8388629;
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (TextUtils.isEmpty(((TextView) this.f20276z).getText())) {
            setMeasuredDimension(0, this.f20275x);
        } else {
            setMeasuredDimension(this.sp, this.f20275x);
        }
    }

    @Override // com.byazt.tm.DynamicButton, com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        ((TextView) this.f20276z).setText("");
        return true;
    }
}

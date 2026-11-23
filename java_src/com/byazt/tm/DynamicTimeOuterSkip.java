package com.byazt.tm;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.aq.x;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2405})
public class DynamicTimeOuterSkip extends DynamicButton implements com.byazt.kn.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20322c;

    public DynamicTimeOuterSkip(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() != null) {
            this.f20322c = dynamicRootView.getRenderRequest().z();
        }
    }

    private String c(boolean z10) {
        String str = "跳过";
        if (!"skip-with-time-skip-btn".equals(this.f20274u.da().getType())) {
            return "跳过";
        }
        if (com.byazt.sr.uj.c() && this.f20322c) {
            str = "X";
        }
        return z10 ? str : "| ".concat(str);
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public void n() {
        if (TextUtils.equals("skip-with-time-skip-btn", this.f20274u.da().getType())) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.sp, this.f20275x);
            layoutParams.gravity = 8388629;
            setLayoutParams(layoutParams);
            this.f20276z.setTextAlignment(1);
            ((TextView) this.f20276z).setGravity(17);
        } else {
            super.n();
        }
        if (!"skip-with-time-skip-btn".equals(this.f20274u.da().getType())) {
            this.f20276z.setTextAlignment(1);
            ((TextView) this.f20276z).setGravity(17);
        }
        setVisibility(8);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (TextUtils.isEmpty(((TextView) this.f20276z).getText())) {
            setMeasuredDimension(0, this.f20275x);
        }
    }

    @Override // com.byazt.tm.DynamicButton, com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        if (!TextUtils.equals(this.f20274u.da().getType(), "skip-with-time-skip-btn")) {
            return true;
        }
        ((TextView) this.f20276z).setText("");
        return true;
    }

    @Override // com.byazt.kn.ve
    public void c(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        int i11 = 0;
        if (z10) {
            ((TextView) this.f20276z).setText(c(z11));
        } else {
            if (z11) {
                ((TextView) this.f20276z).setText(c(z11));
            }
            if (!z11) {
                i11 = 8;
            }
        }
        setVisibility(i11);
    }
}

package com.byazt.tm;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.aq.x;
import com.byazt.du.sl;
import com.byazt.or.sp;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2426})
public class DynamicTimeOuter extends DynamicButton implements com.byazt.kn.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20318c;
    public boolean gt;
    public boolean tt;

    public DynamicTimeOuter(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        dynamicRootView.setTimeOutListener(this);
        if ("timedown".equals(xVar.da().getType())) {
            dynamicRootView.setTimedown(this.f20275x);
        }
    }

    @Override // com.byazt.kn.ve
    public void c(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        if (z11 || this.gt) {
            ((TextView) this.f20276z).setText("");
            setVisibility(8);
            return;
        }
        try {
            if (Integer.parseInt((String) charSequence) <= 0) {
                setVisibility(8);
                return;
            }
        } catch (Exception unused) {
        }
        setVisibility(0);
        if (!z10 && this.yp.getRenderRequest().ve() && sp.tt(this.yp.getRenderRequest().a())) {
            ((TextView) this.f20276z).setText(i10 + "s");
            this.f20318c = true;
            return;
        }
        if (com.byazt.sr.uj.c() && !"open_ad".equals(this.yp.getRenderRequest().a()) && this.yp.getRenderRequest().ve()) {
            this.gt = true;
            setVisibility(8);
            return;
        }
        if ("timedown".equals(this.f20274u.da().getType())) {
            ((TextView) this.f20276z).setText(charSequence);
            return;
        }
        ((TextView) this.f20276z).setText(((Object) charSequence) + "s");
        this.tt = true;
        if (this.f20318c) {
            CharSequence text = ((TextView) this.f20276z).getText();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (sl.tt(text != null ? text.toString() : "", this.f20273t.n(), true)[0] + com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.ve() + this.f20273t.uj())), this.f20275x);
            layoutParams.gravity = 8388629;
            this.f20276z.setLayoutParams(layoutParams);
            this.f20318c = false;
            requestLayout();
        }
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public void n() {
        if (!TextUtils.equals("skip-with-countdowns-video-countdown", this.f20274u.da().getType()) && !TextUtils.equals("skip-with-time-countdown", this.f20274u.da().getType())) {
            super.n();
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.sp, this.f20275x);
        layoutParams.gravity = 8388627;
        if (com.byazt.sr.uj.c()) {
            layoutParams.leftMargin = this.f20270i;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
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
        if (sp.tt(this.yp.getRenderRequest().a())) {
            setVisibility(8);
        }
        if ("timedown".equals(this.f20274u.da().getType())) {
            ((TextView) this.f20276z).setText(String.valueOf((int) Double.parseDouble(this.f20273t.da())));
            return true;
        }
        ((TextView) this.f20276z).setText(((int) Double.parseDouble(this.f20273t.da())) + "s");
        return true;
    }
}

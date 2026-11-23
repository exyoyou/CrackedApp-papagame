package com.byazt.tm;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.aq.x;
import com.byazt.nwh.AnimationButton;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2153})
public class DynamicButton extends DynamicBaseWidgetImp {
    public DynamicButton(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        AnimationButton animationButton = new AnimationButton(context);
        this.f20276z = animationButton;
        animationButton.setTag(Integer.valueOf(getClickArea()));
        addView(this.f20276z, getWidgetLayoutParams());
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        if (!com.byazt.sr.uj.c() || !"fillButton".equals(this.f20274u.da().getType())) {
            return super.getWidgetLayoutParams();
        }
        ((TextView) this.f20276z).setEllipsize(TextUtils.TruncateAt.END);
        ((TextView) this.f20276z).setMaxLines(1);
        FrameLayout.LayoutParams widgetLayoutParams = super.getWidgetLayoutParams();
        widgetLayoutParams.width -= this.f20273t.rh() * 2;
        widgetLayoutParams.height -= this.f20273t.rh() * 2;
        widgetLayoutParams.topMargin += this.f20273t.rh();
        int iRh = widgetLayoutParams.leftMargin + this.f20273t.rh();
        widgetLayoutParams.leftMargin = iRh;
        widgetLayoutParams.setMarginStart(iRh);
        widgetLayoutParams.setMarginEnd(widgetLayoutParams.rightMargin);
        return widgetLayoutParams;
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        if (TextUtils.equals("download-progress-button", this.f20274u.da().getType()) && TextUtils.isEmpty(this.f20273t.da())) {
            this.f20276z.setVisibility(4);
            return true;
        }
        this.f20276z.setTextAlignment(this.f20273t.x());
        ((TextView) this.f20276z).setText(this.f20273t.da());
        ((TextView) this.f20276z).setTextColor(this.f20273t.sp());
        ((TextView) this.f20276z).setTextSize(this.f20273t.n());
        ((TextView) this.f20276z).setGravity(17);
        ((TextView) this.f20276z).setIncludeFontPadding(false);
        if ("fillButton".equals(this.f20274u.da().getType())) {
            this.f20276z.setPadding(0, 0, 0, 0);
        } else {
            this.f20276z.setPadding(this.f20273t.ve(), this.f20273t.tt(), this.f20273t.uj(), this.f20273t.c());
        }
        return true;
    }
}

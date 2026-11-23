package com.byazt.tm;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.aq.x;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 837})
public class DynamicDislikeFeedBack extends DynamicBaseWidgetImp {
    public DynamicDislikeFeedBack(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        if (com.byazt.sr.uj.c()) {
            ImageView imageView = new ImageView(context);
            this.f20276z = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.sp = this.f20275x;
        } else {
            this.f20276z = new TextView(context);
        }
        this.f20276z.setTag(3);
        addView(this.f20276z, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.f20276z);
        if (dynamicRootView.getRenderRequest() != null) {
            if (dynamicRootView.getRenderRequest().da() && dynamicRootView.getRenderRequest().p()) {
                return;
            }
            this.f20276z.setVisibility(8);
            setVisibility(8);
        }
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        ((TextView) this.f20276z).setText("反馈");
        this.f20276z.setTextAlignment(this.f20273t.x());
        ((TextView) this.f20276z).setTextColor(this.f20273t.sp());
        ((TextView) this.f20276z).setTextSize(this.f20273t.n());
        this.f20276z.setBackground(getBackgroundDrawable());
        if (this.f20273t.qy()) {
            int iGu = this.f20273t.gu();
            if (iGu > 0) {
                ((TextView) this.f20276z).setLines(iGu);
                ((TextView) this.f20276z).setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            ((TextView) this.f20276z).setMaxLines(1);
            ((TextView) this.f20276z).setGravity(17);
            ((TextView) this.f20276z).setEllipsize(TextUtils.TruncateAt.END);
        }
        this.f20276z.setPadding((int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.ve()), (int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.tt()), (int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.uj()), (int) com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.f20273t.c()));
        ((TextView) this.f20276z).setGravity(17);
        return true;
    }
}

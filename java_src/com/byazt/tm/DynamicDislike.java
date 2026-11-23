package com.byazt.tm;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.byazt.aq.x;
import com.byazt.oq.DislikeView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2064})
public class DynamicDislike extends DynamicBaseWidgetImp {
    public DynamicDislike(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        if (com.byazt.sr.uj.c()) {
            this.f20276z = new ImageView(context);
        } else {
            this.f20276z = new DislikeView(context);
        }
        this.f20276z.setTag(3);
        addView(this.f20276z, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.f20276z);
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        int iC = (int) com.byazt.or.x.c(this.sl, this.f20273t.nu());
        View view = this.f20276z;
        if (!(view instanceof DislikeView)) {
            return true;
        }
        ((DislikeView) view).setRadius((int) com.byazt.or.x.c(this.sl, this.f20273t.z()));
        ((DislikeView) this.f20276z).setStrokeWidth(iC);
        ((DislikeView) this.f20276z).setStrokeColor(this.f20273t.m());
        ((DislikeView) this.f20276z).setBgColor(this.f20273t.md());
        ((DislikeView) this.f20276z).setDislikeColor(this.f20273t.sp());
        ((DislikeView) this.f20276z).setDislikeWidth((int) com.byazt.or.x.c(this.sl, 1.0f));
        return true;
    }
}

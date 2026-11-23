package com.byazt.tm;

import android.content.Context;
import android.view.View;
import com.byazt.aq.x;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 136})
public class DynamicSplitLineView extends DynamicBaseWidgetImp {
    public DynamicSplitLineView(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        View view = new View(context);
        this.f20276z = view;
        addView(view, getWidgetLayoutParams());
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        this.f20276z.setBackgroundColor(this.f20273t.md());
        return true;
    }
}

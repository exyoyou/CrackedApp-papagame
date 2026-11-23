package com.byazt.nk;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.oq.PressButtonInteractView;
import com.byazt.tm.DynamicBaseWidget;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 234, 66})
public class t implements sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PressButtonInteractView f17404c;

    public t(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar) {
        this.f17404c = new PressButtonInteractView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dynamicBaseWidget.getDynamicHeight(), dynamicBaseWidget.getDynamicHeight());
        layoutParams.gravity = 8388629;
        this.f17404c.setLayoutParams(layoutParams);
    }

    @Override // com.byazt.nk.sp
    public void c() {
        this.f17404c.c();
    }

    @Override // com.byazt.nk.sp
    public void tt() {
        this.f17404c.tt();
    }

    @Override // com.byazt.nk.sp
    /* JADX INFO: renamed from: uj, reason: merged with bridge method [inline-methods] */
    public PressButtonInteractView ve() {
        return this.f17404c;
    }
}

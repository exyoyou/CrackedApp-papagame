package com.byazt.nk;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.oq.HandLongPressView;
import com.byazt.tm.DynamicBaseWidget;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 234, 158})
public class sl implements sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HandLongPressView f17403c;

    public sl(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar) {
        this.f17403c = new HandLongPressView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.byazt.or.x.c(context, 180.0f), (int) com.byazt.or.x.c(context, 180.0f));
        layoutParams.gravity = 17;
        this.f17403c.setLayoutParams(layoutParams);
        this.f17403c.setGuideText(spVar.lt());
    }

    @Override // com.byazt.nk.sp
    public void c() {
        this.f17403c.c();
    }

    @Override // com.byazt.nk.sp
    public void tt() {
        this.f17403c.tt();
    }

    @Override // com.byazt.nk.sp
    public ViewGroup ve() {
        return this.f17403c;
    }
}

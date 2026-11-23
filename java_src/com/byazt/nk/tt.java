package com.byazt.nk;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.oq.CircleLongPressView;
import com.byazt.tm.DynamicBaseWidget;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 234, 13})
public class tt implements sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CircleLongPressView f17405c;

    public tt(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar) {
        this.f17405c = new CircleLongPressView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.byazt.or.x.c(context, 180.0f), (int) com.byazt.or.x.c(context, 180.0f));
        layoutParams.gravity = 17;
        this.f17405c.setLayoutParams(layoutParams);
        this.f17405c.setGuideText(spVar.lt());
    }

    @Override // com.byazt.nk.sp
    public void c() {
        this.f17405c.c();
    }

    @Override // com.byazt.nk.sp
    public void tt() {
        this.f17405c.tt();
    }

    @Override // com.byazt.nk.sp
    /* JADX INFO: renamed from: uj, reason: merged with bridge method [inline-methods] */
    public CircleLongPressView ve() {
        return this.f17405c;
    }
}

package com.byazt.nk;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.oq.SlideRightView;
import com.byazt.tm.DynamicBaseWidget;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 234, 130})
public class m implements sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SlideRightView f17394c;
    public Context tt;
    public com.byazt.aq.sp uj;
    public DynamicBaseWidget ve;

    public m(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar) {
        this.tt = context;
        this.ve = dynamicBaseWidget;
        this.uj = spVar;
        uj();
    }

    private void uj() {
        this.f17394c = new SlideRightView(this.tt);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, (int) com.byazt.or.x.c(this.tt, 120.0f));
        layoutParams.gravity = 17;
        this.f17394c.setLayoutParams(layoutParams);
        this.f17394c.setClipChildren(false);
        this.f17394c.setGuideText(this.uj.lt());
        DynamicBaseWidget dynamicBaseWidget = this.ve;
        if (dynamicBaseWidget != null) {
            this.f17394c.setOnClickListener((View.OnClickListener) dynamicBaseWidget.getDynamicClickListener());
        }
    }

    @Override // com.byazt.nk.sp
    public void c() {
        SlideRightView slideRightView = this.f17394c;
        if (slideRightView != null) {
            slideRightView.c();
        }
    }

    @Override // com.byazt.nk.sp
    public void tt() {
        SlideRightView slideRightView = this.f17394c;
        if (slideRightView != null) {
            slideRightView.tt();
        }
    }

    @Override // com.byazt.nk.sp
    public ViewGroup ve() {
        return this.f17394c;
    }
}

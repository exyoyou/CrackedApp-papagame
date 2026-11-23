package com.byazt.nk;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.oq.SlideUpView;
import com.byazt.tm.DynamicBaseWidget;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 234, 137})
public class nu<E extends SlideUpView> implements sp<E> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SlideUpView f17400c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f17401n;
    public Context tt;
    public com.byazt.aq.sp uj;
    public DynamicBaseWidget ve;

    public nu(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar, int i10) {
        this.f17401n = i10;
        this.tt = context;
        this.ve = dynamicBaseWidget;
        this.uj = spVar;
        uj();
    }

    @Override // com.byazt.nk.sp
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public E ve() {
        return (E) this.f17400c;
    }

    @Override // com.byazt.nk.sp
    public void c() {
        this.f17400c.c();
    }

    @Override // com.byazt.nk.sp
    public void tt() {
        this.f17400c.tt();
    }

    public void uj() {
        this.f17400c = new SlideUpView(this.tt, this.uj.aw());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.byazt.or.x.c(this.tt, 200.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.byazt.or.x.c(this.tt, 100 - this.f17401n);
        this.f17400c.setLayoutParams(layoutParams);
        try {
            this.f17400c.setGuideText(this.uj.lt());
        } catch (Throwable unused) {
        }
    }

    public nu(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar) {
        this(context, dynamicBaseWidget, spVar, 0);
    }
}

package com.join.mgps.customview.hmfloat;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class HMFloatingBallView extends HMFloatingBaseView {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    a f66508k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    HMBallView f66509l;

    interface a {
        void a();
    }

    public HMFloatingBallView(Context context) {
        super(context);
    }

    private int h(float dp) {
        return (int) ((dp * getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // com.join.mgps.customview.hmfloat.HMFloatingBaseView
    public void c() {
        super.c();
        setEnableDraggable(true);
        setAutoDock(true);
        int iH = h(40.0f);
        setMWidth(iH);
        setMHeight(iH);
        HMBallView hMBallView = new HMBallView(getContext());
        this.f66509l = hMBallView;
        addView(hMBallView, new FrameLayout.LayoutParams(iH, iH));
    }

    @Override // com.join.mgps.customview.hmfloat.HMFloatingBaseView
    public void f(@Nullable Activity context) {
        super.f(context);
    }

    public void g(HMBallView.Shape target) {
        this.f66509l.e(target);
    }

    public a getOnHideListener() {
        return this.f66508k;
    }

    public void i() {
        this.f66509l.m();
    }

    @Override // com.join.mgps.customview.hmfloat.HMFloatingBaseView, android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setOnHideListener(a onHideListener) {
        this.f66508k = onHideListener;
    }

    public HMFloatingBallView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public HMFloatingBallView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}

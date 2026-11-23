package com.byazt.qn;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.ScrollView;
import com.byazt.sa.uj;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2023, 2024})
public class UGScrollView extends ScrollView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f19195c;

    public UGScrollView(Context context) {
        super(context);
    }

    public void c(uj ujVar) {
        this.f19195c = ujVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f19195c;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f19195c;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.f19195c;
        if (ujVar != null) {
            ujVar.c(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.f19195c;
        if (ujVar != null) {
            int[] iArrC = ujVar.c(i10, i11);
            super.onMeasure(iArrC[0], iArrC[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.ScrollView, android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        uj ujVar = this.f19195c;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.f19195c;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }
}

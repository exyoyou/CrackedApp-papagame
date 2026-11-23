package com.byazt.wy;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.sa.uj;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1540, 2193})
public class UGProgressBar extends FrameLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f21697c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f21698n;
    public View tt;
    public TextView uj;
    public View ve;

    public UGProgressBar(Context context) {
        super(context);
        c(context);
    }

    private void c(Context context) {
        this.tt = new View(context);
        this.ve = new View(context);
        addView(this.tt);
        addView(this.ve);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.tt.getLayoutParams();
        layoutParams.width = 0;
        layoutParams.height = -1;
        layoutParams.gravity = 3;
        this.tt.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.ve.getLayoutParams();
        layoutParams2.width = this.f21698n;
        layoutParams2.gravity = 5;
        this.ve.setLayoutParams(layoutParams2);
        TextView textView = new TextView(context);
        this.uj = textView;
        textView.setTextColor(-1);
        this.uj.setTextSize(16.0f);
        this.uj.setGravity(17);
        addView(this.uj);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f21697c;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f21697c;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.f21697c;
        if (ujVar != null) {
            ujVar.c(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.f21697c;
        if (ujVar != null) {
            ujVar.c(i10, i11);
        }
        super.onMeasure(i10, i11);
        this.f21698n = c(0, i10);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f21698n = i10;
        uj ujVar = this.f21697c;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.f21697c;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    public void setProgress(float f10) {
        int width = getWidth();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.tt.getLayoutParams();
        float f11 = width;
        float f12 = (f10 / 100.0f) * f11;
        layoutParams.width = (int) f12;
        this.tt.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.ve.getLayoutParams();
        layoutParams2.width = (int) (f11 - f12);
        this.ve.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.uj.getLayoutParams();
        layoutParams3.width = width;
        layoutParams3.gravity = 17;
        requestLayout();
    }

    public void setProgressBgColor(int i10) {
        this.ve.setBackgroundColor(i10);
    }

    public void setProgressColor(int i10) {
        this.tt.setBackgroundColor(i10);
    }

    public void setText(String str) {
        this.uj.setText(str);
    }

    public void setTextColor(int i10) {
        this.uj.setTextColor(i10);
    }

    private int c(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824) {
            return size;
        }
        return mode == Integer.MIN_VALUE ? Math.min(i10, size) : i10;
    }

    public void c(uj ujVar) {
        this.f21697c = ujVar;
    }
}

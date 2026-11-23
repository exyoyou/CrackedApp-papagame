package com.byazt.dy;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.byazt.sa.uj;
import com.byazt.sz.m;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1335, 1401})
public class UGFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f13205c;
    public Map<Integer, m> tt;

    public UGFrameLayout(Context context) {
        super(context);
    }

    public void c(uj ujVar) {
        this.f13205c = ujVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f13205c;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f13205c;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Map<Integer, m> map = this.tt;
        if (map == null || !map.containsKey(4)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.f13205c;
        if (ujVar != null) {
            ujVar.uj();
        }
        super.onLayout(z10, i10, i11, i12, i13);
        uj ujVar2 = this.f13205c;
        if (ujVar2 != null) {
            ujVar2.c(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.f13205c;
        if (ujVar != null) {
            int[] iArrC = ujVar.c(i10, i11);
            super.onMeasure(iArrC[0], iArrC[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        uj ujVar2 = this.f13205c;
        if (ujVar2 != null) {
            ujVar2.ve();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        uj ujVar = this.f13205c;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.f13205c;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    public void setEventMap(Map<Integer, m> map) {
        this.tt = map;
    }
}

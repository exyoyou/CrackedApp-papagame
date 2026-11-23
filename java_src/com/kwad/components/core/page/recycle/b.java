package com.kwad.components.core.page.recycle;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class b extends g {
    private Rect aeQ;
    private int aeR;
    private int aeS;
    private boolean aeT;
    private int aeU;
    private a aeV;
    private boolean aeW;
    private boolean aeX;

    public interface a {
        boolean uJ();
    }

    public b(Context context) {
        this(context, null);
    }

    private void a(int i10, int i11, int i12) {
        while (true) {
            if (this.aeU == Integer.MIN_VALUE) {
                int[] iArr = new int[2];
                getLocationOnScreen(iArr);
                this.aeU = iArr[1];
            }
            int iFindFirstVisibleItemPosition = f.b(this).findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = f.b(this).findLastVisibleItemPosition();
            if (iFindFirstVisibleItemPosition == -1 || iFindLastVisibleItemPosition == -1) {
                return;
            }
            if (i10 >= iFindFirstVisibleItemPosition && i10 <= iFindLastVisibleItemPosition) {
                int i13 = i10 - iFindFirstVisibleItemPosition;
                if (getChildCount() > i13) {
                    int[] iArr2 = new int[2];
                    getChildAt(i13).getLocationOnScreen(iArr2);
                    scrollBy(0, (iArr2[1] - this.aeU) - i12);
                    return;
                }
                return;
            }
            if (i10 > iFindLastVisibleItemPosition) {
                scrollBy(0, i11);
                a(i10, i11, i12);
                return;
            }
            scrollBy(0, -i11);
        }
    }

    private void scrollToPositionWithOffset(int i10, int i11) {
        a(i10, getHeight(), 0);
    }

    private void uH() {
        Rect rect = this.aeQ;
        if (rect == null) {
            this.aeQ = new Rect();
        } else {
            rect.setEmpty();
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0) {
                this.aeQ.union(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
            }
        }
    }

    private void uI() {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter instanceof d) {
            ((d) adapter).uM();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uI();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.aeR != 0) {
            uH();
            Rect rect = this.aeQ;
            if (rect != null && !rect.isEmpty()) {
                canvas.save();
                canvas.clipRect(this.aeQ);
                canvas.drawColor(this.aeR);
                canvas.restore();
            }
        }
        super.onDraw(canvas);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.aeW) {
            return false;
        }
        if (motionEvent.getAction() == 0 && this.aeX) {
            stopScroll();
        }
        a aVar = this.aeV;
        if (aVar == null || !aVar.uJ()) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        int i12 = this.aeS;
        if (i12 > 0 && i12 < size) {
            i11 = View.MeasureSpec.makeMeasureSpec(this.aeS, View.MeasureSpec.getMode(i11));
        }
        super.onMeasure(i10, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.aeW) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void scrollToPosition(int i10) {
        if (this.aeT) {
            scrollToPositionWithOffset(i10, 0);
        } else {
            super.scrollToPosition(i10);
        }
    }

    public void setDisableScroll(boolean z10) {
        this.aeW = z10;
    }

    public void setDownStop(boolean z10) {
        this.aeX = z10;
    }

    public void setIgnoreTouchSwipeHandler(a aVar) {
        this.aeV = aVar;
    }

    public void setUnderneathColor(int i10) {
        this.aeR = i10;
        uH();
        invalidate();
    }

    public void setUseCustomScrollToPosition(boolean z10) {
        this.aeT = z10;
    }

    public b(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public b(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.aeU = Integer.MIN_VALUE;
        this.aeX = false;
    }
}

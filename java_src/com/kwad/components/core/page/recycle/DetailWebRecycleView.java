package com.kwad.components.core.page.recycle;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.kwad.components.core.t.y;
import com.kwad.sdk.utils.ab;

/* JADX INFO: loaded from: classes2.dex */
public class DetailWebRecycleView extends b {
    private int aeY;
    private boolean aeZ;
    private boolean afa;
    private int afb;
    private int afc;
    private boolean afd;
    a afe;
    private Runnable aff;
    private y afg;
    private int ph;

    public interface a {
        boolean uK();
    }

    public DetailWebRecycleView(Context context) {
        this(context, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        postDelayed(this.afg, 50L);
    }

    @Override // com.kwad.components.core.page.recycle.b, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.afg);
    }

    @Override // com.kwad.components.core.page.recycle.b, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        a aVar = this.afe;
        if (aVar != null && aVar.uK()) {
            return true;
        }
        this.afc = computeVerticalScrollOffset();
        if (motionEvent.getY() <= this.afb - this.afc) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f10, float f11) {
        int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
        this.afc = iComputeVerticalScrollOffset;
        if (iComputeVerticalScrollOffset >= this.afb) {
            return false;
        }
        fling((int) f10, (int) f11);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
        this.afc = iComputeVerticalScrollOffset;
        if ((i11 > 0 && iComputeVerticalScrollOffset < this.afb) && !this.afd && iComputeVerticalScrollOffset < this.ph) {
            scrollBy(0, i11);
            iArr[1] = i11;
        }
        if (i11 < 0 && this.afc > 0 && !ViewCompat.canScrollVertically(view, -1)) {
            scrollBy(0, i11);
            iArr[1] = i11;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i10) {
        super.onScrollStateChanged(i10);
        if (i10 == 0) {
            View childAt = getLayoutManager().getChildAt(getLayoutManager().getChildCount() - 1);
            if (childAt != null) {
                int bottom = childAt.getBottom();
                int bottom2 = getBottom() - getPaddingBottom();
                int position = getLayoutManager().getPosition(childAt);
                if (bottom == bottom2 && position == getLayoutManager().getItemCount() - 1) {
                    this.afd = true;
                    return;
                }
            }
            this.afd = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return (i10 & 2) != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (this.afa) {
            this.afa = false;
        } else {
            if (this.aeZ) {
                return;
            }
            super.requestChildFocus(view, view2);
        }
    }

    public void setInterceptRequestFocusForWeb(boolean z10) {
        this.aeZ = z10;
    }

    public void setInterceptRequestFocusForWebFiredOnce(boolean z10) {
        this.afa = z10;
    }

    public void setInterceptTouchListener(a aVar) {
        this.afe = aVar;
    }

    public void setTopViewHeight(int i10) {
        this.afb = i10;
    }

    public DetailWebRecycleView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DetailWebRecycleView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.aeY = 1000;
        this.aeZ = false;
        this.afa = false;
        Runnable runnable = new Runnable() { // from class: com.kwad.components.core.page.recycle.DetailWebRecycleView.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Object field = ab.getField(DetailWebRecycleView.this, "mGapWorker");
                    if (field != null) {
                        ab.callMethod(field, "postFromTraversal", DetailWebRecycleView.this, 0, Integer.valueOf(DetailWebRecycleView.this.aeY));
                    }
                } catch (RuntimeException e10) {
                    com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
                }
            }
        };
        this.aff = runnable;
        this.afg = new y(runnable);
        if (context instanceof Activity) {
            this.ph = com.kwad.sdk.c.a.a.k((Activity) context);
        } else {
            this.ph = com.kwad.sdk.c.a.a.getScreenHeight(context);
        }
    }
}

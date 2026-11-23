package com.join.mgps.customview;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* JADX INFO: loaded from: classes3.dex */
public class d extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[] f66304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f66305f;

    public d(Context context) {
        int[] iArr = {R.attr.listDivider};
        this.f66304e = iArr;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        this.f66305f = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private int a(RecyclerView parent) {
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getSpanCount();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        }
        return -1;
    }

    private boolean b(RecyclerView parent, int pos, int spanCount, int childCount) {
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return (pos + 1) % spanCount == 0;
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return false;
        }
        if (((StaggeredGridLayoutManager) layoutManager).getOrientation() == 1) {
            return (pos + 1) % spanCount == 0;
        }
        return pos >= childCount - (childCount % spanCount);
    }

    private boolean c(RecyclerView parent, int pos, int spanCount, int childCount) {
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return pos >= childCount - (childCount % spanCount);
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return false;
        }
        if (((StaggeredGridLayoutManager) layoutManager).getOrientation() == 1) {
            return pos >= childCount - (childCount % spanCount);
        }
        return (pos + 1) % spanCount == 0;
    }

    public void drawHorizontal(Canvas c10, RecyclerView parent) {
        int childCount = parent.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = parent.getChildAt(i10);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            int left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + this.f66305f.getIntrinsicWidth();
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            this.f66305f.setBounds(left, bottom, right, this.f66305f.getIntrinsicHeight() + bottom);
            this.f66305f.draw(c10);
        }
    }

    public void drawVertical(Canvas c10, RecyclerView parent) {
        int childCount = parent.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = parent.getChildAt(i10);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            this.f66305f.setBounds(right, top, this.f66305f.getIntrinsicWidth() + right, bottom);
            this.f66305f.draw(c10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, int itemPosition, RecyclerView parent) {
        int iA = a(parent);
        int itemCount = parent.getAdapter().getItemCount();
        if (c(parent, itemPosition, iA, itemCount)) {
            outRect.set(0, 0, this.f66305f.getIntrinsicWidth(), 0);
        } else if (b(parent, itemPosition, iA, itemCount)) {
            outRect.set(0, 0, 0, this.f66305f.getIntrinsicHeight());
        } else {
            outRect.set(0, 0, this.f66305f.getIntrinsicWidth(), this.f66305f.getIntrinsicHeight());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas c10, RecyclerView parent, RecyclerView.State state) {
        drawHorizontal(c10, parent);
        drawVertical(c10, parent);
    }
}

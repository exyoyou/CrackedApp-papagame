package com.join.mgps.customview;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes3.dex */
public class DrawableDividerItemDecoration extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f64828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f64829f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f64830g;

    public DrawableDividerItemDecoration(Context context, AttributeSet attrs) {
        this.f64829f = false;
        this.f64830g = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, new int[]{R.attr.listDivider});
        this.f64828e = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private int a(RecyclerView parent) {
        if (parent.getLayoutManager() instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) parent.getLayoutManager()).getOrientation();
        }
        throw new IllegalStateException("DividerItemDecoration can only be used with a LinearLayoutManager.");
    }

    private boolean b(RecyclerView parent) {
        if (parent.getLayoutManager() instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) parent.getLayoutManager()).getReverseLayout();
        }
        throw new IllegalStateException("DividerItemDecoration can only be used with a LinearLayoutManager.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        super.getItemOffsets(outRect, view, parent, state);
        if (this.f64828e != null && parent.getChildPosition(view) >= 1) {
            if (a(parent) == 1) {
                outRect.top = this.f64828e.getIntrinsicHeight();
            } else {
                outRect.left = this.f64828e.getIntrinsicWidth();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int paddingTop;
        int i10;
        int height;
        int width;
        if (this.f64828e == null) {
            super.onDrawOver(canvas, recyclerView, state);
            return;
        }
        int iA = a(recyclerView);
        int childCount = recyclerView.getChildCount();
        int right = 0;
        if (iA == 1) {
            int intrinsicHeight = this.f64828e.getIntrinsicHeight();
            int paddingLeft = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            i10 = intrinsicHeight;
            right = paddingLeft;
            height = 0;
            paddingTop = 0;
        } else {
            int intrinsicWidth = this.f64828e.getIntrinsicWidth();
            paddingTop = recyclerView.getPaddingTop();
            i10 = intrinsicWidth;
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            width = 0;
        }
        for (int i11 = !this.f64829f ? 1 : 0; i11 < childCount; i11++) {
            View childAt = recyclerView.getChildAt(i11);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            if (iA == 1) {
                if (b(recyclerView)) {
                    height = childAt.getBottom() - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    paddingTop = height - i10;
                } else {
                    int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    paddingTop = top;
                    height = top + i10;
                }
            } else if (b(recyclerView)) {
                int right2 = childAt.getRight() - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                width = right2;
                right = right2 - i10;
            } else {
                right = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                width = right + i10;
            }
            this.f64828e.setBounds(right, paddingTop, width, height);
            this.f64828e.draw(canvas);
        }
        if (!this.f64830g || childCount <= 0) {
            return;
        }
        View childAt2 = recyclerView.getChildAt(childCount - 1);
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) childAt2.getLayoutParams();
        if (iA == 1) {
            paddingTop = childAt2.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
            height = paddingTop + i10;
        } else {
            right = childAt2.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
            width = right + i10;
        }
        this.f64828e.setBounds(right, paddingTop, width, height);
        this.f64828e.draw(canvas);
    }

    public DrawableDividerItemDecoration(Context context, AttributeSet attrs, boolean showFirstDivider, boolean showLastDivider) {
        this(context, attrs);
        this.f64829f = showFirstDivider;
        this.f64830g = showLastDivider;
    }

    public DrawableDividerItemDecoration(Drawable divider) {
        this.f64829f = false;
        this.f64830g = false;
        this.f64828e = divider;
    }

    public DrawableDividerItemDecoration(Drawable divider, boolean showFirstDivider, boolean showLastDivider) {
        this(divider);
        this.f64829f = showFirstDivider;
        this.f64830g = showLastDivider;
    }
}

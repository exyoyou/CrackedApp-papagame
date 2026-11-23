package com.join.mgps.customview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes3.dex */
public class PaPaLinearLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f65433o = "PaPaLinearLayoutManager";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int[] f65434n;

    public PaPaLinearLayoutManager(Context context) {
        super(context);
        this.f65434n = new int[2];
    }

    private void a(RecyclerView.Recycler recycler, int position, int widthSpec, int heightSpec, int[] measuredDimension) {
        try {
            View viewForPosition = recycler.getViewForPosition(position);
            if (viewForPosition != null) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewForPosition.getLayoutParams();
                viewForPosition.measure(ViewGroup.getChildMeasureSpec(widthSpec, getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(heightSpec, getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height));
                measuredDimension[0] = viewForPosition.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                measuredDimension[1] = viewForPosition.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                recycler.recycleView(viewForPosition);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int widthSpec, int heightSpec) {
        int mode = View.MeasureSpec.getMode(widthSpec);
        int mode2 = View.MeasureSpec.getMode(heightSpec);
        int size = View.MeasureSpec.getSize(widthSpec);
        int size2 = View.MeasureSpec.getSize(heightSpec);
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < getItemCount(); i12++) {
            a(recycler, i12, View.MeasureSpec.makeMeasureSpec(size, mode), View.MeasureSpec.makeMeasureSpec(size2, mode2), this.f65434n);
            if (getOrientation() == 0) {
                int[] iArr = this.f65434n;
                i11 += iArr[0];
                if (i12 == 0) {
                    i10 = iArr[1];
                }
            } else {
                int[] iArr2 = this.f65434n;
                i10 += iArr2[1];
                if (i12 == 0) {
                    i11 = iArr2[0];
                }
            }
        }
        if (mode != 1073741824) {
            size = i11;
        }
        if (mode2 != 1073741824) {
            size2 = i10;
        }
        setMeasuredDimension(size, size2);
    }

    public PaPaLinearLayoutManager(Context context, int orientation, boolean reverseLayout) {
        super(context, orientation, reverseLayout);
        this.f65434n = new int[2];
    }
}

package com.byazt.ff;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.nr.m;
import com.byazt.zqa.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 142, 2442})
public class FlowLayout extends ViewGroup {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<List<View>> f14151c;
    public List<Integer> tt;

    public FlowLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f14151c = new ArrayList();
        this.tt = new ArrayList();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        m.uj("TAG", "onLayout");
        this.f14151c.clear();
        this.tt.clear();
        int width = getWidth();
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        int iMax = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            i14++;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if ((measuredWidth + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin) * i14 > (width - getPaddingLeft()) - getPaddingRight()) {
                this.tt.add(Integer.valueOf(iMax));
                this.f14151c.add(arrayList);
                iMax = marginLayoutParams.bottomMargin + marginLayoutParams.topMargin + measuredHeight;
                arrayList = new ArrayList();
                i14 = 1;
            }
            iMax = Math.max(iMax, measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
            arrayList.add(childAt);
        }
        this.tt.add(Integer.valueOf(iMax));
        this.f14151c.add(arrayList);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int size = this.f14151c.size();
        for (int i16 = 0; i16 < size; i16++) {
            List<View> list = this.f14151c.get(i16);
            int iIntValue = this.tt.get(i16).intValue();
            for (int i17 = 0; i17 < list.size(); i17++) {
                View view = list.get(i17);
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i18 = marginLayoutParams2.leftMargin + paddingLeft;
                    int i19 = marginLayoutParams2.topMargin + paddingTop;
                    view.layout(i18, i19, view.getMeasuredWidth() + i18, view.getMeasuredHeight() + i19);
                    paddingLeft += view.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                }
            }
            paddingLeft = getPaddingLeft();
            paddingTop += iIntValue;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        int childCount = getChildCount();
        int iMax = 0;
        int i12 = 0;
        int i13 = 0;
        int iMax2 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            measureChild(childAt, i10, i11);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            int i15 = i13 + measuredWidth;
            if (i15 - marginLayoutParams.rightMargin > (size - getPaddingLeft()) - getPaddingRight()) {
                iMax = Math.max(iMax, i13);
                i12 += iMax2;
                iMax2 = measuredHeight;
                i13 = measuredWidth;
            } else {
                iMax2 = Math.max(iMax2, measuredHeight);
                i13 = i15;
            }
            if (i14 == childCount - 1) {
                iMax = Math.max(i13, iMax);
                i12 += iMax2;
            }
        }
        m.uj("TAG", "sizeWidth = " + size + "|sizeHeight = " + size2);
        m.uj("TAG", "width = " + iMax + ", height = " + i12);
        if (mode != 1073741824) {
            size = getPaddingRight() + iMax + getPaddingLeft();
        }
        if (mode2 != 1073741824) {
            size2 = i12 + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(size, size2);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context) {
        this(context, null);
    }
}

package com.zhy.view.flowlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class FlowLayout extends ViewGroup {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f90334g = "FlowLayout";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f90335h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f90336i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f90337j = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected List<List<View>> f90338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected List<Integer> f90339c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected List<Integer> f90340d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f90341e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<View> f90342f;

    public FlowLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f90338b = new ArrayList();
        this.f90339c = new ArrayList();
        this.f90340d = new ArrayList();
        this.f90342f = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TagFlowLayout);
        this.f90341e = typedArrayObtainStyledAttributes.getInt(R.styleable.TagFlowLayout_gravity, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int paddingLeft;
        this.f90338b.clear();
        this.f90339c.clear();
        this.f90340d.clear();
        this.f90342f.clear();
        int width = getWidth();
        int childCount = getChildCount();
        int iMax = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredWidth + i15 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin > (width - getPaddingLeft()) - getPaddingRight()) {
                    this.f90339c.add(Integer.valueOf(iMax));
                    this.f90338b.add(this.f90342f);
                    this.f90340d.add(Integer.valueOf(i15));
                    iMax = marginLayoutParams.topMargin + measuredHeight + marginLayoutParams.bottomMargin;
                    this.f90342f = new ArrayList();
                    i15 = 0;
                }
                i15 += measuredWidth + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                iMax = Math.max(iMax, measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
                this.f90342f.add(childAt);
            }
        }
        this.f90339c.add(Integer.valueOf(iMax));
        this.f90340d.add(Integer.valueOf(i15));
        this.f90338b.add(this.f90342f);
        int paddingLeft2 = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int size = this.f90338b.size();
        for (int i17 = 0; i17 < size; i17++) {
            this.f90342f = this.f90338b.get(i17);
            int iIntValue = this.f90339c.get(i17).intValue();
            int iIntValue2 = this.f90340d.get(i17).intValue();
            int i18 = this.f90341e;
            if (i18 != -1) {
                if (i18 == 0) {
                    i14 = (width - iIntValue2) / 2;
                    paddingLeft = getPaddingLeft();
                } else if (i18 == 1) {
                    i14 = width - iIntValue2;
                    paddingLeft = getPaddingLeft();
                }
                paddingLeft2 = i14 + paddingLeft;
            } else {
                paddingLeft2 = getPaddingLeft();
            }
            for (int i19 = 0; i19 < this.f90342f.size(); i19++) {
                View view = this.f90342f.get(i19);
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i20 = marginLayoutParams2.leftMargin + paddingLeft2;
                    int i21 = marginLayoutParams2.topMargin + paddingTop;
                    view.layout(i20, i21, view.getMeasuredWidth() + i20, view.getMeasuredHeight() + i21);
                    paddingLeft2 += view.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                }
            }
            paddingTop += iIntValue;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        int childCount = getChildCount();
        int i12 = 0;
        int iMax = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i10, i11);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                int i16 = i13 + measuredWidth;
                if (i16 > (size - getPaddingLeft()) - getPaddingRight()) {
                    iMax = Math.max(iMax, i13);
                    i15 += i14;
                } else {
                    measuredHeight = Math.max(i14, measuredHeight);
                    measuredWidth = i16;
                }
                if (i12 == childCount - 1) {
                    iMax = Math.max(measuredWidth, iMax);
                    i15 += measuredHeight;
                }
                i14 = measuredHeight;
                i13 = measuredWidth;
            } else if (i12 == childCount - 1) {
                iMax = Math.max(i13, iMax);
                i15 += i14;
            }
            i12++;
            size2 = size2;
        }
        int i17 = size2;
        if (mode != 1073741824) {
            size = getPaddingRight() + iMax + getPaddingLeft();
        }
        setMeasuredDimension(size, mode2 == 1073741824 ? i17 : i15 + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context) {
        this(context, null);
    }
}

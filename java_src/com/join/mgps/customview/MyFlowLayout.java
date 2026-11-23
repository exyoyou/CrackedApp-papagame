package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MyFlowLayout extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<List<View>> f65312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<Integer> f65313c;

    public MyFlowLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return super.generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new ViewGroup.MarginLayoutParams(getContext(), attrs);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        this.f65312b.clear();
        this.f65313c.clear();
        int width = getWidth();
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        int iMax = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            if (measuredWidth + i10 > width - (getPaddingLeft() + getPaddingRight())) {
                this.f65313c.add(Integer.valueOf(iMax));
                this.f65312b.add(arrayList);
                arrayList = new ArrayList();
                iMax = measuredHeight;
                i10 = 0;
            }
            i10 += measuredWidth;
            iMax = Math.max(iMax, measuredHeight);
            arrayList.add(childAt);
        }
        this.f65313c.add(Integer.valueOf(iMax));
        this.f65312b.add(arrayList);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int size = this.f65312b.size();
        for (int i12 = 0; i12 < size; i12++) {
            List<View> list = this.f65312b.get(i12);
            int iIntValue = this.f65313c.get(i12).intValue();
            for (int i13 = 0; i13 < list.size(); i13++) {
                View view = list.get(i13);
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i14 = marginLayoutParams2.leftMargin + paddingLeft;
                    int i15 = marginLayoutParams2.topMargin + paddingTop;
                    view.layout(i14, i15, view.getMeasuredWidth() + i14, view.getMeasuredHeight() + i15);
                    paddingLeft += view.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                }
            }
            paddingLeft = getPaddingLeft();
            paddingTop += iIntValue;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int measuredHeight;
        int measuredWidth;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int childCount = getChildCount();
        int iMax = 0;
        int i10 = 0;
        int i11 = 0;
        int iMax2 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
            if (childAt.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            } else {
                measuredHeight = 0;
                measuredWidth = 0;
            }
            int i13 = i11 + measuredWidth;
            if (i13 > size - (getPaddingLeft() + getPaddingRight())) {
                iMax = Math.max(iMax, i11);
                i10 += iMax2;
                iMax2 = measuredHeight;
                i11 = measuredWidth;
            } else {
                iMax2 = Math.max(iMax2, measuredHeight);
                i11 = i13;
            }
            if (i12 == childCount - 1) {
                i10 += iMax2;
                iMax = Math.max(iMax, i11);
            }
        }
        int paddingLeft = iMax + getPaddingLeft() + getPaddingRight();
        int paddingTop = i10 + getPaddingTop() + getPaddingBottom();
        if (mode != 1073741824) {
            size = paddingLeft;
        }
        if (mode2 != 1073741824) {
            size2 = paddingTop;
        }
        setMeasuredDimension(size, size2);
    }

    public MyFlowLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public MyFlowLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65312b = new ArrayList();
        this.f65313c = new ArrayList();
    }
}

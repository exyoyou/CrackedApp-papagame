package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"DrawAllocation"})
public class FlowLayout extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64888c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<View> f64889d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayList<Integer> f64890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<List<View>> f64891f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<Integer> f64892g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64893h;

    public FlowLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64887b = 0;
        this.f64888c = 0;
        this.f64889d = new ArrayList<>();
        this.f64890e = new ArrayList<>();
        this.f64891f = new ArrayList();
        this.f64892g = new ArrayList();
        this.f64893h = 100;
    }

    private void a(int fromIndex) {
        int childCount = getChildCount();
        while (fromIndex < childCount) {
            View childAt = getChildAt(fromIndex);
            if (childAt.getVisibility() == 8) {
                childAt.layout(0, 0, 0, 0);
            } else {
                this.f64889d.add(childAt);
                this.f64890e.add(Integer.valueOf(childAt.getVisibility()));
                childAt.setVisibility(8);
                childAt.layout(0, 0, 0, 0);
            }
            fromIndex++;
        }
    }

    private void b() {
        for (int i10 = 0; i10 < this.f64889d.size(); i10++) {
            View view = this.f64889d.get(i10);
            if (view.getParent() == this) {
                view.setVisibility(this.f64890e.get(i10).intValue());
            }
        }
        this.f64889d.clear();
        this.f64890e.clear();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        return new ViewGroup.MarginLayoutParams(p10);
    }

    public int getHorizontalDivider() {
        return this.f64887b;
    }

    public int getVerticalDivider() {
        return this.f64888c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        boolean z10;
        this.f64891f.clear();
        this.f64892g.clear();
        int width = getWidth();
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        int i10 = this.f64893h;
        if (i10 <= 0) {
            i10 = Integer.MAX_VALUE;
        }
        int i11 = 0;
        int i12 = 0;
        int i13 = 1;
        int iMax = 0;
        while (true) {
            if (i11 >= childCount) {
                z10 = false;
                break;
            }
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i14 = childCount + (-1) == i11 ? 0 : this.f64888c;
                int i15 = this.f64887b;
                if (marginLayoutParams.leftMargin + measuredWidth + marginLayoutParams.rightMargin + i12 > (width - getPaddingLeft()) - getPaddingRight()) {
                    if (i13 >= i10) {
                        this.f64892g.add(Integer.valueOf(iMax));
                        this.f64891f.add(arrayList);
                        a(i11);
                        z10 = true;
                        break;
                    }
                    this.f64892g.add(Integer.valueOf(iMax));
                    this.f64891f.add(arrayList);
                    arrayList = new ArrayList();
                    i13++;
                    i12 = 0;
                }
                i12 += measuredWidth + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i15;
                iMax = Math.max(iMax, measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i14);
                arrayList.add(childAt);
            }
            i11++;
            childCount = childCount;
        }
        if (!z10) {
            this.f64892g.add(Integer.valueOf(iMax));
            this.f64891f.add(arrayList);
        }
        int paddingTop = getPaddingTop() + 0;
        int paddingLeft = getPaddingLeft() + 0;
        int size = this.f64891f.size();
        for (int i16 = 0; i16 < size; i16++) {
            List<View> list = this.f64891f.get(i16);
            int iIntValue = this.f64892g.get(i16).intValue();
            for (int i17 = 0; i17 < list.size(); i17++) {
                View view = list.get(i17);
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i18 = marginLayoutParams2.leftMargin + paddingLeft;
                    int i19 = marginLayoutParams2.topMargin + paddingTop;
                    view.layout(i18, i19, view.getMeasuredWidth() + i18, view.getMeasuredHeight() + i19);
                    paddingLeft += view.getMeasuredWidth() + marginLayoutParams2.rightMargin + marginLayoutParams2.leftMargin + this.f64887b;
                }
            }
            paddingLeft = getPaddingLeft();
            paddingTop += iIntValue;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i10;
        b();
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom() + 0;
        int childCount = getChildCount();
        int i11 = this.f64893h;
        if (i11 <= 0) {
            i11 = Integer.MAX_VALUE;
        }
        int i12 = size - (paddingLeft + paddingRight);
        int i13 = 1;
        int i14 = 0;
        int iMax = 0;
        boolean z10 = false;
        int i15 = 0;
        int iMax2 = 0;
        while (i14 < childCount) {
            View childAt = getChildAt(i14);
            int i16 = size;
            int i17 = size2;
            if (childAt.getVisibility() == 8) {
                i10 = mode2;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
                if (i14 == childCount - 1) {
                    iMax = Math.max(iMax, i15);
                    if (!z10) {
                        paddingTop += iMax2;
                    }
                }
            } else {
                i10 = mode2;
                if (z10) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
                } else {
                    measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                    int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                    int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                    int i18 = this.f64888c;
                    int i19 = iMax;
                    if (i15 + measuredWidth > i12) {
                        iMax = Math.max(i15, measuredWidth);
                        if (!z10) {
                            paddingTop += iMax2;
                            if (i13 >= i11) {
                                z10 = true;
                            } else {
                                i13++;
                            }
                        }
                        if (z10) {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
                            if (i14 == childCount - 1) {
                                iMax = Math.max(iMax, i15);
                            }
                        } else {
                            i15 = measuredWidth + this.f64887b;
                            iMax2 = measuredHeight + i18;
                        }
                    } else {
                        i15 += measuredWidth + this.f64887b;
                        iMax2 = Math.max(iMax2, measuredHeight);
                        iMax = i19;
                    }
                    if (i14 == childCount - 1) {
                        iMax = Math.max(iMax, i15);
                        if (!z10) {
                            paddingTop += iMax2;
                        }
                    }
                }
                i14++;
                size = i16;
                size2 = i17;
                mode2 = i10;
            }
            i14++;
            size = i16;
            size2 = i17;
            mode2 = i10;
        }
        int i20 = size2;
        int i21 = mode2;
        int i22 = mode == 1073741824 ? size : iMax;
        if (i21 == 1073741824) {
            paddingTop = i20;
        }
        setMeasuredDimension(i22, paddingTop);
    }

    public void setHorizontalDivider(int horizontalDivider) {
        this.f64887b = horizontalDivider;
    }

    public void setNumberRows(int number) {
        if (this.f64893h == number) {
            return;
        }
        this.f64893h = number;
        requestLayout();
    }

    public void setVerticalDivider(int verticalDivider) {
        this.f64888c = verticalDivider;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new ViewGroup.MarginLayoutParams(getContext(), attrs);
    }
}

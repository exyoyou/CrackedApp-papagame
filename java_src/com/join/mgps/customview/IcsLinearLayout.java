package com.join.mgps.customview;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes3.dex */
public class IcsLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f65130g = {R.attr.divider, R.attr.showDividers, R.attr.dividerPadding};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f65131h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f65132i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f65133j = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f65134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65135c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65136d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65137e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65138f;

    public IcsLinearLayout(Context context, int themeAttr) {
        super(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, f65130g, themeAttr, 0);
        setDividerDrawable(typedArrayObtainStyledAttributes.getDrawable(0));
        this.f65138f = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f65137e = typedArrayObtainStyledAttributes.getInteger(1, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void a(Canvas canvas) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null && childAt.getVisibility() != 8 && e(i10)) {
                d(canvas, childAt.getLeft() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).leftMargin);
            }
        }
        if (e(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            d(canvas, childAt2 == null ? (getWidth() - getPaddingRight()) - this.f65135c : childAt2.getRight());
        }
    }

    private void b(Canvas canvas) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null && childAt.getVisibility() != 8 && e(i10)) {
                c(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
            }
        }
        if (e(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            c(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f65136d : childAt2.getBottom());
        }
    }

    private void c(Canvas canvas, int top) {
        this.f65134b.setBounds(getPaddingLeft() + this.f65138f, top, (getWidth() - getPaddingRight()) - this.f65138f, this.f65136d + top);
        this.f65134b.draw(canvas);
    }

    private void d(Canvas canvas, int left) {
        this.f65134b.setBounds(left, getPaddingTop() + this.f65138f, this.f65135c + left, (getHeight() - getPaddingBottom()) - this.f65138f);
        this.f65134b.draw(canvas);
    }

    private boolean e(int childIndex) {
        if (childIndex == 0 || childIndex == getChildCount() || (this.f65137e & 2) == 0) {
            return false;
        }
        for (int i10 = childIndex - 1; i10 >= 0; i10--) {
            if (getChildAt(i10).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed) {
        int iIndexOfChild = indexOfChild(child);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) child.getLayoutParams();
        if (e(iIndexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.f65136d;
            } else {
                layoutParams.leftMargin = this.f65135c;
            }
        }
        int childCount = getChildCount();
        if (iIndexOfChild == childCount - 1 && e(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.f65136d;
            } else {
                layoutParams.rightMargin = this.f65135c;
            }
        }
        super.measureChildWithMargins(child, parentWidthMeasureSpec, widthUsed, parentHeightMeasureSpec, heightUsed);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f65134b != null) {
            if (getOrientation() == 1) {
                b(canvas);
            } else {
                a(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.LinearLayout
    public void setDividerDrawable(Drawable divider) {
        if (divider == this.f65134b) {
            return;
        }
        this.f65134b = divider;
        if (divider != null) {
            this.f65135c = divider.getIntrinsicWidth();
            this.f65136d = divider.getIntrinsicHeight();
        } else {
            this.f65135c = 0;
            this.f65136d = 0;
        }
        setWillNotDraw(divider == null);
        requestLayout();
    }
}

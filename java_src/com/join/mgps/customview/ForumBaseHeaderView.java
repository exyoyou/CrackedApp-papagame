package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class ForumBaseHeaderView extends LinearLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected View.OnClickListener f64894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f64895c;

    public interface a {
        void onMeasure(int height);
    }

    public ForumBaseHeaderView(@NonNull Context context) {
        super(context);
        this.f64894b = null;
        a(context);
    }

    protected void a(Context context) {
        setOrientation(1);
    }

    public a getmOnMeasureHeight() {
        return this.f64895c;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener = this.f64894b;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i10;
        int i11;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int childCount = getChildCount();
        int measuredHeight = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    int i13 = layoutParams2.leftMargin;
                    i11 = layoutParams2.topMargin;
                    i10 = layoutParams2.bottomMargin;
                } else if (layoutParams instanceof LinearLayout.LayoutParams) {
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams;
                    int i14 = layoutParams3.leftMargin;
                    i11 = layoutParams3.topMargin;
                    i10 = layoutParams3.bottomMargin;
                } else if (layoutParams instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams;
                    int i15 = layoutParams4.leftMargin;
                    i11 = layoutParams4.topMargin;
                    i10 = layoutParams4.bottomMargin;
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                childAt.getMeasuredWidth();
                measuredHeight += childAt.getMeasuredHeight() + i11 + i10;
            }
        }
        if (this.f64895c != null) {
            this.f64895c.onMeasure((getLayoutParams() instanceof RelativeLayout.LayoutParams ? ((RelativeLayout.LayoutParams) getLayoutParams()).bottomMargin : 0) + measuredHeight);
        }
        if (mode != 1073741824) {
            size = 0;
        }
        if (mode2 != 1073741824) {
            size2 = measuredHeight;
        }
        setMeasuredDimension(size, size2);
    }

    public void setHeaderClickListener(View.OnClickListener l10) {
        this.f64894b = l10;
    }

    public void setmOnMeasureHeight(a mOnMeasureHeight) {
        this.f64895c = mOnMeasureHeight;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        if (getOrientation() == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        return getOrientation() == 1 ? new LinearLayout.LayoutParams(-1, -2) : super.generateDefaultLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        if (getOrientation() == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        return getOrientation() == 1 ? new LinearLayout.LayoutParams(-1, -2) : super.generateLayoutParams(lp);
    }

    public ForumBaseHeaderView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f64894b = null;
        a(context);
    }

    public ForumBaseHeaderView(@NonNull Context context, @Nullable AttributeSet attrs, @AttrRes int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64894b = null;
        a(context);
    }
}

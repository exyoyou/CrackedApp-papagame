package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes3.dex */
public class TopBarLayout extends FrameLayout {
    public TopBarLayout(Context context) {
        super(context);
    }

    private int getStatusBarHeight() {
        return getContext().getResources().getDimensionPixelSize(getContext().getResources().getIdentifier("status_bar_height", "dimen", "android"));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + getStatusBarHeight(), 1073741824));
    }

    public TopBarLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public TopBarLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}

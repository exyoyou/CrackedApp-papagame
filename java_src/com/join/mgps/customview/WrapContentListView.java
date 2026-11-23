package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ListView;

/* JADX INFO: loaded from: classes3.dex */
public class WrapContentListView extends ListView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewGroup.LayoutParams f66031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f66032c;

    public WrapContentListView(Context context) {
        super(context);
        this.f66032c = 0;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (getCount() != this.f66032c) {
            if (getChildAt(0) != null) {
                this.f66032c = getCount();
            }
            int height = getChildAt(0).getHeight() + 1;
            int height2 = 0;
            for (int i10 = 0; i10 < this.f66032c; i10++) {
                try {
                    height2 += getChildAt(i10).getHeight() + 1;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    height2 += height;
                }
            }
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            this.f66031b = layoutParams;
            layoutParams.height = height2;
            setLayoutParams(layoutParams);
        }
        super.onDraw(canvas);
    }

    public WrapContentListView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66032c = 0;
    }

    public WrapContentListView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f66032c = 0;
    }
}

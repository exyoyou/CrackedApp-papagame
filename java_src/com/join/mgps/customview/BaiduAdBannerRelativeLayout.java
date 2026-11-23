package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public class BaiduAdBannerRelativeLayout extends RelativeLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f64352b;

    public BaiduAdBannerRelativeLayout(Context context) {
        super(context);
        this.f64352b = false;
    }

    public boolean a() {
        return this.f64352b;
    }

    @Override // android.view.ViewGroup
    public void addView(View child) {
        super.addView(child);
    }

    public BaiduAdBannerRelativeLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64352b = false;
    }

    public BaiduAdBannerRelativeLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64352b = false;
    }
}

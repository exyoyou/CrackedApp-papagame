package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes3.dex */
public class TouchWebView extends WebView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f65964b;

    public TouchWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65964b = getClass().getSimpleName();
        setLayerType(1, null);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public TouchWebView(Context context) {
        super(context);
        this.f65964b = getClass().getSimpleName();
        setLayerType(1, null);
    }
}

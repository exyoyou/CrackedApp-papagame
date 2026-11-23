package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes3.dex */
public class ExtendedWebView extends WebView {
    public ExtendedWebView(Context context) {
        super(context);
    }

    public boolean a(int direction) {
        int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
        int iComputeVerticalScrollRange = computeVerticalScrollRange() - computeVerticalScrollExtent();
        if (iComputeVerticalScrollRange == 0) {
            return false;
        }
        if (direction < 0) {
            if (iComputeVerticalScrollOffset <= 0) {
                return false;
            }
        } else if (iComputeVerticalScrollOffset >= iComputeVerticalScrollRange - 1) {
            return false;
        }
        return true;
    }

    public ExtendedWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
}

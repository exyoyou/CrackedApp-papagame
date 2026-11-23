package com.papa91.wrapper;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes2.dex */
public class KeyboardListenLayout extends RelativeLayout {
    private String TAG;
    private OnSoftKeyboardListener onSoftKeyboardListener;

    public interface OnSoftKeyboardListener {
        void onHidden();

        void onShown();
    }

    public KeyboardListenLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "KeyboardListenLayout";
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        int measuredHeight = getMeasuredHeight();
        int width = getWidth();
        int height = getHeight();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("height=");
        sb2.append(height);
        sb2.append(" w=");
        sb2.append(width);
        sb2.append("");
        OnSoftKeyboardListener onSoftKeyboardListener = this.onSoftKeyboardListener;
        if (onSoftKeyboardListener != null) {
            if (measuredHeight > size) {
                onSoftKeyboardListener.onShown();
            } else {
                onSoftKeyboardListener.onHidden();
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("oldh=");
        sb2.append(i13);
        sb2.append(" h=");
        sb2.append(i11);
        sb2.append("");
        super.onSizeChanged(i10, i11, i12, i13);
    }

    public final void setOnSoftKeyboardListener(OnSoftKeyboardListener onSoftKeyboardListener) {
        this.onSoftKeyboardListener = onSoftKeyboardListener;
    }

    public KeyboardListenLayout(Context context) {
        super(context);
        this.TAG = "KeyboardListenLayout";
    }
}

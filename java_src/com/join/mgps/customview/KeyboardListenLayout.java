package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public class KeyboardListenLayout extends RelativeLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f65158b;

    public interface a {
        void onHidden();

        void onShown();
    }

    public KeyboardListenLayout(final Context context, final AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(final int widthMeasureSpec, final int heightMeasureSpec) {
        if (this.f65158b != null) {
            if (getMeasuredHeight() > View.MeasureSpec.getSize(heightMeasureSpec)) {
                this.f65158b.onShown();
            } else {
                this.f65158b.onHidden();
            }
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void setOnSoftKeyboardListener(final a listener) {
        this.f65158b = listener;
    }

    public KeyboardListenLayout(Context context) {
        super(context);
    }
}

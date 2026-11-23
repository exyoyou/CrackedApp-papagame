package com.windmill.sdk.models;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class ViewWrapper {
    private View mTarget;

    public ViewWrapper(View mTarget) {
        this.mTarget = mTarget;
    }

    public int getHeight() {
        return this.mTarget.getLayoutParams().height;
    }

    public int getWidth() {
        return this.mTarget.getLayoutParams().width;
    }

    public void setHeight(int height) {
        this.mTarget.getLayoutParams().height = height;
        this.mTarget.requestLayout();
    }

    public void setWidth(int width) {
        this.mTarget.getLayoutParams().width = width;
        this.mTarget.requestLayout();
    }
}

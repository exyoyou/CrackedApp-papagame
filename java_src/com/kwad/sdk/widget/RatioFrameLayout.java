package com.kwad.sdk.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class RatioFrameLayout extends FrameLayout {
    private double aJV;

    public RatioFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    public double getRatio() {
        return this.aJV;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.aJV != 0.0d) {
            int size = View.MeasureSpec.getSize(i10);
            new StringBuilder("widthSize:").append(size);
            i11 = View.MeasureSpec.makeMeasureSpec((int) (((double) size) * this.aJV), 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    public void setRatio(double d10) {
        this.aJV = d10;
    }

    public RatioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RatioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.aJV = 0.0d;
    }
}

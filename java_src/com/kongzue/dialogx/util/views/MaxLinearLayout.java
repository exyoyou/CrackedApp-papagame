package com.kongzue.dialogx.util.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.kongzue.dialogx.R;

/* JADX INFO: loaded from: classes3.dex */
public class MaxLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f74321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f74322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f74323f;

    public MaxLinearLayout(Context context) {
        super(context);
        this.f74323f = -1;
        b(context, null);
    }

    private void b(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DialogXMaxLayout);
            this.f74319b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DialogXMaxLayout_maxLayoutWidth, 0);
            this.f74320c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DialogXMaxLayout_maxLayoutHeight, 0);
            this.f74321d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DialogXMaxLayout_minLayoutWidth, 0);
            this.f74322e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DialogXMaxLayout_minLayoutHeight, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
        int minimumWidth = this.f74321d;
        if (minimumWidth == 0) {
            minimumWidth = getMinimumWidth();
        }
        this.f74321d = minimumWidth;
        int minimumHeight = this.f74322e;
        if (minimumHeight == 0) {
            minimumHeight = getMinimumHeight();
        }
        this.f74322e = minimumHeight;
    }

    public int a(float f10) {
        return (int) ((f10 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public MaxLinearLayout c(int i10) {
        this.f74320c = i10;
        return this;
    }

    public MaxLinearLayout d(int i10) {
        this.f74319b = i10;
        return this;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i10);
        if (this.f74323f == -1 && size2 != 0) {
            this.f74323f = size2;
        }
        int i12 = this.f74320c;
        if (size > i12 && i12 != 0) {
            size = i12;
        }
        int i13 = this.f74319b;
        if (size2 > i13 && i13 != 0) {
            size2 = i13;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size2, mode2), View.MeasureSpec.makeMeasureSpec(size, mode));
    }

    @Override // android.view.View
    public void setMinimumHeight(int i10) {
        this.f74322e = i10;
        super.setMinimumHeight(i10);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i10) {
        this.f74321d = i10;
        super.setMinimumWidth(i10);
    }

    public MaxLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f74323f = -1;
        b(context, attributeSet);
    }

    public MaxLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f74323f = -1;
        b(context, attributeSet);
    }
}

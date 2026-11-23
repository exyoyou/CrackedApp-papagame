package com.papa91.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* JADX INFO: loaded from: classes2.dex */
public class LeanTextView extends AppCompatTextView {
    private int mDegrees;

    public LeanTextView(Context context) {
        super(context, null);
    }

    public int getmDegrees() {
        return this.mDegrees;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        canvas.translate(getCompoundPaddingLeft(), getExtendedPaddingTop());
        canvas.rotate(this.mDegrees, getWidth() / 2.0f, getHeight() / 2.0f);
        super.onDraw(canvas);
        canvas.restore();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        setMeasuredDimension(getMeasuredWidth(), getMeasuredWidth());
    }

    public void setmDegrees(int i10) {
        this.mDegrees = i10;
        invalidate();
    }

    public LeanTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.textViewStyle);
        setGravity(17);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.papa91.mix.R.styleable.LeanTextView);
        this.mDegrees = typedArrayObtainStyledAttributes.getInteger(com.papa91.mix.R.styleable.LeanTextView_degree, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}

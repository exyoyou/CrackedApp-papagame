package com.join.mgps.activity.login;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes9.dex */
@SuppressLint({"AppCompatCustomView"})
public class FitImageView extends ImageView {
    public FitImageView(Context context) {
        super(context);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        } else {
            int size = View.MeasureSpec.getSize(widthMeasureSpec);
            setMeasuredDimension(size, (int) Math.ceil((size * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth()));
        }
    }

    public FitImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
}

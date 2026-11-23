package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabLayout6 extends SlidingTabLayout1 {
    protected int K;

    public SlidingTabLayout6(Context context) {
        super(context);
        this.K = 4;
        this.f65728u = 0;
        this.K = (int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void e(Canvas canvas) {
        int i10;
        if (isInEditMode() || this.f65715h == 0) {
            return;
        }
        int height = getHeight();
        this.f65718k.setColor(this.f65720m);
        View childAt = this.f65713f.getChildAt(this.f65716i);
        float left = childAt.getLeft() * 1.0f;
        float right = childAt.getRight();
        if (this.f65717j > 0.0f && (i10 = this.f65716i) < this.f65715h - 1) {
            View childAt2 = this.f65713f.getChildAt(i10 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f10 = this.f65717j;
            left = (left2 * f10) + ((1.0f - f10) * left);
            right = (right2 * f10) + ((1.0f - f10) * right);
        }
        float f11 = (int) (((1.0f - this.f65727t) * (right - left)) / 2.0f);
        float f12 = height;
        RectF rectF = new RectF(left + f11, height - this.f65726s, right - f11, f12);
        int i11 = this.K;
        canvas.drawRoundRect(rectF, i11, i11, this.f65718k);
        this.f65718k.setColor(this.f65721n);
        canvas.drawRect(0.0f, height - this.f65728u, this.f65713f.getWidth(), f12, this.f65718k);
        this.f65719l.setColor(this.f65722o);
        for (int i12 = 0; i12 < this.f65715h - 1; i12++) {
            View childAt3 = this.f65713f.getChildAt(i12);
            canvas.drawLine(childAt3.getRight(), this.f65729v, childAt3.getRight(), height - this.f65729v, this.f65719l);
        }
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void i() {
        for (int i10 = 0; i10 < this.f65715h; i10++) {
            View childAt = this.f65713f.getChildAt(i10);
            childAt.setBackgroundResource(this.F);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f65732y);
                textView.setTypeface(this.C, this.D);
                textView.setTextColor(this.A);
                textView.setTypeface(Typeface.defaultFromStyle(0));
                ViewPager viewPager = this.f65714g;
                if (viewPager != null && i10 == viewPager.getCurrentItem()) {
                    textView.setTextColor(this.B);
                    textView.setTypeface(Typeface.defaultFromStyle(1));
                    textView.setTextSize(0, this.f65733z);
                }
                if (this.H != null && i10 == this.f65716i) {
                    textView.setTextColor(this.B);
                    textView.setTypeface(Typeface.defaultFromStyle(1));
                    textView.setTextSize(0, this.f65733z);
                }
                if (this.f65724q) {
                    textView.setAllCaps(true);
                }
            }
        }
    }

    public SlidingTabLayout6(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.K = 4;
        this.f65728u = 0;
        this.K = (int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
    }
}

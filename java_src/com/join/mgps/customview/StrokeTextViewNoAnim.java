package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class StrokeTextViewNoAnim extends TextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f65916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f65917c;

    public StrokeTextViewNoAnim(Context context) {
        super(context);
        this.f65916b = null;
        this.f65916b = new TextView(context);
        a(null);
        this.f65917c = context;
    }

    public void a(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.StrokeTextView);
            int color = typedArrayObtainStyledAttributes.getColor(1, 0);
            TextPaint paint = this.f65916b.getPaint();
            paint.setStrokeWidth(4.0f);
            paint.setStyle(Paint.Style.STROKE);
            this.f65916b.setTextColor(color);
            this.f65916b.setGravity(getGravity());
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.f65916b.draw(canvas);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.f65916b.layout(left, top, right, bottom);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        CharSequence text = this.f65916b.getText();
        if (text == null || !text.equals(getText())) {
            this.f65916b.setText(getText());
            postInvalidate();
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f65916b.measure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        super.setLayoutParams(params);
        this.f65916b.setLayoutParams(params);
    }

    public void setStrokeColor(int color) {
        this.f65916b.setTextColor(color);
    }

    public StrokeTextViewNoAnim(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65916b = null;
        this.f65916b = new TextView(context, attrs);
        a(attrs);
        this.f65917c = context;
    }

    public StrokeTextViewNoAnim(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65916b = null;
        this.f65916b = new TextView(context, attrs, defStyle);
        a(attrs);
        this.f65917c = context;
    }
}

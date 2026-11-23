package com.byazt.ff;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.TextView;
import com.byazt.zqa.c;
import com.sigmob.sdk.archives.tar.e;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 142, 1951})
public class ShadowTextView extends TextView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f14158c;
    public RectF tt;
    public int ve;

    public ShadowTextView(Context context) {
        this(context, null);
    }

    private void c() {
        setTextColor(-1);
        Paint paint = new Paint();
        this.f14158c = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f14158c.setColor(Color.parseColor("#99333333"));
        this.f14158c.setAntiAlias(true);
        this.f14158c.setStrokeWidth(0.0f);
        this.tt = new RectF();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF = this.tt;
        float f10 = rectF.bottom;
        canvas.drawRoundRect(rectF, f10 / 2.0f, f10 / 2.0f, this.f14158c);
        canvas.translate((this.tt.right / 2.0f) - (getPaint().measureText(getText().toString()) / 2.0f), 0.0f);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth <= 0 || measuredHeight <= 0) {
            this.tt.set(0.0f, 0.0f, 0.0f, 0.0f);
            return;
        }
        int iMeasureText = (int) getPaint().measureText(e.V);
        this.ve = iMeasureText;
        if (measuredWidth < iMeasureText) {
            measuredWidth = iMeasureText;
        }
        int i12 = measuredWidth + ((measuredHeight / 2) * 2);
        setMeasuredDimension(i12, measuredHeight);
        this.tt.set(0.0f, 0.0f, i12, measuredHeight);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.ve = 0;
        c();
    }
}

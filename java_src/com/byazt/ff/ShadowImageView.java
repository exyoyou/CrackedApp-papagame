package com.byazt.ff;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.ImageView;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 142, 2285})
@SuppressLint({"AppCompatCustomView"})
public class ShadowImageView extends ImageView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f14157c;
    public RectF tt;

    public ShadowImageView(Context context) {
        super(context);
        c();
    }

    private void c() {
        Paint paint = new Paint();
        this.f14157c = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f14157c.setColor(Color.parseColor("#99333333"));
        this.f14157c.setAntiAlias(true);
        this.f14157c.setStrokeWidth(0.0f);
        this.tt = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF = this.tt;
        canvas.drawRoundRect(rectF, rectF.right / 2.0f, rectF.bottom / 2.0f, this.f14157c);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.tt.right == getMeasuredWidth() && this.tt.bottom == getMeasuredHeight()) {
            return;
        }
        this.tt.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
    }
}

package com.beizi.ad.internal.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: classes6.dex */
public class CustomRoundImageView extends AppCompatImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RectF f9111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f9112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f9113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f9115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint f9116f;

    public CustomRoundImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f9111a = new RectF();
        this.f9112b = 0.0f;
        this.f9113c = null;
        this.f9114d = 0;
        this.f9115e = new Paint();
        this.f9116f = new Paint();
        a();
    }

    private void a() {
        this.f9115e.setAntiAlias(true);
        this.f9115e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f9116f.setAntiAlias(true);
        this.f9116f.setColor(-1);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f9111a, this.f9116f, 31);
        RectF rectF = this.f9111a;
        float f10 = this.f9112b;
        canvas.drawRoundRect(rectF, f10, f10, this.f9116f);
        canvas.saveLayer(this.f9111a, this.f9115e, 31);
        super.draw(canvas);
        if (this.f9114d > 0 && !TextUtils.isEmpty(this.f9113c) && this.f9113c.startsWith("#")) {
            Paint paint = new Paint();
            paint.setColor(Color.parseColor(this.f9113c));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(this.f9114d);
            paint.setAntiAlias(true);
            RectF rectF2 = this.f9111a;
            float f11 = this.f9112b;
            canvas.drawRoundRect(rectF2, f11, f11, paint);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f9111a.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setBorderColor(String str) {
        this.f9113c = str;
        invalidate();
    }

    public void setBorderWidth(int i10) {
        this.f9114d = i10;
        invalidate();
    }

    public void setRectRadius(float f10) {
        this.f9112b = f10;
        invalidate();
    }

    public CustomRoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9111a = new RectF();
        this.f9112b = 0.0f;
        this.f9113c = null;
        this.f9114d = 0;
        this.f9115e = new Paint();
        this.f9116f = new Paint();
        a();
    }

    public CustomRoundImageView(Context context) {
        super(context);
        this.f9111a = new RectF();
        this.f9112b = 0.0f;
        this.f9113c = null;
        this.f9114d = 0;
        this.f9115e = new Paint();
        this.f9116f = new Paint();
        a();
    }
}

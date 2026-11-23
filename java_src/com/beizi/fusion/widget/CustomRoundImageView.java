package com.beizi.fusion.widget;

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
    private final RectF f10771a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f10772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f10773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f10775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint f10776f;

    public CustomRoundImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10771a = new RectF();
        this.f10772b = 0.0f;
        this.f10773c = null;
        this.f10774d = 0;
        this.f10775e = new Paint();
        this.f10776f = new Paint();
        a();
    }

    private void a() {
        this.f10775e.setAntiAlias(true);
        this.f10775e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f10776f.setAntiAlias(true);
        this.f10776f.setColor(-1);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f10771a, this.f10776f, 31);
        RectF rectF = this.f10771a;
        float f10 = this.f10772b;
        canvas.drawRoundRect(rectF, f10, f10, this.f10776f);
        canvas.saveLayer(this.f10771a, this.f10775e, 31);
        super.draw(canvas);
        if (this.f10774d > 0 && !TextUtils.isEmpty(this.f10773c) && this.f10773c.startsWith("#")) {
            Paint paint = new Paint();
            paint.setColor(Color.parseColor(this.f10773c));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(this.f10774d);
            paint.setAntiAlias(true);
            RectF rectF2 = this.f10771a;
            float f11 = this.f10772b;
            canvas.drawRoundRect(rectF2, f11, f11, paint);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f10771a.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setBorderColor(String str) {
        this.f10773c = str;
        invalidate();
    }

    public void setBorderWidth(int i10) {
        this.f10774d = i10;
        invalidate();
    }

    public void setRectRadius(float f10) {
        this.f10772b = f10;
        invalidate();
    }

    public CustomRoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10771a = new RectF();
        this.f10772b = 0.0f;
        this.f10773c = null;
        this.f10774d = 0;
        this.f10775e = new Paint();
        this.f10776f = new Paint();
        a();
    }

    public CustomRoundImageView(Context context) {
        super(context);
        this.f10771a = new RectF();
        this.f10772b = 0.0f;
        this.f10773c = null;
        this.f10774d = 0;
        this.f10775e = new Paint();
        this.f10776f = new Paint();
        a();
    }
}

package com.beizi.ad.internal.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: classes6.dex */
public class DrawTextImageView extends AppCompatImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f9118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f9119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f9120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9121e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9122f;

    public DrawTextImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f9117a = "";
        this.f9118b = 30.0f;
        this.f9119c = -1000.0f;
        this.f9120d = -1000.0f;
        this.f9121e = 0;
        this.f9122f = 3;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f9117a.equals("")) {
            return;
        }
        Paint paint = new Paint();
        paint.setColor(getResources().getColor(this.f9121e));
        paint.setStrokeWidth(this.f9122f);
        paint.setStyle(Paint.Style.FILL);
        paint.setTextSize(this.f9118b);
        String str = this.f9117a;
        float width = this.f9119c;
        if (width == -1000.0f) {
            width = canvas.getWidth() - (this.f9118b * this.f9117a.length());
        }
        float height = this.f9120d;
        if (height == -1000.0f) {
            height = canvas.getHeight() - 50;
        }
        canvas.drawText(str, width, height, paint);
    }

    public void setDrawLocalXY(float f10, float f11) {
        this.f9119c = f10;
        this.f9120d = f11;
        drawableStateChanged();
    }

    public void setDrawText(String str) {
        this.f9117a = str;
        drawableStateChanged();
    }

    public void setDrawTextColorResourse(int i10) {
        this.f9121e = i10;
        drawableStateChanged();
    }

    public void setDrawTextSize(float f10) {
        this.f9118b = f10;
        drawableStateChanged();
    }

    public void setDrawTextStrokeWidth(int i10) {
        this.f9122f = i10;
        drawableStateChanged();
    }

    public DrawTextImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9117a = "";
        this.f9118b = 30.0f;
        this.f9119c = -1000.0f;
        this.f9120d = -1000.0f;
        this.f9121e = 0;
        this.f9122f = 3;
    }

    public DrawTextImageView(Context context) {
        super(context);
        this.f9117a = "";
        this.f9118b = 30.0f;
        this.f9119c = -1000.0f;
        this.f9120d = -1000.0f;
        this.f9121e = 0;
        this.f9122f = 3;
    }
}

package com.sigmob.sdk.base.blurkit;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes5.dex */
public class d extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f78834a = -16777216;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f78835b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f78836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f78837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PorterDuffXfermode f78838e;

    public d(Context context) {
        super(context, null);
        this.f78836c = 0.0f;
        this.f78837d = new RectF();
        this.f78838e = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
    }

    public float getCornerRadius() {
        return this.f78836c;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (!(drawable instanceof BitmapDrawable) || this.f78836c <= 0.0f) {
            super.onDraw(canvas);
            return;
        }
        this.f78837d.set(drawable.getBounds());
        int iSaveLayer = canvas.saveLayer(this.f78837d, null, 31);
        getImageMatrix().mapRect(this.f78837d);
        Paint paint = ((BitmapDrawable) drawable).getPaint();
        paint.setAntiAlias(true);
        paint.setColor(-16777216);
        Xfermode xfermode = paint.getXfermode();
        canvas.drawARGB(0, 0, 0, 0);
        RectF rectF = this.f78837d;
        float f10 = this.f78836c;
        canvas.drawRoundRect(rectF, f10, f10, paint);
        paint.setXfermode(this.f78838e);
        super.onDraw(canvas);
        paint.setXfermode(xfermode);
        canvas.restoreToCount(iSaveLayer);
    }

    public void setCornerRadius(float cornerRadius) {
        this.f78836c = cornerRadius;
    }

    public d(Context context, AttributeSet attributes) {
        super(context, attributes);
        this.f78836c = 0.0f;
        this.f78837d = new RectF();
        this.f78838e = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
    }
}

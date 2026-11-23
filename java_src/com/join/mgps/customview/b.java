package com.join.mgps.customview;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public class b extends Drawable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f66276f = "CircleDrawable";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Paint f66277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final int f66278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final BitmapShader f66279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected float f66280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Bitmap f66281e;

    public b(Bitmap bitmap) {
        this(bitmap, 0);
    }

    public void a() {
        Rect bounds = getBounds();
        if (bounds == null) {
            return;
        }
        Matrix matrix = new Matrix();
        float fWidth = bounds.width() / this.f66281e.getWidth();
        float fHeight = bounds.height() / this.f66281e.getHeight();
        if (fWidth <= fHeight) {
            fWidth = fHeight;
        }
        matrix.postScale(fWidth, fWidth);
        this.f66279c.setLocalMatrix(matrix);
    }

    public void b() {
        float fHeight;
        int i10;
        Rect bounds = getBounds();
        if (bounds.width() < bounds.height()) {
            fHeight = bounds.width() / 2.0f;
            i10 = this.f66278b;
        } else {
            fHeight = bounds.height() / 2.0f;
            i10 = this.f66278b;
        }
        this.f66280d = fHeight - i10;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.drawCircle(bounds.width() / 2.0f, bounds.height() / 2.0f, this.f66280d, this.f66277a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        a();
        b();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f66277a.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
        this.f66277a.setColorFilter(cf);
    }

    public b(Bitmap bitmap, int margin) {
        this.f66278b = margin;
        this.f66281e = bitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.f66279c = bitmapShader;
        Paint paint = new Paint();
        this.f66277a = paint;
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
    }
}

package com.facebook.drawee.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class n extends p {
    private final Paint E;
    private final Paint F;

    @Nullable
    private final Bitmap G;

    @Nullable
    private WeakReference<Bitmap> H;

    public n(Resources res, @Nullable Bitmap bitmap, @Nullable Paint paint) {
        super(new BitmapDrawable(res, bitmap));
        Paint paint2 = new Paint();
        this.E = paint2;
        Paint paint3 = new Paint(1);
        this.F = paint3;
        this.G = bitmap;
        if (paint != null) {
            paint2.set(paint);
        }
        paint2.setFlags(1);
        paint3.setStyle(Paint.Style.STROKE);
    }

    public static n n(Resources res, BitmapDrawable bitmapDrawable) {
        return new n(res, bitmapDrawable.getBitmap(), bitmapDrawable.getPaint());
    }

    private void p() {
        WeakReference<Bitmap> weakReference = this.H;
        if (weakReference == null || weakReference.get() != this.G) {
            this.H = new WeakReference<>(this.G);
            Paint paint = this.E;
            Bitmap bitmap = this.G;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            this.f27247g = true;
        }
        if (this.f27247g) {
            this.E.getShader().setLocalMatrix(this.f27265y);
            this.f27247g = false;
        }
        this.E.setFilterBitmap(g());
    }

    @Override // com.facebook.drawee.drawable.p, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("RoundedBitmapDrawable#draw");
        }
        if (!f()) {
            super.draw(canvas);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        m();
        l();
        p();
        int iSave = canvas.save();
        canvas.concat(this.f27262v);
        canvas.drawPath(this.f27246f, this.E);
        float f10 = this.f27245e;
        if (f10 > 0.0f) {
            this.F.setStrokeWidth(f10);
            this.F.setColor(f.d(this.f27248h, this.E.getAlpha()));
            canvas.drawPath(this.f27249i, this.F);
        }
        canvas.restoreToCount(iSave);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    @Override // com.facebook.drawee.drawable.p
    @VisibleForTesting
    boolean f() {
        return super.f() && this.G != null;
    }

    Paint o() {
        return this.E;
    }

    @Override // com.facebook.drawee.drawable.p, android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        super.setAlpha(alpha);
        if (alpha != this.E.getAlpha()) {
            this.E.setAlpha(alpha);
            super.setAlpha(alpha);
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.p, android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
        this.E.setColorFilter(colorFilter);
    }

    public n(Resources res, @Nullable Bitmap bitmap) {
        this(res, bitmap, null);
    }
}

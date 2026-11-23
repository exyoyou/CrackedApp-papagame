package com.sigmob.sdk.base.views;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class x extends Drawable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f80282i = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f80283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f80284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f80285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f80286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f80287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f80288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f80289g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RectF f80290h;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f80291a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f80292b = 12;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f80293c = Color.parseColor("#4d000000");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f80294d = 18;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f80295e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f80296f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int[] f80297g = {0};

        a() {
        }

        a a(int mShape) {
            this.f80291a = mShape;
            return this;
        }

        a b(int ShapeRadius) {
            this.f80292b = ShapeRadius;
            return this;
        }

        a c(int shadowColor) {
            this.f80293c = shadowColor;
            return this;
        }

        a d(int shadowRadius) {
            this.f80294d = shadowRadius;
            return this;
        }

        a e(int OffsetX) {
            this.f80295e = OffsetX;
            return this;
        }

        a f(int OffsetY) {
            this.f80296f = OffsetY;
            return this;
        }

        a g(int BgColor) {
            this.f80297g[0] = BgColor;
            return this;
        }

        a a(int[] BgColor) {
            this.f80297g = BgColor;
            return this;
        }

        x a() {
            return new x(this.f80291a, this.f80297g, this.f80292b, this.f80293c, this.f80294d, this.f80295e, this.f80296f);
        }
    }

    private x(int shape, int[] bgColor, int shapeRadius, int shadowColor, int shadowRadius, int offsetX, int offsetY) {
        this.f80285c = shape;
        this.f80289g = bgColor;
        this.f80286d = shapeRadius;
        this.f80284b = shadowRadius;
        this.f80287e = offsetX;
        this.f80288f = offsetY;
        Paint paint = new Paint();
        this.f80283a = paint;
        paint.setColor(0);
        paint.setAntiAlias(true);
        paint.setShadowLayer(shadowRadius, offsetX, offsetY, shadowColor);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
    }

    public static void a(View view, int bgColor, int shapeRadius, int shadowColor, int shadowRadius, int offsetX, int offsetY) {
        x xVarA = new a().g(bgColor).b(shapeRadius).c(shadowColor).d(shadowRadius).e(offsetX).f(offsetY).a();
        view.setLayerType(1, null);
        view.setBackground(xVarA);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint = new Paint();
        int[] iArr = this.f80289g;
        if (iArr != null) {
            if (iArr.length == 1) {
                paint.setColor(iArr[0]);
            } else {
                RectF rectF = this.f80290h;
                float f10 = rectF.left;
                float fHeight = rectF.height() / 2.0f;
                RectF rectF2 = this.f80290h;
                paint.setShader(new LinearGradient(f10, fHeight, rectF2.right, rectF2.height() / 2.0f, this.f80289g, (float[]) null, Shader.TileMode.CLAMP));
            }
        }
        paint.setAntiAlias(true);
        if (this.f80285c != 1) {
            canvas.drawCircle(this.f80290h.centerX(), this.f80290h.centerY(), Math.min(this.f80290h.width(), this.f80290h.height()) / 2.0f, this.f80283a);
            canvas.drawCircle(this.f80290h.centerX(), this.f80290h.centerY(), Math.min(this.f80290h.width(), this.f80290h.height()) / 2.0f, paint);
            return;
        }
        RectF rectF3 = this.f80290h;
        int i10 = this.f80286d;
        canvas.drawRoundRect(rectF3, i10, i10, this.f80283a);
        RectF rectF4 = this.f80290h;
        int i11 = this.f80286d;
        canvas.drawRoundRect(rectF4, i11, i11, paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f80283a.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int left, int top, int right, int bottom) {
        super.setBounds(left, top, right, bottom);
        int i10 = this.f80284b;
        int i11 = this.f80287e;
        int i12 = this.f80288f;
        this.f80290h = new RectF((left + i10) - i11, (top + i10) - i12, (right - i10) - i11, (bottom - i10) - i12);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f80283a.setColorFilter(colorFilter);
    }
}

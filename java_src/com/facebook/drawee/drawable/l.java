package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes9.dex */
public class l extends Drawable implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f27216b = new Paint(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f27217c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f27218d = new RectF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f27219e = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f27220f = -2147450625;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f27221g = 10;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f27222h = 20;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f27223i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f27224j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f27225k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f27226l = false;

    private void a(Canvas canvas, int color) {
        this.f27216b.setColor(color);
        this.f27216b.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f27217c.reset();
        this.f27217c.setFillType(Path.FillType.EVEN_ODD);
        this.f27217c.addRoundRect(this.f27218d, Math.min(this.f27224j, this.f27222h / 2), Math.min(this.f27224j, this.f27222h / 2), Path.Direction.CW);
        canvas.drawPath(this.f27217c, this.f27216b);
    }

    private void b(Canvas canvas, int level, int color) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int i10 = this.f27221g;
        int i11 = ((iWidth - (i10 * 2)) * level) / 10000;
        int i12 = bounds.left + i10;
        int i13 = bounds.bottom - i10;
        int i14 = this.f27222h;
        int i15 = i13 - i14;
        this.f27218d.set(i12, i15, i12 + i11, i15 + i14);
        a(canvas, color);
    }

    private void c(Canvas canvas, int level, int color) {
        Rect bounds = getBounds();
        int iHeight = bounds.height();
        int i10 = this.f27221g;
        int i11 = ((iHeight - (i10 * 2)) * level) / 10000;
        int i12 = bounds.left + i10;
        int i13 = bounds.top + i10;
        this.f27218d.set(i12, i13, i12 + this.f27222h, i13 + i11);
        a(canvas, color);
    }

    public int d() {
        return this.f27219e;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f27225k && this.f27223i == 0) {
            return;
        }
        if (this.f27226l) {
            c(canvas, 10000, this.f27219e);
            c(canvas, this.f27223i, this.f27220f);
        } else {
            b(canvas, 10000, this.f27219e);
            b(canvas, this.f27223i, this.f27220f);
        }
    }

    public int e() {
        return this.f27222h;
    }

    public int f() {
        return this.f27220f;
    }

    public boolean g() {
        return this.f27225k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return f.c(this.f27216b.getColor());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect padding) {
        int i10 = this.f27221g;
        padding.set(i10, i10, i10, i10);
        return this.f27221g != 0;
    }

    public boolean h() {
        return this.f27226l;
    }

    public int i() {
        return this.f27224j;
    }

    public void j(int backgroundColor) {
        if (this.f27219e != backgroundColor) {
            this.f27219e = backgroundColor;
            invalidateSelf();
        }
    }

    public void k(int barWidth) {
        if (this.f27222h != barWidth) {
            this.f27222h = barWidth;
            invalidateSelf();
        }
    }

    public void l(int color) {
        if (this.f27220f != color) {
            this.f27220f = color;
            invalidateSelf();
        }
    }

    public void m(boolean hideWhenZero) {
        this.f27225k = hideWhenZero;
    }

    @Override // com.facebook.drawee.drawable.c
    public Drawable n() {
        l lVar = new l();
        lVar.f27219e = this.f27219e;
        lVar.f27220f = this.f27220f;
        lVar.f27221g = this.f27221g;
        lVar.f27222h = this.f27222h;
        lVar.f27223i = this.f27223i;
        lVar.f27224j = this.f27224j;
        lVar.f27225k = this.f27225k;
        lVar.f27226l = this.f27226l;
        return lVar;
    }

    public void o(boolean isVertical) {
        if (this.f27226l != isVertical) {
            this.f27226l = isVertical;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int level) {
        this.f27223i = level;
        invalidateSelf();
        return true;
    }

    public void p(int padding) {
        if (this.f27221g != padding) {
            this.f27221g = padding;
            invalidateSelf();
        }
    }

    public void q(int radius) {
        if (this.f27224j != radius) {
            this.f27224j = radius;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f27216b.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
        this.f27216b.setColorFilter(cf);
    }
}

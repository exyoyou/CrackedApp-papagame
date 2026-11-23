package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.List;
import sc.b;
import tc.c;
import uc.a;

/* JADX INFO: loaded from: classes.dex */
public class WrapPagerIndicator extends View implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f94853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f94854c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f94856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Interpolator f94857f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Interpolator f94858g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<a> f94859h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f94860i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RectF f94861j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f94862k;

    public WrapPagerIndicator(Context context) {
        super(context);
        this.f94857f = new LinearInterpolator();
        this.f94858g = new LinearInterpolator();
        this.f94861j = new RectF();
        b(context);
    }

    private void b(Context context) {
        Paint paint = new Paint(1);
        this.f94860i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f94853b = b.a(context, 6.0d);
        this.f94854c = b.a(context, 10.0d);
    }

    @Override // tc.c
    public void a(List<a> list) {
        this.f94859h = list;
    }

    public Interpolator getEndInterpolator() {
        return this.f94858g;
    }

    public int getFillColor() {
        return this.f94855d;
    }

    public int getHorizontalPadding() {
        return this.f94854c;
    }

    public Paint getPaint() {
        return this.f94860i;
    }

    public float getRoundRadius() {
        return this.f94856e;
    }

    public Interpolator getStartInterpolator() {
        return this.f94857f;
    }

    public int getVerticalPadding() {
        return this.f94853b;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f94860i.setColor(this.f94855d);
        RectF rectF = this.f94861j;
        float f10 = this.f94856e;
        canvas.drawRoundRect(rectF, f10, f10, this.f94860i);
    }

    @Override // tc.c
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // tc.c
    public void onPageScrolled(int i10, float f10, int i11) {
        List<a> list = this.f94859h;
        if (list == null || list.isEmpty()) {
            return;
        }
        a aVarH = net.lucode.hackware.magicindicator.b.h(this.f94859h, i10);
        a aVarH2 = net.lucode.hackware.magicindicator.b.h(this.f94859h, i10 + 1);
        RectF rectF = this.f94861j;
        int i12 = aVarH.f97496e;
        rectF.left = (i12 - this.f94854c) + ((aVarH2.f97496e - i12) * this.f94858g.getInterpolation(f10));
        RectF rectF2 = this.f94861j;
        rectF2.top = aVarH.f97497f - this.f94853b;
        int i13 = aVarH.f97498g;
        rectF2.right = this.f94854c + i13 + ((aVarH2.f97498g - i13) * this.f94857f.getInterpolation(f10));
        RectF rectF3 = this.f94861j;
        rectF3.bottom = aVarH.f97499h + this.f94853b;
        if (!this.f94862k) {
            this.f94856e = rectF3.height() / 2.0f;
        }
        invalidate();
    }

    @Override // tc.c
    public void onPageSelected(int i10) {
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.f94858g = interpolator;
        if (interpolator == null) {
            this.f94858g = new LinearInterpolator();
        }
    }

    public void setFillColor(int i10) {
        this.f94855d = i10;
    }

    public void setHorizontalPadding(int i10) {
        this.f94854c = i10;
    }

    public void setRoundRadius(float f10) {
        this.f94856e = f10;
        this.f94862k = true;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f94857f = interpolator;
        if (interpolator == null) {
            this.f94857f = new LinearInterpolator();
        }
    }

    public void setVerticalPadding(int i10) {
        this.f94853b = i10;
    }
}

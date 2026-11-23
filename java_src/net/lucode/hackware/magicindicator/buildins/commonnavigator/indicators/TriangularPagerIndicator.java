package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.List;
import sc.b;
import tc.c;
import uc.a;

/* JADX INFO: loaded from: classes.dex */
public class TriangularPagerIndicator extends View implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<a> f94842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f94843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f94845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f94846f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f94847g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f94848h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f94849i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Path f94850j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Interpolator f94851k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f94852l;

    public TriangularPagerIndicator(Context context) {
        super(context);
        this.f94850j = new Path();
        this.f94851k = new LinearInterpolator();
        b(context);
    }

    private void b(Context context) {
        Paint paint = new Paint(1);
        this.f94843c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f94844d = b.a(context, 3.0d);
        this.f94847g = b.a(context, 14.0d);
        this.f94846f = b.a(context, 8.0d);
    }

    @Override // tc.c
    public void a(List<a> list) {
        this.f94842b = list;
    }

    public boolean c() {
        return this.f94848h;
    }

    public int getLineColor() {
        return this.f94845e;
    }

    public int getLineHeight() {
        return this.f94844d;
    }

    public Interpolator getStartInterpolator() {
        return this.f94851k;
    }

    public int getTriangleHeight() {
        return this.f94846f;
    }

    public int getTriangleWidth() {
        return this.f94847g;
    }

    public float getYOffset() {
        return this.f94849i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f94843c.setColor(this.f94845e);
        if (this.f94848h) {
            canvas.drawRect(0.0f, (getHeight() - this.f94849i) - this.f94846f, getWidth(), ((getHeight() - this.f94849i) - this.f94846f) + this.f94844d, this.f94843c);
        } else {
            canvas.drawRect(0.0f, (getHeight() - this.f94844d) - this.f94849i, getWidth(), getHeight() - this.f94849i, this.f94843c);
        }
        this.f94850j.reset();
        if (this.f94848h) {
            this.f94850j.moveTo(this.f94852l - (this.f94847g / 2), (getHeight() - this.f94849i) - this.f94846f);
            this.f94850j.lineTo(this.f94852l, getHeight() - this.f94849i);
            this.f94850j.lineTo(this.f94852l + (this.f94847g / 2), (getHeight() - this.f94849i) - this.f94846f);
        } else {
            this.f94850j.moveTo(this.f94852l - (this.f94847g / 2), getHeight() - this.f94849i);
            this.f94850j.lineTo(this.f94852l, (getHeight() - this.f94846f) - this.f94849i);
            this.f94850j.lineTo(this.f94852l + (this.f94847g / 2), getHeight() - this.f94849i);
        }
        this.f94850j.close();
        canvas.drawPath(this.f94850j, this.f94843c);
    }

    @Override // tc.c
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // tc.c
    public void onPageScrolled(int i10, float f10, int i11) {
        List<a> list = this.f94842b;
        if (list == null || list.isEmpty()) {
            return;
        }
        a aVarH = net.lucode.hackware.magicindicator.b.h(this.f94842b, i10);
        a aVarH2 = net.lucode.hackware.magicindicator.b.h(this.f94842b, i10 + 1);
        int i12 = aVarH.f97492a;
        float f11 = i12 + ((aVarH.f97494c - i12) / 2);
        int i13 = aVarH2.f97492a;
        this.f94852l = f11 + (((i13 + ((aVarH2.f97494c - i13) / 2)) - f11) * this.f94851k.getInterpolation(f10));
        invalidate();
    }

    @Override // tc.c
    public void onPageSelected(int i10) {
    }

    public void setLineColor(int i10) {
        this.f94845e = i10;
    }

    public void setLineHeight(int i10) {
        this.f94844d = i10;
    }

    public void setReverse(boolean z10) {
        this.f94848h = z10;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f94851k = interpolator;
        if (interpolator == null) {
            this.f94851k = new LinearInterpolator();
        }
    }

    public void setTriangleHeight(int i10) {
        this.f94846f = i10;
    }

    public void setTriangleWidth(int i10) {
        this.f94847g = i10;
    }

    public void setYOffset(float f10) {
        this.f94849i = f10;
    }
}

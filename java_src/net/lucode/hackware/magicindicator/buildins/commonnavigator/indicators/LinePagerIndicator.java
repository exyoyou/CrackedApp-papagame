package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.Arrays;
import java.util.List;
import sc.b;
import tc.c;
import uc.a;

/* JADX INFO: loaded from: classes.dex */
public class LinePagerIndicator extends View implements c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f94821n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f94822o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f94823p = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f94824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Interpolator f94825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Interpolator f94826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f94827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f94828f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f94829g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f94830h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f94831i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f94832j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<a> f94833k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<Integer> f94834l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RectF f94835m;

    public LinePagerIndicator(Context context) {
        super(context);
        this.f94825c = new LinearInterpolator();
        this.f94826d = new LinearInterpolator();
        this.f94835m = new RectF();
        b(context);
    }

    private void b(Context context) {
        Paint paint = new Paint(1);
        this.f94832j = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f94828f = b.a(context, 3.0d);
        this.f94830h = b.a(context, 10.0d);
    }

    @Override // tc.c
    public void a(List<a> list) {
        this.f94833k = list;
    }

    public List<Integer> getColors() {
        return this.f94834l;
    }

    public Interpolator getEndInterpolator() {
        return this.f94826d;
    }

    public float getLineHeight() {
        return this.f94828f;
    }

    public float getLineWidth() {
        return this.f94830h;
    }

    public int getMode() {
        return this.f94824b;
    }

    public Paint getPaint() {
        return this.f94832j;
    }

    public float getRoundRadius() {
        return this.f94831i;
    }

    public Interpolator getStartInterpolator() {
        return this.f94825c;
    }

    public float getXOffset() {
        return this.f94829g;
    }

    public float getYOffset() {
        return this.f94827e;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.f94835m;
        float f10 = this.f94831i;
        canvas.drawRoundRect(rectF, f10, f10, this.f94832j);
    }

    @Override // tc.c
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // tc.c
    public void onPageScrolled(int i10, float f10, int i11) {
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        int i12;
        List<a> list = this.f94833k;
        if (list == null || list.isEmpty()) {
            return;
        }
        List<Integer> list2 = this.f94834l;
        if (list2 != null && list2.size() > 0) {
            this.f94832j.setColor(sc.a.a(f10, this.f94834l.get(Math.abs(i10) % this.f94834l.size()).intValue(), this.f94834l.get(Math.abs(i10 + 1) % this.f94834l.size()).intValue()));
        }
        a aVarH = net.lucode.hackware.magicindicator.b.h(this.f94833k, i10);
        a aVarH2 = net.lucode.hackware.magicindicator.b.h(this.f94833k, i10 + 1);
        int i13 = this.f94824b;
        if (i13 != 0) {
            if (i13 == 1) {
                float f16 = aVarH.f97496e;
                f15 = this.f94829g;
                f11 = f16 + f15;
                f14 = aVarH2.f97496e + f15;
                f12 = aVarH.f97498g - f15;
                i12 = aVarH2.f97498g;
            } else {
                f11 = aVarH.f97492a + ((aVarH.f() - this.f94830h) / 2.0f);
                float f17 = aVarH2.f97492a + ((aVarH2.f() - this.f94830h) / 2.0f);
                f12 = ((aVarH.f() + this.f94830h) / 2.0f) + aVarH.f97492a;
                f13 = ((aVarH2.f() + this.f94830h) / 2.0f) + aVarH2.f97492a;
                f14 = f17;
            }
            this.f94835m.left = f11 + ((f14 - f11) * this.f94825c.getInterpolation(f10));
            this.f94835m.right = f12 + ((f13 - f12) * this.f94826d.getInterpolation(f10));
            this.f94835m.top = (getHeight() - this.f94828f) - this.f94827e;
            this.f94835m.bottom = getHeight() - this.f94827e;
            invalidate();
        }
        float f18 = aVarH.f97492a;
        f15 = this.f94829g;
        f11 = f18 + f15;
        f14 = aVarH2.f97492a + f15;
        f12 = aVarH.f97494c - f15;
        i12 = aVarH2.f97494c;
        f13 = i12 - f15;
        this.f94835m.left = f11 + ((f14 - f11) * this.f94825c.getInterpolation(f10));
        this.f94835m.right = f12 + ((f13 - f12) * this.f94826d.getInterpolation(f10));
        this.f94835m.top = (getHeight() - this.f94828f) - this.f94827e;
        this.f94835m.bottom = getHeight() - this.f94827e;
        invalidate();
    }

    @Override // tc.c
    public void onPageSelected(int i10) {
    }

    public void setColors(Integer... numArr) {
        this.f94834l = Arrays.asList(numArr);
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.f94826d = interpolator;
        if (interpolator == null) {
            this.f94826d = new LinearInterpolator();
        }
    }

    public void setLineHeight(float f10) {
        this.f94828f = f10;
    }

    public void setLineWidth(float f10) {
        this.f94830h = f10;
    }

    public void setMode(int i10) {
        if (i10 == 2 || i10 == 0 || i10 == 1) {
            this.f94824b = i10;
            return;
        }
        throw new IllegalArgumentException("mode " + i10 + " not supported.");
    }

    public void setRoundRadius(float f10) {
        this.f94831i = f10;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f94825c = interpolator;
        if (interpolator == null) {
            this.f94825c = new LinearInterpolator();
        }
    }

    public void setXOffset(float f10) {
        this.f94829g = f10;
    }

    public void setYOffset(float f10) {
        this.f94827e = f10;
    }
}

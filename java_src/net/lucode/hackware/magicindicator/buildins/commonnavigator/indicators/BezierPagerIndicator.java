package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.Arrays;
import java.util.List;
import sc.b;
import tc.c;
import uc.a;

/* JADX INFO: loaded from: classes.dex */
public class BezierPagerIndicator extends View implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<a> f94808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f94809c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f94810d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f94811e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f94812f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f94813g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f94814h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f94815i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f94816j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Path f94817k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<Integer> f94818l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Interpolator f94819m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Interpolator f94820n;

    public BezierPagerIndicator(Context context) {
        super(context);
        this.f94817k = new Path();
        this.f94819m = new AccelerateInterpolator();
        this.f94820n = new DecelerateInterpolator();
        c(context);
    }

    private void b(Canvas canvas) {
        this.f94817k.reset();
        float height = (getHeight() - this.f94813g) - this.f94814h;
        this.f94817k.moveTo(this.f94812f, height);
        this.f94817k.lineTo(this.f94812f, height - this.f94811e);
        Path path = this.f94817k;
        float f10 = this.f94812f;
        float f11 = this.f94810d;
        path.quadTo(f10 + ((f11 - f10) / 2.0f), height, f11, height - this.f94809c);
        this.f94817k.lineTo(this.f94810d, this.f94809c + height);
        Path path2 = this.f94817k;
        float f12 = this.f94812f;
        path2.quadTo(((this.f94810d - f12) / 2.0f) + f12, height, f12, this.f94811e + height);
        this.f94817k.close();
        canvas.drawPath(this.f94817k, this.f94816j);
    }

    private void c(Context context) {
        Paint paint = new Paint(1);
        this.f94816j = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f94814h = b.a(context, 3.5d);
        this.f94815i = b.a(context, 2.0d);
        this.f94813g = b.a(context, 1.5d);
    }

    @Override // tc.c
    public void a(List<a> list) {
        this.f94808b = list;
    }

    public float getMaxCircleRadius() {
        return this.f94814h;
    }

    public float getMinCircleRadius() {
        return this.f94815i;
    }

    public float getYOffset() {
        return this.f94813g;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(this.f94810d, (getHeight() - this.f94813g) - this.f94814h, this.f94809c, this.f94816j);
        canvas.drawCircle(this.f94812f, (getHeight() - this.f94813g) - this.f94814h, this.f94811e, this.f94816j);
        b(canvas);
    }

    @Override // tc.c
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // tc.c
    public void onPageScrolled(int i10, float f10, int i11) {
        List<a> list = this.f94808b;
        if (list == null || list.isEmpty()) {
            return;
        }
        List<Integer> list2 = this.f94818l;
        if (list2 != null && list2.size() > 0) {
            this.f94816j.setColor(sc.a.a(f10, this.f94818l.get(Math.abs(i10) % this.f94818l.size()).intValue(), this.f94818l.get(Math.abs(i10 + 1) % this.f94818l.size()).intValue()));
        }
        a aVarH = net.lucode.hackware.magicindicator.b.h(this.f94808b, i10);
        a aVarH2 = net.lucode.hackware.magicindicator.b.h(this.f94808b, i10 + 1);
        int i12 = aVarH.f97492a;
        float f11 = i12 + ((aVarH.f97494c - i12) / 2);
        int i13 = aVarH2.f97492a;
        float f12 = (i13 + ((aVarH2.f97494c - i13) / 2)) - f11;
        this.f94810d = (this.f94819m.getInterpolation(f10) * f12) + f11;
        this.f94812f = f11 + (f12 * this.f94820n.getInterpolation(f10));
        float f13 = this.f94814h;
        this.f94809c = f13 + ((this.f94815i - f13) * this.f94820n.getInterpolation(f10));
        float f14 = this.f94815i;
        this.f94811e = f14 + ((this.f94814h - f14) * this.f94819m.getInterpolation(f10));
        invalidate();
    }

    @Override // tc.c
    public void onPageSelected(int i10) {
    }

    public void setColors(Integer... numArr) {
        this.f94818l = Arrays.asList(numArr);
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.f94820n = interpolator;
        if (interpolator == null) {
            this.f94820n = new DecelerateInterpolator();
        }
    }

    public void setMaxCircleRadius(float f10) {
        this.f94814h = f10;
    }

    public void setMinCircleRadius(float f10) {
        this.f94815i = f10;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f94819m = interpolator;
        if (interpolator == null) {
            this.f94819m = new AccelerateInterpolator();
        }
    }

    public void setYOffset(float f10) {
        this.f94813g = f10;
    }
}

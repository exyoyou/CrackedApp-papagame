package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class d extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f79980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f79981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f79982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f79983d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Path f79984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Path f79985f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Path f79986g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Path f79987h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RectF f79988i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f79989j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f79990k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f79991l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private PointF f79992m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f79993n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private PointF f79994o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private PointF f79995p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private PathMeasure f79996q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private PathMeasure f79997r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f79998s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Path f79999t;

    public d(Context context) {
        super(context);
        this.f79998s = 0.2f;
        Paint paint = new Paint(1);
        this.f79980a = paint;
        paint.setColor(-3355444);
        this.f79980a.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.f79981b = paint2;
        paint2.setColor(-1);
        this.f79981b.setStyle(Paint.Style.STROKE);
        Paint paint3 = new Paint(1);
        this.f79982c = paint3;
        paint3.setColor(-1);
        this.f79982c.setStyle(Paint.Style.STROKE);
        Paint paint4 = new Paint(1);
        this.f79983d = paint4;
        paint4.setColor(-3355444);
        this.f79983d.setStyle(Paint.Style.FILL);
        this.f79999t = new Path();
        this.f79984e = new Path();
        this.f79985f = new Path();
        this.f79986g = new Path();
        this.f79987h = new Path();
        this.f79996q = new PathMeasure();
        this.f79997r = new PathMeasure();
        a();
    }

    private void a() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.d.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                d.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                d.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int height = getHeight();
        int width = getWidth();
        if (height == 0 || width == 0) {
            return;
        }
        int iDipsToIntPixels = Dips.dipsToIntPixels(0.5f, getContext());
        float f10 = height;
        float f11 = iDipsToIntPixels;
        float f12 = f10 / (100.0f * f11);
        float fMax = Math.max((int) (f12 * 3.0f * f11), iDipsToIntPixels * 2);
        this.f79989j = fMax;
        this.f79993n = (int) (f12 * (0.4f / f12) * f10);
        this.f79990k = 0.7853982f;
        this.f79991l = 3.0f * fMax;
        this.f79981b.setStrokeWidth(fMax);
        this.f79980a.setStrokeWidth(this.f79989j);
        this.f79982c.setStrokeWidth(this.f79989j);
        float f13 = f10 / 2.0f;
        float f14 = f13 - ((this.f79991l * f10) / this.f79993n);
        this.f79992m = new PointF(width / 2.0f, f13);
        PointF pointF = this.f79992m;
        float f15 = pointF.x;
        float f16 = pointF.y;
        this.f79988i = new RectF(f15 - f14, f16 - f14, f15 + f14, f16 + f14);
        this.f79994o = new PointF(this.f79992m.x - ((float) (Math.cos(this.f79990k) * ((double) (this.f79988i.width() / 2.0f)))), this.f79992m.y - ((float) (Math.sin(this.f79990k) * ((double) (this.f79988i.height() / 2.0f)))));
        this.f79995p = new PointF(this.f79992m.x + ((float) (Math.cos(this.f79990k) * ((double) (this.f79988i.width() / 2.0f)))), this.f79992m.y - ((float) (Math.sin(this.f79990k) * ((double) (this.f79988i.height() / 2.0f)))));
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint;
        int i10;
        super.onDraw(canvas);
        if (this.f79988i == null) {
            return;
        }
        double degrees = Math.toDegrees(this.f79990k);
        float f10 = (float) (180.0d - (2.0d * degrees));
        canvas.drawArc(this.f79988i, (float) (degrees + 180.0d), f10, false, this.f79980a);
        this.f79984e.reset();
        this.f79984e.lineTo(0.0f, 0.0f);
        this.f79999t.reset();
        this.f79999t.lineTo(0.0f, 0.0f);
        this.f79984e.arcTo(this.f79988i, -90.0f, (-f10) / 2.0f, true);
        this.f79996q.setPath(this.f79984e, false);
        this.f79996q.getSegment(0.0f, this.f79996q.getLength() * this.f79998s, this.f79999t, true);
        canvas.drawPath(this.f79999t, this.f79981b);
        this.f79985f.reset();
        this.f79985f.lineTo(0.0f, 0.0f);
        this.f79999t.reset();
        this.f79999t.lineTo(0.0f, 0.0f);
        this.f79985f.arcTo(this.f79988i, -90.0f, f10 / 2.0f, true);
        this.f79997r.setPath(this.f79985f, false);
        this.f79997r.getSegment(0.0f, this.f79997r.getLength() * this.f79998s, this.f79999t, true);
        canvas.drawPath(this.f79999t, this.f79982c);
        if (this.f79998s == 1.0f) {
            paint = this.f79983d;
            i10 = -1;
        } else {
            paint = this.f79983d;
            i10 = -3355444;
        }
        paint.setColor(i10);
        this.f79986g.reset();
        this.f79986g.lineTo(0.0f, 0.0f);
        a(this.f79986g, this.f79992m, this.f79994o, this.f79991l);
        canvas.drawPath(this.f79986g, this.f79983d);
        this.f79987h.reset();
        this.f79987h.lineTo(0.0f, 0.0f);
        b(this.f79987h, this.f79992m, this.f79995p, this.f79991l);
        canvas.drawPath(this.f79987h, this.f79983d);
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        a();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
    }

    public d(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f79998s = 0.2f;
        a();
    }

    private void b(Path path, PointF center, PointF arcPoint, float arrowSize) {
        float f10 = (arcPoint.y - center.y) / (arcPoint.x - center.x);
        float f11 = 0.5f * arrowSize;
        double d10 = f10;
        PointF pointF = new PointF(arcPoint.x + (((float) Math.sin(1.5707963267948966d - Math.atan(d10))) * f11), arcPoint.y + (((float) Math.cos(1.5707963267948966d - Math.atan(d10))) * f11));
        PointF pointF2 = new PointF(arcPoint.x - (((float) Math.sin(1.5707963267948966d - Math.atan(d10))) * f11), arcPoint.y - (f11 * ((float) Math.cos(1.5707963267948966d - Math.atan(d10)))));
        double d11 = 1.0f / f10;
        PointF pointF3 = new PointF(pointF2.x + (((float) Math.sin(Math.atan(d11) + 2.0943951023931953d)) * arrowSize), pointF2.y + (arrowSize * ((float) Math.cos(Math.atan(d11) + 2.0943951023931953d))));
        path.moveTo(pointF.x, pointF.y);
        path.lineTo(pointF2.x, pointF2.y);
        path.lineTo(pointF3.x, pointF3.y);
        path.close();
    }

    public void a(float process) {
        this.f79998s = process;
        invalidate();
    }

    public d(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f79998s = 0.2f;
        a();
    }

    private void a(Path path, PointF center, PointF arcPoint, float arrowSize) {
        float f10 = (arcPoint.y - center.y) / (arcPoint.x - center.x);
        float f11 = 0.5f * arrowSize;
        double d10 = f10;
        PointF pointF = new PointF(arcPoint.x + (((float) Math.sin(1.5707963267948966d - Math.atan(d10))) * f11), arcPoint.y + (((float) Math.cos(1.5707963267948966d - Math.atan(d10))) * f11));
        PointF pointF2 = new PointF(arcPoint.x - (((float) Math.sin(1.5707963267948966d - Math.atan(d10))) * f11), arcPoint.y - (f11 * ((float) Math.cos(1.5707963267948966d - Math.atan(d10)))));
        double d11 = 1.0f / f10;
        PointF pointF3 = new PointF(pointF2.x - (((float) Math.sin(1.0471975511965976d - Math.atan(d11))) * arrowSize), pointF2.y + (arrowSize * ((float) Math.cos(1.0471975511965976d - Math.atan(d11)))));
        path.moveTo(pointF.x, pointF.y);
        path.lineTo(pointF2.x, pointF2.y);
        path.lineTo(pointF3.x, pointF3.y);
        path.close();
    }
}

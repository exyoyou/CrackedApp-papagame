package com.join.mgps.ptr.header;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class a extends Drawable implements Animatable {
    private static final float A = 3.0f;
    private static final int B = 1333;
    private static final float C = 5.0f;
    private static final int D = 10;
    private static final int E = 5;
    private static final float F = 5.0f;
    private static final int G = 12;
    private static final int H = 6;
    private static final float I = 0.8f;
    private static final int J = 503316480;
    private static final int K = 1023410176;
    private static final float L = 3.5f;
    private static final float M = 0.0f;
    private static final float N = 1.75f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f72057p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f72058q = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Interpolator f72060s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Interpolator f72061t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f72063v = 40;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final float f72064w = 8.75f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final float f72065x = 2.5f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f72066y = 56;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final float f72067z = 12.5f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f72068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<Animation> f72069c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f72070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Drawable.Callback f72071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f72072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Resources f72073g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f72074h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Animation f72075i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f72076j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private double f72077k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private double f72078l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Animation f72079m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f72080n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ShapeDrawable f72081o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Interpolator f72059r = new LinearInterpolator();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Interpolator f72062u = new AccelerateDecelerateInterpolator();

    /* JADX INFO: renamed from: com.join.mgps.ptr.header.a$a, reason: collision with other inner class name */
    class C0739a implements Drawable.Callback {
        C0739a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable d10) {
            a.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable d10, Runnable what, long when) {
            a.this.scheduleSelf(what, when);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable d10, Runnable what) {
            a.this.unscheduleSelf(what);
        }
    }

    class b extends Animation {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f72083b;

        b(final h val$ring) {
            this.f72083b = val$ring;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            float fFloor = (float) (Math.floor(this.f72083b.j() / a.I) + 1.0d);
            this.f72083b.B(this.f72083b.k() + ((this.f72083b.i() - this.f72083b.k()) * interpolatedTime));
            this.f72083b.z(this.f72083b.j() + ((fFloor - this.f72083b.j()) * interpolatedTime));
            this.f72083b.r(1.0f - interpolatedTime);
        }
    }

    class c implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f72085b;

        c(final h val$ring) {
            this.f72085b = val$ring;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f72085b.m();
            this.f72085b.D();
            this.f72085b.A(false);
            a.this.f72074h.startAnimation(a.this.f72075i);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class d extends Animation {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f72087b;

        d(final h val$ring) {
            this.f72087b = val$ring;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            float radians = (float) Math.toRadians(((double) this.f72087b.l()) / (this.f72087b.d() * 6.283185307179586d));
            float fI = this.f72087b.i();
            float fK = this.f72087b.k();
            float fJ = this.f72087b.j();
            this.f72087b.x(fI + ((a.I - radians) * a.f72061t.getInterpolation(interpolatedTime)));
            this.f72087b.B(fK + (a.f72060s.getInterpolation(interpolatedTime) * a.I));
            this.f72087b.z(fJ + (0.25f * interpolatedTime));
            a.this.l((interpolatedTime * 144.0f) + ((a.this.f72076j / 5.0f) * 720.0f));
        }
    }

    class e implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f72089b;

        e(final h val$ring) {
            this.f72089b = val$ring;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            this.f72089b.D();
            this.f72089b.m();
            h hVar = this.f72089b;
            hVar.B(hVar.e());
            a aVar = a.this;
            aVar.f72076j = (aVar.f72076j + 1.0f) % 5.0f;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            a.this.f72076j = 0.0f;
        }
    }

    private static class f extends AccelerateDecelerateInterpolator {
        private f() {
        }

        @Override // android.view.animation.AccelerateDecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float input) {
            return super.getInterpolation(Math.max(0.0f, (input - 0.5f) * 2.0f));
        }

        /* synthetic */ f(C0739a c0739a) {
            this();
        }
    }

    private class g extends OvalShape {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RadialGradient f72091b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f72092c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Paint f72093d = new Paint();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f72094e;

        public g(int shadowRadius, int circleDiameter) {
            this.f72092c = shadowRadius;
            this.f72094e = circleDiameter;
            int i10 = this.f72094e;
            RadialGradient radialGradient = new RadialGradient(i10 / 2, i10 / 2, this.f72092c, new int[]{a.K, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f72091b = radialGradient;
            this.f72093d.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float fWidth = a.this.getBounds().width() / 2;
            float fHeight = a.this.getBounds().height() / 2;
            canvas.drawCircle(fWidth, fHeight, (this.f72094e / 2) + this.f72092c, this.f72093d);
            canvas.drawCircle(fWidth, fHeight, this.f72094e / 2, paint);
        }
    }

    private static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final RectF f72096a = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Paint f72097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Paint f72098c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Drawable.Callback f72099d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Paint f72100e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f72101f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f72102g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f72103h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f72104i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float f72105j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int[] f72106k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f72107l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private float f72108m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private float f72109n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private float f72110o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f72111p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private Path f72112q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private float f72113r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private double f72114s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f72115t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private int f72116u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f72117v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int f72118w;

        public h(Drawable.Callback callback) {
            Paint paint = new Paint();
            this.f72097b = paint;
            Paint paint2 = new Paint();
            this.f72098c = paint2;
            Paint paint3 = new Paint();
            this.f72100e = paint3;
            this.f72101f = 0.0f;
            this.f72102g = 0.0f;
            this.f72103h = 0.0f;
            this.f72104i = 5.0f;
            this.f72105j = a.f72065x;
            this.f72099d = callback;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setAntiAlias(true);
        }

        private void b(Canvas c10, float startAngle, float sweepAngle, Rect bounds) {
            if (this.f72111p) {
                Path path = this.f72112q;
                if (path == null) {
                    Path path2 = new Path();
                    this.f72112q = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f10 = (((int) this.f72105j) / 2) * this.f72113r;
                float fCos = (float) ((this.f72114s * Math.cos(0.0d)) + ((double) bounds.exactCenterX()));
                float fSin = (float) ((this.f72114s * Math.sin(0.0d)) + ((double) bounds.exactCenterY()));
                this.f72112q.moveTo(0.0f, 0.0f);
                this.f72112q.lineTo(this.f72115t * this.f72113r, 0.0f);
                Path path3 = this.f72112q;
                float f11 = this.f72115t;
                float f12 = this.f72113r;
                path3.lineTo((f11 * f12) / 2.0f, this.f72116u * f12);
                this.f72112q.offset(fCos - f10, fSin);
                this.f72112q.close();
                this.f72098c.setColor(this.f72106k[this.f72107l]);
                this.f72098c.setAlpha(this.f72117v);
                c10.rotate((startAngle + sweepAngle) - 5.0f, bounds.exactCenterX(), bounds.exactCenterY());
                c10.drawPath(this.f72112q, this.f72098c);
            }
        }

        private void n() {
            this.f72099d.invalidateDrawable(null);
        }

        public void A(boolean show) {
            if (this.f72111p != show) {
                this.f72111p = show;
                n();
            }
        }

        public void B(float startTrim) {
            this.f72101f = startTrim;
            n();
        }

        public void C(float strokeWidth) {
            this.f72104i = strokeWidth;
            this.f72097b.setStrokeWidth(strokeWidth);
            n();
        }

        public void D() {
            this.f72108m = this.f72101f;
            this.f72109n = this.f72102g;
            this.f72110o = this.f72103h;
        }

        public void a(Canvas c10, Rect bounds) {
            this.f72100e.setColor(this.f72118w);
            this.f72100e.setAlpha(this.f72117v);
            c10.drawCircle(bounds.exactCenterX(), bounds.exactCenterY(), bounds.width() / 2, this.f72100e);
            RectF rectF = this.f72096a;
            rectF.set(bounds);
            float f10 = this.f72105j;
            rectF.inset(f10, f10);
            float f11 = this.f72101f;
            float f12 = this.f72103h;
            float f13 = (f11 + f12) * 360.0f;
            float f14 = ((this.f72102g + f12) * 360.0f) - f13;
            this.f72097b.setColor(this.f72106k[this.f72107l]);
            this.f72097b.setAlpha(this.f72117v);
            c10.drawArc(rectF, f13, f14, false, this.f72097b);
            b(c10, f13, f14, bounds);
        }

        public int c() {
            return this.f72117v;
        }

        public double d() {
            return this.f72114s;
        }

        public float e() {
            return this.f72102g;
        }

        public float f() {
            return this.f72105j;
        }

        public float g() {
            return this.f72103h;
        }

        public float h() {
            return this.f72101f;
        }

        public float i() {
            return this.f72109n;
        }

        public float j() {
            return this.f72110o;
        }

        public float k() {
            return this.f72108m;
        }

        public float l() {
            return this.f72104i;
        }

        public void m() {
            this.f72107l = (this.f72107l + 1) % this.f72106k.length;
        }

        public void o() {
            this.f72108m = 0.0f;
            this.f72109n = 0.0f;
            this.f72110o = 0.0f;
            B(0.0f);
            x(0.0f);
            z(0.0f);
        }

        public void p(int alpha) {
            this.f72117v = alpha;
        }

        public void q(float width, float height) {
            this.f72115t = (int) width;
            this.f72116u = (int) height;
        }

        public void r(float scale) {
            if (scale != this.f72113r) {
                this.f72113r = scale;
                n();
            }
        }

        public void s(int color) {
            this.f72118w = color;
        }

        public void t(double centerRadius) {
            this.f72114s = centerRadius;
        }

        public void u(ColorFilter filter) {
            this.f72097b.setColorFilter(filter);
            n();
        }

        public void v(int index) {
            this.f72107l = index;
        }

        public void w(int[] colors) {
            this.f72106k = colors;
            v(0);
        }

        public void x(float endTrim) {
            this.f72102g = endTrim;
            n();
        }

        public void y(int width, int height) {
            float fMin = Math.min(width, height);
            double d10 = this.f72114s;
            this.f72105j = (float) ((d10 <= 0.0d || fMin < 0.0f) ? Math.ceil(this.f72104i / 2.0f) : ((double) (fMin / 2.0f)) - d10);
        }

        public void z(float rotation) {
            this.f72103h = rotation;
            n();
        }
    }

    private static class i extends AccelerateDecelerateInterpolator {
        private i() {
        }

        @Override // android.view.animation.AccelerateDecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float input) {
            return super.getInterpolation(Math.min(1.0f, input * 2.0f));
        }

        /* synthetic */ i(C0739a c0739a) {
            this();
        }
    }

    static {
        C0739a c0739a = null;
        f72060s = new f(c0739a);
        f72061t = new i(c0739a);
    }

    public a(Context context, View parent) {
        int[] iArr = {-3591113, -13149199, -536002, -13327536};
        this.f72068b = iArr;
        C0739a c0739a = new C0739a();
        this.f72071e = c0739a;
        this.f72074h = parent;
        this.f72073g = context.getResources();
        h hVar = new h(c0739a);
        this.f72070d = hVar;
        hVar.w(iArr);
        r(1);
        p();
    }

    private float g() {
        return this.f72072f;
    }

    private void m(double progressCircleWidth, double progressCircleHeight, double centerRadius, double strokeWidth, float arrowWidth, float arrowHeight) {
        h hVar = this.f72070d;
        float f10 = this.f72073g.getDisplayMetrics().density;
        double d10 = f10;
        this.f72077k = progressCircleWidth * d10;
        this.f72078l = progressCircleHeight * d10;
        hVar.C(((float) strokeWidth) * f10);
        hVar.t(centerRadius * d10);
        hVar.v(0);
        hVar.q(arrowWidth * f10, arrowHeight * f10);
        hVar.y((int) this.f72077k, (int) this.f72078l);
        o(this.f72077k);
    }

    private void o(final double diameter) {
        z6.b.c(this.f72074h.getContext());
        int iB = z6.b.b(1.75f);
        int iB2 = z6.b.b(0.0f);
        int iB3 = z6.b.b(L);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new g(iB3, (int) diameter));
        this.f72081o = shapeDrawable;
        this.f72074h.setLayerType(1, shapeDrawable.getPaint());
        this.f72081o.getPaint().setShadowLayer(iB3, iB2, iB, J);
    }

    private void p() {
        h hVar = this.f72070d;
        b bVar = new b(hVar);
        bVar.setInterpolator(f72062u);
        bVar.setDuration(666L);
        bVar.setAnimationListener(new c(hVar));
        d dVar = new d(hVar);
        dVar.setRepeatCount(-1);
        dVar.setRepeatMode(1);
        dVar.setInterpolator(f72059r);
        dVar.setDuration(1333L);
        dVar.setAnimationListener(new e(hVar));
        this.f72079m = bVar;
        this.f72075i = dVar;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas c10) {
        ShapeDrawable shapeDrawable = this.f72081o;
        if (shapeDrawable != null) {
            shapeDrawable.getPaint().setColor(this.f72080n);
            this.f72081o.draw(c10);
        }
        Rect bounds = getBounds();
        int iSave = c10.save();
        c10.rotate(this.f72072f, bounds.exactCenterX(), bounds.exactCenterY());
        this.f72070d.a(c10, bounds);
        c10.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f72070d.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f72078l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f72077k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h(float scale) {
        this.f72070d.r(scale);
    }

    public void i(int color) {
        this.f72080n = color;
        this.f72070d.s(color);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.f72069c;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Animation animation = arrayList.get(i10);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public void j(int... colors) {
        this.f72070d.w(colors);
        this.f72070d.v(0);
    }

    public void k(float rotation) {
        this.f72070d.z(rotation);
    }

    void l(float rotation) {
        this.f72072f = rotation;
        invalidateSelf();
    }

    public void n(float startAngle, float endAngle) {
        this.f72070d.B(startAngle);
        this.f72070d.x(endAngle);
    }

    public void q(boolean show) {
        this.f72070d.A(show);
    }

    public void r(int size) {
        if (size == 0) {
            m(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            m(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f72070d.p(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f72070d.u(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f72075i.reset();
        this.f72070d.D();
        if (this.f72070d.e() != this.f72070d.h()) {
            this.f72074h.startAnimation(this.f72079m);
            return;
        }
        this.f72070d.v(0);
        this.f72070d.o();
        this.f72074h.startAnimation(this.f72075i);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f72074h.clearAnimation();
        l(0.0f);
        this.f72070d.A(false);
        this.f72070d.v(0);
        this.f72070d.o();
    }
}

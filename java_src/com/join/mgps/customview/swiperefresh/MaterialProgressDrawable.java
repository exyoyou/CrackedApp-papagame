package com.join.mgps.customview.swiperefresh;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import androidx.annotation.NonNull;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.join.android.app.mgsim.wufun.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
class MaterialProgressDrawable extends Drawable implements Animatable {
    private static final float A = 0.5f;
    private static final int B = 1332;
    private static final float C = 5.0f;
    private static final int D = 10;
    private static final int E = 5;
    private static final float F = 5.0f;
    private static final int G = 12;
    private static final int H = 6;
    private static final float I = 0.8f;
    public static Bitmap J = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final float f66898o = 1080.0f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final int f66899p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final int f66900q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f66901r = 40;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final float f66902s = 8.75f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final float f66903t = 2.5f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f66904u = 40;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final float f66905v = 12.5f;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final float f66906w = 3.0f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final float f66908y = 0.75f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final float f66909z = 0.5f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<Animation> f66910b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f66911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f66912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Resources f66913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f66914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Animation f66915g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f66916h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private double f66917i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private double f66918j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f66919k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Drawable.Callback f66920l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Interpolator f66896m = new LinearInterpolator();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final Interpolator f66897n = new FastOutSlowInInterpolator();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int[] f66907x = {-16777216};

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProgressDrawableSize {
    }

    class a extends Animation {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f66921b;

        a(final d val$ring) {
            this.f66921b = val$ring;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            MaterialProgressDrawable materialProgressDrawable = MaterialProgressDrawable.this;
            if (materialProgressDrawable.f66919k) {
                materialProgressDrawable.a(interpolatedTime, this.f66921b);
                return;
            }
            float fC = materialProgressDrawable.c(this.f66921b);
            float fL = this.f66921b.l();
            float fN = this.f66921b.n();
            float fM = this.f66921b.m();
            MaterialProgressDrawable.this.n(interpolatedTime, this.f66921b);
            if (interpolatedTime <= 0.5f) {
                this.f66921b.F(fN + ((MaterialProgressDrawable.I - fC) * MaterialProgressDrawable.f66897n.getInterpolation(interpolatedTime / 0.5f)));
            }
            if (interpolatedTime > 0.5f) {
                this.f66921b.B(fL + ((MaterialProgressDrawable.I - fC) * MaterialProgressDrawable.f66897n.getInterpolation((interpolatedTime - 0.5f) / 0.5f)));
            }
            this.f66921b.D(fM + (0.25f * interpolatedTime));
            MaterialProgressDrawable materialProgressDrawable2 = MaterialProgressDrawable.this;
            materialProgressDrawable2.i((interpolatedTime * 216.0f) + ((materialProgressDrawable2.f66916h / 5.0f) * MaterialProgressDrawable.f66898o));
        }
    }

    class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f66923b;

        b(final d val$ring) {
            this.f66923b = val$ring;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            this.f66923b.H();
            this.f66923b.p();
            d dVar = this.f66923b;
            dVar.F(dVar.e());
            MaterialProgressDrawable materialProgressDrawable = MaterialProgressDrawable.this;
            if (!materialProgressDrawable.f66919k) {
                materialProgressDrawable.f66916h = (materialProgressDrawable.f66916h + 1.0f) % 5.0f;
                return;
            }
            materialProgressDrawable.f66919k = false;
            animation.setDuration(1332L);
            this.f66923b.E(false);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            MaterialProgressDrawable.this.f66916h = 0.0f;
        }
    }

    class c implements Drawable.Callback {
        c() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable d10) {
            MaterialProgressDrawable.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable d10, Runnable what, long when) {
            MaterialProgressDrawable.this.scheduleSelf(what, when);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable d10, Runnable what) {
            MaterialProgressDrawable.this.unscheduleSelf(what);
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final RectF f66926a = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Paint f66927b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Paint f66928c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Drawable.Callback f66929d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f66930e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f66931f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f66932g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f66933h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f66934i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int[] f66935j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f66936k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private float f66937l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private float f66938m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private float f66939n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f66940o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private Path f66941p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private float f66942q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private double f66943r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f66944s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f66945t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private int f66946u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final Paint f66947v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int f66948w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private int f66949x;

        d(Drawable.Callback callback) {
            Paint paint = new Paint();
            this.f66927b = paint;
            Paint paint2 = new Paint();
            this.f66928c = paint2;
            this.f66930e = 0.0f;
            this.f66931f = 0.0f;
            this.f66932g = 0.0f;
            this.f66933h = 5.0f;
            this.f66934i = MaterialProgressDrawable.f66903t;
            this.f66947v = new Paint(1);
            this.f66929d = callback;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
        }

        private void b(Canvas c10, float startAngle, float sweepAngle, Rect bounds) {
            if (this.f66940o) {
                Path path = this.f66941p;
                if (path == null) {
                    Path path2 = new Path();
                    this.f66941p = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f10 = (((int) this.f66934i) / 2) * this.f66942q;
                float fCos = (float) ((this.f66943r * Math.cos(0.0d)) + ((double) bounds.exactCenterX()));
                float fSin = (float) ((this.f66943r * Math.sin(0.0d)) + ((double) bounds.exactCenterY()));
                this.f66941p.moveTo(0.0f, 0.0f);
                this.f66941p.lineTo(this.f66944s * this.f66942q, 0.0f);
                Path path3 = this.f66941p;
                float f11 = this.f66944s;
                float f12 = this.f66942q;
                path3.lineTo((f11 * f12) / 2.0f, this.f66945t * f12);
                this.f66941p.offset(fCos - f10, fSin);
                this.f66941p.close();
                this.f66928c.setColor(this.f66949x);
                c10.rotate((startAngle + sweepAngle) - 5.0f, bounds.exactCenterX(), bounds.exactCenterY());
                c10.drawPath(this.f66941p, this.f66928c);
            }
        }

        private int h() {
            return (this.f66936k + 1) % this.f66935j.length;
        }

        private void q() {
            this.f66929d.invalidateDrawable(null);
        }

        public void A(@NonNull int[] colors) {
            this.f66935j = colors;
            z(0);
        }

        public void B(float endTrim) {
            this.f66931f = endTrim;
            q();
        }

        public void C(int width, int height) {
            float fMin = Math.min(width, height);
            double d10 = this.f66943r;
            this.f66934i = (float) ((d10 <= 0.0d || fMin < 0.0f) ? Math.ceil(this.f66933h / 2.0f) : ((double) (fMin / 2.0f)) - d10);
        }

        public void D(float rotation) {
            this.f66932g = rotation;
            q();
        }

        public void E(boolean show) {
            if (this.f66940o != show) {
                this.f66940o = show;
                q();
            }
        }

        public void F(float startTrim) {
            this.f66930e = startTrim;
            q();
        }

        public void G(float strokeWidth) {
            this.f66933h = strokeWidth;
            this.f66927b.setStrokeWidth(strokeWidth);
            q();
        }

        public void H() {
            this.f66937l = this.f66930e;
            this.f66938m = this.f66931f;
            this.f66939n = this.f66932g;
        }

        public void a(Canvas c10, Rect bounds) {
            RectF rectF = this.f66926a;
            rectF.set(bounds);
            float f10 = this.f66934i;
            rectF.inset(f10, f10);
            float f11 = this.f66930e;
            float f12 = this.f66932g;
            float f13 = (f11 + f12) * 360.0f;
            float f14 = ((this.f66931f + f12) * 360.0f) - f13;
            this.f66927b.setColor(this.f66949x);
            c10.rotate((f13 + f14) - 5.0f, bounds.exactCenterX(), bounds.exactCenterY());
            c10.drawBitmap(MaterialProgressDrawable.J, bounds, rectF, this.f66927b);
            if (this.f66946u < 255) {
                this.f66947v.setColor(this.f66948w);
                this.f66947v.setAlpha(0);
                c10.drawCircle(bounds.exactCenterX(), bounds.exactCenterY(), bounds.width() / 2, this.f66947v);
            }
        }

        public int c() {
            return this.f66946u;
        }

        public double d() {
            return this.f66943r;
        }

        public float e() {
            return this.f66931f;
        }

        public float f() {
            return this.f66934i;
        }

        public int g() {
            return this.f66935j[h()];
        }

        public float i() {
            return this.f66932g;
        }

        public float j() {
            return this.f66930e;
        }

        public int k() {
            return this.f66935j[this.f66936k];
        }

        public float l() {
            return this.f66938m;
        }

        public float m() {
            return this.f66939n;
        }

        public float n() {
            return this.f66937l;
        }

        public float o() {
            return this.f66933h;
        }

        public void p() {
            z(h());
        }

        public void r() {
            this.f66937l = 0.0f;
            this.f66938m = 0.0f;
            this.f66939n = 0.0f;
            F(0.0f);
            B(0.0f);
            D(0.0f);
        }

        public void s(int alpha) {
            this.f66946u = alpha;
        }

        public void t(float width, float height) {
            this.f66944s = (int) width;
            this.f66945t = (int) height;
        }

        public void u(float scale) {
            if (scale != this.f66942q) {
                this.f66942q = scale;
                q();
            }
        }

        public void v(int color) {
            this.f66948w = color;
        }

        public void w(double centerRadius) {
            this.f66943r = centerRadius;
        }

        public void x(int color) {
            this.f66949x = color;
        }

        public void y(ColorFilter filter) {
            this.f66927b.setColorFilter(filter);
            q();
        }

        public void z(int index) {
            this.f66936k = index;
            this.f66949x = this.f66935j[index];
        }
    }

    MaterialProgressDrawable(Context context, View parent) {
        c cVar = new c();
        this.f66920l = cVar;
        this.f66914f = parent;
        Resources resources = context.getResources();
        this.f66913e = resources;
        J = BitmapFactory.decodeResource(resources, R.drawable.icon);
        d dVar = new d(cVar);
        this.f66911c = dVar;
        dVar.A(f66907x);
        o(1);
        l();
    }

    private int b(float fraction, int startValue, int endValue) {
        int iIntValue = Integer.valueOf(startValue).intValue();
        int i10 = (iIntValue >> 24) & 255;
        int i11 = (iIntValue >> 16) & 255;
        int i12 = (iIntValue >> 8) & 255;
        int i13 = iIntValue & 255;
        int iIntValue2 = Integer.valueOf(endValue).intValue();
        return ((i10 + ((int) ((((iIntValue2 >> 24) & 255) - i10) * fraction))) << 24) | ((i11 + ((int) ((((iIntValue2 >> 16) & 255) - i11) * fraction))) << 16) | ((i12 + ((int) ((((iIntValue2 >> 8) & 255) - i12) * fraction))) << 8) | (i13 + ((int) (fraction * ((iIntValue2 & 255) - i13))));
    }

    private float d() {
        return this.f66912d;
    }

    private void j(double progressCircleWidth, double progressCircleHeight, double centerRadius, double strokeWidth, float arrowWidth, float arrowHeight) {
        d dVar = this.f66911c;
        float f10 = this.f66913e.getDisplayMetrics().density;
        double d10 = f10;
        this.f66917i = progressCircleWidth * d10;
        this.f66918j = progressCircleHeight * d10;
        dVar.G(((float) strokeWidth) * f10);
        dVar.w(centerRadius * d10);
        dVar.z(0);
        dVar.t(arrowWidth * f10, arrowHeight * f10);
        dVar.C((int) this.f66917i, (int) this.f66918j);
    }

    private void l() {
        d dVar = this.f66911c;
        a aVar = new a(dVar);
        aVar.setRepeatCount(-1);
        aVar.setRepeatMode(1);
        aVar.setInterpolator(f66896m);
        aVar.setAnimationListener(new b(dVar));
        this.f66915g = aVar;
    }

    void a(float interpolatedTime, d ring) {
        n(interpolatedTime, ring);
        float fFloor = (float) (Math.floor(ring.m() / I) + 1.0d);
        ring.F(ring.n() + (((ring.l() - c(ring)) - ring.n()) * interpolatedTime));
        ring.B(ring.l());
        ring.D(ring.m() + ((fFloor - ring.m()) * interpolatedTime));
    }

    float c(d ring) {
        return (float) Math.toRadians(((double) ring.o()) / (ring.d() * 6.283185307179586d));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas c10) {
        Rect bounds = getBounds();
        int iSave = c10.save();
        c10.rotate(this.f66912d, bounds.exactCenterX(), bounds.exactCenterY());
        this.f66911c.a(c10, bounds);
        c10.restoreToCount(iSave);
    }

    public void e(float scale) {
        this.f66911c.u(scale);
    }

    public void f(int color) {
        this.f66911c.v(color);
    }

    public void g(int... colors) {
        this.f66911c.A(colors);
        this.f66911c.z(0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f66911c.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f66918j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f66917i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h(float rotation) {
        this.f66911c.D(rotation);
    }

    void i(float rotation) {
        this.f66912d = rotation;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.f66910b;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Animation animation = arrayList.get(i10);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public void k(float startAngle, float endAngle) {
        this.f66911c.F(startAngle);
        this.f66911c.B(endAngle);
    }

    public void m(boolean show) {
        this.f66911c.E(show);
    }

    void n(float interpolatedTime, d ring) {
        if (interpolatedTime > 0.75f) {
            ring.x(b((interpolatedTime - 0.75f) / 0.25f, ring.k(), ring.g()));
        }
    }

    public void o(int size) {
        if (size == 0) {
            j(40.0d, 40.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            j(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f66911c.s(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f66911c.y(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f66915g.reset();
        this.f66911c.H();
        if (this.f66911c.e() != this.f66911c.j()) {
            this.f66919k = true;
            this.f66915g.setDuration(666L);
            this.f66914f.startAnimation(this.f66915g);
        } else {
            this.f66911c.z(0);
            this.f66911c.r();
            this.f66915g.setDuration(1332L);
            this.f66914f.startAnimation(this.f66915g);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f66914f.clearAnimation();
        i(0.0f);
        this.f66911c.E(false);
        this.f66911c.z(0);
        this.f66911c.r();
    }
}

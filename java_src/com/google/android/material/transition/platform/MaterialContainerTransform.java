package com.google.android.material.transition.platform;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.ArcMotion;
import android.transition.PathMotion;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.haima.hmcp.Constants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
public final class MaterialContainerTransform extends Transition {
    public static final int A = 0;
    public static final int B = 1;
    public static final int C = 2;
    public static final int D = 0;
    public static final int E = 1;
    public static final int F = 2;
    public static final int G = 3;
    public static final int H = 0;
    public static final int I = 1;
    public static final int J = 2;
    private static final String K = "MaterialContainerTransform";
    private static final d P;
    private static final d R;
    private static final float S = -1.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f32622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f32623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @IdRes
    private int f32626f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @IdRes
    private int f32627g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @IdRes
    private int f32628h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ColorInt
    private int f32629i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ColorInt
    private int f32630j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ColorInt
    private int f32631k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ColorInt
    private int f32632l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f32633m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f32634n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32635o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private View f32636p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private View f32637q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private com.google.android.material.shape.n f32638r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private com.google.android.material.shape.n f32639s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private c f32640t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private c f32641u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private c f32642v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private c f32643w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f32644x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f32645y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f32646z;
    private static final String L = "materialContainerTransition:bounds";
    private static final String M = "materialContainerTransition:shapeAppearance";
    private static final String[] N = {L, M};
    private static final d O = new d(new c(0.0f, 0.25f), new c(0.0f, 1.0f), new c(0.0f, 1.0f), new c(0.0f, 0.75f), null);
    private static final d Q = new d(new c(0.1f, 0.4f), new c(0.1f, 1.0f), new c(0.1f, 1.0f), new c(0.1f, 0.9f), null);

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface FitMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TransitionDirection {
    }

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f32647b;

        a(e eVar) {
            this.f32647b = eVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f32647b.o(valueAnimator.getAnimatedFraction());
        }
    }

    class b extends r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f32649a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f32650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f32651c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f32652d;

        b(View view, e eVar, View view2, View view3) {
            this.f32649a = view;
            this.f32650b = eVar;
            this.f32651c = view2;
            this.f32652d = view3;
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            MaterialContainerTransform.this.removeListener(this);
            if (MaterialContainerTransform.this.f32623c) {
                return;
            }
            this.f32651c.setAlpha(1.0f);
            this.f32652d.setAlpha(1.0f);
            p0.o(this.f32649a).a(this.f32650b);
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            p0.o(this.f32649a).b(this.f32650b);
            this.f32651c.setAlpha(0.0f);
            this.f32652d.setAlpha(0.0f);
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        private final float f32654a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        private final float f32655b;

        public c(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11) {
            this.f32654a = f10;
            this.f32655b = f11;
        }

        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        public float c() {
            return this.f32655b;
        }

        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        public float d() {
            return this.f32654a;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        private final c f32656a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NonNull
        private final c f32657b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NonNull
        private final c f32658c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NonNull
        private final c f32659d;

        /* synthetic */ d(c cVar, c cVar2, c cVar3, c cVar4, a aVar) {
            this(cVar, cVar2, cVar3, cVar4);
        }

        private d(@NonNull c cVar, @NonNull c cVar2, @NonNull c cVar3, @NonNull c cVar4) {
            this.f32656a = cVar;
            this.f32657b = cVar2;
            this.f32658c = cVar3;
            this.f32659d = cVar4;
        }
    }

    private static final class e extends Drawable {
        private static final int M = 754974720;
        private static final int N = -7829368;
        private static final float O = 0.3f;
        private static final float P = 1.5f;
        private final d A;
        private final com.google.android.material.transition.platform.a B;
        private final f C;
        private final boolean D;
        private final Paint E;
        private final Path F;
        private com.google.android.material.transition.platform.c G;
        private h H;
        private RectF I;
        private float J;
        private float K;
        private float L;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f32660a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final RectF f32661b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.google.android.material.shape.n f32662c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f32663d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final View f32664e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final RectF f32665f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final com.google.android.material.shape.n f32666g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final float f32667h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final Paint f32668i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final Paint f32669j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final Paint f32670k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final Paint f32671l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final Paint f32672m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final j f32673n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final PathMeasure f32674o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final float f32675p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final float[] f32676q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final boolean f32677r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final float f32678s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final float f32679t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final boolean f32680u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final MaterialShapeDrawable f32681v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private final RectF f32682w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final RectF f32683x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final RectF f32684y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private final RectF f32685z;

        class a implements v4.a.InterfaceC1251a {
            a() {
            }

            @Override // v4.a.InterfaceC1251a
            public void a(Canvas canvas) {
                e.this.f32660a.draw(canvas);
            }
        }

        class b implements v4.a.InterfaceC1251a {
            b() {
            }

            @Override // v4.a.InterfaceC1251a
            public void a(Canvas canvas) {
                e.this.f32664e.draw(canvas);
            }
        }

        /* synthetic */ e(PathMotion pathMotion, View view, RectF rectF, com.google.android.material.shape.n nVar, float f10, View view2, RectF rectF2, com.google.android.material.shape.n nVar2, float f11, int i10, int i11, int i12, int i13, boolean z10, boolean z11, com.google.android.material.transition.platform.a aVar, f fVar, d dVar, boolean z12, a aVar2) {
            this(pathMotion, view, rectF, nVar, f10, view2, rectF2, nVar2, f11, i10, i11, i12, i13, z10, z11, aVar, fVar, dVar, z12);
        }

        private static float d(RectF rectF, float f10) {
            return ((rectF.centerX() / (f10 / 2.0f)) - 1.0f) * O;
        }

        private static float e(RectF rectF, float f10) {
            return (rectF.centerY() / f10) * P;
        }

        private void f(Canvas canvas, RectF rectF, Path path, @ColorInt int i10) {
            PointF pointFM = m(rectF);
            if (this.L == 0.0f) {
                path.reset();
                path.moveTo(pointFM.x, pointFM.y);
            } else {
                path.lineTo(pointFM.x, pointFM.y);
                this.E.setColor(i10);
                canvas.drawPath(path, this.E);
            }
        }

        private void g(Canvas canvas, RectF rectF, @ColorInt int i10) {
            this.E.setColor(i10);
            canvas.drawRect(rectF, this.E);
        }

        private void h(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f32673n.d(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                j(canvas);
            } else {
                i(canvas);
            }
            canvas.restore();
        }

        private void i(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f32681v;
            RectF rectF = this.I;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f32681v.o0(this.J);
            this.f32681v.C0((int) this.K);
            this.f32681v.setShapeAppearanceModel(this.f32673n.c());
            this.f32681v.draw(canvas);
        }

        private void j(Canvas canvas) {
            com.google.android.material.shape.n nVarC = this.f32673n.c();
            if (!nVarC.u(this.I)) {
                canvas.drawPath(this.f32673n.d(), this.f32671l);
            } else {
                float fA = nVarC.r().a(this.I);
                canvas.drawRoundRect(this.I, fA, fA, this.f32671l);
            }
        }

        private void k(Canvas canvas) {
            n(canvas, this.f32670k);
            Rect bounds = getBounds();
            RectF rectF = this.f32684y;
            t.y(canvas, bounds, rectF.left, rectF.top, this.H.f32729b, this.G.f32707b, new b());
        }

        private void l(Canvas canvas) {
            n(canvas, this.f32669j);
            Rect bounds = getBounds();
            RectF rectF = this.f32682w;
            t.y(canvas, bounds, rectF.left, rectF.top, this.H.f32728a, this.G.f32706a, new a());
        }

        private static PointF m(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        private void n(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(float f10) {
            if (this.L != f10) {
                p(f10);
            }
        }

        private void p(float f10) {
            float f11;
            float f12;
            this.L = f10;
            this.f32672m.setAlpha((int) (this.f32677r ? t.m(0.0f, 255.0f, f10) : t.m(255.0f, 0.0f, f10)));
            this.f32674o.getPosTan(this.f32675p * f10, this.f32676q, null);
            float[] fArr = this.f32676q;
            float f13 = fArr[0];
            float f14 = fArr[1];
            if (f10 > 1.0f || f10 < 0.0f) {
                if (f10 > 1.0f) {
                    f12 = (f10 - 1.0f) / 0.00999999f;
                    f11 = 0.99f;
                } else {
                    f11 = 0.01f;
                    f12 = (f10 / 0.01f) * (-1.0f);
                }
                this.f32674o.getPosTan(this.f32675p * f11, fArr, null);
                float[] fArr2 = this.f32676q;
                f13 += (f13 - fArr2[0]) * f12;
                f14 += (f14 - fArr2[1]) * f12;
            }
            float f15 = f13;
            float f16 = f14;
            h hVarA = this.C.a(f10, ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32657b.f32654a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32657b.f32655b))).floatValue(), this.f32661b.width(), this.f32661b.height(), this.f32665f.width(), this.f32665f.height());
            this.H = hVarA;
            RectF rectF = this.f32682w;
            float f17 = hVarA.f32730c;
            rectF.set(f15 - (f17 / 2.0f), f16, (f17 / 2.0f) + f15, hVarA.f32731d + f16);
            RectF rectF2 = this.f32684y;
            h hVar = this.H;
            float f18 = hVar.f32732e;
            rectF2.set(f15 - (f18 / 2.0f), f16, f15 + (f18 / 2.0f), hVar.f32733f + f16);
            this.f32683x.set(this.f32682w);
            this.f32685z.set(this.f32684y);
            float fFloatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32658c.f32654a))).floatValue();
            float fFloatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32658c.f32655b))).floatValue();
            boolean zB = this.C.b(this.H);
            RectF rectF3 = zB ? this.f32683x : this.f32685z;
            float fN = t.n(0.0f, 1.0f, fFloatValue, fFloatValue2, f10);
            if (!zB) {
                fN = 1.0f - fN;
            }
            this.C.c(rectF3, fN, this.H);
            this.I = new RectF(Math.min(this.f32683x.left, this.f32685z.left), Math.min(this.f32683x.top, this.f32685z.top), Math.max(this.f32683x.right, this.f32685z.right), Math.max(this.f32683x.bottom, this.f32685z.bottom));
            this.f32673n.b(f10, this.f32662c, this.f32666g, this.f32682w, this.f32683x, this.f32685z, this.A.f32659d);
            this.J = t.m(this.f32663d, this.f32667h, f10);
            float fD = d(this.I, this.f32678s);
            float fE = e(this.I, this.f32679t);
            float f19 = this.J;
            float f20 = (int) (fE * f19);
            this.K = f20;
            this.f32671l.setShadowLayer(f19, (int) (fD * f19), f20, M);
            this.G = this.B.a(f10, ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32656a.f32654a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32656a.f32655b))).floatValue(), 0.35f);
            if (this.f32669j.getColor() != 0) {
                this.f32669j.setAlpha(this.G.f32706a);
            }
            if (this.f32670k.getColor() != 0) {
                this.f32670k.setAlpha(this.G.f32707b);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f32672m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f32672m);
            }
            int iSave = this.D ? canvas.save() : -1;
            if (this.f32680u && this.J > 0.0f) {
                h(canvas);
            }
            this.f32673n.a(canvas);
            n(canvas, this.f32668i);
            if (this.G.f32708c) {
                l(canvas);
                k(canvas);
            } else {
                k(canvas);
                l(canvas);
            }
            if (this.D) {
                canvas.restoreToCount(iSave);
                f(canvas, this.f32682w, this.F, -65281);
                g(canvas, this.f32683x, InputDeviceCompat.SOURCE_ANY);
                g(canvas, this.f32682w, Constants.LEVEL_SDK);
                g(canvas, this.f32685z, -16711681);
                g(canvas, this.f32684y, -16776961);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i10) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }

        private e(PathMotion pathMotion, View view, RectF rectF, com.google.android.material.shape.n nVar, float f10, View view2, RectF rectF2, com.google.android.material.shape.n nVar2, float f11, @ColorInt int i10, @ColorInt int i11, @ColorInt int i12, int i13, boolean z10, boolean z11, com.google.android.material.transition.platform.a aVar, f fVar, d dVar, boolean z12) {
            Paint paint = new Paint();
            this.f32668i = paint;
            Paint paint2 = new Paint();
            this.f32669j = paint2;
            Paint paint3 = new Paint();
            this.f32670k = paint3;
            this.f32671l = new Paint();
            Paint paint4 = new Paint();
            this.f32672m = paint4;
            this.f32673n = new j();
            this.f32676q = new float[]{rectF.centerX(), rectF.top};
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.f32681v = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.E = paint5;
            this.F = new Path();
            this.f32660a = view;
            this.f32661b = rectF;
            this.f32662c = nVar;
            this.f32663d = f10;
            this.f32664e = view2;
            this.f32665f = rectF2;
            this.f32666g = nVar2;
            this.f32667h = f11;
            this.f32677r = z10;
            this.f32680u = z11;
            this.B = aVar;
            this.C = fVar;
            this.A = dVar;
            this.D = z12;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            this.f32678s = displayMetrics.widthPixels;
            this.f32679t = displayMetrics.heightPixels;
            paint.setColor(i10);
            paint2.setColor(i11);
            paint3.setColor(i12);
            materialShapeDrawable.p0(ColorStateList.valueOf(0));
            materialShapeDrawable.y0(2);
            materialShapeDrawable.v0(false);
            materialShapeDrawable.w0(N);
            RectF rectF3 = new RectF(rectF);
            this.f32682w = rectF3;
            this.f32683x = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f32684y = rectF4;
            this.f32685z = new RectF(rectF4);
            PointF pointFM = m(rectF);
            PointF pointFM2 = m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(pointFM.x, pointFM.y, pointFM2.x, pointFM2.y), false);
            this.f32674o = pathMeasure;
            this.f32675p = pathMeasure.getLength();
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(t.d(i13));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            p(0.0f);
        }
    }

    static {
        a aVar = null;
        P = new d(new c(0.6f, 0.9f), new c(0.0f, 1.0f), new c(0.0f, 0.9f), new c(0.3f, 0.9f), aVar);
        R = new d(new c(0.6f, 0.9f), new c(0.0f, 0.9f), new c(0.0f, 0.9f), new c(0.2f, 0.9f), aVar);
    }

    public MaterialContainerTransform() {
        this.f32622b = false;
        this.f32623c = false;
        this.f32624d = false;
        this.f32625e = false;
        this.f32626f = R.id.content;
        this.f32627g = -1;
        this.f32628h = -1;
        this.f32629i = 0;
        this.f32630j = 0;
        this.f32631k = 0;
        this.f32632l = 1375731712;
        this.f32633m = 0;
        this.f32634n = 0;
        this.f32635o = 0;
        this.f32644x = Build.VERSION.SDK_INT >= 28;
        this.f32645y = -1.0f;
        this.f32646z = -1.0f;
    }

    private d B(boolean z10, d dVar, d dVar2) {
        if (!z10) {
            dVar = dVar2;
        }
        return new d((c) t.e(this.f32640t, dVar.f32656a), (c) t.e(this.f32641u, dVar.f32657b), (c) t.e(this.f32642v, dVar.f32658c), (c) t.e(this.f32643w, dVar.f32659d), null);
    }

    @StyleRes
    private static int D(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{com.google.android.material.R.attr.transitionShapeAppearance});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    private boolean G(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i10 = this.f32633m;
        if (i10 == 0) {
            return t.b(rectF2) > t.b(rectF);
        }
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return false;
        }
        throw new IllegalArgumentException("Invalid transition direction: " + this.f32633m);
    }

    private void I(Context context, boolean z10) {
        t.t(this, context, com.google.android.material.R.attr.motionEasingEmphasizedInterpolator, com.google.android.material.animation.b.f29368b);
        t.s(this, context, z10 ? com.google.android.material.R.attr.motionDurationLong2 : com.google.android.material.R.attr.motionDurationMedium4);
        if (this.f32624d) {
            return;
        }
        t.u(this, context, com.google.android.material.R.attr.motionPath);
    }

    private d b(boolean z10) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof k)) ? B(z10, Q, R) : B(z10, O, P);
    }

    private static RectF c(View view, @Nullable View view2, float f10, float f11) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF rectFH = t.h(view2);
        rectFH.offset(f10, f11);
        return rectFH;
    }

    private static com.google.android.material.shape.n d(@NonNull View view, @NonNull RectF rectF, @Nullable com.google.android.material.shape.n nVar) {
        return t.c(u(view, nVar), rectF);
    }

    private static void e(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i10, @Nullable com.google.android.material.shape.n nVar) {
        if (i10 != -1) {
            transitionValues.view = t.g(transitionValues.view, i10);
        } else if (view != null) {
            transitionValues.view = view;
        } else {
            View view2 = transitionValues.view;
            int i11 = com.google.android.material.R.id.mtrl_motion_snapshot_view;
            if (view2.getTag(i11) instanceof View) {
                View view3 = (View) transitionValues.view.getTag(i11);
                transitionValues.view.setTag(i11, null);
                transitionValues.view = view3;
            }
        }
        View view4 = transitionValues.view;
        if (!ViewCompat.isLaidOut(view4) && view4.getWidth() == 0 && view4.getHeight() == 0) {
            return;
        }
        RectF rectFI = view4.getParent() == null ? t.i(view4) : t.h(view4);
        transitionValues.values.put(L, rectFI);
        transitionValues.values.put(M, d(view4, rectFI, nVar));
    }

    private static float h(float f10, View view) {
        return f10 != -1.0f ? f10 : ViewCompat.getElevation(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static com.google.android.material.shape.n u(@NonNull View view, @Nullable com.google.android.material.shape.n nVar) {
        if (nVar != null) {
            return nVar;
        }
        int i10 = com.google.android.material.R.id.mtrl_motion_snapshot_view;
        if (view.getTag(i10) instanceof com.google.android.material.shape.n) {
            return (com.google.android.material.shape.n) view.getTag(i10);
        }
        Context context = view.getContext();
        int iD = D(context);
        if (iD != -1) {
            return com.google.android.material.shape.n.b(context, iD, 0).m();
        }
        return view instanceof com.google.android.material.shape.r ? ((com.google.android.material.shape.r) view).getShapeAppearanceModel() : com.google.android.material.shape.n.a().m();
    }

    @IdRes
    public int A() {
        return this.f32627g;
    }

    public int C() {
        return this.f32633m;
    }

    public boolean E() {
        return this.f32622b;
    }

    public boolean F() {
        return this.f32644x;
    }

    public boolean H() {
        return this.f32623c;
    }

    public void J(@ColorInt int i10) {
        this.f32629i = i10;
        this.f32630j = i10;
        this.f32631k = i10;
    }

    public void K(@ColorInt int i10) {
        this.f32629i = i10;
    }

    public void L(boolean z10) {
        this.f32622b = z10;
    }

    public void M(@IdRes int i10) {
        this.f32626f = i10;
    }

    public void N(boolean z10) {
        this.f32644x = z10;
    }

    public void O(@ColorInt int i10) {
        this.f32631k = i10;
    }

    public void P(float f10) {
        this.f32646z = f10;
    }

    public void Q(@Nullable com.google.android.material.shape.n nVar) {
        this.f32639s = nVar;
    }

    public void R(@Nullable View view) {
        this.f32637q = view;
    }

    public void S(@IdRes int i10) {
        this.f32628h = i10;
    }

    public void T(int i10) {
        this.f32634n = i10;
    }

    public void U(@Nullable c cVar) {
        this.f32640t = cVar;
    }

    public void V(int i10) {
        this.f32635o = i10;
    }

    public void W(boolean z10) {
        this.f32623c = z10;
    }

    public void X(@Nullable c cVar) {
        this.f32642v = cVar;
    }

    public void Y(@Nullable c cVar) {
        this.f32641u = cVar;
    }

    public void Z(@ColorInt int i10) {
        this.f32632l = i10;
    }

    public void a0(@Nullable c cVar) {
        this.f32643w = cVar;
    }

    public void b0(@ColorInt int i10) {
        this.f32630j = i10;
    }

    public void c0(float f10) {
        this.f32645y = f10;
    }

    @Override // android.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f32637q, this.f32628h, this.f32639s);
    }

    @Override // android.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f32636p, this.f32627g, this.f32638r);
    }

    @Override // android.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        View viewF;
        View view;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get(L);
            com.google.android.material.shape.n nVar = (com.google.android.material.shape.n) transitionValues.values.get(M);
            if (rectF != null && nVar != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get(L);
                com.google.android.material.shape.n nVar2 = (com.google.android.material.shape.n) transitionValues2.values.get(M);
                if (rectF2 != null && nVar2 != null) {
                    View view2 = transitionValues.view;
                    View view3 = transitionValues2.view;
                    View view4 = view3.getParent() != null ? view3 : view2;
                    if (this.f32626f == view4.getId()) {
                        viewF = (View) view4.getParent();
                        view = view4;
                    } else {
                        viewF = t.f(view4, this.f32626f);
                        view = null;
                    }
                    RectF rectFH = t.h(viewF);
                    float f10 = -rectFH.left;
                    float f11 = -rectFH.top;
                    RectF rectFC = c(viewF, view, f10, f11);
                    rectF.offset(f10, f11);
                    rectF2.offset(f10, f11);
                    boolean zG = G(rectF, rectF2);
                    if (!this.f32625e) {
                        I(view4.getContext(), zG);
                    }
                    e eVar = new e(getPathMotion(), view2, rectF, nVar, h(this.f32645y, view2), view3, rectF2, nVar2, h(this.f32646z, view3), this.f32629i, this.f32630j, this.f32631k, this.f32632l, zG, this.f32644x, com.google.android.material.transition.platform.b.a(this.f32634n, zG), g.a(this.f32635o, zG, rectF, rectF2), b(zG), this.f32622b, null);
                    eVar.setBounds(Math.round(rectFC.left), Math.round(rectFC.top), Math.round(rectFC.right), Math.round(rectFC.bottom));
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    valueAnimatorOfFloat.addUpdateListener(new a(eVar));
                    addListener(new b(viewF, eVar, view2, view3));
                    return valueAnimatorOfFloat;
                }
            }
        }
        return null;
    }

    public void d0(@Nullable com.google.android.material.shape.n nVar) {
        this.f32638r = nVar;
    }

    public void e0(@Nullable View view) {
        this.f32636p = view;
    }

    @ColorInt
    public int f() {
        return this.f32629i;
    }

    public void f0(@IdRes int i10) {
        this.f32627g = i10;
    }

    @IdRes
    public int g() {
        return this.f32626f;
    }

    public void g0(int i10) {
        this.f32633m = i10;
    }

    @Override // android.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return N;
    }

    @ColorInt
    public int i() {
        return this.f32631k;
    }

    public float j() {
        return this.f32646z;
    }

    @Nullable
    public com.google.android.material.shape.n k() {
        return this.f32639s;
    }

    @Nullable
    public View l() {
        return this.f32637q;
    }

    @IdRes
    public int m() {
        return this.f32628h;
    }

    public int o() {
        return this.f32634n;
    }

    @Nullable
    public c p() {
        return this.f32640t;
    }

    public int q() {
        return this.f32635o;
    }

    @Nullable
    public c r() {
        return this.f32642v;
    }

    @Nullable
    public c s() {
        return this.f32641u;
    }

    @Override // android.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f32624d = true;
    }

    @ColorInt
    public int t() {
        return this.f32632l;
    }

    @Nullable
    public c v() {
        return this.f32643w;
    }

    @ColorInt
    public int w() {
        return this.f32630j;
    }

    public float x() {
        return this.f32645y;
    }

    @Nullable
    public com.google.android.material.shape.n y() {
        return this.f32638r;
    }

    @Nullable
    public View z() {
        return this.f32636p;
    }

    public MaterialContainerTransform(@NonNull Context context, boolean z10) {
        this.f32622b = false;
        this.f32623c = false;
        this.f32624d = false;
        this.f32625e = false;
        this.f32626f = R.id.content;
        this.f32627g = -1;
        this.f32628h = -1;
        this.f32629i = 0;
        this.f32630j = 0;
        this.f32631k = 0;
        this.f32632l = 1375731712;
        this.f32633m = 0;
        this.f32634n = 0;
        this.f32635o = 0;
        this.f32644x = Build.VERSION.SDK_INT >= 28;
        this.f32645y = -1.0f;
        this.f32646z = -1.0f;
        I(context, z10);
        this.f32625e = true;
    }
}

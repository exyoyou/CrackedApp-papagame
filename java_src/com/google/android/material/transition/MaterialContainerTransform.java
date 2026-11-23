package com.google.android.material.transition;

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
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.transition.ArcMotion;
import androidx.transition.PathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.haima.hmcp.Constants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
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
    private boolean f32482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f32483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @IdRes
    private int f32486f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @IdRes
    private int f32487g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @IdRes
    private int f32488h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ColorInt
    private int f32489i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ColorInt
    private int f32490j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ColorInt
    private int f32491k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ColorInt
    private int f32492l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f32493m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f32494n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32495o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private View f32496p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private View f32497q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private com.google.android.material.shape.n f32498r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private com.google.android.material.shape.n f32499s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private c f32500t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private c f32501u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private c f32502v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private c f32503w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f32504x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f32505y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f32506z;
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
        final /* synthetic */ e f32507b;

        a(e eVar) {
            this.f32507b = eVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f32507b.o(valueAnimator.getAnimatedFraction());
        }
    }

    class b extends q {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f32509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ e f32510c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f32511d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f32512e;

        b(View view, e eVar, View view2, View view3) {
            this.f32509b = view;
            this.f32510c = eVar;
            this.f32511d = view2;
            this.f32512e = view3;
        }

        @Override // com.google.android.material.transition.q, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            MaterialContainerTransform.this.removeListener(this);
            if (MaterialContainerTransform.this.f32483c) {
                return;
            }
            this.f32511d.setAlpha(1.0f);
            this.f32512e.setAlpha(1.0f);
            p0.o(this.f32509b).a(this.f32510c);
        }

        @Override // com.google.android.material.transition.q, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            p0.o(this.f32509b).b(this.f32510c);
            this.f32511d.setAlpha(0.0f);
            this.f32512e.setAlpha(0.0f);
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        private final float f32514a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        private final float f32515b;

        public c(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11) {
            this.f32514a = f10;
            this.f32515b = f11;
        }

        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        public float c() {
            return this.f32515b;
        }

        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        public float d() {
            return this.f32514a;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        private final c f32516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NonNull
        private final c f32517b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NonNull
        private final c f32518c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NonNull
        private final c f32519d;

        /* synthetic */ d(c cVar, c cVar2, c cVar3, c cVar4, a aVar) {
            this(cVar, cVar2, cVar3, cVar4);
        }

        private d(@NonNull c cVar, @NonNull c cVar2, @NonNull c cVar3, @NonNull c cVar4) {
            this.f32516a = cVar;
            this.f32517b = cVar2;
            this.f32518c = cVar3;
            this.f32519d = cVar4;
        }
    }

    private static final class e extends Drawable {
        private static final int M = 754974720;
        private static final int N = -7829368;
        private static final float O = 0.3f;
        private static final float P = 1.5f;
        private final d A;
        private final com.google.android.material.transition.a B;
        private final f C;
        private final boolean D;
        private final Paint E;
        private final Path F;
        private com.google.android.material.transition.c G;
        private h H;
        private RectF I;
        private float J;
        private float K;
        private float L;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f32520a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final RectF f32521b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.google.android.material.shape.n f32522c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f32523d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final View f32524e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final RectF f32525f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final com.google.android.material.shape.n f32526g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final float f32527h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final Paint f32528i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final Paint f32529j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final Paint f32530k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final Paint f32531l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final Paint f32532m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final j f32533n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final PathMeasure f32534o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final float f32535p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final float[] f32536q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final boolean f32537r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final float f32538s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final float f32539t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final boolean f32540u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final MaterialShapeDrawable f32541v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private final RectF f32542w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final RectF f32543x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final RectF f32544y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private final RectF f32545z;

        class a implements v4.a.InterfaceC1251a {
            a() {
            }

            @Override // v4.a.InterfaceC1251a
            public void a(Canvas canvas) {
                e.this.f32520a.draw(canvas);
            }
        }

        class b implements v4.a.InterfaceC1251a {
            b() {
            }

            @Override // v4.a.InterfaceC1251a
            public void a(Canvas canvas) {
                e.this.f32524e.draw(canvas);
            }
        }

        /* synthetic */ e(PathMotion pathMotion, View view, RectF rectF, com.google.android.material.shape.n nVar, float f10, View view2, RectF rectF2, com.google.android.material.shape.n nVar2, float f11, int i10, int i11, int i12, int i13, boolean z10, boolean z11, com.google.android.material.transition.a aVar, f fVar, d dVar, boolean z12, a aVar2) {
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
            canvas.clipPath(this.f32533n.d(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                j(canvas);
            } else {
                i(canvas);
            }
            canvas.restore();
        }

        private void i(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f32541v;
            RectF rectF = this.I;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f32541v.o0(this.J);
            this.f32541v.C0((int) this.K);
            this.f32541v.setShapeAppearanceModel(this.f32533n.c());
            this.f32541v.draw(canvas);
        }

        private void j(Canvas canvas) {
            com.google.android.material.shape.n nVarC = this.f32533n.c();
            if (!nVarC.u(this.I)) {
                canvas.drawPath(this.f32533n.d(), this.f32531l);
            } else {
                float fA = nVarC.r().a(this.I);
                canvas.drawRoundRect(this.I, fA, fA, this.f32531l);
            }
        }

        private void k(Canvas canvas) {
            n(canvas, this.f32530k);
            Rect bounds = getBounds();
            RectF rectF = this.f32544y;
            s.y(canvas, bounds, rectF.left, rectF.top, this.H.f32589b, this.G.f32567b, new b());
        }

        private void l(Canvas canvas) {
            n(canvas, this.f32529j);
            Rect bounds = getBounds();
            RectF rectF = this.f32542w;
            s.y(canvas, bounds, rectF.left, rectF.top, this.H.f32588a, this.G.f32566a, new a());
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
            this.f32532m.setAlpha((int) (this.f32537r ? s.m(0.0f, 255.0f, f10) : s.m(255.0f, 0.0f, f10)));
            this.f32534o.getPosTan(this.f32535p * f10, this.f32536q, null);
            float[] fArr = this.f32536q;
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
                this.f32534o.getPosTan(this.f32535p * f11, fArr, null);
                float[] fArr2 = this.f32536q;
                f13 += (f13 - fArr2[0]) * f12;
                f14 += (f14 - fArr2[1]) * f12;
            }
            float f15 = f13;
            float f16 = f14;
            h hVarA = this.C.a(f10, ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32517b.f32514a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32517b.f32515b))).floatValue(), this.f32521b.width(), this.f32521b.height(), this.f32525f.width(), this.f32525f.height());
            this.H = hVarA;
            RectF rectF = this.f32542w;
            float f17 = hVarA.f32590c;
            rectF.set(f15 - (f17 / 2.0f), f16, (f17 / 2.0f) + f15, hVarA.f32591d + f16);
            RectF rectF2 = this.f32544y;
            h hVar = this.H;
            float f18 = hVar.f32592e;
            rectF2.set(f15 - (f18 / 2.0f), f16, f15 + (f18 / 2.0f), hVar.f32593f + f16);
            this.f32543x.set(this.f32542w);
            this.f32545z.set(this.f32544y);
            float fFloatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32518c.f32514a))).floatValue();
            float fFloatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32518c.f32515b))).floatValue();
            boolean zB = this.C.b(this.H);
            RectF rectF3 = zB ? this.f32543x : this.f32545z;
            float fN = s.n(0.0f, 1.0f, fFloatValue, fFloatValue2, f10);
            if (!zB) {
                fN = 1.0f - fN;
            }
            this.C.c(rectF3, fN, this.H);
            this.I = new RectF(Math.min(this.f32543x.left, this.f32545z.left), Math.min(this.f32543x.top, this.f32545z.top), Math.max(this.f32543x.right, this.f32545z.right), Math.max(this.f32543x.bottom, this.f32545z.bottom));
            this.f32533n.b(f10, this.f32522c, this.f32526g, this.f32542w, this.f32543x, this.f32545z, this.A.f32519d);
            this.J = s.m(this.f32523d, this.f32527h, f10);
            float fD = d(this.I, this.f32538s);
            float fE = e(this.I, this.f32539t);
            float f19 = this.J;
            float f20 = (int) (fE * f19);
            this.K = f20;
            this.f32531l.setShadowLayer(f19, (int) (fD * f19), f20, M);
            this.G = this.B.a(f10, ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32516a.f32514a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f32516a.f32515b))).floatValue(), 0.35f);
            if (this.f32529j.getColor() != 0) {
                this.f32529j.setAlpha(this.G.f32566a);
            }
            if (this.f32530k.getColor() != 0) {
                this.f32530k.setAlpha(this.G.f32567b);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f32532m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f32532m);
            }
            int iSave = this.D ? canvas.save() : -1;
            if (this.f32540u && this.J > 0.0f) {
                h(canvas);
            }
            this.f32533n.a(canvas);
            n(canvas, this.f32528i);
            if (this.G.f32568c) {
                l(canvas);
                k(canvas);
            } else {
                k(canvas);
                l(canvas);
            }
            if (this.D) {
                canvas.restoreToCount(iSave);
                f(canvas, this.f32542w, this.F, -65281);
                g(canvas, this.f32543x, InputDeviceCompat.SOURCE_ANY);
                g(canvas, this.f32542w, Constants.LEVEL_SDK);
                g(canvas, this.f32545z, -16711681);
                g(canvas, this.f32544y, -16776961);
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

        private e(PathMotion pathMotion, View view, RectF rectF, com.google.android.material.shape.n nVar, float f10, View view2, RectF rectF2, com.google.android.material.shape.n nVar2, float f11, @ColorInt int i10, @ColorInt int i11, @ColorInt int i12, int i13, boolean z10, boolean z11, com.google.android.material.transition.a aVar, f fVar, d dVar, boolean z12) {
            Paint paint = new Paint();
            this.f32528i = paint;
            Paint paint2 = new Paint();
            this.f32529j = paint2;
            Paint paint3 = new Paint();
            this.f32530k = paint3;
            this.f32531l = new Paint();
            Paint paint4 = new Paint();
            this.f32532m = paint4;
            this.f32533n = new j();
            this.f32536q = new float[]{rectF.centerX(), rectF.top};
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.f32541v = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.E = paint5;
            this.F = new Path();
            this.f32520a = view;
            this.f32521b = rectF;
            this.f32522c = nVar;
            this.f32523d = f10;
            this.f32524e = view2;
            this.f32525f = rectF2;
            this.f32526g = nVar2;
            this.f32527h = f11;
            this.f32537r = z10;
            this.f32540u = z11;
            this.B = aVar;
            this.C = fVar;
            this.A = dVar;
            this.D = z12;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            this.f32538s = displayMetrics.widthPixels;
            this.f32539t = displayMetrics.heightPixels;
            paint.setColor(i10);
            paint2.setColor(i11);
            paint3.setColor(i12);
            materialShapeDrawable.p0(ColorStateList.valueOf(0));
            materialShapeDrawable.y0(2);
            materialShapeDrawable.v0(false);
            materialShapeDrawable.w0(N);
            RectF rectF3 = new RectF(rectF);
            this.f32542w = rectF3;
            this.f32543x = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f32544y = rectF4;
            this.f32545z = new RectF(rectF4);
            PointF pointFM = m(rectF);
            PointF pointFM2 = m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(pointFM.x, pointFM.y, pointFM2.x, pointFM2.y), false);
            this.f32534o = pathMeasure;
            this.f32535p = pathMeasure.getLength();
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(s.d(i13));
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
        this.f32482b = false;
        this.f32483c = false;
        this.f32484d = false;
        this.f32485e = false;
        this.f32486f = R.id.content;
        this.f32487g = -1;
        this.f32488h = -1;
        this.f32489i = 0;
        this.f32490j = 0;
        this.f32491k = 0;
        this.f32492l = 1375731712;
        this.f32493m = 0;
        this.f32494n = 0;
        this.f32495o = 0;
        this.f32504x = Build.VERSION.SDK_INT >= 28;
        this.f32505y = -1.0f;
        this.f32506z = -1.0f;
    }

    private d B(boolean z10, d dVar, d dVar2) {
        if (!z10) {
            dVar = dVar2;
        }
        return new d((c) s.e(this.f32500t, dVar.f32516a), (c) s.e(this.f32501u, dVar.f32517b), (c) s.e(this.f32502v, dVar.f32518c), (c) s.e(this.f32503w, dVar.f32519d), null);
    }

    @StyleRes
    private static int D(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{com.google.android.material.R.attr.transitionShapeAppearance});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    private boolean G(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i10 = this.f32493m;
        if (i10 == 0) {
            return s.b(rectF2) > s.b(rectF);
        }
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return false;
        }
        throw new IllegalArgumentException("Invalid transition direction: " + this.f32493m);
    }

    private void I(Context context, boolean z10) {
        s.t(this, context, com.google.android.material.R.attr.motionEasingEmphasizedInterpolator, com.google.android.material.animation.b.f29368b);
        s.s(this, context, z10 ? com.google.android.material.R.attr.motionDurationLong2 : com.google.android.material.R.attr.motionDurationMedium4);
        if (this.f32484d) {
            return;
        }
        s.u(this, context, com.google.android.material.R.attr.motionPath);
    }

    private d b(boolean z10) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof k)) ? B(z10, Q, R) : B(z10, O, P);
    }

    private static RectF c(View view, @Nullable View view2, float f10, float f11) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF rectFH = s.h(view2);
        rectFH.offset(f10, f11);
        return rectFH;
    }

    private static com.google.android.material.shape.n d(@NonNull View view, @NonNull RectF rectF, @Nullable com.google.android.material.shape.n nVar) {
        return s.c(u(view, nVar), rectF);
    }

    private static void e(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i10, @Nullable com.google.android.material.shape.n nVar) {
        if (i10 != -1) {
            transitionValues.view = s.g(transitionValues.view, i10);
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
        RectF rectFI = view4.getParent() == null ? s.i(view4) : s.h(view4);
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
        return this.f32487g;
    }

    public int C() {
        return this.f32493m;
    }

    public boolean E() {
        return this.f32482b;
    }

    public boolean F() {
        return this.f32504x;
    }

    public boolean H() {
        return this.f32483c;
    }

    public void J(@ColorInt int i10) {
        this.f32489i = i10;
        this.f32490j = i10;
        this.f32491k = i10;
    }

    public void K(@ColorInt int i10) {
        this.f32489i = i10;
    }

    public void L(boolean z10) {
        this.f32482b = z10;
    }

    public void M(@IdRes int i10) {
        this.f32486f = i10;
    }

    public void N(boolean z10) {
        this.f32504x = z10;
    }

    public void O(@ColorInt int i10) {
        this.f32491k = i10;
    }

    public void P(float f10) {
        this.f32506z = f10;
    }

    public void Q(@Nullable com.google.android.material.shape.n nVar) {
        this.f32499s = nVar;
    }

    public void R(@Nullable View view) {
        this.f32497q = view;
    }

    public void S(@IdRes int i10) {
        this.f32488h = i10;
    }

    public void T(int i10) {
        this.f32494n = i10;
    }

    public void U(@Nullable c cVar) {
        this.f32500t = cVar;
    }

    public void V(int i10) {
        this.f32495o = i10;
    }

    public void W(boolean z10) {
        this.f32483c = z10;
    }

    public void X(@Nullable c cVar) {
        this.f32502v = cVar;
    }

    public void Y(@Nullable c cVar) {
        this.f32501u = cVar;
    }

    public void Z(@ColorInt int i10) {
        this.f32492l = i10;
    }

    public void a0(@Nullable c cVar) {
        this.f32503w = cVar;
    }

    public void b0(@ColorInt int i10) {
        this.f32490j = i10;
    }

    public void c0(float f10) {
        this.f32505y = f10;
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f32497q, this.f32488h, this.f32499s);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f32496p, this.f32487g, this.f32498r);
    }

    @Override // androidx.transition.Transition
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
                    if (this.f32486f == view4.getId()) {
                        viewF = (View) view4.getParent();
                        view = view4;
                    } else {
                        viewF = s.f(view4, this.f32486f);
                        view = null;
                    }
                    RectF rectFH = s.h(viewF);
                    float f10 = -rectFH.left;
                    float f11 = -rectFH.top;
                    RectF rectFC = c(viewF, view, f10, f11);
                    rectF.offset(f10, f11);
                    rectF2.offset(f10, f11);
                    boolean zG = G(rectF, rectF2);
                    if (!this.f32485e) {
                        I(view4.getContext(), zG);
                    }
                    e eVar = new e(getPathMotion(), view2, rectF, nVar, h(this.f32505y, view2), view3, rectF2, nVar2, h(this.f32506z, view3), this.f32489i, this.f32490j, this.f32491k, this.f32492l, zG, this.f32504x, com.google.android.material.transition.b.a(this.f32494n, zG), g.a(this.f32495o, zG, rectF, rectF2), b(zG), this.f32482b, null);
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
        this.f32498r = nVar;
    }

    public void e0(@Nullable View view) {
        this.f32496p = view;
    }

    @ColorInt
    public int f() {
        return this.f32489i;
    }

    public void f0(@IdRes int i10) {
        this.f32487g = i10;
    }

    @IdRes
    public int g() {
        return this.f32486f;
    }

    public void g0(int i10) {
        this.f32493m = i10;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return N;
    }

    @ColorInt
    public int i() {
        return this.f32491k;
    }

    public float j() {
        return this.f32506z;
    }

    @Nullable
    public com.google.android.material.shape.n k() {
        return this.f32499s;
    }

    @Nullable
    public View l() {
        return this.f32497q;
    }

    @IdRes
    public int m() {
        return this.f32488h;
    }

    public int o() {
        return this.f32494n;
    }

    @Nullable
    public c p() {
        return this.f32500t;
    }

    public int q() {
        return this.f32495o;
    }

    @Nullable
    public c r() {
        return this.f32502v;
    }

    @Nullable
    public c s() {
        return this.f32501u;
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f32484d = true;
    }

    @ColorInt
    public int t() {
        return this.f32492l;
    }

    @Nullable
    public c v() {
        return this.f32503w;
    }

    @ColorInt
    public int w() {
        return this.f32490j;
    }

    public float x() {
        return this.f32505y;
    }

    @Nullable
    public com.google.android.material.shape.n y() {
        return this.f32498r;
    }

    @Nullable
    public View z() {
        return this.f32496p;
    }

    public MaterialContainerTransform(@NonNull Context context, boolean z10) {
        this.f32482b = false;
        this.f32483c = false;
        this.f32484d = false;
        this.f32485e = false;
        this.f32486f = R.id.content;
        this.f32487g = -1;
        this.f32488h = -1;
        this.f32489i = 0;
        this.f32490j = 0;
        this.f32491k = 0;
        this.f32492l = 1375731712;
        this.f32493m = 0;
        this.f32494n = 0;
        this.f32495o = 0;
        this.f32504x = Build.VERSION.SDK_INT >= 28;
        this.f32505y = -1.0f;
        this.f32506z = -1.0f;
        I(context, z10);
        this.f32485e = true;
    }
}

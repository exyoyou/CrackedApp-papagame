package com.google.android.material.transition.platform;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.transition.PathMotion;
import android.transition.PatternPathMotion;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.PathParser;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f32775a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @AttrRes
    static final int f32776b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f32777c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f32778d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final RectF f32779e = new RectF();

    class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RectF f32780a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RectF f32781b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f32782c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f32783d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ float f32784e;

        a(RectF rectF, RectF rectF2, float f10, float f11, float f12) {
            this.f32780a = rectF;
            this.f32781b = rectF2;
            this.f32782c = f10;
            this.f32783d = f11;
            this.f32784e = f12;
        }

        @Override // com.google.android.material.transition.platform.t.b
        @NonNull
        public com.google.android.material.shape.d a(@NonNull com.google.android.material.shape.d dVar, @NonNull com.google.android.material.shape.d dVar2) {
            return new com.google.android.material.shape.a(t.n(dVar.a(this.f32780a), dVar2.a(this.f32781b), this.f32782c, this.f32783d, this.f32784e));
        }
    }

    interface b {
        @NonNull
        com.google.android.material.shape.d a(@NonNull com.google.android.material.shape.d dVar, @NonNull com.google.android.material.shape.d dVar2);
    }

    private t() {
    }

    static float b(@NonNull RectF rectF) {
        return rectF.width() * rectF.height();
    }

    static com.google.android.material.shape.n c(com.google.android.material.shape.n nVar, final RectF rectF) {
        return nVar.y(new com.google.android.material.shape.n.c() { // from class: com.google.android.material.transition.platform.s
            @Override // com.google.android.material.shape.n.c
            public final com.google.android.material.shape.d a(com.google.android.material.shape.d dVar) {
                return com.google.android.material.shape.l.b(rectF, dVar);
            }
        });
    }

    static Shader d(@ColorInt int i10) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i10, i10, Shader.TileMode.CLAMP);
    }

    @NonNull
    static <T> T e(@Nullable T t10, @NonNull T t11) {
        return t10 != null ? t10 : t11;
    }

    static View f(View view, @IdRes int i10) {
        String resourceName = view.getResources().getResourceName(i10);
        while (view != null) {
            if (view.getId() != i10) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    static View g(View view, @IdRes int i10) {
        View viewFindViewById = view.findViewById(i10);
        return viewFindViewById != null ? viewFindViewById : f(view, i10);
    }

    static RectF h(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return new RectF(i10, i11, view.getWidth() + i10, view.getHeight() + i11);
    }

    static RectF i(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    static Rect j(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    private static boolean k(com.google.android.material.shape.n nVar, RectF rectF) {
        return (nVar.r().a(rectF) == 0.0f && nVar.t().a(rectF) == 0.0f && nVar.l().a(rectF) == 0.0f && nVar.j().a(rectF) == 0.0f) ? false : true;
    }

    static float m(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    static float n(float f10, float f11, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f12, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f13, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f14) {
        return o(f10, f11, f12, f13, f14, false);
    }

    static float o(float f10, float f11, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f12, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f13, @FloatRange(from = 0.0d) float f14, boolean z10) {
        if (z10 && (f14 < 0.0f || f14 > 1.0f)) {
            return m(f10, f11, f14);
        }
        if (f14 < f12) {
            return f10;
        }
        return f14 > f13 ? f11 : m(f10, f11, (f14 - f12) / (f13 - f12));
    }

    static int p(int i10, int i11, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f12) {
        if (f12 < f10) {
            return i10;
        }
        return f12 > f11 ? i11 : (int) m(i10, i11, (f12 - f10) / (f11 - f10));
    }

    static com.google.android.material.shape.n q(com.google.android.material.shape.n nVar, com.google.android.material.shape.n nVar2, RectF rectF, RectF rectF2, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f12) {
        if (f12 < f10) {
            return nVar;
        }
        return f12 > f11 ? nVar2 : z(nVar, nVar2, rectF, new a(rectF, rectF2, f10, f11, f12));
    }

    static void r(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    static boolean s(Transition transition, Context context, @AttrRes int i10) {
        int iF;
        if (i10 == 0 || transition.getDuration() != -1 || (iF = com.google.android.material.motion.j.f(context, i10, -1)) == -1) {
            return false;
        }
        transition.setDuration(iF);
        return true;
    }

    static boolean t(Transition transition, Context context, @AttrRes int i10, TimeInterpolator timeInterpolator) {
        if (i10 == 0 || transition.getInterpolator() != null) {
            return false;
        }
        transition.setInterpolator(com.google.android.material.motion.j.g(context, i10, timeInterpolator));
        return true;
    }

    static boolean u(Transition transition, Context context, @AttrRes int i10) {
        PathMotion pathMotionW;
        if (i10 == 0 || (pathMotionW = w(context, i10)) == null) {
            return false;
        }
        transition.setPathMotion(pathMotionW);
        return true;
    }

    static void v(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }

    @Nullable
    static PathMotion w(Context context, @AttrRes int i10) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.type;
        if (i11 != 16) {
            if (i11 == 3) {
                return new PatternPathMotion(PathParser.createPathFromPathData(String.valueOf(typedValue.string)));
            }
            throw new IllegalArgumentException("Motion path theme attribute must either be an enum value or path data string");
        }
        int i12 = typedValue.data;
        if (i12 == 0) {
            return null;
        }
        if (i12 == 1) {
            return new k();
        }
        throw new IllegalArgumentException("Invalid motion path type: " + i12);
    }

    private static int x(Canvas canvas, Rect rect, int i10) {
        RectF rectF = f32779e;
        rectF.set(rect);
        return canvas.saveLayerAlpha(rectF, i10);
    }

    static void y(Canvas canvas, Rect rect, float f10, float f11, float f12, int i10, v4.a.InterfaceC1251a interfaceC1251a) {
        if (i10 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(f10, f11);
        canvas.scale(f12, f12);
        if (i10 < 255) {
            x(canvas, rect, i10);
        }
        interfaceC1251a.a(canvas);
        canvas.restoreToCount(iSave);
    }

    static com.google.android.material.shape.n z(com.google.android.material.shape.n nVar, com.google.android.material.shape.n nVar2, RectF rectF, b bVar) {
        return (k(nVar, rectF) ? nVar : nVar2).v().L(bVar.a(nVar.r(), nVar2.r())).Q(bVar.a(nVar.t(), nVar2.t())).y(bVar.a(nVar.j(), nVar2.j())).D(bVar.a(nVar.l(), nVar2.l())).m();
    }
}

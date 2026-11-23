package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import com.facebook.common.internal.i;
import com.facebook.drawee.drawable.RoundedCornersDrawable;
import com.facebook.drawee.drawable.h;
import com.facebook.drawee.drawable.j;
import com.facebook.drawee.drawable.m;
import com.facebook.drawee.drawable.n;
import com.facebook.drawee.drawable.o;
import com.facebook.drawee.drawable.q;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.drawable.s;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f27352a = "WrappingUtils";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Drawable f27353b = new ColorDrawable(0);

    private static Drawable a(Drawable drawable, RoundingParams roundingParams, Resources resources) {
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            n nVar = new n(resources, bitmapDrawable.getBitmap(), bitmapDrawable.getPaint());
            b(nVar, roundingParams);
            return nVar;
        }
        if (drawable instanceof NinePatchDrawable) {
            q qVar = new q((NinePatchDrawable) drawable);
            b(qVar, roundingParams);
            return qVar;
        }
        if (!(drawable instanceof ColorDrawable)) {
            i3.a.q0(f27352a, "Don't know how to round that drawable: %s", drawable);
            return drawable;
        }
        o oVarE = o.e((ColorDrawable) drawable);
        b(oVarE, roundingParams);
        return oVarE;
    }

    static void b(m rounded, RoundingParams roundingParams) {
        rounded.c(roundingParams.l());
        rounded.v(roundingParams.g());
        rounded.a(roundingParams.e(), roundingParams.f());
        rounded.d(roundingParams.j());
        rounded.r(roundingParams.n());
        rounded.j(roundingParams.k());
    }

    static com.facebook.drawee.drawable.d c(com.facebook.drawee.drawable.d parent) {
        while (true) {
            Object objM = parent.m();
            if (objM == parent || !(objM instanceof com.facebook.drawee.drawable.d)) {
                break;
            }
            parent = (com.facebook.drawee.drawable.d) objM;
        }
        return parent;
    }

    static Drawable d(@Nullable Drawable drawable, @Nullable RoundingParams roundingParams, Resources resources) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("WrappingUtils#maybeApplyLeafRounding");
            }
            if (drawable != null && roundingParams != null && roundingParams.m() == RoundingParams.RoundingMethod.BITMAP_ONLY) {
                if (!(drawable instanceof h)) {
                    return a(drawable, roundingParams, resources);
                }
                com.facebook.drawee.drawable.d dVarC = c((h) drawable);
                dVarC.p(a(dVarC.p(f27353b), roundingParams, resources));
                return drawable;
            }
            return drawable;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    @Nullable
    static Drawable e(@Nullable Drawable drawable, @Nullable Matrix matrix) {
        return (drawable == null || matrix == null) ? drawable : new j(drawable, matrix);
    }

    static Drawable f(@Nullable Drawable drawable, @Nullable RoundingParams roundingParams) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("WrappingUtils#maybeWrapWithRoundedOverlayColor");
            }
            if (drawable != null && roundingParams != null && roundingParams.m() == RoundingParams.RoundingMethod.OVERLAY_COLOR) {
                RoundedCornersDrawable roundedCornersDrawable = new RoundedCornersDrawable(drawable);
                b(roundedCornersDrawable, roundingParams);
                roundedCornersDrawable.B(roundingParams.i());
                return roundedCornersDrawable;
            }
            return drawable;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    @Nullable
    static Drawable g(@Nullable Drawable drawable, @Nullable s.c scaleType) {
        return h(drawable, scaleType, null);
    }

    @Nullable
    static Drawable h(@Nullable Drawable drawable, @Nullable s.c scaleType, @Nullable PointF focusPoint) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("WrappingUtils#maybeWrapWithScaleType");
        }
        if (drawable == null || scaleType == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return drawable;
        }
        r rVar = new r(drawable, scaleType);
        if (focusPoint != null) {
            rVar.E(focusPoint);
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return rVar;
    }

    static void i(m rounded) {
        rounded.c(false);
        rounded.setRadius(0.0f);
        rounded.a(0, 0.0f);
        rounded.d(0.0f);
        rounded.r(false);
        rounded.j(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void j(com.facebook.drawee.drawable.d parent, @Nullable RoundingParams roundingParams, Resources resources) {
        com.facebook.drawee.drawable.d dVarC = c(parent);
        Drawable drawableM = dVarC.m();
        if (roundingParams == null || roundingParams.m() != RoundingParams.RoundingMethod.BITMAP_ONLY) {
            if (drawableM instanceof m) {
                i((m) drawableM);
            }
        } else if (drawableM instanceof m) {
            b((m) drawableM, roundingParams);
        } else if (drawableM != 0) {
            dVarC.p(f27353b);
            dVarC.p(a(drawableM, roundingParams, resources));
        }
    }

    static void k(com.facebook.drawee.drawable.d parent, @Nullable RoundingParams roundingParams) {
        Drawable drawableM = parent.m();
        if (roundingParams == null || roundingParams.m() != RoundingParams.RoundingMethod.OVERLAY_COLOR) {
            if (drawableM instanceof RoundedCornersDrawable) {
                Drawable drawable = f27353b;
                parent.p(((RoundedCornersDrawable) drawableM).y(drawable));
                drawable.setCallback(null);
                return;
            }
            return;
        }
        if (!(drawableM instanceof RoundedCornersDrawable)) {
            parent.p(f(parent.p(f27353b), roundingParams));
            return;
        }
        RoundedCornersDrawable roundedCornersDrawable = (RoundedCornersDrawable) drawableM;
        b(roundedCornersDrawable, roundingParams);
        roundedCornersDrawable.B(roundingParams.i());
    }

    static r l(com.facebook.drawee.drawable.d parent, s.c scaleType) {
        Drawable drawableG = g(parent.p(f27353b), scaleType);
        parent.p(drawableG);
        i.j(drawableG, "Parent has no child drawable!");
        return (r) drawableG;
    }
}

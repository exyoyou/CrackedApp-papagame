package com.google.android.material.color;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f30152a = 1.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f30153b = 0.54f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f30154c = 0.38f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final float f30155d = 0.32f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f30156e = 0.12f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f30157f = 40;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f30158g = 100;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f30159h = 90;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f30160i = 10;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f30161j = 94;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f30162k = 92;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f30163l = 80;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f30164m = 20;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f30165n = 30;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f30166o = 90;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f30167p = 12;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f30168q = 17;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f30169r = 6;

    private s() {
    }

    @ColorInt
    public static int a(@ColorInt int i10, @IntRange(from = 0, to = 255) int i11) {
        return ColorUtils.setAlphaComponent(i10, (Color.alpha(i10) * i11) / 255);
    }

    @ColorInt
    public static int b(@NonNull Context context, @AttrRes int i10, @ColorInt int i11) {
        Integer numF = f(context, i10);
        return numF != null ? numF.intValue() : i11;
    }

    @ColorInt
    public static int c(Context context, @AttrRes int i10, String str) {
        return w(context, com.google.android.material.resources.b.i(context, i10, str));
    }

    @ColorInt
    public static int d(@NonNull View view, @AttrRes int i10) {
        return w(view.getContext(), com.google.android.material.resources.b.j(view, i10));
    }

    @ColorInt
    public static int e(@NonNull View view, @AttrRes int i10, @ColorInt int i11) {
        return b(view.getContext(), i10, i11);
    }

    @Nullable
    @ColorInt
    public static Integer f(@NonNull Context context, @AttrRes int i10) {
        TypedValue typedValueA = com.google.android.material.resources.b.a(context, i10);
        if (typedValueA != null) {
            return Integer.valueOf(w(context, typedValueA));
        }
        return null;
    }

    @ColorInt
    private static int g(@ColorInt int i10, @IntRange(from = 0, to = 100) int i11) {
        com.google.android.material.color.utilities.l lVarB = com.google.android.material.color.utilities.l.b(i10);
        lVarB.j(i11);
        return lVarB.k();
    }

    @ColorInt
    private static int h(@ColorInt int i10, @IntRange(from = 0, to = 100) int i11, int i12) {
        com.google.android.material.color.utilities.l lVarB = com.google.android.material.color.utilities.l.b(g(i10, i11));
        lVarB.g(i12);
        return lVarB.k();
    }

    @NonNull
    public static l i(@ColorInt int i10, boolean z10) {
        return z10 ? new l(g(i10, 40), g(i10, 100), g(i10, 90), g(i10, 10)) : new l(g(i10, 80), g(i10, 20), g(i10, 30), g(i10, 90));
    }

    @NonNull
    public static l j(@NonNull Context context, @ColorInt int i10) {
        return i(i10, r(context));
    }

    @NonNull
    public static ColorStateList k(@NonNull Context context, @AttrRes int i10, @NonNull ColorStateList colorStateList) {
        TypedValue typedValueA = com.google.android.material.resources.b.a(context, i10);
        ColorStateList colorStateListX = typedValueA != null ? x(context, typedValueA) : null;
        return colorStateListX == null ? colorStateList : colorStateListX;
    }

    @Nullable
    public static ColorStateList l(@NonNull Context context, @AttrRes int i10) {
        TypedValue typedValueA = com.google.android.material.resources.b.a(context, i10);
        if (typedValueA == null) {
            return null;
        }
        int i11 = typedValueA.resourceId;
        if (i11 != 0) {
            return ContextCompat.getColorStateList(context, i11);
        }
        int i12 = typedValueA.data;
        if (i12 != 0) {
            return ColorStateList.valueOf(i12);
        }
        return null;
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static int m(@NonNull Context context, @ColorInt int i10) {
        return h(i10, r(context) ? 94 : 12, 6);
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static int n(@NonNull Context context, @ColorInt int i10) {
        return h(i10, r(context) ? 92 : 17, 6);
    }

    @ColorInt
    public static int o(@ColorInt int i10, @ColorInt int i11) {
        return com.google.android.material.color.utilities.a.b(i10, i11);
    }

    @ColorInt
    public static int p(@NonNull Context context, @ColorInt int i10) {
        return o(i10, c(context, R.attr.colorPrimary, s.class.getCanonicalName()));
    }

    public static boolean q(@ColorInt int i10) {
        return i10 != 0 && ColorUtils.calculateLuminance(i10) > 0.5d;
    }

    static boolean r(@NonNull Context context) {
        return com.google.android.material.resources.b.b(context, R.attr.isLightTheme, true);
    }

    @ColorInt
    public static int s(@ColorInt int i10, @ColorInt int i11) {
        return ColorUtils.compositeColors(i11, i10);
    }

    @ColorInt
    public static int t(@ColorInt int i10, @ColorInt int i11, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        return s(i10, ColorUtils.setAlphaComponent(i11, Math.round(Color.alpha(i11) * f10)));
    }

    @ColorInt
    public static int u(@NonNull View view, @AttrRes int i10, @AttrRes int i11) {
        return v(view, i10, i11, 1.0f);
    }

    @ColorInt
    public static int v(@NonNull View view, @AttrRes int i10, @AttrRes int i11, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        return t(d(view, i10), d(view, i11), f10);
    }

    private static int w(@NonNull Context context, @NonNull TypedValue typedValue) {
        int i10 = typedValue.resourceId;
        return i10 != 0 ? ContextCompat.getColor(context, i10) : typedValue.data;
    }

    private static ColorStateList x(@NonNull Context context, @NonNull TypedValue typedValue) {
        int i10 = typedValue.resourceId;
        return i10 != 0 ? ContextCompat.getColorStateList(context, i10) : ColorStateList.valueOf(typedValue.data);
    }
}

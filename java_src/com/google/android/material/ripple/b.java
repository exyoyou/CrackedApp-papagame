package com.google.android.material.ripple;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.StateSet;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.color.s;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @ChecksSdkIntAtLeast(api = 21)
    public static final boolean f31369a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f31370b = {R.attr.state_pressed};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f31371c = {R.attr.state_hovered, R.attr.state_focused};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f31372d = {R.attr.state_focused};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f31373e = {R.attr.state_hovered};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f31374f = {R.attr.state_selected, R.attr.state_pressed};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f31375g = {R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f31376h = {R.attr.state_selected, R.attr.state_focused};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f31377i = {R.attr.state_selected, R.attr.state_hovered};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f31378j = {R.attr.state_selected};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f31379k = {R.attr.state_enabled, R.attr.state_pressed};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    static final String f31380l = b.class.getSimpleName();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @VisibleForTesting
    static final String f31381m = "Use a non-transparent color for the default color as it will be used to finish ripple animations.";

    @RequiresApi(21)
    private static class a {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        @DoNotInline
        public static Drawable b(@NonNull Context context, @Px int i10) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-1);
            gradientDrawable.setShape(1);
            return new RippleDrawable(s.k(context, com.google.android.material.R.attr.colorControlHighlight, ColorStateList.valueOf(0)), null, new InsetDrawable((Drawable) gradientDrawable, i10, i10, i10, i10));
        }
    }

    private b() {
    }

    @NonNull
    public static ColorStateList a(@Nullable ColorStateList colorStateList) {
        if (f31369a) {
            int[] iArr = f31372d;
            return new ColorStateList(new int[][]{f31378j, iArr, StateSet.NOTHING}, new int[]{d(colorStateList, f31374f), d(colorStateList, iArr), d(colorStateList, f31370b)});
        }
        int[] iArr2 = f31374f;
        int[] iArr3 = f31375g;
        int[] iArr4 = f31376h;
        int[] iArr5 = f31377i;
        int[] iArr6 = f31370b;
        int[] iArr7 = f31371c;
        int[] iArr8 = f31372d;
        int[] iArr9 = f31373e;
        return new ColorStateList(new int[][]{iArr2, iArr3, iArr4, iArr5, f31378j, iArr6, iArr7, iArr8, iArr9, StateSet.NOTHING}, new int[]{d(colorStateList, iArr2), d(colorStateList, iArr3), d(colorStateList, iArr4), d(colorStateList, iArr5), 0, d(colorStateList, iArr6), d(colorStateList, iArr7), d(colorStateList, iArr8), d(colorStateList, iArr9), 0});
    }

    @NonNull
    @RequiresApi(21)
    public static Drawable b(@NonNull Context context, @Px int i10) {
        return a.b(context, i10);
    }

    @ColorInt
    @TargetApi(21)
    private static int c(@ColorInt int i10) {
        return ColorUtils.setAlphaComponent(i10, Math.min(Color.alpha(i10) * 2, 255));
    }

    @ColorInt
    private static int d(@Nullable ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f31369a ? c(colorForState) : colorForState;
    }

    @NonNull
    public static ColorStateList e(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 22 && i10 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0) {
            Color.alpha(colorStateList.getColorForState(f31379k, 0));
        }
        return colorStateList;
    }

    public static boolean f(@NonNull int[] iArr) {
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 : iArr) {
            if (i10 == 16842910) {
                z10 = true;
            } else if (i10 == 16842908 || i10 == 16842919 || i10 == 16843623) {
                z11 = true;
            }
        }
        return z10 && z11;
    }
}

package com.google.android.material.internal;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.view.Window;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.WindowCompat;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f30905a = 128;

    private e() {
    }

    public static void a(@NonNull Window window, boolean z10) {
        b(window, z10, null, null);
    }

    public static void b(@NonNull Window window, boolean z10, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2) {
        boolean z11 = num == null || num.intValue() == 0;
        boolean z12 = num2 == null || num2.intValue() == 0;
        if (z11 || z12) {
            int iB = com.google.android.material.color.s.b(window.getContext(), R.attr.colorBackground, -16777216);
            if (z11) {
                num = Integer.valueOf(iB);
            }
            if (z12) {
                num2 = Integer.valueOf(iB);
            }
        }
        WindowCompat.setDecorFitsSystemWindows(window, !z10);
        int iD = d(window.getContext(), z10);
        int iC = c(window.getContext(), z10);
        window.setStatusBarColor(iD);
        window.setNavigationBarColor(iC);
        g(window, e(iD, com.google.android.material.color.s.q(num.intValue())));
        f(window, e(iC, com.google.android.material.color.s.q(num2.intValue())));
    }

    @TargetApi(21)
    private static int c(Context context, boolean z10) {
        if (z10 && Build.VERSION.SDK_INT < 27) {
            return ColorUtils.setAlphaComponent(com.google.android.material.color.s.b(context, R.attr.navigationBarColor, -16777216), 128);
        }
        if (z10) {
            return 0;
        }
        return com.google.android.material.color.s.b(context, R.attr.navigationBarColor, -16777216);
    }

    @TargetApi(21)
    private static int d(Context context, boolean z10) {
        if (z10 && Build.VERSION.SDK_INT < 23) {
            return ColorUtils.setAlphaComponent(com.google.android.material.color.s.b(context, R.attr.statusBarColor, -16777216), 128);
        }
        if (z10) {
            return 0;
        }
        return com.google.android.material.color.s.b(context, R.attr.statusBarColor, -16777216);
    }

    private static boolean e(int i10, boolean z10) {
        return com.google.android.material.color.s.q(i10) || (i10 == 0 && z10);
    }

    public static void f(@NonNull Window window, boolean z10) {
        WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(z10);
    }

    public static void g(@NonNull Window window, boolean z10) {
        WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(z10);
    }
}

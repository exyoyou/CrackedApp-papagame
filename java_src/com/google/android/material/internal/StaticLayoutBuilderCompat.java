package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
final class StaticLayoutBuilderCompat {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final int f30809o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final float f30810p = 0.0f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final float f30811q = 1.0f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f30812r = "android.text.TextDirectionHeuristic";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f30813s = "android.text.TextDirectionHeuristics";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f30814t = "LTR";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f30815u = "RTL";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static boolean f30816v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private static Constructor<StaticLayout> f30817w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private static Object f30818x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CharSequence f30819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextPaint f30820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f30821c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f30823e;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f30830l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private c0 f30832n;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f30822d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Layout.Alignment f30824f = Layout.Alignment.ALIGN_NORMAL;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f30825g = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f30826h = 0.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f30827i = 1.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f30828j = f30809o;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f30829k = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private TextUtils.TruncateAt f30831m = null;

    static class StaticLayoutBuilderCompatException extends Exception {
        StaticLayoutBuilderCompatException(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    static {
        f30809o = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i10) {
        this.f30819a = charSequence;
        this.f30820b = textPaint;
        this.f30821c = i10;
        this.f30823e = charSequence.length();
    }

    private void b() throws StaticLayoutBuilderCompatException {
        if (f30816v) {
            return;
        }
        try {
            f30818x = this.f30830l && Build.VERSION.SDK_INT >= 23 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            Class cls = Integer.TYPE;
            Class cls2 = Float.TYPE;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
            f30817w = declaredConstructor;
            declaredConstructor.setAccessible(true);
            f30816v = true;
        } catch (Exception e10) {
            throw new StaticLayoutBuilderCompatException(e10);
        }
    }

    @NonNull
    public static StaticLayoutBuilderCompat c(@NonNull CharSequence charSequence, @NonNull TextPaint textPaint, @IntRange(from = 0) int i10) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i10);
    }

    public StaticLayout a() throws StaticLayoutBuilderCompatException {
        if (this.f30819a == null) {
            this.f30819a = "";
        }
        int iMax = Math.max(0, this.f30821c);
        CharSequence charSequenceEllipsize = this.f30819a;
        if (this.f30825g == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f30820b, iMax, this.f30831m);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f30823e);
        this.f30823e = iMin;
        if (Build.VERSION.SDK_INT < 23) {
            b();
            try {
                return (StaticLayout) ((Constructor) Preconditions.checkNotNull(f30817w)).newInstance(charSequenceEllipsize, Integer.valueOf(this.f30822d), Integer.valueOf(this.f30823e), this.f30820b, Integer.valueOf(iMax), this.f30824f, Preconditions.checkNotNull(f30818x), Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f30829k), null, Integer.valueOf(iMax), Integer.valueOf(this.f30825g));
            } catch (Exception e10) {
                throw new StaticLayoutBuilderCompatException(e10);
            }
        }
        if (this.f30830l && this.f30825g == 1) {
            this.f30824f = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, this.f30822d, iMin, this.f30820b, iMax);
        builderObtain.setAlignment(this.f30824f);
        builderObtain.setIncludePad(this.f30829k);
        builderObtain.setTextDirection(this.f30830l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f30831m;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f30825g);
        float f10 = this.f30826h;
        if (f10 != 0.0f || this.f30827i != 1.0f) {
            builderObtain.setLineSpacing(f10, this.f30827i);
        }
        if (this.f30825g > 1) {
            builderObtain.setHyphenationFrequency(this.f30828j);
        }
        c0 c0Var = this.f30832n;
        if (c0Var != null) {
            c0Var.a(builderObtain);
        }
        return builderObtain.build();
    }

    @NonNull
    @CanIgnoreReturnValue
    public StaticLayoutBuilderCompat d(@NonNull Layout.Alignment alignment) {
        this.f30824f = alignment;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public StaticLayoutBuilderCompat e(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f30831m = truncateAt;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public StaticLayoutBuilderCompat f(@IntRange(from = 0) int i10) {
        this.f30823e = i10;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public StaticLayoutBuilderCompat g(int i10) {
        this.f30828j = i10;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public StaticLayoutBuilderCompat h(boolean z10) {
        this.f30829k = z10;
        return this;
    }

    public StaticLayoutBuilderCompat i(boolean z10) {
        this.f30830l = z10;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public StaticLayoutBuilderCompat j(float f10, float f11) {
        this.f30826h = f10;
        this.f30827i = f11;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public StaticLayoutBuilderCompat k(@IntRange(from = 0) int i10) {
        this.f30825g = i10;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public StaticLayoutBuilderCompat l(@IntRange(from = 0) int i10) {
        this.f30822d = i10;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public StaticLayoutBuilderCompat m(@Nullable c0 c0Var) {
        this.f30832n = c0Var;
        return this;
    }
}

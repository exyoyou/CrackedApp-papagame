package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import com.google.android.material.progressindicator.b;

/* JADX INFO: loaded from: classes5.dex */
abstract class g<S extends b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    S f31290a;

    protected static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        float f31291a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        float f31292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @ColorInt
        int f31293c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Px
        int f31294d;

        protected a() {
        }
    }

    public g(S s10) {
        this.f31290a = s10;
    }

    abstract void a(@NonNull Canvas canvas, @NonNull Rect rect, @FloatRange(from = -1.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, boolean z10, boolean z11);

    abstract void b(@NonNull Canvas canvas, @NonNull Paint paint, @ColorInt int i10, @IntRange(from = 0, to = 255) int i11);

    abstract void c(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull a aVar, @IntRange(from = 0, to = 255) int i10);

    abstract void d(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, @ColorInt int i10, @IntRange(from = 0, to = 255) int i11, @Px int i12);

    abstract int e();

    abstract int f();

    void g(@NonNull Canvas canvas, @NonNull Rect rect, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, boolean z10, boolean z11) {
        this.f31290a.e();
        a(canvas, rect, f10, z10, z11);
    }
}

package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class v implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TimeInterpolator f31007a;

    public v(@NonNull TimeInterpolator timeInterpolator) {
        this.f31007a = timeInterpolator;
    }

    @NonNull
    public static TimeInterpolator a(boolean z10, @NonNull TimeInterpolator timeInterpolator) {
        return z10 ? timeInterpolator : new v(timeInterpolator);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        return 1.0f - this.f31007a.getInterpolation(f10);
    }
}

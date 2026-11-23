package com.airbnb.lottie.value;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
public class j<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b<T> f6160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<?, ?> f6161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    protected T f6162c;

    public j() {
        this.f6160a = new b<>();
        this.f6162c = null;
    }

    @Nullable
    public T a(b<T> bVar) {
        return this.f6162c;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final T b(float f10, float f11, T t10, T t11, float f12, float f13, float f14) {
        return a(this.f6160a.h(f10, f11, t10, t11, f12, f13, f14));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final void c(@Nullable com.airbnb.lottie.animation.keyframe.a<?, ?> aVar) {
        this.f6161b = aVar;
    }

    public final void d(@Nullable T t10) {
        this.f6162c = t10;
        com.airbnb.lottie.animation.keyframe.a<?, ?> aVar = this.f6161b;
        if (aVar != null) {
            aVar.k();
        }
    }

    public j(@Nullable T t10) {
        this.f6160a = new b<>();
        this.f6162c = t10;
    }
}

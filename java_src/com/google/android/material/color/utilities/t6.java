package com.google.android.material.color.utilities;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class t6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f30345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f30346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f30347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TonePolarity f30348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f30349e;

    public t6(@NonNull j jVar, @NonNull j jVar2, double d10, @NonNull TonePolarity tonePolarity, boolean z10) {
        this.f30345a = jVar;
        this.f30346b = jVar2;
        this.f30347c = d10;
        this.f30348d = tonePolarity;
        this.f30349e = z10;
    }

    public double a() {
        return this.f30347c;
    }

    @NonNull
    public TonePolarity b() {
        return this.f30348d;
    }

    @NonNull
    public j c() {
        return this.f30345a;
    }

    @NonNull
    public j d() {
        return this.f30346b;
    }

    public boolean e() {
        return this.f30349e;
    }
}

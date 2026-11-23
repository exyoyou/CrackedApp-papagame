package com.facebook.imagepipeline.animated.base;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
@Immutable
public class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static b f27559e = a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f27560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f27561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f27563d;

    public b(c builder) {
        this.f27560a = builder.d();
        this.f27561b = builder.b();
        this.f27562c = builder.e();
        this.f27563d = builder.c();
    }

    public static c a() {
        return new c();
    }
}

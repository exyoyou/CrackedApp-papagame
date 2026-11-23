package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
@Immutable
public class b implements com.facebook.cache.common.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f27653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.common.e f27654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RotationOptions f27655c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.common.c f27656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final com.facebook.cache.common.c f27657e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final String f27658f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f27659g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final Object f27660h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f27661i;

    public b(String sourceString, @Nullable com.facebook.imagepipeline.common.e resizeOptions, RotationOptions rotationOptions, com.facebook.imagepipeline.common.c imageDecodeOptions, @Nullable com.facebook.cache.common.c postprocessorCacheKey, @Nullable String postprocessorName, @Nullable Object callerContext) {
        this.f27653a = (String) com.facebook.common.internal.i.i(sourceString);
        this.f27654b = resizeOptions;
        this.f27655c = rotationOptions;
        this.f27656d = imageDecodeOptions;
        this.f27657e = postprocessorCacheKey;
        this.f27658f = postprocessorName;
        this.f27659g = com.facebook.common.util.b.l(Integer.valueOf(sourceString.hashCode()), Integer.valueOf(resizeOptions != null ? resizeOptions.hashCode() : 0), Integer.valueOf(rotationOptions.hashCode()), imageDecodeOptions, postprocessorCacheKey, postprocessorName);
        this.f27660h = callerContext;
        this.f27661i = RealtimeSinceBootClock.get().now();
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f27653a;
    }

    @Override // com.facebook.cache.common.c
    public boolean b() {
        return false;
    }

    @Override // com.facebook.cache.common.c
    public boolean c(Uri uri) {
        return a().contains(uri.toString());
    }

    @Nullable
    public Object d() {
        return this.f27660h;
    }

    public long e() {
        return this.f27661i;
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(@Nullable Object o10) {
        if (!(o10 instanceof b)) {
            return false;
        }
        b bVar = (b) o10;
        return this.f27659g == bVar.f27659g && this.f27653a.equals(bVar.f27653a) && com.facebook.common.internal.h.a(this.f27654b, bVar.f27654b) && com.facebook.common.internal.h.a(this.f27655c, bVar.f27655c) && com.facebook.common.internal.h.a(this.f27656d, bVar.f27656d) && com.facebook.common.internal.h.a(this.f27657e, bVar.f27657e) && com.facebook.common.internal.h.a(this.f27658f, bVar.f27658f);
    }

    @Nullable
    public String f() {
        return this.f27658f;
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return this.f27659g;
    }

    @Override // com.facebook.cache.common.c
    public String toString() {
        return String.format(null, "%s_%s_%s_%s_%s_%s_%d", this.f27653a, this.f27654b, this.f27655c, this.f27656d, this.f27657e, this.f27658f, Integer.valueOf(this.f27659g));
    }
}

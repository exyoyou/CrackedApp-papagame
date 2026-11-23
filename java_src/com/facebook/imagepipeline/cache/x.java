package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class x implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private static x f27754a;

    private x() {
    }

    public static synchronized x o() {
        if (f27754a == null) {
            f27754a = new x();
        }
        return f27754a;
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void a(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void b(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void c(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void d(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void e(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void f(t<?, ?> encodedMemoryCache) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void g(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void h(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void i(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void j(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void k(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void l(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void m(t<?, ?> bitmapMemoryCache) {
    }

    @Override // com.facebook.imagepipeline.cache.p
    public void n(com.facebook.cache.common.c cacheKey) {
    }
}

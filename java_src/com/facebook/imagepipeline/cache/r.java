package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class r {

    static class a implements v<com.facebook.cache.common.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ p f27730a;

        a(final p val$imageCacheStatsTracker) {
            this.f27730a = val$imageCacheStatsTracker;
        }

        @Override // com.facebook.imagepipeline.cache.v
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(com.facebook.cache.common.c cacheKey) {
            this.f27730a.j(cacheKey);
        }

        @Override // com.facebook.imagepipeline.cache.v
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(com.facebook.cache.common.c cacheKey) {
            this.f27730a.a(cacheKey);
        }

        @Override // com.facebook.imagepipeline.cache.v
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void c(com.facebook.cache.common.c cacheKey) {
            this.f27730a.e(cacheKey);
        }
    }

    public static q<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> a(final t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, final p imageCacheStatsTracker) {
        imageCacheStatsTracker.m(bitmapMemoryCache);
        return new q<>(bitmapMemoryCache, new a(imageCacheStatsTracker));
    }
}

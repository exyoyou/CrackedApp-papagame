package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class o {

    static class a implements v<com.facebook.cache.common.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ p f27727a;

        a(final p val$imageCacheStatsTracker) {
            this.f27727a = val$imageCacheStatsTracker;
        }

        @Override // com.facebook.imagepipeline.cache.v
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(com.facebook.cache.common.c cacheKey) {
            this.f27727a.l(cacheKey);
        }

        @Override // com.facebook.imagepipeline.cache.v
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(com.facebook.cache.common.c cacheKey) {
            this.f27727a.i(cacheKey);
        }

        @Override // com.facebook.imagepipeline.cache.v
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void c(com.facebook.cache.common.c cacheKey) {
            this.f27727a.g(cacheKey);
        }
    }

    public static q<com.facebook.cache.common.c, PooledByteBuffer> a(final t<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, final p imageCacheStatsTracker) {
        imageCacheStatsTracker.f(encodedMemoryCache);
        return new q<>(encodedMemoryCache, new a(imageCacheStatsTracker));
    }
}

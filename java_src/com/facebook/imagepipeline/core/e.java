package com.facebook.imagepipeline.core;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class e implements d {
    @Override // com.facebook.imagepipeline.core.d
    public com.facebook.cache.disk.c a(com.facebook.cache.disk.b diskCacheConfig) {
        return new com.facebook.cache.disk.e(diskCacheConfig.l(), diskCacheConfig.c(), diskCacheConfig.b(), diskCacheConfig.d());
    }
}

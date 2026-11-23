package com.facebook.imagepipeline.core;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class c implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f27812a;

    public c(d diskStorageFactory) {
        this.f27812a = diskStorageFactory;
    }

    public static com.facebook.cache.disk.d b(com.facebook.cache.disk.b diskCacheConfig, com.facebook.cache.disk.c diskStorage) {
        return c(diskCacheConfig, diskStorage, Executors.newSingleThreadExecutor());
    }

    public static com.facebook.cache.disk.d c(com.facebook.cache.disk.b diskCacheConfig, com.facebook.cache.disk.c diskStorage, Executor executorForBackgroundInit) {
        return new com.facebook.cache.disk.d(diskStorage, diskCacheConfig.h(), new com.facebook.cache.disk.d.c(diskCacheConfig.k(), diskCacheConfig.j(), diskCacheConfig.f()), diskCacheConfig.e(), diskCacheConfig.d(), diskCacheConfig.g(), executorForBackgroundInit, diskCacheConfig.i());
    }

    @Override // com.facebook.imagepipeline.core.g
    public com.facebook.cache.disk.h a(com.facebook.cache.disk.b diskCacheConfig) {
        return b(diskCacheConfig, this.f27812a.a(diskCacheConfig));
    }
}

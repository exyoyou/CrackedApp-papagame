package com.facebook.imagepipeline.core;

import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.p;
import com.facebook.imagepipeline.cache.t;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.memory.i0;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public interface i {
    @Nullable
    t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> getBitmapCacheOverride();

    Bitmap.Config getBitmapConfig();

    @Nullable
    com.facebook.imagepipeline.cache.i.b<com.facebook.cache.common.c> getBitmapMemoryCacheEntryStateObserver();

    com.facebook.imagepipeline.cache.a getBitmapMemoryCacheFactory();

    com.facebook.common.internal.l<u> getBitmapMemoryCacheParamsSupplier();

    t.a getBitmapMemoryCacheTrimStrategy();

    com.facebook.imagepipeline.cache.f getCacheKeyFactory();

    @Nullable
    e3.a getCallerContextVerifier();

    f4.a getCloseableReferenceLeakTracker();

    Context getContext();

    @Nullable
    t<com.facebook.cache.common.c, PooledByteBuffer> getEncodedMemoryCacheOverride();

    com.facebook.common.internal.l<u> getEncodedMemoryCacheParamsSupplier();

    @Nullable
    com.facebook.common.executors.g getExecutorServiceForAnimatedImages();

    f getExecutorSupplier();

    j getExperiments();

    g getFileCacheFactory();

    p getImageCacheStatsTracker();

    @Nullable
    com.facebook.imagepipeline.decoder.b getImageDecoder();

    @Nullable
    com.facebook.imagepipeline.decoder.c getImageDecoderConfig();

    @Nullable
    l4.d getImageTranscoderFactory();

    @Nullable
    Integer getImageTranscoderType();

    com.facebook.common.internal.l<Boolean> getIsPrefetchEnabledSupplier();

    com.facebook.cache.disk.b getMainDiskCacheConfig();

    int getMemoryChunkType();

    com.facebook.common.memory.c getMemoryTrimmableRegistry();

    l0 getNetworkFetcher();

    @Nullable
    com.facebook.imagepipeline.bitmaps.f getPlatformBitmapFactory();

    i0 getPoolFactory();

    com.facebook.imagepipeline.decoder.d getProgressiveJpegConfig();

    Set<j4.e> getRequestListener2s();

    Set<j4.f> getRequestListeners();

    com.facebook.cache.disk.b getSmallImageDiskCacheConfig();

    boolean isDiskCacheEnabled();

    boolean isDownsampleEnabled();

    boolean isResizeAndRotateEnabledForNetwork();
}

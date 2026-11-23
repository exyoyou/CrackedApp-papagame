.class public interface abstract Lcom/facebook/imagepipeline/core/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract getBitmapCacheOverride()Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBitmapConfig()Landroid/graphics/Bitmap$Config;
.end method

.method public abstract getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/a;
.end method

.method public abstract getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/t$a;
.end method

.method public abstract getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/f;
.end method

.method public abstract getCallerContextVerifier()Le3/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCloseableReferenceLeakTracker()Lf4/a;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getEncodedMemoryCacheOverride()Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;
.end method

.method public abstract getExperiments()Lcom/facebook/imagepipeline/core/j;
.end method

.method public abstract getFileCacheFactory()Lcom/facebook/imagepipeline/core/g;
.end method

.method public abstract getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/p;
.end method

.method public abstract getImageDecoder()Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getImageTranscoderFactory()Ll4/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getImageTranscoderType()Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getIsPrefetchEnabledSupplier()Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMainDiskCacheConfig()Lcom/facebook/cache/disk/b;
.end method

.method public abstract getMemoryChunkType()I
.end method

.method public abstract getMemoryTrimmableRegistry()Lcom/facebook/common/memory/c;
.end method

.method public abstract getNetworkFetcher()Lcom/facebook/imagepipeline/producers/l0;
.end method

.method public abstract getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;
.end method

.method public abstract getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/d;
.end method

.method public abstract getRequestListener2s()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj4/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestListeners()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj4/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/b;
.end method

.method public abstract isDiskCacheEnabled()Z
.end method

.method public abstract isDownsampleEnabled()Z
.end method

.method public abstract isResizeAndRotateEnabledForNetwork()Z
.end method

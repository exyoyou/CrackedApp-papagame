.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/core/i;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;,
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    }
.end annotation


# static fields
.field private static sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;


# instance fields
.field private final mBitmapCache:Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mBitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/a;

.field private final mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/t$a;

.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/f;

.field private final mCallerContextVerifier:Le3/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCloseableReferenceLeakTracker:Lf4/a;

.field private final mContext:Landroid/content/Context;

.field private final mDiskCacheEnabled:Z

.field private final mDownsampleEnabled:Z

.field private final mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorSupplier:Lcom/facebook/imagepipeline/core/f;

.field private final mFileCacheFactory:Lcom/facebook/imagepipeline/core/g;

.field private final mHttpNetworkTimeout:I

.field private final mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/p;

.field private final mImageDecoder:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImagePipelineExperiments:Lcom/facebook/imagepipeline/core/j;

.field private final mImageTranscoderFactory:Ll4/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageTranscoderType:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainDiskCacheConfig:Lcom/facebook/cache/disk/b;

.field private final mMemoryChunkType:I

.field private final mMemoryTrimmableRegistry:Lcom/facebook/common/memory/c;

.field private final mNetworkFetcher:Lcom/facebook/imagepipeline/producers/l0;

.field private final mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPoolFactory:Lcom/facebook/imagepipeline/memory/i0;

.field private final mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/d;

.field private final mRequestListener2s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj4/e;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj4/f;",
            ">;"
        }
    .end annotation
.end field

.field private final mResizeAndRotateEnabledForNetwork:Z

.field private final mSerialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 4
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/j$b;->t()Lcom/facebook/imagepipeline/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImagePipelineExperiments:Lcom/facebook/imagepipeline/core/j;

    .line 6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/l;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/facebook/imagepipeline/cache/k;

    .line 7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/cache/k;-><init>(Landroid/app/ActivityManager;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/l;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/l;

    .line 10
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/t$a;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/facebook/imagepipeline/cache/c;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/c;-><init>()V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/t$a;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/t$a;

    .line 12
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/i$b;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/i$b;

    .line 13
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 14
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/f;

    move-result-object v1

    if-nez v1, :cond_4

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/cache/l;->f()Lcom/facebook/imagepipeline/cache/l;

    move-result-object v1

    goto :goto_3

    .line 16
    :cond_4
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/f;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/f;

    .line 17
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/g;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/facebook/imagepipeline/core/c;

    new-instance v2, Lcom/facebook/imagepipeline/core/e;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/core/e;-><init>()V

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/core/c;-><init>(Lcom/facebook/imagepipeline/core/d;)V

    goto :goto_4

    .line 19
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/g;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/g;

    .line 20
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDownsampleEnabled:Z

    .line 21
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/l;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/facebook/imagepipeline/cache/m;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/m;-><init>()V

    goto :goto_5

    .line 22
    :cond_6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/l;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/l;

    .line 23
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/p;

    move-result-object v1

    if-nez v1, :cond_7

    .line 24
    invoke-static {}, Lcom/facebook/imagepipeline/cache/x;->o()Lcom/facebook/imagepipeline/cache/x;

    move-result-object v1

    goto :goto_6

    .line 25
    :cond_7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/p;

    move-result-object v1

    :goto_6
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/p;

    .line 26
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/b;

    .line 27
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ll4/d;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderFactory:Ll4/d;

    .line 28
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderType:Ljava/lang/Integer;

    .line 29
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/l;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    goto :goto_7

    .line 30
    :cond_8
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/l;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/l;

    .line 31
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;

    move-result-object v1

    if-nez v1, :cond_9

    .line 32
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getDefaultMainDiskCacheConfig(Landroid/content/Context;)Lcom/facebook/cache/disk/b;

    move-result-object v1

    goto :goto_8

    .line 33
    :cond_9
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;

    move-result-object v1

    :goto_8
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/b;

    .line 34
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/memory/c;

    move-result-object v2

    if-nez v2, :cond_a

    .line 35
    invoke-static {}, Lcom/facebook/common/memory/d;->c()Lcom/facebook/common/memory/d;

    move-result-object v2

    goto :goto_9

    .line 36
    :cond_a
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/memory/c;

    move-result-object v2

    :goto_9
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/c;

    .line 37
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/j;)I

    move-result v2

    iput v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryChunkType:I

    .line 38
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)I

    move-result v2

    if-gez v2, :cond_b

    const/16 v2, 0x7530

    goto :goto_a

    .line 39
    :cond_b
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)I

    move-result v2

    :goto_a
    iput v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mHttpNetworkTimeout:I

    .line 40
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "ImagePipelineConfig->mNetworkFetcher"

    .line 41
    invoke-static {v3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 42
    :cond_c
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v3

    if-nez v3, :cond_d

    new-instance v3, Lcom/facebook/imagepipeline/producers/w;

    invoke-direct {v3, v2}, Lcom/facebook/imagepipeline/producers/w;-><init>(I)V

    goto :goto_b

    .line 43
    :cond_d
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v3

    :goto_b
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/l0;

    .line 44
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 45
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 46
    :cond_e
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 47
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/memory/i0;

    move-result-object v2

    if-nez v2, :cond_f

    new-instance v2, Lcom/facebook/imagepipeline/memory/i0;

    .line 48
    invoke-static {}, Lcom/facebook/imagepipeline/memory/h0;->n()Lcom/facebook/imagepipeline/memory/h0$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/h0$b;->m()Lcom/facebook/imagepipeline/memory/h0;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/imagepipeline/memory/i0;-><init>(Lcom/facebook/imagepipeline/memory/h0;)V

    goto :goto_c

    .line 49
    :cond_f
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/memory/i0;

    move-result-object v2

    :goto_c
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPoolFactory:Lcom/facebook/imagepipeline/memory/i0;

    .line 50
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v3

    if-nez v3, :cond_10

    new-instance v3, Lcom/facebook/imagepipeline/decoder/f;

    invoke-direct {v3}, Lcom/facebook/imagepipeline/decoder/f;-><init>()V

    goto :goto_d

    .line 51
    :cond_10
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v3

    :goto_d
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/d;

    .line 52
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_11

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_e

    .line 53
    :cond_11
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    :goto_e
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListeners:Ljava/util/Set;

    .line 54
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_12

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_f

    .line 55
    :cond_12
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    :goto_f
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListener2s:Ljava/util/Set;

    .line 56
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mResizeAndRotateEnabledForNetwork:Z

    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_10

    .line 58
    :cond_13
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/b;

    .line 59
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/c;

    .line 60
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/i0;->e()I

    move-result v1

    .line 61
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/f;

    move-result-object v2

    if-nez v2, :cond_14

    new-instance v2, Lcom/facebook/imagepipeline/core/b;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/core/b;-><init>(I)V

    goto :goto_11

    .line 62
    :cond_14
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/f;

    move-result-object v2

    :goto_11
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/f;

    .line 63
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDiskCacheEnabled:Z

    .line 64
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Le3/a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCallerContextVerifier:Le3/a;

    .line 65
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lf4/a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCloseableReferenceLeakTracker:Lf4/a;

    .line 66
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/t;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapCache:Lcom/facebook/imagepipeline/cache/t;

    .line 67
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/a;

    move-result-object v1

    if-nez v1, :cond_15

    new-instance v1, Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/g;-><init>()V

    goto :goto_12

    .line 68
    :cond_15
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/a;

    move-result-object v1

    :goto_12
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/a;

    .line 69
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/t;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/t;

    .line 70
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/executors/g;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSerialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/g;

    .line 71
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/j;->m()Lm3/b;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 72
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/d;-><init>(Lcom/facebook/imagepipeline/memory/i0;)V

    .line 73
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->setWebpBitmapFactory(Lm3/b;Lcom/facebook/imagepipeline/core/j;Lm3/a;)V

    goto :goto_13

    .line 74
    :cond_16
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/j;->z()Z

    move-result p1

    if-eqz p1, :cond_17

    sget-boolean p1, Lm3/c;->a:Z

    if-eqz p1, :cond_17

    .line 75
    invoke-static {}, Lm3/c;->j()Lm3/b;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 76
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/d;-><init>(Lcom/facebook/imagepipeline/memory/i0;)V

    .line 77
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->setWebpBitmapFactory(Lm3/b;Lcom/facebook/imagepipeline/core/j;Lm3/a;)V

    .line 78
    :cond_17
    :goto_13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 79
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_18
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-void
.end method

.method public static getDefaultImageRequestConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method private static getDefaultMainDiskCacheConfig(Landroid/content/Context;)Lcom/facebook/cache/disk/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "DiskCacheConfig.getDefaultMainDiskCacheConfig"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0}, Lcom/facebook/cache/disk/b;->m(Landroid/content/Context;)Lcom/facebook/cache/disk/b$b;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b$b;->n()Lcom/facebook/cache/disk/b;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 38
    .line 39
    .line 40
    :cond_2
    throw p0
.end method

.method private static getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ll4/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ll4/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t define a custom ImageTranscoderFactory and provide an ImageTranscoderType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ll4/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ll4/d;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/j;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "imagePipelineExperiments"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/j;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/j;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/j;->g()J

    const/4 p0, 0x0

    return p0
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method static resetDefaultRequestConfig()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    .line 8
    .line 9
    return-void
.end method

.method private static setWebpBitmapFactory(Lm3/b;Lcom/facebook/imagepipeline/core/j;Lm3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "webpBitmapFactory",
            "imagePipelineExperiments",
            "bitmapCreator"
        }
    .end annotation

    .line 1
    sput-object p0, Lm3/c;->d:Lm3/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/j;->n()Lm3/b$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lm3/b;->d(Lm3/b$a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-interface {p0, p2}, Lm3/b;->a(Lm3/a;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method


# virtual methods
.method public getBitmapCacheOverride()Lcom/facebook/imagepipeline/cache/t;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapCache:Lcom/facebook/imagepipeline/cache/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/i$b;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/i$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/t$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/t$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallerContextVerifier()Le3/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCallerContextVerifier:Le3/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloseableReferenceLeakTracker()Lf4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCloseableReferenceLeakTracker:Lf4/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEncodedMemoryCacheOverride()Lcom/facebook/imagepipeline/cache/t;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/g;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSerialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExperiments()Lcom/facebook/imagepipeline/core/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImagePipelineExperiments:Lcom/facebook/imagepipeline/core/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileCacheFactory()Lcom/facebook/imagepipeline/core/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageDecoder()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageTranscoderFactory()Ll4/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderFactory:Ll4/d;

    return-object v0
.end method

.method public getImageTranscoderType()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsPrefetchEnabledSupplier()Lcom/facebook/common/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMainDiskCacheConfig()Lcom/facebook/cache/disk/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMemoryChunkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryChunkType:I

    return v0
.end method

.method public getMemoryTrimmableRegistry()Lcom/facebook/common/memory/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkFetcher()Lcom/facebook/imagepipeline/producers/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/l0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPoolFactory:Lcom/facebook/imagepipeline/memory/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestListener2s()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj4/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListener2s:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequestListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj4/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDiskCacheEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDiskCacheEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDownsampleEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDownsampleEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isResizeAndRotateEnabledForNetwork()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mResizeAndRotateEnabledForNetwork:Z

    .line 2
    .line 3
    return v0
.end method

.class final Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;,
        Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$FireCancelEventRunnable;,
        Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$FireFailEventRunnable;
    }
.end annotation


# static fields
.field private static final ERROR_NO_IMAGE_STREAM:Ljava/lang/String; = "No stream for image [%s]"

.field private static final ERROR_POST_PROCESSOR_NULL:Ljava/lang/String; = "Post-processor returned null [%s]"

.field private static final ERROR_PRE_PROCESSOR_NULL:Ljava/lang/String; = "Pre-processor returned null [%s]"

.field private static final ERROR_PROCESSOR_FOR_DISK_CACHE_NULL:Ljava/lang/String; = "Bitmap processor for disk cache returned null [%s]"

.field private static final LOG_CACHE_IMAGE_IN_MEMORY:Ljava/lang/String; = "Cache image in memory [%s]"

.field private static final LOG_CACHE_IMAGE_ON_DISK:Ljava/lang/String; = "Cache image on disk [%s]"

.field private static final LOG_DELAY_BEFORE_LOADING:Ljava/lang/String; = "Delay %d ms before loading...  [%s]"

.field private static final LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING:Ljava/lang/String; = "...Get cached bitmap from memory after waiting. [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_DISK_CACHE:Ljava/lang/String; = "Load image from disk cache [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_NETWORK:Ljava/lang/String; = "Load image from network [%s]"

.field private static final LOG_POSTPROCESS_IMAGE:Ljava/lang/String; = "PostProcess image before displaying [%s]"

.field private static final LOG_PREPROCESS_IMAGE:Ljava/lang/String; = "PreProcess image before caching in memory [%s]"

.field private static final LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISK:Ljava/lang/String; = "Process image before cache on disk [%s]"

.field private static final LOG_RESIZE_CACHED_IMAGE_FILE:Ljava/lang/String; = "Resize image in disk cache [%s]"

.field private static final LOG_RESUME_AFTER_PAUSE:Ljava/lang/String; = ".. Resume loading [%s]"

.field private static final LOG_START_DISPLAY_IMAGE_TASK:Ljava/lang/String; = "Start display image task [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED:Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_REUSED:Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"

.field private static final LOG_TASK_INTERRUPTED:Ljava/lang/String; = "Task was interrupted [%s]"

.field private static final LOG_WAITING_FOR_IMAGE_LOADED:Ljava/lang/String; = "Image already is loading. Waiting... [%s]"

.field private static final LOG_WAITING_FOR_RESUME:Ljava/lang/String; = "ImageLoader is paused. Waiting...  [%s]"


# instance fields
.field private final configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

.field private final decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

.field private final downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

.field private final engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

.field private final handler:Landroid/os/Handler;

.field final imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

.field private final imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

.field final listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

.field private loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

.field private final memoryCacheKey:Ljava/lang/String;

.field private final networkDeniedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

.field final options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

.field final progressListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;

.field private final slowNetworkDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

.field private final syncLoading:Z

.field private final targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

.field final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->NETWORK:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 17
    .line 18
    iget-object p3, p1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 21
    .line 22
    iget-object p3, p1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 25
    .line 26
    iget-object p3, p1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    .line 33
    .line 34
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 45
    .line 46
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 49
    .line 50
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 53
    .line 54
    iget-object p3, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 55
    .line 56
    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->progressListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->progressListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isSyncLoading()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    .line 67
    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method private checkTaskInterrupted()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private checkTaskNotActual()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkViewCollected()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkViewReused()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private checkViewCollected()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isViewCollected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private checkViewReused()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isViewReused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private decodeImage(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    iget-object v8, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 20
    .line 21
    iget-object v9, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    move-object v3, p1

    .line 25
    invoke-direct/range {v1 .. v9}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;->decode(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method private delayIfNeed()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->shouldDelayBeforeLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    aput-object v2, v0, v3

    .line 29
    .line 30
    const-string v2, "Delay %d ms before loading...  [%s]"

    .line 31
    .line 32
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-long v4, v0

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    return v0

    .line 50
    :catch_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 53
    .line 54
    aput-object v2, v0, v1

    .line 55
    .line 56
    const-string v1, "Task was interrupted [%s]"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return v3

    .line 62
    :cond_0
    return v1
.end method

.method private downloadImage()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    const-string v1, "No stream for image [%s]"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v1, v2, v0, p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;)Z

    .line 40
    .line 41
    .line 42
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    .line 50
    .line 51
    throw v1
.end method

.method private fireCancelEvent()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$FireCancelEventRunnable;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$FireCancelEventRunnable;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method private fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$FireFailEventRunnable;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$FireFailEventRunnable;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private fireProgressEvent(II)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->progressListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;II)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 27
    .line 28
    invoke-static {v0, v1, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_2
    :goto_0
    return v1
.end method

.method private getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->isNetworkDenied()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->isSlowNetwork()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 24
    .line 25
    :goto_0
    return-object v0
.end method

.method private isTaskInterrupted()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v2, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 12
    .line 13
    aput-object v3, v2, v1

    .line 14
    .line 15
    const-string v1, "Task was interrupted [%s]"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    return v1
.end method

.method private isTaskNotActual()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isViewCollected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isViewReused()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method private isViewCollected()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->isCollected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v2, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 14
    .line 15
    aput-object v3, v2, v1

    .line 16
    .line 17
    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    return v1
.end method

.method private isViewReused()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-array v0, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 23
    .line 24
    aput-object v3, v0, v2

    .line 25
    .line 26
    const-string v2, "ImageAware is reused for another image. Task is cancelled. [%s]"

    .line 27
    .line 28
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    return v2
.end method

.method private resizeAndSaveImage(II)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    new-instance v7, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 21
    .line 22
    invoke-direct {v7, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(II)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object p2, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    new-instance p1, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 49
    .line 50
    sget-object p2, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 61
    .line 62
    sget-object v8, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    iget-object v11, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 69
    .line 70
    move-object v3, p1

    .line 71
    invoke-direct/range {v3 .. v11}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    .line 75
    .line 76
    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;->decode(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    iget-object p1, p1, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 p1, 0x0

    .line 86
    :goto_0
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 89
    .line 90
    iget-object p2, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->processorForDiskCache:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    .line 91
    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    const/4 p2, 0x1

    .line 95
    new-array v0, p2, [Ljava/lang/Object;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 98
    .line 99
    aput-object v2, v0, v1

    .line 100
    .line 101
    const-string v2, "Process image before cache on disk [%s]"

    .line 102
    .line 103
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->processorForDiskCache:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    .line 109
    .line 110
    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-nez p1, :cond_1

    .line 115
    .line 116
    new-array p2, p2, [Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 119
    .line 120
    aput-object v0, p2, v1

    .line 121
    .line 122
    const-string v0, "Bitmap processor for disk cache returned null [%s]"

    .line 123
    .line 124
    invoke-static {v0, p2}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_1
    if-eqz p1, :cond_2

    .line 128
    .line 129
    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 130
    .line 131
    iget-object p2, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    .line 141
    .line 142
    :cond_2
    return v1
.end method

.method static runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    if-nez p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3, p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->fireCallback(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private tryCacheImageOnDisk()Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    const-string v2, "Cache image on disk [%s]"

    .line 10
    .line 11
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->downloadImage()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 21
    .line 22
    iget v4, v2, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiskCache:I

    .line 23
    .line 24
    iget v2, v2, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiskCache:I

    .line 25
    .line 26
    if-gtz v4, :cond_0

    .line 27
    .line 28
    if-lez v2, :cond_1

    .line 29
    .line 30
    :cond_0
    const-string v5, "Resize image in disk cache [%s]"

    .line 31
    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 35
    .line 36
    aput-object v6, v0, v3

    .line 37
    .line 38
    invoke-static {v5, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->resizeAndSaveImage(II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :cond_1
    move v3, v1

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return v3
.end method

.method private tryLoadBitmap()Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    const-wide/16 v6, 0x0

    .line 27
    .line 28
    cmp-long v8, v4, v6

    .line 29
    .line 30
    if-lez v8, :cond_0

    .line 31
    .line 32
    const-string v4, "Load image from disk cache [%s]"

    .line 33
    .line 34
    new-array v5, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 37
    .line 38
    aput-object v6, v5, v2

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v4, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 44
    .line 45
    iput-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 48
    .line 49
    .line 50
    sget-object v4, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v4, v1}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move-object v1, v0

    .line 66
    :goto_0
    if-eqz v1, :cond_1

    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->isDecoded()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    :cond_1
    const-string v4, "Load image from network [%s]"

    .line 75
    .line 76
    new-array v3, v3, [Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 79
    .line 80
    aput-object v5, v3, v2

    .line 81
    .line 82
    invoke-static {v4, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->NETWORK:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isCacheOnDisk()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->tryCacheImageOnDisk()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 106
    .line 107
    iget-object v3, v3, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    .line 108
    .line 109
    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 110
    .line 111
    invoke-interface {v3, v4}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, v2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :cond_3
    if-eqz v1, :cond_4

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->isDecoded()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_5

    .line 141
    .line 142
    :cond_4
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    .line 143
    .line 144
    invoke-direct {p0, v2, v0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    move-object v9, v1

    .line 150
    move-object v1, v0

    .line 151
    move-object v0, v9

    .line 152
    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    move-object v9, v1

    .line 155
    move-object v1, v0

    .line 156
    move-object v0, v9

    .line 157
    goto :goto_2

    .line 158
    :catch_1
    move-exception v0

    .line 159
    move-object v9, v1

    .line 160
    move-object v1, v0

    .line 161
    move-object v0, v9

    .line 162
    goto :goto_3

    .line 163
    :catchall_1
    move-exception v1

    .line 164
    :goto_1
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    .line 168
    .line 169
    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :catch_2
    move-exception v1

    .line 174
    :goto_2
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    .line 178
    .line 179
    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :catch_3
    move-exception v1

    .line 184
    :goto_3
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    .line 188
    .line 189
    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    :goto_4
    move-object v1, v0

    .line 193
    goto :goto_5

    .line 194
    :catch_4
    move-exception v0

    .line 195
    throw v0

    .line 196
    :catch_5
    move-object v1, v0

    .line 197
    :catch_6
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    .line 198
    .line 199
    invoke-direct {p0, v2, v0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    :cond_5
    :goto_5
    return-object v1
.end method

.method private waitIfPaused()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getPause()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getPauseLock()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string v0, "ImageLoader is paused. Waiting...  [%s]"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    new-array v3, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    aput-object v4, v3, v5

    .line 35
    .line 36
    invoke-static {v0, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getPauseLock()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    .line 49
    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 53
    .line 54
    aput-object v3, v2, v5

    .line 55
    .line 56
    invoke-static {v0, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    const-string v0, "Task was interrupted [%s]"

    .line 61
    .line 62
    new-array v3, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 65
    .line 66
    aput-object v4, v3, v5

    .line 67
    .line 68
    invoke-static {v0, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    monitor-exit v1

    .line 72
    return v2

    .line 73
    :cond_0
    :goto_0
    monitor-exit v1

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw v0

    .line 78
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    return v0
.end method


# virtual methods
.method final getLoadingUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onBytesCopied(II)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireProgressEvent(II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public final run()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->waitIfPaused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->delayIfNeed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v3, v2, v4

    .line 26
    .line 27
    const-string v3, "Start display image task [%s]"

    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    new-array v2, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 41
    .line 42
    aput-object v3, v2, v4

    .line 43
    .line 44
    const-string v3, "Image already is loading. Waiting... [%s]"

    .line 45
    .line 46
    invoke-static {v3, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 50
    .line 51
    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v2, v3}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->isDecoded()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    sget-object v3, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 75
    .line 76
    iput-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 77
    .line 78
    const-string v3, "...Get cached bitmap from memory after waiting. [%s]"

    .line 79
    .line 80
    new-array v5, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 83
    .line 84
    aput-object v6, v5, v4

    .line 85
    .line 86
    invoke-static {v3, v5}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->tryLoadBitmap()Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_a

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->isDecoded()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_5

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_5
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskInterrupted()V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->shouldPreProcess()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    const-string v3, "PreProcess image before caching in memory [%s]"

    .line 119
    .line 120
    new-array v5, v1, [Ljava/lang/Object;

    .line 121
    .line 122
    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 123
    .line 124
    aput-object v6, v5, v4

    .line 125
    .line 126
    invoke-static {v3, v5}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, v2, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 130
    .line 131
    if-eqz v3, :cond_6

    .line 132
    .line 133
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getPreProcessor()Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v5, v2, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 140
    .line 141
    invoke-interface {v3, v5}, Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iput-object v3, v2, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    .line 147
    :cond_6
    iget-object v3, v2, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 148
    .line 149
    if-nez v3, :cond_7

    .line 150
    .line 151
    const-string v3, "Pre-processor returned null [%s]"

    .line 152
    .line 153
    new-array v5, v1, [Ljava/lang/Object;

    .line 154
    .line 155
    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 156
    .line 157
    aput-object v6, v5, v4

    .line 158
    .line 159
    invoke-static {v3, v5}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_7
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_8

    .line 169
    .line 170
    const-string v3, "Cache image in memory [%s]"

    .line 171
    .line 172
    new-array v5, v1, [Ljava/lang/Object;

    .line 173
    .line 174
    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 175
    .line 176
    aput-object v6, v5, v4

    .line 177
    .line 178
    invoke-static {v3, v5}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    .line 182
    .line 183
    iget-object v3, v3, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    .line 184
    .line 185
    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 186
    .line 187
    invoke-interface {v3, v5, v2}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z

    .line 188
    .line 189
    .line 190
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_9

    .line 197
    .line 198
    const-string v3, "PostProcess image before displaying [%s]"

    .line 199
    .line 200
    new-array v5, v1, [Ljava/lang/Object;

    .line 201
    .line 202
    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 203
    .line 204
    aput-object v6, v5, v4

    .line 205
    .line 206
    invoke-static {v3, v5}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    iget-object v5, v2, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 216
    .line 217
    invoke-interface {v3, v5}, Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iput-object v3, v2, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 222
    .line 223
    if-nez v3, :cond_9

    .line 224
    .line 225
    const-string v3, "Post-processor returned null [%s]"

    .line 226
    .line 227
    new-array v1, v1, [Ljava/lang/Object;

    .line 228
    .line 229
    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 230
    .line 231
    aput-object v5, v1, v4

    .line 232
    .line 233
    invoke-static {v3, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_9
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 237
    .line 238
    .line 239
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskInterrupted()V
    :try_end_0
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 243
    .line 244
    .line 245
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    .line 248
    .line 249
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 250
    .line 251
    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 252
    .line 253
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;-><init>(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V

    .line 254
    .line 255
    .line 256
    iget-boolean v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    .line 257
    .line 258
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 259
    .line 260
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 261
    .line 262
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_a
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :catchall_0
    move-exception v1

    .line 271
    goto :goto_3

    .line 272
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireCancelEvent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 280
    .line 281
    .line 282
    throw v1
.end method

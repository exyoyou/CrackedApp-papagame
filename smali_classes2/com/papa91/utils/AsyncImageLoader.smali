.class public Lcom/papa91/utils/AsyncImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/utils/AsyncImageLoader$ImageCallback;
    }
.end annotation


# static fields
.field private static impl:Lcom/papa91/utils/LoaderImpl;

.field private static sDownloadingSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static sImageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/utils/AsyncImageLoader;->sDownloadingSet:Ljava/util/HashSet;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/utils/AsyncImageLoader;->sImageCache:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v1, Lcom/papa91/utils/LoaderImpl;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/papa91/utils/LoaderImpl;-><init>(Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/papa91/utils/AsyncImageLoader;->impl:Lcom/papa91/utils/LoaderImpl;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/utils/AsyncImageLoader;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Lcom/papa91/utils/AsyncImageLoader;->startThreadPoolIfNecessary()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/papa91/utils/AsyncImageLoader;->setCachedDir(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method static synthetic access$000()Lcom/papa91/utils/LoaderImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->impl:Lcom/papa91/utils/LoaderImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->sDownloadingSet:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200(Lcom/papa91/utils/AsyncImageLoader;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/utils/AsyncImageLoader;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static startThreadPoolIfNecessary()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x3

    .line 20
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/papa91/utils/AsyncImageLoader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public downloadImage(Ljava/lang/String;Lcom/papa91/utils/AsyncImageLoader$ImageCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/papa91/utils/AsyncImageLoader;->downloadImage(Ljava/lang/String;ZLcom/papa91/utils/AsyncImageLoader$ImageCallback;)V

    return-void
.end method

.method public downloadImage(Ljava/lang/String;ZLcom/papa91/utils/AsyncImageLoader$ImageCallback;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->sDownloadingSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->impl:Lcom/papa91/utils/LoaderImpl;

    invoke-virtual {v0, p1}, Lcom/papa91/utils/LoaderImpl;->getBitmapFromMemory(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    .line 4
    invoke-interface {p3, v0, p1}, Lcom/papa91/utils/AsyncImageLoader$ImageCallback;->onImageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->sDownloadingSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/papa91/utils/AsyncImageLoader$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa91/utils/AsyncImageLoader$1;-><init>(Lcom/papa91/utils/AsyncImageLoader;Ljava/lang/String;ZLcom/papa91/utils/AsyncImageLoader$ImageCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    :goto_0
    return-void
.end method

.method public preLoadNextImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/papa91/utils/AsyncImageLoader;->downloadImage(Ljava/lang/String;Lcom/papa91/utils/AsyncImageLoader$ImageCallback;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setCache2File(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->impl:Lcom/papa91/utils/LoaderImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/papa91/utils/LoaderImpl;->setCache2File(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCachedDir(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/utils/AsyncImageLoader;->impl:Lcom/papa91/utils/LoaderImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/papa91/utils/LoaderImpl;->setCachedDir(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

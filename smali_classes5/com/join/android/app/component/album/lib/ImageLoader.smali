.class public Lcom/join/android/app/component/album/lib/ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/album/lib/ImageLoader$Type;,
        Lcom/join/android/app/component/album/lib/ImageLoader$g;,
        Lcom/join/android/app/component/album/lib/ImageLoader$f;
    }
.end annotation


# static fields
.field private static k:I = 0xa00000

.field private static l:Lcom/join/android/app/component/album/lib/ImageLoader;


# instance fields
.field private a:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:I

.field private d:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Thread;

.field private g:Landroid/os/Handler;

.field private h:Landroid/os/Handler;

.field private volatile i:Ljava/util/concurrent/Semaphore;

.field private volatile j:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "threadCount",
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->c:I

    .line 6
    .line 7
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->d:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->i:Ljava/util/concurrent/Semaphore;

    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/component/album/lib/ImageLoader;->t(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/album/lib/ImageLoader;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->g:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/album/lib/ImageLoader;->s()Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->j:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->i:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/android/app/component/album/lib/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/component/album/lib/ImageLoader;->i(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/join/android/app/component/album/lib/ImageLoader;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->h:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private i(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "bitmap"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->a:Landroidx/collection/LruCache;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private declared-synchronized j(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->g:Landroid/os/Handler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->i:Ljava/util/concurrent/Semaphore;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->e:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->g:Landroid/os/Handler;

    .line 20
    .line 21
    const/16 v0, 0x110

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw p1
.end method

.method private static n(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/cache/u;

    .line 2
    .line 3
    sget v3, Lcom/join/android/app/component/album/lib/ImageLoader;->k:I

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    const v4, 0x7fffffff

    .line 9
    .line 10
    .line 11
    const v5, 0x7fffffff

    .line 12
    .line 13
    .line 14
    move-object v0, v6

    .line 15
    move v1, v3

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/cache/u;-><init>(IIIII)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$a;

    .line 20
    .line 21
    invoke-direct {v0, v6}, Lcom/join/android/app/component/album/lib/ImageLoader$a;-><init>(Lcom/facebook/imagepipeline/cache/u;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setBitmapMemoryCacheParamsSupplier(Lcom/facebook/common/internal/l;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method private static o(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "fieldName"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    const p1, 0x7fffffff

    .line 25
    .line 26
    .line 27
    if-ge p0, p1, :cond_0

    .line 28
    .line 29
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ""

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    move v0, p0

    .line 43
    :catch_1
    :cond_0
    return v0
.end method

.method public static q()Lcom/join/android/app/component/album/lib/ImageLoader;
    .locals 4

    .line 1
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 13
    .line 14
    sget-object v2, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v1, v3, v2}, Lcom/join/android/app/component/album/lib/ImageLoader;-><init>(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 28
    .line 29
    return-object v0
.end method

.method public static r(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)Lcom/join/android/app/component/album/lib/ImageLoader;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "threadCount",
            "type"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/album/lib/ImageLoader;-><init>(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 25
    .line 26
    return-object p0
.end method

.method private declared-synchronized s()Ljava/lang/Runnable;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->d:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 3
    .line 4
    sget-object v1, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->FIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->e:Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :cond_0
    :try_start_1
    sget-object v1, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->e:Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    const/4 v0, 0x0

    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0

    .line 37
    throw v0
.end method

.method private t(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "threadCount",
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/ImageLoader$b;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->f:Ljava/lang/Thread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    long-to-int v1, v0

    .line 20
    div-int/lit8 v1, v1, 0x8

    .line 21
    .line 22
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$c;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader$c;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->a:Landroidx/collection/LruCache;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->b:Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->j:Ljava/util/concurrent/Semaphore;

    .line 41
    .line 42
    new-instance p1, Ljava/util/LinkedList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->e:Ljava/util/LinkedList;

    .line 48
    .line 49
    if-nez p2, :cond_0

    .line 50
    .line 51
    sget-object p2, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 52
    .line 53
    :cond_0
    iput-object p2, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->d:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 54
    .line 55
    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/16 v0, 0x190

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/join/mgps/Util/t0;->m(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "bitmap"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/component/album/lib/ImageLoader;->i(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public k(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "options",
            "reqWidth",
            "reqHeight"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2
    .line 3
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 4
    .line 5
    if-le v0, p2, :cond_0

    .line 6
    .line 7
    if-le p1, p3, :cond_0

    .line 8
    .line 9
    int-to-float p1, v0

    .line 10
    int-to-float p2, p2

    .line 11
    div-float/2addr p1, p2

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    :goto_0
    return p1
.end method

.method public l(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pathName",
            "reqWidth",
            "reqHeight"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p2, p3}, Lcom/join/android/app/component/album/lib/ImageLoader;->k(Landroid/graphics/BitmapFactory$Options;II)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public m(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->a:Landroidx/collection/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/graphics/Bitmap;

    .line 8
    .line 9
    return-object p1
.end method

.method public p(Landroid/widget/ImageView;)Lcom/join/android/app/component/album/lib/ImageLoader$f;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader$f;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;Lcom/join/android/app/component/album/lib/ImageLoader$a;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, -0x2

    .line 27
    if-ne v3, v5, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    :goto_0
    if-gtz v3, :cond_1

    .line 36
    .line 37
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    .line 39
    :cond_1
    if-gtz v3, :cond_2

    .line 40
    .line 41
    const-string v3, "mMaxWidth"

    .line 42
    .line 43
    invoke-static {p1, v3}, Lcom/join/android/app/component/album/lib/ImageLoader;->o(Ljava/lang/Object;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    :cond_2
    if-gtz v3, :cond_3

    .line 48
    .line 49
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    .line 51
    :cond_3
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    .line 53
    if-ne v6, v5, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    :goto_1
    if-gtz v4, :cond_5

    .line 61
    .line 62
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    .line 64
    :cond_5
    if-gtz v4, :cond_6

    .line 65
    .line 66
    const-string v2, "mMaxHeight"

    .line 67
    .line 68
    invoke-static {p1, v2}, Lcom/join/android/app/component/album/lib/ImageLoader;->o(Ljava/lang/Object;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    :cond_6
    if-gtz v4, :cond_7

    .line 73
    .line 74
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 75
    .line 76
    :cond_7
    iput v3, v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;->a:I

    .line 77
    .line 78
    iput v4, v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;->b:I

    .line 79
    .line 80
    return-object v0
.end method

.method public v(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "imageView"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->h:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$d;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/ImageLoader$d;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->h:Landroid/os/Handler;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v1, Lcom/join/android/app/component/album/lib/ImageLoader$g;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v2}, Lcom/join/android/app/component/album/lib/ImageLoader$g;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;Lcom/join/android/app/component/album/lib/ImageLoader$a;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, v1, Lcom/join/android/app/component/album/lib/ImageLoader$g;->a:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    iput-object p2, v1, Lcom/join/android/app/component/album/lib/ImageLoader$g;->b:Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object p1, v1, Lcom/join/android/app/component/album/lib/ImageLoader$g;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->h:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$e;

    .line 46
    .line 47
    invoke-direct {v0, p0, p2, p1}, Lcom/join/android/app/component/album/lib/ImageLoader$e;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->j(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->a:Landroidx/collection/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

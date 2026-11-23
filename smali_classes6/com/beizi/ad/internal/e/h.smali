.class public Lcom/beizi/ad/internal/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/internal/e/h$a;,
        Lcom/beizi/ad/internal/e/h$b;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static e:Lcom/beizi/ad/internal/e/h;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/beizi/ad/internal/e/h;->b:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/LruCache;

    .line 12
    .line 13
    const/high16 v1, 0x400000

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/beizi/ad/internal/e/h;->c:Landroidx/collection/LruCache;

    .line 19
    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/beizi/ad/internal/e/h;->d:Landroid/os/Handler;

    .line 30
    .line 31
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/ad/internal/e/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/beizi/ad/internal/e/h;)Landroidx/collection/LruCache;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/ad/internal/e/h;->c:Landroidx/collection/LruCache;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;
    .locals 1

    .line 3
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v0

    iget-object v0, v0, Lcom/beizi/ad/internal/c;->j:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object p0

    iget-object p0, p0, Lcom/beizi/ad/internal/c;->j:Landroid/content/Context;

    sput-object p0, Lcom/beizi/ad/internal/e/h;->a:Landroid/content/Context;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/beizi/ad/internal/e/h;->a:Landroid/content/Context;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beizi/fusion/c/b;->e()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/beizi/ad/internal/e/h;->a:Landroid/content/Context;

    .line 7
    :goto_0
    invoke-static {}, Lcom/beizi/ad/internal/e/h;->b()Lcom/beizi/ad/internal/e/h;

    move-result-object p0

    return-object p0
.end method

.method private static b()Lcom/beizi/ad/internal/e/h;
    .locals 2

    .line 2
    sget-object v0, Lcom/beizi/ad/internal/e/h;->e:Lcom/beizi/ad/internal/e/h;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/beizi/ad/internal/e/h;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/beizi/ad/internal/e/h;->e:Lcom/beizi/ad/internal/e/h;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/beizi/ad/internal/e/h;

    invoke-direct {v1}, Lcom/beizi/ad/internal/e/h;-><init>()V

    sput-object v1, Lcom/beizi/ad/internal/e/h;->e:Lcom/beizi/ad/internal/e/h;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/beizi/ad/internal/e/h;->e:Lcom/beizi/ad/internal/e/h;

    return-object v0
.end method

.method static synthetic b(Lcom/beizi/ad/internal/e/h;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/e/h;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic c(Lcom/beizi/ad/internal/e/h;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/e/h;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/beizi/ad/internal/e/h$b;
    .locals 1

    .line 8
    new-instance v0, Lcom/beizi/ad/internal/e/h$b;

    invoke-direct {v0, p0, p1}, Lcom/beizi/ad/internal/e/h$b;-><init>(Lcom/beizi/ad/internal/e/h;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V
    .locals 6

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/internal/e/h;->c:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p2, v0}, Lcom/beizi/ad/internal/e/h$a;->a(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    const-string v0, "/"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/beizi/ad/internal/e/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/beizi/ad/lance/a/i;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0}, Lcom/beizi/ad/internal/e/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 16
    iget-object v1, p0, Lcom/beizi/ad/internal/e/h;->c:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {p2, v0}, Lcom/beizi/ad/internal/e/h$a;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/internal/e/h;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/beizi/ad/internal/e/h$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/beizi/ad/internal/e/h$1;-><init>(Lcom/beizi/ad/internal/e/h;Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/beizi/ad/internal/e/h$a;)V
    .locals 6

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/internal/e/h;->c:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 21
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/h;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p3, v0}, Lcom/beizi/ad/internal/e/h$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/internal/e/h;->d:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 24
    new-instance p2, Lcom/beizi/ad/internal/e/h$2;

    invoke-direct {p2, p0, p3, v0}, Lcom/beizi/ad/internal/e/h$2;-><init>(Lcom/beizi/ad/internal/e/h;Lcom/beizi/ad/internal/e/h$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 25
    :cond_2
    invoke-interface {p3, v0}, Lcom/beizi/ad/internal/e/h$a;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "/"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/beizi/ad/internal/e/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/beizi/ad/lance/a/i;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0}, Lcom/beizi/ad/internal/e/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_9

    .line 30
    iget-object v1, p0, Lcom/beizi/ad/internal/e/h;->c:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7

    .line 31
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/h;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    invoke-interface {p3, v0}, Lcom/beizi/ad/internal/e/h$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 33
    :cond_6
    iget-object p1, p0, Lcom/beizi/ad/internal/e/h;->d:Landroid/os/Handler;

    if-eqz p1, :cond_8

    .line 34
    new-instance p2, Lcom/beizi/ad/internal/e/h$3;

    invoke-direct {p2, p0, p3, v0}, Lcom/beizi/ad/internal/e/h$3;-><init>(Lcom/beizi/ad/internal/e/h;Lcom/beizi/ad/internal/e/h$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 35
    :cond_7
    invoke-interface {p3, v0}, Lcom/beizi/ad/internal/e/h$a;->a(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_2
    return-void

    .line 36
    :cond_9
    iget-object v0, p0, Lcom/beizi/ad/internal/e/h;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/beizi/ad/internal/e/h$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/beizi/ad/internal/e/h$4;-><init>(Lcom/beizi/ad/internal/e/h;Ljava/lang/String;ZLcom/beizi/ad/internal/e/h$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V
    .locals 6

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/internal/e/h;->c:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p2, v0}, Lcom/beizi/ad/internal/e/h$a;->a(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    const-string v0, "/"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/beizi/ad/internal/e/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/beizi/ad/lance/a/i;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0}, Lcom/beizi/ad/internal/e/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 15
    iget-object v1, p0, Lcom/beizi/ad/internal/e/h;->c:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {p2, v0}, Lcom/beizi/ad/internal/e/h$a;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/internal/e/h;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/beizi/ad/internal/e/h$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/beizi/ad/internal/e/h$5;-><init>(Lcom/beizi/ad/internal/e/h;Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

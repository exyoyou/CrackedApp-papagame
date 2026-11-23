.class public Lcom/beizi/ad/internal/e/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/internal/e/s$a;
    }
.end annotation


# static fields
.field private static d:Lcom/beizi/ad/internal/e/s;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


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
    iput-object v0, p0, Lcom/beizi/ad/internal/e/s;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/LruCache;

    .line 12
    .line 13
    const/high16 v1, 0x100000

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/beizi/ad/internal/e/s;->b:Landroidx/collection/LruCache;

    .line 19
    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/beizi/ad/internal/e/s;->c:Landroid/os/Handler;

    .line 26
    .line 27
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/internal/e/s;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/e/s;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Lcom/beizi/ad/internal/e/s;
    .locals 1

    .line 2
    invoke-static {}, Lcom/beizi/ad/internal/e/s;->b()Lcom/beizi/ad/internal/e/s;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/beizi/ad/internal/e/s;)Landroidx/collection/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/e/s;->b:Landroidx/collection/LruCache;

    return-object p0
.end method

.method private static b()Lcom/beizi/ad/internal/e/s;
    .locals 2

    .line 2
    sget-object v0, Lcom/beizi/ad/internal/e/s;->d:Lcom/beizi/ad/internal/e/s;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/beizi/ad/internal/e/s;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/beizi/ad/internal/e/s;->d:Lcom/beizi/ad/internal/e/s;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/beizi/ad/internal/e/s;

    invoke-direct {v1}, Lcom/beizi/ad/internal/e/s;-><init>()V

    sput-object v1, Lcom/beizi/ad/internal/e/s;->d:Lcom/beizi/ad/internal/e/s;

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
    sget-object v0, Lcom/beizi/ad/internal/e/s;->d:Lcom/beizi/ad/internal/e/s;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 37
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/internal/e/s;->b:Landroidx/collection/LruCache;

    invoke-virtual {v0, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/beizi/ad/internal/e/s;->b:Landroidx/collection/LruCache;

    invoke-virtual {v0, p2}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "/"

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/beizi/ad/lance/a/i;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 43
    invoke-static {p2}, Lcom/beizi/ad/internal/e/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_2

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/internal/e/s$a;)V
    .locals 6

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/internal/e/s;->b:Landroidx/collection/LruCache;

    invoke-virtual {v0, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-interface {p3, v0}, Lcom/beizi/ad/internal/e/s$a;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "/"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/beizi/ad/lance/a/i;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 9
    invoke-static {v0}, Lcom/beizi/ad/internal/e/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/beizi/ad/internal/e/s;->b:Landroidx/collection/LruCache;

    invoke-virtual {p1, p2, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p3, v0}, Lcom/beizi/ad/internal/e/s$a;->a(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/internal/e/s;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/beizi/ad/internal/e/s$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/beizi/ad/internal/e/s$1;-><init>(Lcom/beizi/ad/internal/e/s;Ljava/lang/String;Landroid/content/Context;Lcom/beizi/ad/internal/e/s$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/beizi/ad/internal/e/s$a;)V
    .locals 8

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/internal/e/s;->b:Landroidx/collection/LruCache;

    invoke-virtual {v0, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_2

    .line 19
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/s;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    invoke-interface {p4, v0}, Lcom/beizi/ad/internal/e/s$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/internal/e/s;->c:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 22
    new-instance p2, Lcom/beizi/ad/internal/e/s$2;

    invoke-direct {p2, p0, p4, v0}, Lcom/beizi/ad/internal/e/s$2;-><init>(Lcom/beizi/ad/internal/e/s;Lcom/beizi/ad/internal/e/s$a;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {p4, v0}, Lcom/beizi/ad/internal/e/s$a;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "/"

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/beizi/ad/lance/a/i;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 26
    invoke-static {v0}, Lcom/beizi/ad/internal/e/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 29
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 30
    iget-object p1, p0, Lcom/beizi/ad/internal/e/s;->b:Landroidx/collection/LruCache;

    invoke-virtual {p1, p2, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_7

    .line 31
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/s;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    invoke-interface {p4, v0}, Lcom/beizi/ad/internal/e/s$a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_6
    iget-object p1, p0, Lcom/beizi/ad/internal/e/s;->c:Landroid/os/Handler;

    if-eqz p1, :cond_8

    .line 34
    new-instance p2, Lcom/beizi/ad/internal/e/s$3;

    invoke-direct {p2, p0, p4, v0}, Lcom/beizi/ad/internal/e/s$3;-><init>(Lcom/beizi/ad/internal/e/s;Lcom/beizi/ad/internal/e/s$a;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 35
    :cond_7
    invoke-interface {p4, v0}, Lcom/beizi/ad/internal/e/s$a;->a(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void

    .line 36
    :cond_9
    iget-object v0, p0, Lcom/beizi/ad/internal/e/s;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/beizi/ad/internal/e/s$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/beizi/ad/internal/e/s$4;-><init>(Lcom/beizi/ad/internal/e/s;Ljava/lang/String;Landroid/content/Context;ZLcom/beizi/ad/internal/e/s$a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

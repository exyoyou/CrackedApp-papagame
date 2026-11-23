.class public Lcom/byazt/wh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/byazt/zz/gt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0x22
    }
.end annotation


# static fields
.field public static tt:Z

.field public static uj:J

.field public static ve:I


# instance fields
.field public a:Lcom/byazt/wh/tt;

.field public c:Lcom/byazt/wh/ve;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public da:Ljava/util/concurrent/CountDownLatch;

.field public i:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public n:Landroid/os/Handler;

.field public sp:Lcom/byazt/zz/ve$c$c;

.field public x:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/wh/a;->n:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/byazt/wh/a;->a:Lcom/byazt/wh/tt;

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/wh/a$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/byazt/wh/a$1;-><init>(Lcom/byazt/wh/a;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/wh/a;->x:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/byazt/wh/a;->da:Ljava/util/concurrent/CountDownLatch;

    .line 32
    .line 33
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0, p0}, Lcom/byazt/zz/SqlDownloadCacheService;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/byazt/wh/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wh/a;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic a()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/byazt/wh/a;->tt:Z

    return v0
.end method

.method public static synthetic c(Lcom/byazt/wh/a;)Lcom/byazt/zz/ve$c$c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/wh/a;->sp:Lcom/byazt/zz/ve$c$c;

    return-object p0
.end method

.method public static synthetic c(Z)Z
    .locals 0

    .line 4
    sput-boolean p0, Lcom/byazt/wh/a;->tt:Z

    return p0
.end method

.method public static synthetic n(Lcom/byazt/wh/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/wh/a;->sp()Z

    move-result p0

    return p0
.end method

.method public static synthetic sp(Lcom/byazt/wh/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wh/a;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private sp()Z
    .locals 9

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget-boolean v0, Lcom/byazt/wh/a;->tt:Z

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    sget v0, Lcom/byazt/wh/a;->ve:I

    const/4 v1, 0x5

    const-string v3, "SqlDownloadCacheAidlWra"

    if-le v0, v1, :cond_2

    const-string v0, "bindMainProcess: bind too many times!!! "

    .line 5
    invoke-static {v3, v0}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    sget-wide v4, Lcom/byazt/wh/a;->uj:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3a98

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    const-string v0, "bindMainProcess: time too short since last bind!!! "

    .line 8
    invoke-static {v3, v0}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 9
    :cond_3
    sget v2, Lcom/byazt/wh/a;->ve:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/byazt/wh/a;->ve:I

    .line 10
    sput-wide v0, Lcom/byazt/wh/a;->uj:J

    .line 11
    iget-object v0, p0, Lcom/byazt/wh/a;->n:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/wh/a$3;

    invoke-direct {v1, p0}, Lcom/byazt/wh/a$3;-><init>(Lcom/byazt/wh/a;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3
.end method

.method public static synthetic tt(Lcom/byazt/wh/a;)Lcom/byazt/wh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wh/a;->a:Lcom/byazt/wh/tt;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/wh/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wh/a;->da:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/wh/a;)Lcom/byazt/wh/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/wh/a;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wh/a;->i:Ljava/util/concurrent/Future;

    return-object p0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->a(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(II)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/byazt/wh/ve;->c(II)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/wh/ve;->c(IJ)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(IJLjava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 6

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 38
    invoke-interface/range {v0 .. v5}, Lcom/byazt/wh/ve;->c(IJLjava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/h/i;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/byazt/wh/ve;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(IIII)V
    .locals 1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/wh/ve;->c(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 30
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(IIIJ)V
    .locals 6

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 26
    invoke-interface/range {v0 .. v5}, Lcom/byazt/wh/ve;->c(IIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(IIJ)V
    .locals 1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/wh/ve;->c(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;)V"
        }
    .end annotation

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1, p2}, Lcom/byazt/wh/ve;->c(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 45
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;>;",
            "Lcom/byazt/wh/uj;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/byazt/wh/a$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/wh/a$4;-><init>(Lcom/byazt/wh/a;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public c(Lcom/byazt/t/tt;)V
    .locals 1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->c(Lcom/byazt/t/tt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/wh/tt;)V
    .locals 1

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 9
    :try_start_1
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->c(Lcom/byazt/wh/tt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/byazt/wh/a;->a:Lcom/byazt/wh/tt;

    .line 12
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/zz/ve$c$c;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/wh/a;->sp:Lcom/byazt/zz/ve$c$c;

    return-void
.end method

.method public c(ILjava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/byazt/h/i;",
            ">;)Z"
        }
    .end annotation

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->c(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 36
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public da(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->da(I)Lcom/byazt/t/DownloadInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public i(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->i(I)Lcom/byazt/t/DownloadInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public n()Z
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/byazt/wh/ve;->n()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n(I)Z
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->n(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Lcom/byazt/wh/a;->tt:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/wh/a;->n:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/wh/a;->x:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p2}, Lcom/byazt/wh/ve$c;->c(Landroid/os/IBinder;)Lcom/byazt/wh/ve;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Lcom/byazt/wh/a$2;

    .line 27
    .line 28
    invoke-direct {v0, p0, p2}, Lcom/byazt/wh/a$2;-><init>(Lcom/byazt/wh/a;Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/byazt/wh/a;->i:Ljava/util/concurrent/Future;

    .line 36
    .line 37
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sput-boolean p1, Lcom/byazt/wh/a;->tt:Z

    .line 6
    .line 7
    return-void
.end method

.method public sp(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->sp(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/byazt/h/i;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public tt(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->tt(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/wh/ve;->tt(IJ)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/byazt/wh/ve;->tt()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public tt(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;)V"
        }
    .end annotation

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1, p2}, Lcom/byazt/wh/ve;->tt(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->tt(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public tt(Lcom/byazt/t/tt;)V
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->tt(Lcom/byazt/t/tt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public u(I)V
    .locals 0

    return-void
.end method

.method public uj(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/wh/ve;->uj(IJ)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public uj(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public uj(I)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->uj(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/byazt/wh/ve;->uj()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/wh/ve;->ve(IJ)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ve(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;"
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->ve(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ve(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->ve(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ve()V
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/byazt/wh/ve;->ve()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public x(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/a;->c:Lcom/byazt/wh/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/wh/ve;->x(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic yp(I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/wh/a;->c(I)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

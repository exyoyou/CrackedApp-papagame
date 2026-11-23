.class public Lcom/byazt/zz/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbd,
        0xf
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/zz/uj;


# instance fields
.field public volatile tt:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public volatile uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/c/md;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Landroid/os/Handler;


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
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/zz/uj;->tt:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/zz/uj;->ve:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/zz/uj;->uj:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method public static c()Lcom/byazt/zz/uj;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/uj;->c:Lcom/byazt/zz/uj;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/byazt/zz/uj;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/byazt/zz/uj;

    invoke-direct {v1}, Lcom/byazt/zz/uj;-><init>()V

    sput-object v1, Lcom/byazt/zz/uj;->c:Lcom/byazt/zz/uj;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/byazt/zz/uj;->c:Lcom/byazt/zz/uj;

    return-object v0
.end method

.method private c(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/t/DownloadInfo;

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 36
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/t/DownloadInfo;

    if-eqz p2, :cond_2

    .line 37
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 38
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p3, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 39
    :goto_2
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 40
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 41
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/t/DownloadInfo;

    .line 42
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private tt(Lcom/byazt/t/DownloadTask;)Lcom/byazt/zz/u;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 16
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->isNeedIndependentProcess()Z

    move-result v0

    .line 17
    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-static {}, Lcom/byazt/w/a;->c()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 18
    :cond_3
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/byazt/zz/uj;->c(I)I

    move-result v2

    const/4 v4, 0x0

    if-ltz v2, :cond_7

    if-eq v2, v0, :cond_7

    if-ne v2, v3, :cond_5

    .line 19
    :try_start_0
    invoke-static {}, Lcom/byazt/w/a;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p1

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/byazt/zz/u;->c(I)V

    .line 21
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p1

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/byazt/zz/u;->x(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    invoke-static {v4}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/byazt/zz/u;->tt(Lcom/byazt/t/DownloadInfo;)V

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result p1

    if-le p1, v3, :cond_7

    .line 24
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p1

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/byazt/zz/u;->i(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 25
    invoke-static {p1}, Lcom/byazt/w/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-static {v4}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v2

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v2, v5, p1}, Lcom/byazt/zz/u;->c(ILjava/util/List;)V

    goto :goto_0

    .line 27
    :cond_5
    invoke-static {}, Lcom/byazt/w/a;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28
    invoke-static {v4}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p1

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/byazt/zz/u;->c(I)V

    .line 29
    invoke-static {v4}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p1

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/byazt/zz/u;->i(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 30
    invoke-static {p1}, Lcom/byazt/w/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v2

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v2, v5, p1}, Lcom/byazt/zz/u;->c(ILjava/util/List;)V

    goto :goto_0

    .line 32
    :cond_6
    invoke-virtual {p1, v3}, Lcom/byazt/t/DownloadTask;->setNeedDelayForCacheSync(Z)V

    .line 33
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p1

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/byazt/zz/u;->c(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 34
    :cond_7
    :goto_0
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    if-ne v0, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/byazt/zz/uj;->c(IZ)V

    if-ne v0, v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    .line 35
    :goto_2
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->ve(I)V

    return-void
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/byazt/zz/u;->n()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public c(I)I
    .locals 2

    .line 21
    invoke-static {}, Lcom/byazt/zz/ve;->lo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 22
    :cond_0
    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/zz/u;->sp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->u(I)I

    move-result p1

    return p1

    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->tt(I)I

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 25
    invoke-static {p1, p2}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 27
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/byazt/zz/u;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method public c(IJ)V
    .locals 1

    .line 59
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/zz/u;->c(IJ)V

    return-void
.end method

.method public c(ILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V
    .locals 6

    .line 47
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v2, v1

    :goto_0
    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/byazt/zz/u;->tt(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V

    return-void
.end method

.method public c(ILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;ZZ)V
    .locals 7

    .line 49
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/byazt/zz/u;->c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;ZZ)V

    return-void
.end method

.method public c(ILcom/byazt/c/yv;)V
    .locals 1

    .line 30
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(ILcom/byazt/c/yv;)V

    return-void
.end method

.method public c(IZ)V
    .locals 2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/byazt/zz/uj;->tt(IZ)V

    .line 13
    invoke-static {}, Lcom/byazt/zz/ve;->lo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/zz/u;->sp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->ve(IZ)V

    .line 15
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->ve()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/byazt/w/a;->c()Z

    move-result p2

    if-nez p2, :cond_1

    .line 16
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/byazt/b/DownloadHandleService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ss.android.downloader.action.PROCESS_NOTIFY"

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_download_id"

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/c/md;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    .line 8
    iget-object v0, p0, Lcom/byazt/zz/uj;->uj:Ljava/util/List;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/byazt/zz/uj;->uj:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/byazt/zz/uj;->uj:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/c/sl;)V
    .locals 0

    .line 58
    invoke-static {p1}, Lcom/byazt/zz/ve;->c(Lcom/byazt/c/sl;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadTask;)V
    .locals 5

    .line 53
    invoke-direct {p0, p1}, Lcom/byazt/zz/uj;->tt(Lcom/byazt/t/DownloadTask;)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getMonitorDepend()Lcom/byazt/c/gr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object v1

    new-instance v2, Lcom/byazt/m/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "tryDownload but getDownloadHandler failed"

    invoke-direct {v2, v3, v4}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, v2, p1}, Lcom/byazt/zl/c;->c(Lcom/byazt/c/gr;Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V

    :cond_1
    return-void

    .line 55
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->isNeedDelayForCacheSync()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/byazt/zz/uj;->ve:Landroid/os/Handler;

    new-instance v2, Lcom/byazt/zz/uj$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/byazt/zz/uj$1;-><init>(Lcom/byazt/zz/uj;Lcom/byazt/zz/u;Lcom/byazt/t/DownloadTask;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 57
    :cond_3
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Lcom/byazt/t/DownloadTask;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 52
    :cond_1
    invoke-interface {v1, p1}, Lcom/byazt/zz/u;->c(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public da(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->sp(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public i(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->a(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public m(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->sl(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->sl(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 10
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1}, Lcom/byazt/zz/u;->uj()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 12
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {v3}, Lcom/byazt/zz/u;->uj()Ljava/util/List;

    move-result-object v2

    .line 14
    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/byazt/zz/uj;->c(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, p1}, Lcom/byazt/zz/u;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 6
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3, p1}, Lcom/byazt/zz/u;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 8
    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/byazt/zz/uj;->c(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public n(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->tt(I)Z

    move-result p1

    return p1
.end method

.method public nu(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/byazt/zz/uj;->tt(IZ)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-interface {p1}, Lcom/byazt/zz/u;->startService()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public rh(I)Lcom/byazt/c/IDownloadFileUriProvider;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->my(I)Lcom/byazt/c/IDownloadFileUriProvider;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public sl(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->x(I)Lcom/byazt/t/DownloadInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public sp(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->uj(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public t(I)Lcom/byazt/c/yv;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->nu(I)Lcom/byazt/c/yv;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public declared-synchronized tt(I)I
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/byazt/zz/uj;->tt:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 13
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 14
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/byazt/zz/uj;->tt:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/byazt/zz/uj;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    invoke-interface {p2, p1}, Lcom/byazt/zz/u;->x(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public tt(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 40
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v1, p1}, Lcom/byazt/zz/u;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 42
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 43
    invoke-interface {v3, p1}, Lcom/byazt/zz/u;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 44
    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/byazt/zz/uj;->c(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public tt()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/zz/uj;->uj:Ljava/util/List;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/zz/uj;->uj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tt(ILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V
    .locals 6

    .line 49
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/byazt/zz/u;->c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V

    return-void
.end method

.method public declared-synchronized tt(IZ)V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/byazt/zz/uj;->tt:Landroid/util/SparseArray;

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tt(Lcom/byazt/c/md;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/byazt/zz/uj;->uj:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/zz/uj;->uj:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/byazt/zz/uj;->uj:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tt(Lcom/byazt/c/sl;)V
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/byazt/zz/ve;->tt(Lcom/byazt/c/sl;)V

    return-void
.end method

.method public tt(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->tt(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->tt(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public u(I)Lcom/byazt/c/eo;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->rh(I)Lcom/byazt/c/eo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public uj(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, p1}, Lcom/byazt/zz/u;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 9
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-interface {v3, p1}, Lcom/byazt/zz/u;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 11
    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/byazt/zz/uj;->c(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public uj(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(I)V

    return-void
.end method

.method public uj(IZ)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->tt(IZ)V

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/zz/ve;->hd()Z

    move-result v0

    return v0
.end method

.method public ve(I)Lcom/byazt/zz/u;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->c(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p1

    return-object p1
.end method

.method public ve(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v1, p1}, Lcom/byazt/zz/u;->ve(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 22
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 23
    invoke-interface {v3, p1}, Lcom/byazt/zz/u;->ve(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 24
    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/byazt/zz/uj;->c(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public ve()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/byazt/zz/u;->c()V

    :cond_0
    const/4 v0, 0x1

    .line 17
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0}, Lcom/byazt/zz/u;->c()V

    :cond_1
    return-void
.end method

.method public ve(IZ)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/byazt/w/a;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/high16 v0, 0x800000

    .line 3
    invoke-static {v0}, Lcom/byazt/w/c;->c(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(IZ)V

    .line 6
    :cond_0
    invoke-static {v2}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(IZ)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-static {v2}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(IZ)V

    .line 10
    :cond_3
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(IZ)V

    :cond_4
    return-void

    .line 12
    :cond_5
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(IZ)V

    .line 14
    :cond_6
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0, p1}, Lcom/byazt/zz/u;->c(II)V

    return-void
.end method

.method public x(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->n(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public yp(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->da(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public z(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/zz/uj;->ve(I)Lcom/byazt/zz/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->t(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

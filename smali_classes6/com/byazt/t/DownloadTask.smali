.class public Lcom/byazt/t/DownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x42,
        0x629
    }
.end annotation


# instance fields
.field public autoSetHashCodeForSameTask:Z

.field public chunkAdjustCalculator:Lcom/byazt/zz/sp;

.field public chunkStrategy:Lcom/byazt/zz/x;

.field public depend:Lcom/byazt/c/yp;

.field public diskSpaceHandler:Lcom/byazt/c/rh;

.field public final downloadCompleteHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;"
        }
    .end annotation
.end field

.field public downloadInfo:Lcom/byazt/t/DownloadInfo;

.field public downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

.field public fileUriProvider:Lcom/byazt/c/IDownloadFileUriProvider;

.field public forbiddenHandler:Lcom/byazt/c/gu;

.field public hashCodeForSameTask:I

.field public interceptor:Lcom/byazt/c/IDownloadInterceptor;

.field public final mainThreadListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/c/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public monitorDepend:Lcom/byazt/c/gr;

.field public needDelayForCacheSync:Z

.field public notificationClickCallback:Lcom/byazt/c/eo;

.field public notificationEventListener:Lcom/byazt/c/yv;

.field public final notificationListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/c/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public retryDelayTimeCalculator:Lcom/byazt/zz/my;

.field public final singleListenerHashCodeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/ev/a;",
            ">;"
        }
    .end annotation
.end field

.field public final singleListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/byazt/ev/a;",
            "Lcom/byazt/c/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public final subThreadListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/c/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/byazt/t/DownloadTask;->needDelayForCacheSync:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/byazt/t/DownloadTask;->autoSetHashCodeForSameTask:Z

    .line 7
    new-instance v0, Lcom/byazt/t/DownloadInfo$c;

    invoke-direct {v0}, Lcom/byazt/t/DownloadInfo$c;-><init>()V

    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/byazt/t/DownloadTask;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    return-void
.end method

.method private addAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    return-void
.end method

.method private addListenerToDownloadingSameTask(Lcom/byazt/ev/a;)V
    .locals 6

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/t/DownloadTask;->getDownloadListeners(Lcom/byazt/ev/a;)Landroid/util/SparseArray;

    move-result-object v0

    .line 9
    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 11
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 12
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/c/IDownloadListener;

    if-eqz v3, :cond_0

    .line 13
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    move-result-object v4

    invoke-virtual {p0}, Lcom/byazt/t/DownloadTask;->getDownloadId()I

    move-result v5

    invoke-virtual {v4, v5, v3, p1, v1}, Lcom/byazt/zz/uj;->tt(ILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
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

.method private copyListeners(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/c/IDownloadListener;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/c/IDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/byazt/c/IDownloadListener;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method private removeAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-void
.end method

.method private setChunkCalculator()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getThrottleNetSpeed()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/byazt/t/DownloadTask$2;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/byazt/t/DownloadTask$2;-><init>(Lcom/byazt/t/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/byazt/t/DownloadTask;->chunkStategy(Lcom/byazt/zz/x;)Lcom/byazt/t/DownloadTask;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public addDownloadCompleteHandler(Lcom/byazt/c/u;)Lcom/byazt/t/DownloadTask;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :cond_1
    :goto_0
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public addDownloadListener(ILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p4, :cond_1

    .line 5
    .line 6
    iget-object p4, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p4, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 14
    .line 15
    monitor-enter p4

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    monitor-exit p4

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lcom/byazt/t/DownloadTask;->getDownloadListeners(Lcom/byazt/ev/a;)Landroid/util/SparseArray;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    if-nez p3, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    monitor-enter p3

    .line 34
    :try_start_1
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    monitor-exit p3

    .line 38
    return-void

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    throw p1
.end method

.method public addListenerToDownloadingSameTask()V
    .locals 5

    const-string v0, "DownloadTask"

    const-string v1, "same task just tryDownloading, so add listener in last task instead of tryDownload"

    .line 1
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isAddListenerToSameTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadInfo;->setAddListenerToSameTask(Z)V

    .line 5
    :cond_0
    sget-object v0, Lcom/byazt/ev/a;->c:Lcom/byazt/ev/a;

    invoke-direct {p0, v0}, Lcom/byazt/t/DownloadTask;->addListenerToDownloadingSameTask(Lcom/byazt/ev/a;)V

    .line 6
    sget-object v0, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    invoke-direct {p0, v0}, Lcom/byazt/t/DownloadTask;->addListenerToDownloadingSameTask(Lcom/byazt/ev/a;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->monitorDepend:Lcom/byazt/c/gr;

    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    new-instance v2, Lcom/byazt/m/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "has another same task, add Listener to old task"

    invoke-direct {v2, v3, v4}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/byazt/zl/c;->c(Lcom/byazt/c/gr;Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V

    return-void
.end method

.method public addListenerToSameTask(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->m(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public asyncDownload(Lcom/byazt/zz/m;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/t/DownloadTask$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/byazt/t/DownloadTask$1;-><init>(Lcom/byazt/t/DownloadTask;Lcom/byazt/zz/m;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/u/uj;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public declared-synchronized autoCalAndGetHashCodeForSameTask()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/byazt/ev/a;->c:Lcom/byazt/ev/a;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/byazt/t/DownloadTask;->getSingleDownloadListener(Lcom/byazt/ev/a;)Lcom/byazt/c/IDownloadListener;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/byazt/t/DownloadTask;->getSingleDownloadListener(Lcom/byazt/ev/a;)Lcom/byazt/c/IDownloadListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/byazt/t/DownloadTask;->hashCodeForSameTask:I

    .line 23
    .line 24
    :cond_1
    iget v0, p0, Lcom/byazt/t/DownloadTask;->hashCodeForSameTask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public autoResumed(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->a(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public autoSetHashCodeForSameTask(Z)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/t/DownloadTask;->autoSetHashCodeForSameTask:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public backUpUrlRetryCount(I)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->ve(I)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public backUpUrls(Ljava/util/List;)Lcom/byazt/t/DownloadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/t/DownloadTask;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->tt(Ljava/util/List;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public canShowNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->canShowNotification()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public chunkAdjustCalculator(Lcom/byazt/zz/sp;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->chunkAdjustCalculator:Lcom/byazt/zz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public chunkStategy(Lcom/byazt/zz/x;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->chunkStrategy:Lcom/byazt/zz/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public copyInterfaceFromNewTask(Lcom/byazt/t/DownloadTask;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->chunkAdjustCalculator:Lcom/byazt/zz/sp;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->chunkAdjustCalculator:Lcom/byazt/zz/sp;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->chunkStrategy:Lcom/byazt/zz/x;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->chunkStrategy:Lcom/byazt/zz/x;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p1, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-direct {p0, v1, v2}, Lcom/byazt/t/DownloadTask;->addAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 37
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-direct {p0, v0, v2}, Lcom/byazt/t/DownloadTask;->addAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 50
    .line 51
    .line 52
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 53
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_2
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 59
    .line 60
    .line 61
    iget-object v1, p1, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-direct {p0, v1, v2}, Lcom/byazt/t/DownloadTask;->addAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 66
    .line 67
    .line 68
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->notificationEventListener:Lcom/byazt/c/yv;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->notificationEventListener:Lcom/byazt/c/yv;

    .line 72
    .line 73
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->interceptor:Lcom/byazt/c/IDownloadInterceptor;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->interceptor:Lcom/byazt/c/IDownloadInterceptor;

    .line 76
    .line 77
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->depend:Lcom/byazt/c/yp;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->depend:Lcom/byazt/c/yp;

    .line 80
    .line 81
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->monitorDepend:Lcom/byazt/c/gr;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->monitorDepend:Lcom/byazt/c/gr;

    .line 84
    .line 85
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->forbiddenHandler:Lcom/byazt/c/gu;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->forbiddenHandler:Lcom/byazt/c/gu;

    .line 88
    .line 89
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->diskSpaceHandler:Lcom/byazt/c/rh;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->diskSpaceHandler:Lcom/byazt/c/rh;

    .line 92
    .line 93
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->retryDelayTimeCalculator:Lcom/byazt/zz/my;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->retryDelayTimeCalculator:Lcom/byazt/zz/my;

    .line 96
    .line 97
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->notificationClickCallback:Lcom/byazt/c/eo;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->notificationClickCallback:Lcom/byazt/c/eo;

    .line 100
    .line 101
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->fileUriProvider:Lcom/byazt/c/IDownloadFileUriProvider;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->fileUriProvider:Lcom/byazt/c/IDownloadFileUriProvider;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 106
    .line 107
    monitor-enter v1

    .line 108
    :try_start_3
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 122
    :catchall_0
    move-exception p1

    .line 123
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    throw p1

    .line 125
    :catchall_1
    move-exception p1

    .line 126
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    throw p1

    .line 128
    :catchall_2
    move-exception p1

    .line 129
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    throw p1

    .line 131
    :catchall_3
    move-exception p1

    .line 132
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 133
    throw p1
.end method

.method public copyListenerFromPendingTask(Lcom/byazt/t/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 60
    .line 61
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 63
    .line 64
    iget-object v2, p1, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-direct {p0, v1, v2}, Lcom/byazt/t/DownloadTask;->removeAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p1, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-direct {p0, v1, v2}, Lcom/byazt/t/DownloadTask;->addAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    throw p1

    .line 81
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 90
    .line 91
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 93
    .line 94
    iget-object v2, p1, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-direct {p0, v1, v2}, Lcom/byazt/t/DownloadTask;->removeAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p1, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 102
    .line 103
    invoke-direct {p0, v1, v2}, Lcom/byazt/t/DownloadTask;->addAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 104
    .line 105
    .line 106
    monitor-exit v0

    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception p1

    .line 109
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    :try_start_4
    throw p1

    .line 111
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 120
    .line 121
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 122
    :try_start_5
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 123
    .line 124
    iget-object v2, p1, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 125
    .line 126
    invoke-direct {p0, v1, v2}, Lcom/byazt/t/DownloadTask;->removeAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p1, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-direct {p0, p1, v1}, Lcom/byazt/t/DownloadTask;->addAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 134
    .line 135
    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 138
    :catchall_2
    move-exception p1

    .line 139
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 140
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 141
    :cond_4
    return-void

    .line 142
    :catchall_3
    move-exception p1

    .line 143
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public deleteCacheIfCheckFailed(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->gt(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public depend(Lcom/byazt/c/yp;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->depend:Lcom/byazt/c/yp;

    .line 2
    .line 3
    return-object p0
.end method

.method public diskSpaceHandler(Lcom/byazt/c/rh;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->diskSpaceHandler:Lcom/byazt/c/rh;

    .line 2
    .line 3
    return-object p0
.end method

.method public distinctDirectory(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->rl(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public download()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo$c;->c()Lcom/byazt/t/DownloadInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/zz/ve;->zm()Lcom/byazt/zz/da;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->tt(I)Lcom/byazt/t/DownloadInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->generateTaskId()V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0, v1}, Lcom/byazt/zl/c;->c(Lcom/byazt/t/DownloadTask;Lcom/byazt/m/BaseException;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lcom/byazt/t/DownloadInfo;->copyTaskIdFromCacheData(Lcom/byazt/t/DownloadInfo;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-direct {p0}, Lcom/byazt/t/DownloadTask;->setChunkCalculator()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p0}, Lcom/byazt/zz/uj;->c(Lcom/byazt/t/DownloadTask;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    return v1

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    return v0
.end method

.method public downloadSetting(Lorg/json/JSONObject;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->c(Lorg/json/JSONObject;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public enqueueType(Lcom/byazt/ev/EnqueueType;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->c(Lcom/byazt/ev/EnqueueType;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public executorGroup(I)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->a(I)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public expectFileLength(J)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/byazt/t/DownloadInfo$c;->c(J)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public expiredRedownload(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->my(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public extra(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->sp(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public extraHeaders(Ljava/util/List;)Lcom/byazt/t/DownloadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;)",
            "Lcom/byazt/t/DownloadTask;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->c(Ljava/util/List;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public extraMonitorStatus([I)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->tt([I)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public fileUriProvider(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->fileUriProvider:Lcom/byazt/c/IDownloadFileUriProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public forbiddenHandler(Lcom/byazt/c/gu;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->forbiddenHandler:Lcom/byazt/c/gu;

    .line 2
    .line 3
    return-object p0
.end method

.method public force(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->tt(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public getChunkAdjustCalculator()Lcom/byazt/zz/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->chunkAdjustCalculator:Lcom/byazt/zz/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChunkStrategy()Lcom/byazt/zz/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->chunkStrategy:Lcom/byazt/zz/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDepend()Lcom/byazt/c/yp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->depend:Lcom/byazt/c/yp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiskSpaceHandler()Lcom/byazt/c/rh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->diskSpaceHandler:Lcom/byazt/c/rh;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadCompleteHandlerByIndex(I)Lcom/byazt/c/u;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge p1, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/byazt/c/u;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p1

    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public getDownloadCompleteHandlers()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadCompleteHandlers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getDownloadInfo()Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfo:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadListenerByIndex(Lcom/byazt/ev/a;I)Lcom/byazt/c/IDownloadListener;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/t/DownloadTask;->getDownloadListeners(Lcom/byazt/ev/a;)Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-gez p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    monitor-enter p1

    .line 12
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge p2, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/byazt/c/IDownloadListener;

    .line 27
    .line 28
    monitor-exit p1

    .line 29
    return-object p2

    .line 30
    :cond_1
    monitor-exit p1

    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception p2

    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p2

    .line 35
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getDownloadListenerSize(Lcom/byazt/ev/a;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/t/DownloadTask;->getDownloadListeners(Lcom/byazt/ev/a;)Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    monitor-enter p1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    monitor-exit p1

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v0
.end method

.method public getDownloadListeners(Lcom/byazt/ev/a;)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ev/a;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/c/IDownloadListener;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/ev/a;->c:Lcom/byazt/ev/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    sget-object v0, Lcom/byazt/ev/a;->ve:Lcom/byazt/ev/a;

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_2
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public getFileUriProvider()Lcom/byazt/c/IDownloadFileUriProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->fileUriProvider:Lcom/byazt/c/IDownloadFileUriProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public getForbiddenHandler()Lcom/byazt/c/gu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->forbiddenHandler:Lcom/byazt/c/gu;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHashCodeForSameTask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/t/DownloadTask;->hashCodeForSameTask:I

    .line 2
    .line 3
    return v0
.end method

.method public getInterceptor()Lcom/byazt/c/IDownloadInterceptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->interceptor:Lcom/byazt/c/IDownloadInterceptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMonitorDepend()Lcom/byazt/c/gr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->monitorDepend:Lcom/byazt/c/gr;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNotificationClickCallback()Lcom/byazt/c/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->notificationClickCallback:Lcom/byazt/c/eo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNotificationEventListener()Lcom/byazt/c/yv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->notificationEventListener:Lcom/byazt/c/yv;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetryDelayTimeCalculator()Lcom/byazt/zz/my;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->retryDelayTimeCalculator:Lcom/byazt/zz/my;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSingleDownloadListener(Lcom/byazt/ev/a;)Lcom/byazt/c/IDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/byazt/c/IDownloadListener;

    .line 8
    .line 9
    return-object p1
.end method

.method public hashCodeForSameTask(I)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/t/DownloadTask;->hashCodeForSameTask:I

    .line 2
    .line 3
    return-object p0
.end method

.method public headConnectionAvailable(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->u(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public iconUrl(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->u(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public ignoreDataVerify(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->yp(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public interceptor(Lcom/byazt/c/IDownloadInterceptor;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->interceptor:Lcom/byazt/c/IDownloadInterceptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public isAutoSetHashCodeForSameTask()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/t/DownloadTask;->autoSetHashCodeForSameTask:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNeedDelayForCacheSync()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/t/DownloadTask;->needDelayForCacheSync:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOpenLimitSpeed(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->rh(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public mainThreadListener(Lcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/byazt/t/DownloadTask;->mainThreadListenerWithHashCode(ILcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public mainThreadListenerWithHashCode(ILcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 13
    .line 14
    sget-object v1, Lcom/byazt/ev/a;->c:Lcom/byazt/ev/a;

    .line 15
    .line 16
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    monitor-exit p2

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    throw p1

    .line 35
    :cond_0
    :goto_0
    return-object p0
.end method

.method public maxBytes(I)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->c(I)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public maxProgressCount(I)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->uj(I)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public md5(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->da(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public mimeType(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->x(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public minProgressTimeMsInterval(I)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->n(I)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public monitorDepend(Lcom/byazt/c/gr;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->monitorDepend:Lcom/byazt/c/gr;

    .line 2
    .line 3
    return-object p0
.end method

.method public monitorScene(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->t(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->c(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public needChunkDowngradeRetry(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->z(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public needDefaultHttpServiceBackUp(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->x(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public needHttpsToHttpRetry(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->uj(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public needIndependentProcess(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->t(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public needPostProgress(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->ve(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public needRetryDelay(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->da(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public needReuseChunkRunnable(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->i(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public needReuseFirstConnection(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->sl(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public needSDKMonitor(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->nu(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public newSaveTempFileEnable(Z)Lcom/byazt/t/DownloadTask;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public notificationClickCallback(Lcom/byazt/c/eo;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->notificationClickCallback:Lcom/byazt/c/eo;

    .line 2
    .line 3
    return-object p0
.end method

.method public notificationEventListener(Lcom/byazt/c/yv;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->notificationEventListener:Lcom/byazt/c/yv;

    .line 2
    .line 3
    return-object p0
.end method

.method public notificationListener(Lcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/byazt/t/DownloadTask;->notificationListenerWithHashCode(ILcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public notificationListenerWithHashCode(ILcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 13
    .line 14
    sget-object v1, Lcom/byazt/ev/a;->ve:Lcom/byazt/ev/a;

    .line 15
    .line 16
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    monitor-exit p2

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    throw p1

    .line 35
    :cond_0
    :goto_0
    return-object p0
.end method

.method public onlyWifi(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->c(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public outIp([Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->c([Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public outSize([I)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->c([I)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public packageName(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->i(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public removeDownloadListener(ILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lcom/byazt/t/DownloadTask;->getDownloadListeners(Lcom/byazt/ev/a;)Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    monitor-enter v0

    .line 24
    if-eqz p4, :cond_3

    .line 25
    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    move-object p2, p1

    .line 41
    check-cast p2, Lcom/byazt/c/IDownloadListener;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_2
    if-eqz p2, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-ltz p1, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-ge p1, p2, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 70
    .line 71
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    iget-object p3, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, Lcom/byazt/ev/a;

    .line 79
    .line 80
    if-eqz p3, :cond_4

    .line 81
    .line 82
    iget-object p4, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p4

    .line 88
    if-eqz p4, :cond_4

    .line 89
    .line 90
    iget-object p4, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 91
    .line 92
    invoke-interface {p4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    iget-object p3, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 96
    .line 97
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :cond_5
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :try_start_4
    throw p1

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    throw p1
.end method

.method public retryCount(I)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->tt(I)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public retryDelayTimeArray(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->sl(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public retryDelayTimeCalculator(Lcom/byazt/zz/my;)Lcom/byazt/t/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->retryDelayTimeCalculator:Lcom/byazt/zz/my;

    .line 2
    .line 3
    return-object p0
.end method

.method public savePath(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->n(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAutoInstall(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->qy(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDownloadCompleteHandlers(Ljava/util/List;)Lcom/byazt/t/DownloadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;)",
            "Lcom/byazt/t/DownloadTask;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/byazt/c/u;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/byazt/t/DownloadTask;->addDownloadCompleteHandler(Lcom/byazt/c/u;)Lcom/byazt/t/DownloadTask;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object p0
.end method

.method public setDownloadListeners(Landroid/util/SparseArray;Lcom/byazt/ev/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/c/IDownloadListener;",
            ">;",
            "Lcom/byazt/ev/a;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lcom/byazt/ev/a;->c:Lcom/byazt/ev/a;

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 9
    .line 10
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->mainThreadListeners:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Lcom/byazt/t/DownloadTask;->copyListeners(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 14
    .line 15
    .line 16
    monitor-exit p2

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    throw p1

    .line 21
    :cond_1
    sget-object v0, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    .line 22
    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 26
    .line 27
    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 28
    :try_start_3
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-direct {p0, v0, p1}, Lcom/byazt/t/DownloadTask;->copyListeners(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 31
    .line 32
    .line 33
    monitor-exit p2

    .line 34
    return-void

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    :try_start_4
    throw p1

    .line 38
    :cond_2
    sget-object v0, Lcom/byazt/ev/a;->ve:Lcom/byazt/ev/a;

    .line 39
    .line 40
    if-ne p2, v0, :cond_3

    .line 41
    .line 42
    iget-object p2, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 43
    .line 44
    monitor-enter p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 45
    :try_start_5
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->notificationListeners:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-direct {p0, v0, p1}, Lcom/byazt/t/DownloadTask;->copyListeners(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 48
    .line 49
    .line 50
    monitor-exit p2

    .line 51
    return-void

    .line 52
    :catchall_2
    move-exception p1

    .line 53
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 54
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 55
    :cond_3
    return-void

    .line 56
    :catchall_3
    move-exception p1

    .line 57
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setNeedDelayForCacheSync(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/t/DownloadTask;->needDelayForCacheSync:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNotificationEventListener(Lcom/byazt/c/yv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask;->notificationEventListener:Lcom/byazt/c/yv;

    .line 2
    .line 3
    return-void
.end method

.method public showNotification(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->n(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public showNotificationForAutoResumed(Z)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->sp(Z)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public subThreadListener(Lcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/byazt/t/DownloadTask;->subThreadListenerWithHashCode(ILcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public subThreadListenerWithHashCode(ILcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/t/DownloadTask;->subThreadListeners:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerMap:Ljava/util/Map;

    .line 13
    .line 14
    sget-object v1, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    .line 15
    .line 16
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->singleListenerHashCodeMap:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    monitor-exit p2

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    throw p1

    .line 35
    :cond_0
    :goto_0
    return-object p0
.end method

.method public taskKey(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->uj(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public tempPath(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->a(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public throttleNetSpeed(J)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/byazt/t/DownloadInfo$c;->tt(J)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->tt(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public ttnetProtectTimeout(J)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/byazt/t/DownloadInfo$c;->ve(J)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask;->downloadInfoBuilder:Lcom/byazt/t/DownloadInfo$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo$c;->ve(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

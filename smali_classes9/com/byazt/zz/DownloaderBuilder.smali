.class public Lcom/byazt/zz/DownloaderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbd,
        0x63d
    }
.end annotation


# instance fields
.field public chunkAdjustCalculator:Lcom/byazt/zz/sp;

.field public chunkCntCalculator:Lcom/byazt/zz/x;

.field public chunkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

.field public final context:Landroid/content/Context;

.field public cpuThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field public dbThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field public downloadCache:Lcom/byazt/zz/da;

.field public downloadCompleteHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;"
        }
    .end annotation
.end field

.field public downloadDns:Lcom/byazt/hs/a;

.field public downloadExpSwitch:I

.field public downloadInMultiProcess:Z

.field public downloadLaunchHandler:Lcom/byazt/zz/t;

.field public downloadMonitorListener:Lcom/byazt/zl/tt;

.field public downloadSetting:Lcom/byazt/c/p;

.field public headHttpService:Lcom/byazt/hs/x;

.field public httpService:Lcom/byazt/hs/IDownloadHttpService;

.field public idGenerator:Lcom/byazt/zz/sl;

.field public ioThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field public maxDownloadPoolSize:I

.field public mixApkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

.field public mixDefaultDownloadExecutor:Ljava/util/concurrent/ExecutorService;

.field public mixFrequentDownloadExecutor:Ljava/util/concurrent/ExecutorService;

.field public monitorConfig:Lcom/byazt/zz/nu;

.field public needAutoRefreshUnSuccessTask:Z

.field public notificationClickCallback:Lcom/byazt/c/eo;

.field public okHttpDispatcherExecutor:Ljava/util/concurrent/ExecutorService;

.field public ttNetHandler:Lcom/byazt/zz/rl;

.field public writeBufferSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/byazt/zz/DownloaderBuilder;->needAutoRefreshUnSuccessTask:Z

    .line 13
    .line 14
    const v0, 0x3effffff    # 0.49999997f

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadExpSwitch:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->context:Landroid/content/Context;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public addDownloadCompleteHandler(Lcom/byazt/c/u;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

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
    iget-object v1, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

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

.method public build()Lcom/byazt/zz/Downloader;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/zz/Downloader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/zz/Downloader;-><init>(Lcom/byazt/zz/DownloaderBuilder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public chunkAdjustCalculator(Lcom/byazt/zz/sp;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->chunkAdjustCalculator:Lcom/byazt/zz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public chunkCntCalculator(Lcom/byazt/zz/x;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->chunkCntCalculator:Lcom/byazt/zz/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public chunkThreadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->chunkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public cpuThreadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->cpuThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public dbThreadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->dbThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public downloadCache(Lcom/byazt/zz/da;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadCache:Lcom/byazt/zz/da;

    .line 2
    .line 3
    return-object p0
.end method

.method public downloadDns(Lcom/byazt/hs/a;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadDns:Lcom/byazt/hs/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public downloadExpSwitch(I)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadExpSwitch:I

    .line 2
    .line 3
    return-object p0
.end method

.method public downloadInMultiProcess(Z)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadInMultiProcess:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public downloadLaunchHandler(Lcom/byazt/zz/t;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadLaunchHandler:Lcom/byazt/zz/t;

    .line 2
    .line 3
    return-object p0
.end method

.method public downloadMonitorListener(Lcom/byazt/zl/tt;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadMonitorListener:Lcom/byazt/zl/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public downloadSetting(Lcom/byazt/c/p;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadSetting:Lcom/byazt/c/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCPUThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->cpuThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChunkAdjustCalculator()Lcom/byazt/zz/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->chunkAdjustCalculator:Lcom/byazt/zz/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChunkCntCalculator()Lcom/byazt/zz/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->chunkCntCalculator:Lcom/byazt/zz/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChunkThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->chunkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDBThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->dbThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadCache()Lcom/byazt/zz/da;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadCache:Lcom/byazt/zz/da;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadCompleteHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadDns()Lcom/byazt/hs/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadDns:Lcom/byazt/hs/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadExpSwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadExpSwitch:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownloadLaunchHandler()Lcom/byazt/zz/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadLaunchHandler:Lcom/byazt/zz/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadMonitorListener()Lcom/byazt/zl/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadMonitorListener:Lcom/byazt/zl/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadSetting()Lcom/byazt/c/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadSetting:Lcom/byazt/c/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeadHttpService()Lcom/byazt/hs/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->headHttpService:Lcom/byazt/hs/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHttpService()Lcom/byazt/hs/IDownloadHttpService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->httpService:Lcom/byazt/hs/IDownloadHttpService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIOThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->ioThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdGenerator()Lcom/byazt/zz/sl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->idGenerator:Lcom/byazt/zz/sl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxDownloadPoolSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/zz/DownloaderBuilder;->maxDownloadPoolSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getMixApkDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->mixApkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMixDefaultDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->mixDefaultDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMixFrequentDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->mixFrequentDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMonitorConfig()Lcom/byazt/zz/nu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->monitorConfig:Lcom/byazt/zz/nu;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNotificationClickCallback()Lcom/byazt/c/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->notificationClickCallback:Lcom/byazt/c/eo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOkHttpDispatcherExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->okHttpDispatcherExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTTNetHandler()Lcom/byazt/zz/rl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/DownloaderBuilder;->ttNetHandler:Lcom/byazt/zz/rl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWriteBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/zz/DownloaderBuilder;->writeBufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public headHttpService(Lcom/byazt/hs/x;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->headHttpService:Lcom/byazt/hs/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public httpService(Lcom/byazt/hs/IDownloadHttpService;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->httpService:Lcom/byazt/hs/IDownloadHttpService;

    .line 2
    .line 3
    return-object p0
.end method

.method public idGenerator(Lcom/byazt/zz/sl;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->idGenerator:Lcom/byazt/zz/sl;

    .line 2
    .line 3
    return-object p0
.end method

.method public ioThreadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->ioThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public isDownloadInMultiProcess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/zz/DownloaderBuilder;->downloadInMultiProcess:Z

    .line 2
    .line 3
    return v0
.end method

.method public maxDownloadPoolSize(I)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/zz/DownloaderBuilder;->maxDownloadPoolSize:I

    .line 2
    .line 3
    return-object p0
.end method

.method public mixApkDownloadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->mixApkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public mixDefaultDownloadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->mixDefaultDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public mixFrequentDownloadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->mixFrequentDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public monitorConfig(Lcom/byazt/zz/nu;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->monitorConfig:Lcom/byazt/zz/nu;

    .line 2
    .line 3
    return-object p0
.end method

.method public needAutoRefreshUnSuccessTask(Z)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/zz/DownloaderBuilder;->needAutoRefreshUnSuccessTask:Z

    return-object p0
.end method

.method public needAutoRefreshUnSuccessTask()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/zz/DownloaderBuilder;->needAutoRefreshUnSuccessTask:Z

    return v0
.end method

.method public notificationClickCallback(Lcom/byazt/c/eo;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->notificationClickCallback:Lcom/byazt/c/eo;

    .line 2
    .line 3
    return-object p0
.end method

.method public okHttpDispatcherExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->okHttpDispatcherExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public ttNetHandler(Lcom/byazt/zz/rl;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/DownloaderBuilder;->ttNetHandler:Lcom/byazt/zz/rl;

    .line 2
    .line 3
    return-object p0
.end method

.method public writeBufferSize(I)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/zz/DownloaderBuilder;->writeBufferSize:I

    .line 2
    .line 3
    return-object p0
.end method

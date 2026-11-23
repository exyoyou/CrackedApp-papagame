.class public Lcom/byazt/zz/Downloader;
.super Lcom/byazt/zz/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbd,
        0x5c9
    }
.end annotation


# static fields
.field public static volatile instance:Lcom/byazt/zz/Downloader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/zz/qy;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/zz/qy;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zz/ve$c;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/byazt/zz/Downloader;->instance:Lcom/byazt/zz/Downloader;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zz/tt;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/zz/DownloaderBuilder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/zz/tt;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zz/DownloaderBuilder;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/Downloader;->instance:Lcom/byazt/zz/Downloader;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/Downloader;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/Downloader;->instance:Lcom/byazt/zz/Downloader;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcom/byazt/zz/ve;->c(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lcom/byazt/zz/Downloader;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/byazt/zz/Downloader;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object p0, Lcom/byazt/zz/Downloader;->instance:Lcom/byazt/zz/Downloader;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/zz/Downloader;->instance:Lcom/byazt/zz/Downloader;

    .line 28
    .line 29
    return-object p0
.end method

.method public static declared-synchronized init(Lcom/byazt/zz/DownloaderBuilder;)V
    .locals 2

    .line 1
    const-class v0, Lcom/byazt/zz/Downloader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {p0, v1}, Lcom/byazt/zz/Downloader;->initOrCover(Lcom/byazt/zz/DownloaderBuilder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0
.end method

.method public static declared-synchronized initOrCover(Lcom/byazt/zz/DownloaderBuilder;Z)V
    .locals 2

    .line 1
    const-class v0, Lcom/byazt/zz/Downloader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v1, Lcom/byazt/zz/Downloader;->instance:Lcom/byazt/zz/Downloader;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->build()Lcom/byazt/zz/Downloader;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sput-object p0, Lcom/byazt/zz/Downloader;->instance:Lcom/byazt/zz/Downloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/byazt/zz/ve;->l()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-static {p0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zz/DownloaderBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :cond_2
    if-eqz p1, :cond_3

    .line 32
    .line 33
    :try_start_2
    invoke-static {p0}, Lcom/byazt/zz/ve;->tt(Lcom/byazt/zz/DownloaderBuilder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    :cond_3
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0

    .line 40
    throw p0
.end method


# virtual methods
.method public bridge synthetic addMainThreadListener(ILcom/byazt/c/IDownloadListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->addMainThreadListener(ILcom/byazt/c/IDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic addNotificationListener(ILcom/byazt/c/IDownloadListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->addNotificationListener(ILcom/byazt/c/IDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic addSubThreadListener(ILcom/byazt/c/IDownloadListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->addSubThreadListener(ILcom/byazt/c/IDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic canResume(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->canResume(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic cancel(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->cancel(I)V

    return-void
.end method

.method public bridge synthetic cancel(IZ)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->cancel(IZ)V

    return-void
.end method

.method public bridge synthetic clearDownloadData(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->clearDownloadData(I)V

    return-void
.end method

.method public bridge synthetic clearDownloadData(IZ)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->clearDownloadData(IZ)V

    return-void
.end method

.method public bridge synthetic destoryDownloader()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/zz/tt;->destoryDownloader()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic forceDownloadIngoreRecommendSize(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->forceDownloadIngoreRecommendSize(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic getAllDownloadInfo()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/zz/tt;->getAllDownloadInfo()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getCurBytes(I)J
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getCurBytes(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public bridge synthetic getDownloadFileUriProvider(I)Lcom/byazt/c/IDownloadFileUriProvider;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getDownloadFileUriProvider(I)Lcom/byazt/c/IDownloadFileUriProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic getDownloadId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDownloadInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getDownloadInfoList(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic getDownloadNotificationEventListener(I)Lcom/byazt/c/yv;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getDownloadNotificationEventListener(I)Lcom/byazt/c/yv;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic getDownloadingDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getDownloadingDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic getFailedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getFailedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic getGlobalSaveDir()Ljava/io/File;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/zz/tt;->getGlobalSaveDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getGlobalSaveTempDir()Ljava/io/File;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/zz/tt;->getGlobalSaveTempDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getReserveWifiStatusListener()Lcom/byazt/zz/rh;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/zz/tt;->getReserveWifiStatusListener()Lcom/byazt/zz/rh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getStatus(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getStatus(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic getSuccessedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getSuccessedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic getUnCompletedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->getUnCompletedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic isDownloadCacheSyncSuccess()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/zz/tt;->isDownloadCacheSyncSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isDownloadServiceForeground(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->isDownloadServiceForeground(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic isDownloadSuccessAndFileNotExist(Lcom/byazt/t/DownloadInfo;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->isDownloadSuccessAndFileNotExist(Lcom/byazt/t/DownloadInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic isDownloading(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->isDownloading(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic isHttpServiceInit()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/zz/tt;->isHttpServiceInit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic pause(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->pause(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic pauseAll()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/zz/tt;->pauseAll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic registerDownloadCacheSyncListener(Lcom/byazt/c/sl;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->registerDownloadCacheSyncListener(Lcom/byazt/c/sl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic registerDownloaderProcessConnectedListener(Lcom/byazt/c/md;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->registerDownloaderProcessConnectedListener(Lcom/byazt/c/md;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic removeMainThreadListener(ILcom/byazt/c/IDownloadListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->removeMainThreadListener(ILcom/byazt/c/IDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic removeNotificationListener(ILcom/byazt/c/IDownloadListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->removeNotificationListener(ILcom/byazt/c/IDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic removeSubThreadListener(ILcom/byazt/c/IDownloadListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->removeSubThreadListener(ILcom/byazt/c/IDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic removeTaskMainListener(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->removeTaskMainListener(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic removeTaskNotificationListener(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->removeTaskNotificationListener(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic removeTaskSubListener(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->removeTaskSubListener(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic restart(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->restart(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic restartAllFailedDownloadTasks(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->restartAllFailedDownloadTasks(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic restartAllPauseReserveOnWifiDownloadTasks(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->restartAllPauseReserveOnWifiDownloadTasks(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic resume(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->resume(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setDefaultSavePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->setDefaultSavePath(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setDefaultSaveTempPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->setDefaultSaveTempPath(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setDownloadInMultiProcess()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/zz/tt;->setDownloadInMultiProcess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setDownloadNotificationEventListener(ILcom/byazt/c/yv;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->setDownloadNotificationEventListener(ILcom/byazt/c/yv;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setLogLevel(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->setLogLevel(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setMainThreadListener(ILcom/byazt/c/IDownloadListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->setMainThreadListener(ILcom/byazt/c/IDownloadListener;)V

    return-void
.end method

.method public bridge synthetic setMainThreadListener(ILcom/byazt/c/IDownloadListener;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/zz/tt;->setMainThreadListener(ILcom/byazt/c/IDownloadListener;Z)V

    return-void
.end method

.method public bridge synthetic setNotificationListener(ILcom/byazt/c/IDownloadListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->setNotificationListener(ILcom/byazt/c/IDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setReserveWifiStatusListener(Lcom/byazt/zz/rh;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->setReserveWifiStatusListener(Lcom/byazt/zz/rh;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setSubThreadListener(ILcom/byazt/c/IDownloadListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/zz/tt;->setSubThreadListener(ILcom/byazt/c/IDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setThrottleNetSpeed(IJ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/zz/tt;->setThrottleNetSpeed(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic unRegisterDownloadCacheSyncListener(Lcom/byazt/c/sl;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->unRegisterDownloadCacheSyncListener(Lcom/byazt/c/sl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic unRegisterDownloaderProcessConnectedListener(Lcom/byazt/c/md;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zz/tt;->unRegisterDownloaderProcessConnectedListener(Lcom/byazt/c/md;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

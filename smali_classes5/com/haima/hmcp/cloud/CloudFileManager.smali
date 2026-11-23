.class public Lcom/haima/hmcp/cloud/CloudFileManager;
.super Lcom/haima/hmcp/cloud/BaseCloudFileManager;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/WebSocketObserver;


# static fields
.field private static final RETRY_MAX:I = 0x1

.field private static mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;


# instance fields
.field private downloadSocketRetryCount:I

.field private mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

.field private mHandUpUploadBatchFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

.field private uploadSocketRetryCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->uploadSocketRetryCount:I

    .line 6
    .line 7
    iput v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->downloadSocketRetryCount:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/cloud/CloudFileManager;Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/haima/hmcp/cloud/CloudFileManager;->internalExecute(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/cloud/CloudFileManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->uploadSocketRetryCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$108(Lcom/haima/hmcp/cloud/CloudFileManager;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->uploadSocketRetryCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->uploadSocketRetryCount:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/cloud/CloudFileManager;Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/haima/hmcp/cloud/CloudFileManager;->interBatchUploadTask(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/cloud/CloudFileManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->downloadSocketRetryCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$308(Lcom/haima/hmcp/cloud/CloudFileManager;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->downloadSocketRetryCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->downloadSocketRetryCount:I

    .line 6
    .line 7
    return v0
.end method

.method public static getInstance()Lcom/haima/hmcp/cloud/CloudFileManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/CloudFileManager;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/cloud/CloudFileManager;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/cloud/CloudFileManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/cloud/CloudFileManager;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/haima/hmcp/cloud/CloudFileManager;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 25
    .line 26
    return-object v0
.end method

.method private getStatus(Lcom/haima/hmcp/enums/CloudOperation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getInternalCloudFile(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/cloud/ICloudFile;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/ICloudFile;->getStatus()Lcom/haima/hmcp/cloud/WorkStatus;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private interBatchUploadTask(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/enums/CloudOperation;",
            "Lcom/haima/hmcp/business/IWebSocket;",
            "Lcom/haima/hmcp/beans/CloudFileConfig;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IUploadSummaryListener;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getInternalCloudFile(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/cloud/ICloudFile;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string p3, "cloud-file: : "

    .line 17
    .line 18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p3, "need call checkFile() first"

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p6, :cond_0

    .line 34
    .line 35
    const/4 p1, -0x1

    .line 36
    invoke-interface {p6, p1, p3}, Lcom/haima/hmcp/cloud/IUploadSummaryListener;->onUploadError(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :cond_1
    instance-of v0, p1, Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    move-object v1, p1

    .line 45
    check-cast v1, Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 46
    .line 47
    move-object v2, p2

    .line 48
    move-object v3, p3

    .line 49
    move-object v4, p4

    .line 50
    move-object v5, p5

    .line 51
    move-object v6, p6

    .line 52
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/cloud/BatchUploadWork;->batchUploadTaskExecute(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method private internalExecute(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/enums/CloudOperation;",
            "Lcom/haima/hmcp/business/IWebSocket;",
            "Lcom/haima/hmcp/beans/CloudFileConfig;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IUpDownloadListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getInternalCloudFile(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/cloud/ICloudFile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object p2, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "cloud-file: : "

    .line 15
    .line 16
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "need call checkFile() first"

    .line 20
    .line 21
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {p2, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p5, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p0, p4}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getCloudFile(Ljava/util/List;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-interface {p5, p1, p2, p3}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance v1, Lcom/haima/hmcp/cloud/CloudFileManager$3;

    .line 46
    .line 47
    invoke-direct {v1, p0, p5, p1}, Lcom/haima/hmcp/cloud/CloudFileManager$3;-><init>(Lcom/haima/hmcp/cloud/CloudFileManager;Lcom/haima/hmcp/cloud/IUpDownloadListener;Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, p2, p4, p3, v1}, Lcom/haima/hmcp/cloud/ICloudFile;->execute(Lcom/haima/hmcp/business/IWebSocket;Ljava/util/List;Lcom/haima/hmcp/beans/CloudFileConfig;Lcom/haima/hmcp/cloud/IWorkListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private interrupt(Lcom/haima/hmcp/enums/CloudOperation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getInternalCloudFile(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/cloud/ICloudFile;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/ICloudFile;->interrupt()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static release()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/CloudFileManager;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/haima/hmcp/cloud/CloudFileManager;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 11
    .line 12
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/haima/hmcp/cloud/CloudFileManager;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    sput-object v1, Lcom/haima/hmcp/cloud/CloudFileManager;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Lcom/haima/hmcp/enums/CloudOperation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/CloudFileManager;->interrupt(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public checkTokenValid(J)Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v6, "cloud-file: valid time:120000; check time:"

    .line 20
    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    sub-long/2addr v0, p1

    .line 39
    const-wide/32 p1, 0x1d4c0

    .line 40
    .line 41
    .line 42
    cmp-long v2, v0, p1

    .line 43
    .line 44
    if-gez v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_0
    return v3

    .line 49
    :cond_1
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "cloud-file: valid time:"

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFileConfig;->getStokenValidTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "; check time:"

    .line 71
    .line 72
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFileConfig;->getStokenValidTime()J

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    cmp-long v2, v0, p1

    .line 92
    .line 93
    if-gez v2, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const/4 v3, 0x0

    .line 97
    :goto_1
    return v3
.end method

.method public clearHandUpBatchContent(Lcom/haima/hmcp/enums/CloudOperation;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadBatchFiles:Ljava/util/List;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public download(Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IUpDownloadListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "cloud-file: "

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "prepare upload fail: IUploadListener is null"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getInternalCloudFile(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/cloud/ICloudFile;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Lcom/haima/hmcp/cloud/ICloudFile;->getStatus()Lcom/haima/hmcp/cloud/WorkStatus;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 39
    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    .line 42
    sget-object v2, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, "download task is running"

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, v1, v0, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    if-eqz p1, :cond_a

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_2
    sget-object v2, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    const-string v3, "cloud-file: to prepare download"

    .line 81
    .line 82
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 86
    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    new-instance v3, Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 90
    .line 91
    invoke-direct {v3}, Lcom/haima/hmcp/beans/CloudFileConfig;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 95
    .line 96
    :cond_3
    invoke-interface {p2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getDownloadUrl()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_4

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, "web-socket url is null"

    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {p2, v1, v0, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_4
    iget-object v4, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 138
    .line 139
    iput-object v3, v4, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {p2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getWebSocket()Lcom/haima/hmcp/business/IWebSocket;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    if-nez v7, :cond_5

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, "web-socket instance is null"

    .line 156
    .line 157
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-interface {p2, v1, v0, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_5
    invoke-interface {p2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getBid()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_6

    .line 187
    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v0, "access key is null"

    .line 197
    .line 198
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-interface {p2, v1, v0, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_6
    iget-object v4, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 220
    .line 221
    iput-object v3, v4, Lcom/haima/hmcp/beans/CloudFileConfig;->bid:Ljava/lang/String;

    .line 222
    .line 223
    invoke-interface {p2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getCid()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_7

    .line 232
    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v0, "cid is null"

    .line 242
    .line 243
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-interface {p2, v1, v0, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_7
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 265
    .line 266
    iput-object v3, v0, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 267
    .line 268
    new-instance v9, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_9

    .line 282
    .line 283
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Lcom/haima/hmcp/beans/CloudFile;

    .line 288
    .line 289
    new-instance v1, Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 290
    .line 291
    invoke-direct {v1}, Lcom/haima/hmcp/cloud/InternalCloudFile;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_8

    .line 310
    .line 311
    const/4 v2, 0x1

    .line 312
    iput-boolean v2, v1, Lcom/haima/hmcp/cloud/InternalCloudFile;->isSaveToGallery:Z

    .line 313
    .line 314
    sget-object v2, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_8
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/beans/CloudFile;->setCloudPath(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iput-object v0, v1, Lcom/haima/hmcp/cloud/InternalCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 334
    .line 335
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    goto :goto_0

    .line 339
    :cond_9
    sget-object v6, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 340
    .line 341
    iget-object v8, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 342
    .line 343
    move-object v5, p0

    .line 344
    move-object v10, p2

    .line 345
    invoke-direct/range {v5 .. v10}, Lcom/haima/hmcp/cloud/CloudFileManager;->internalExecute(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :cond_a
    :goto_1
    const-string v2, "no files to download"

    .line 350
    .line 351
    invoke-virtual {p0, v2}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-interface {p2, v1, v3, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 359
    .line 360
    .line 361
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 362
    .line 363
    new-instance p2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHandUpBatchContent()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadBatchFiles:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadBatchFiles:Ljava/util/List;

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadBatchFiles:Ljava/util/List;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getHandUpContent(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/beans/CloudFile;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance p1, Lcom/haima/hmcp/beans/CloudFile;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getImageType()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setImageType(I)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_2
    new-instance p1, Lcom/haima/hmcp/beans/CloudFile;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setCloudPath(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 84
    .line 85
    return-object p1
.end method

.method public getObserver()Lcom/haima/hmcp/listeners/WebSocketObserver;
    .locals 0

    return-object p0
.end method

.method public hangUp(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 2
    .line 3
    const-string v1, "cloud-file: task is hang up"

    .line 4
    .line 5
    const-string v2, "cloud-file: hang up file fail because file is null"

    .line 6
    .line 7
    if-ne p1, v0, :cond_3

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/haima/hmcp/beans/CloudFile;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->getImageType()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/beans/CloudFile;->setImageType(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string p2, "cloud-file: hang up file fail because name or path is null"

    .line 79
    .line 80
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    if-eqz p2, :cond_5

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance p1, Lcom/haima/hmcp/beans/CloudFile;

    .line 103
    .line 104
    invoke-direct {p1}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/beans/CloudFile;->setCloudPath(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void

    .line 135
    :cond_5
    :goto_2
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public hangUpBatch(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/enums/CloudOperation;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "cloud-file: batch task is hang up"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadBatchFiles:Ljava/util/List;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "cloud-file: hang up file fail because file is null"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_1
    return-void
.end method

.method public hasHangUpTask(Lcom/haima/hmcp/enums/CloudOperation;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1

    .line 14
    :cond_1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 15
    .line 16
    if-ne p1, v0, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpUploadBatchFiles:Ljava/util/List;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-lez p1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    :goto_1
    return v1

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->mHandUpDownloadFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_4
    const/4 v1, 0x0

    .line 37
    :goto_2
    return v1
.end method

.method public bridge synthetic isRunning(Lcom/haima/hmcp/enums/CloudOperation;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->isRunning(Lcom/haima/hmcp/enums/CloudOperation;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 2
    .line 3
    return-void
.end method

.method public onObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;I)V
    .locals 0

    return-void
.end method

.method public resetDownloadRetry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->downloadSocketRetryCount:I

    .line 3
    .line 4
    return-void
.end method

.method public resetUploadRetry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager;->uploadSocketRetryCount:I

    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setConfig(Lcom/haima/hmcp/beans/CloudFileConfig;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->setConfig(Lcom/haima/hmcp/beans/CloudFileConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method public upload(Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IUpDownloadListener;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getInternalCloudFile(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/cloud/ICloudFile;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lcom/haima/hmcp/cloud/ICloudFile;->getStatus()Lcom/haima/hmcp/cloud/WorkStatus;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 12
    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    sget-object v1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "cloud-file: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, "upload task is running"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-interface {p2, v0, v3, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance v0, Lcom/haima/hmcp/cloud/CloudFileManager$1;

    .line 46
    .line 47
    invoke-direct {v0, p0, p2}, Lcom/haima/hmcp/cloud/CloudFileManager$1;-><init>(Lcom/haima/hmcp/cloud/CloudFileManager;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, p1, v0}, Lcom/haima/hmcp/cloud/ICloudFile;->check(Ljava/util/List;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public uploadBatch(Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IUpDownloadListener;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getInternalCloudFile(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/cloud/ICloudFile;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lcom/haima/hmcp/cloud/ICloudFile;->getStatus()Lcom/haima/hmcp/cloud/WorkStatus;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 12
    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    sget-object v1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "cloud-file: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, "batch_upload task is running"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-interface {p2, v0, v3, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance v0, Lcom/haima/hmcp/cloud/CloudFileManager$2;

    .line 46
    .line 47
    invoke-direct {v0, p0, p2}, Lcom/haima/hmcp/cloud/CloudFileManager$2;-><init>(Lcom/haima/hmcp/cloud/CloudFileManager;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, p1, v0}, Lcom/haima/hmcp/cloud/ICloudFile;->check(Ljava/util/List;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.class public Lcom/haima/hmcp/cloud/BatchUploadWork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/ICloudFile;
.implements Lcom/haima/hmcp/listeners/OrderListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BatchUploadWork"


# instance fields
.field private mBatchUploadTask:Lcom/haima/hmcp/cloud/BatchUploadTask;

.field private mCheckFailedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSuccessFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckTask:Lcom/haima/hmcp/cloud/ITask;

.field private mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckFiles:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckFailedFiles:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckSuccessFiles:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/cloud/BatchUploadWork;Lcom/haima/hmcp/cloud/WorkStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/cloud/BatchUploadWork;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckSuccessFiles:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/cloud/BatchUploadWork;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckFailedFiles:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/cloud/BatchUploadWork;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/BatchUploadWork;->convertToFileStatus(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private convertToFileStatus(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 23
    .line 24
    new-instance v2, Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/InternalCloudFile;->makeCloudFile()Lcom/haima/hmcp/beans/CloudFile;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/16 v3, 0x13

    .line 31
    .line 32
    invoke-direct {v2, v1, v3, p2}, Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;-><init>(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method

.method private setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadWork;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cloud-file: setWorkStatus: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public batchUploadTaskExecute(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mBatchUploadTask:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mBatchUploadTask:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->stopTask()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mBatchUploadTask:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->RUNNING:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/BatchUploadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 25
    .line 26
    invoke-direct {v0, p1, p2}, Lcom/haima/hmcp/cloud/BatchUploadTask;-><init>(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mBatchUploadTask:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 30
    .line 31
    new-instance p1, Lcom/haima/hmcp/cloud/BatchUploadWork$2;

    .line 32
    .line 33
    invoke-direct {p1, p0, p4, p5}, Lcom/haima/hmcp/cloud/BatchUploadWork$2;-><init>(Lcom/haima/hmcp/cloud/BatchUploadWork;Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mBatchUploadTask:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 37
    .line 38
    invoke-virtual {p2, p3, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->start(Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public check(Ljava/util/List;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IBaseCheckListener;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->RUNNING:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/BatchUploadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadWork;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "cloud-file: source files size: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckFiles:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckFailedFiles:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckSuccessFiles:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/haima/hmcp/beans/CloudFile;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckFiles:Ljava/util/List;

    .line 64
    .line 65
    new-instance v2, Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Lcom/haima/hmcp/cloud/InternalCloudFile;-><init>(Lcom/haima/hmcp/beans/CloudFile;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/ITask;->stop()V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 83
    .line 84
    :cond_1
    new-instance p1, Lcom/haima/hmcp/cloud/PictureFileCheckTask;

    .line 85
    .line 86
    invoke-direct {p1}, Lcom/haima/hmcp/cloud/PictureFileCheckTask;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckFiles:Ljava/util/List;

    .line 92
    .line 93
    new-instance v1, Lcom/haima/hmcp/cloud/BatchUploadWork$1;

    .line 94
    .line 95
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/cloud/BatchUploadWork$1;-><init>(Lcom/haima/hmcp/cloud/BatchUploadWork;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/cloud/ITask;->start(Ljava/util/List;Lcom/haima/hmcp/cloud/IWorkListener;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public execute(Lcom/haima/hmcp/business/IWebSocket;Ljava/util/List;Lcom/haima/hmcp/beans/CloudFileConfig;Lcom/haima/hmcp/cloud/IWorkListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/business/IWebSocket;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Lcom/haima/hmcp/beans/CloudFileConfig;",
            "Lcom/haima/hmcp/cloud/IWorkListener;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public getStatus()Lcom/haima/hmcp/cloud/WorkStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->getStatus()I

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mBatchUploadTask:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->getStatus()I

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 16
    .line 17
    return-object v0
.end method

.method public interrupt()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/BatchUploadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mBatchUploadTask:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->stopTask()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mBatchUploadTask:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->stop()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

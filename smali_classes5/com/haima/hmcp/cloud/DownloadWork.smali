.class Lcom/haima/hmcp/cloud/DownloadWork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/ICloudFile;
.implements Lcom/haima/hmcp/listeners/OrderListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadWork"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

.field private mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/cloud/DownloadWork;Lcom/haima/hmcp/cloud/WorkStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadWork;->TAG:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public check(Ljava/util/List;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V
    .locals 0
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

    return-void
.end method

.method public execute(Lcom/haima/hmcp/business/IWebSocket;Ljava/util/List;Lcom/haima/hmcp/beans/CloudFileConfig;Lcom/haima/hmcp/cloud/IWorkListener;)V
    .locals 3
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

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->RUNNING:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadWork;->TAG:Ljava/lang/String;

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
    invoke-interface {p2}, Ljava/util/List;->size()I

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->isRunning()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->stop()V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 49
    .line 50
    :cond_0
    new-instance v0, Lcom/haima/hmcp/cloud/DownloadTask;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v0, v1, p1, p3}, Lcom/haima/hmcp/cloud/DownloadTask;-><init>(Landroid/content/Context;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 58
    .line 59
    new-instance p1, Lcom/haima/hmcp/cloud/DownloadWork$1;

    .line 60
    .line 61
    invoke-direct {p1, p0, p4}, Lcom/haima/hmcp/cloud/DownloadWork$1;-><init>(Lcom/haima/hmcp/cloud/DownloadWork;Lcom/haima/hmcp/cloud/IWorkListener;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, p2, p1}, Lcom/haima/hmcp/cloud/ITask;->start(Ljava/util/List;Lcom/haima/hmcp/cloud/IWorkListener;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public getStatus()Lcom/haima/hmcp/cloud/WorkStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 9
    .line 10
    return-object v0
.end method

.method public interrupt()V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->stop()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-string v0, "download_image"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->isRunning()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork;->mDownloadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 28
    .line 29
    check-cast v0, Lcom/haima/hmcp/cloud/DownloadTask;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->orderAckDispatcher(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

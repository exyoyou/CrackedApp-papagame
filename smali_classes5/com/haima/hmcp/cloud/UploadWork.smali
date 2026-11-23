.class Lcom/haima/hmcp/cloud/UploadWork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/ICloudFile;
.implements Lcom/haima/hmcp/listeners/OrderListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadWork"


# instance fields
.field private mCheckFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckTask:Lcom/haima/hmcp/cloud/ITask;

.field private mUploadTask:Lcom/haima/hmcp/cloud/ITask;

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
    iput-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckFiles:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/cloud/UploadWork;Lcom/haima/hmcp/cloud/WorkStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadWork;->TAG:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadWork;->mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
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
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/cloud/UploadWork;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckFiles:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/haima/hmcp/beans/CloudFile;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckFiles:Ljava/util/List;

    .line 54
    .line 55
    new-instance v2, Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lcom/haima/hmcp/cloud/InternalCloudFile;-><init>(Lcom/haima/hmcp/beans/CloudFile;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/ITask;->stop()V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 73
    .line 74
    :cond_1
    new-instance p1, Lcom/haima/hmcp/cloud/PictureFileCheckTask;

    .line 75
    .line 76
    invoke-direct {p1}, Lcom/haima/hmcp/cloud/PictureFileCheckTask;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckFiles:Ljava/util/List;

    .line 82
    .line 83
    new-instance v1, Lcom/haima/hmcp/cloud/UploadWork$1;

    .line 84
    .line 85
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/cloud/UploadWork$1;-><init>(Lcom/haima/hmcp/cloud/UploadWork;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/cloud/ITask;->start(Ljava/util/List;Lcom/haima/hmcp/cloud/IWorkListener;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public execute(Lcom/haima/hmcp/business/IWebSocket;Ljava/util/List;Lcom/haima/hmcp/beans/CloudFileConfig;Lcom/haima/hmcp/cloud/IWorkListener;)V
    .locals 1
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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mUploadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mUploadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->stop()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mUploadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/haima/hmcp/cloud/UploadTask;

    .line 20
    .line 21
    invoke-direct {v0, p1, p3}, Lcom/haima/hmcp/cloud/UploadTask;-><init>(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mUploadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 25
    .line 26
    new-instance p1, Lcom/haima/hmcp/cloud/UploadWork$2;

    .line 27
    .line 28
    invoke-direct {p1, p0, p4}, Lcom/haima/hmcp/cloud/UploadWork$2;-><init>(Lcom/haima/hmcp/cloud/UploadWork;Lcom/haima/hmcp/cloud/IWorkListener;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p2, p1}, Lcom/haima/hmcp/cloud/ITask;->start(Ljava/util/List;Lcom/haima/hmcp/cloud/IWorkListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public getStatus()Lcom/haima/hmcp/cloud/WorkStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mUploadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->getStatus()I

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mWorkStatus:Lcom/haima/hmcp/cloud/WorkStatus;

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
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadWork;->setWorkStatus(Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mUploadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->stop()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/haima/hmcp/cloud/UploadWork;->mUploadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->stop()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/haima/hmcp/cloud/UploadWork;->mCheckTask:Lcom/haima/hmcp/cloud/ITask;

    .line 24
    .line 25
    :cond_1
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
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "upload_image"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mUploadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/ITask;->isRunning()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadWork;->mUploadTask:Lcom/haima/hmcp/cloud/ITask;

    .line 29
    .line 30
    check-cast v0, Lcom/haima/hmcp/cloud/UploadTask;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->orderAckDispatcher(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    :goto_0
    return-void
.end method

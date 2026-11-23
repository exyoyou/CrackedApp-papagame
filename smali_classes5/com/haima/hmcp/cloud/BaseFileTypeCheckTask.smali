.class abstract Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/ITask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFileTypeCheckTask"


# instance fields
.field private mCheckListener:Lcom/haima/hmcp/cloud/IWorkListener;

.field private mCheckTask:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;)Lcom/haima/hmcp/cloud/IWorkListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected abstract getFileHeaderTypeMap()Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getFileSuffixMap()Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getStatus()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckTask:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "cloud-file: check task status: idle"

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "cloud-file: check task status: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckTask:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v1
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckTask:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
.end method

.method public start(Ljava/util/List;Lcom/haima/hmcp/cloud/IWorkListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IWorkListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckTask:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckTask:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;

    .line 11
    .line 12
    :cond_0
    iput-object p2, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 13
    .line 14
    new-instance p2, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;

    .line 15
    .line 16
    invoke-direct {p2, p0, v2}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;-><init>(Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$1;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckTask:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;

    .line 20
    .line 21
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    new-array v1, v1, [Ljava/util/List;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object p1, v1, v2

    .line 27
    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckTask:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->mCheckTask:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.class public Lcom/haima/hmcp/utils/FrameDataWorker;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/FrameDataWorker$FrameDataHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameDataWorker"


# instance fields
.field private volatile frameId:J

.field private mHander:Landroid/os/Handler;

.field private mHmFrameCallback:Lcom/haima/hmcp/listeners/HmFrameCallback;

.field private working:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "FrameDataProxy"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->working:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/utils/FrameDataWorker;)Lcom/haima/hmcp/listeners/HmFrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->mHmFrameCallback:Lcom/haima/hmcp/listeners/HmFrameCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$104(Lcom/haima/hmcp/utils/FrameDataWorker;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->frameId:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->frameId:J

    .line 7
    .line 8
    return-wide v0
.end method


# virtual methods
.method public initFrameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->frameId:J

    .line 2
    .line 3
    return-void
.end method

.method public isWorking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->working:Z

    .line 2
    .line 3
    return v0
.end method

.method public push([J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->mHander:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->working:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->mHander:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    :goto_0
    sget-object p1, Lcom/haima/hmcp/utils/FrameDataWorker;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "push: Handler is null or worker is not working, ignoring push request"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public quit()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/FrameDataWorker;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "quit."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->mHmFrameCallback:Lcom/haima/hmcp/listeners/HmFrameCallback;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->working:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->mHander:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->mHander:Landroid/os/Handler;

    .line 22
    .line 23
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->mHmFrameCallback:Lcom/haima/hmcp/listeners/HmFrameCallback;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/utils/FrameDataWorker;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "start."

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->working:Z

    .line 11
    .line 12
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->mHander:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/haima/hmcp/utils/FrameDataWorker$FrameDataHandler;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/utils/FrameDataWorker$FrameDataHandler;-><init>(Lcom/haima/hmcp/utils/FrameDataWorker;Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->mHander:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    :try_start_2
    sget-object v1, Lcom/haima/hmcp/utils/FrameDataWorker;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "Failed to start FrameDataWorker"

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker;->working:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    :cond_0
    :goto_0
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    .line 49
    throw v0
.end method

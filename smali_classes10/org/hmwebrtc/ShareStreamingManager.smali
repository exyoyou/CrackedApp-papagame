.class public Lorg/hmwebrtc/ShareStreamingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareStreamingManager"

.field private static mInstance:Lorg/hmwebrtc/ShareStreamingManager;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private volatile isActive:Z

.field private mKeyFrameRequestCallBack:Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;

.field private nativeKeyFrameRequestCallBack:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    return-void
.end method

.method private CreateKeyFrameRequestCallBack()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->isActive:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "ShareStreamingManager"

    .line 8
    .line 9
    const-string v3, "Failed to create callback, ShareStreamingManager is not active"

    .line 10
    .line 11
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-wide v1

    .line 15
    :cond_0
    iget-wide v3, p0, Lorg/hmwebrtc/ShareStreamingManager;->nativeKeyFrameRequestCallBack:J

    .line 16
    .line 17
    cmp-long v0, v3, v1

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Lorg/hmwebrtc/ShareStreamingManager;->nativeCreateKeyFrameRequestCallBack(Lorg/hmwebrtc/ShareStreamingManager;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->nativeKeyFrameRequestCallBack:J

    .line 26
    .line 27
    :cond_1
    iget-wide v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->nativeKeyFrameRequestCallBack:J

    .line 28
    .line 29
    return-wide v0
.end method

.method public static synthetic a(Lorg/hmwebrtc/ShareStreamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/ShareStreamingManager;->lambda$start$0()V

    return-void
.end method

.method public static synthetic b(Lorg/hmwebrtc/ShareStreamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/ShareStreamingManager;->lambda$stop$1()V

    return-void
.end method

.method public static getInstance()Lorg/hmwebrtc/ShareStreamingManager;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/ShareStreamingManager;->mInstance:Lorg/hmwebrtc/ShareStreamingManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/hmwebrtc/ShareStreamingManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/hmwebrtc/ShareStreamingManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/hmwebrtc/ShareStreamingManager;->mInstance:Lorg/hmwebrtc/ShareStreamingManager;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lorg/hmwebrtc/ShareStreamingManager;->mInstance:Lorg/hmwebrtc/ShareStreamingManager;

    .line 13
    .line 14
    return-object v0
.end method

.method private synthetic lambda$start$0()V
    .locals 4

    .line 1
    const-string v0, "ShareStreamingManager"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "Starting share streaming"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/hmwebrtc/ShareStreamingManager;->nativeStart()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lorg/hmwebrtc/ShareStreamingManager;->isActive:Z

    .line 13
    .line 14
    const-string v1, "Share streaming started successfully"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "Error in share streaming thread: "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method private synthetic lambda$stop$1()V
    .locals 4

    .line 1
    const-string v0, "ShareStreamingManager"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "Stopping share streaming"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/hmwebrtc/ShareStreamingManager;->nativeStop()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lorg/hmwebrtc/ShareStreamingManager;->isActive:Z

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, p0, Lorg/hmwebrtc/ShareStreamingManager;->nativeKeyFrameRequestCallBack:J

    .line 17
    .line 18
    const-string v1, "Share streaming stopped successfully"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/hmwebrtc/ShareStreamingManager;->mKeyFrameRequestCallBack:Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v1, "Clearing key frame request callback reference"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lorg/hmwebrtc/ShareStreamingManager;->mKeyFrameRequestCallBack:Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "Error in share streaming thread: "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    return-void
.end method

.method private static native nativeClearKeyFrameRequestCallBack()V
.end method

.method private static native nativeCreateKeyFrameRequestCallBack(Lorg/hmwebrtc/ShareStreamingManager;)J
.end method

.method private static native nativeSetKeyFrameRequestCallBack(J)V
.end method

.method private static native nativeStart()V
.end method

.method private static native nativeStop()V
.end method


# virtual methods
.method public clearKeyFrameRequestCallBack()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->isActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ShareStreamingManager"

    .line 6
    .line 7
    const-string v1, "clearKeyFrameRequestCallBack failed, ShareStreamingManager is not active"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lorg/hmwebrtc/ShareStreamingManager;->nativeClearKeyFrameRequestCallBack()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onKeyFrameRequested()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->mKeyFrameRequestCallBack:Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;->onKeyFrameRequested()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "Error in onKeyFrameRequested: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "ShareStreamingManager"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public setKeyFrameRequestCallBack(Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;)V
    .locals 5

    .line 1
    const-string v0, "ShareStreamingManager"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "setKeyFrameRequestCallBack failed, callback is null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput-object p1, p0, Lorg/hmwebrtc/ShareStreamingManager;->mKeyFrameRequestCallBack:Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;

    .line 12
    .line 13
    invoke-direct {p0}, Lorg/hmwebrtc/ShareStreamingManager;->CreateKeyFrameRequestCallBack()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, p0, Lorg/hmwebrtc/ShareStreamingManager;->nativeKeyFrameRequestCallBack:J

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long p1, v1, v3

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const-string p1, "setKeyFrameRequestCallBack failed, nativeKeyFrameRequestCallBack is null"

    .line 26
    .line 27
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {v1, v2}, Lorg/hmwebrtc/ShareStreamingManager;->nativeSetKeyFrameRequestCallBack(J)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->isActive:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ShareStreamingManager"

    .line 6
    .line 7
    const-string v1, "Share streaming is already active, skipping start"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    new-instance v1, Lorg/hmwebrtc/e0;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lorg/hmwebrtc/e0;-><init>(Lorg/hmwebrtc/ShareStreamingManager;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->isActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ShareStreamingManager"

    .line 6
    .line 7
    const-string v1, "Share streaming is not active, skipping stop"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/ShareStreamingManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    new-instance v1, Lorg/hmwebrtc/d0;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lorg/hmwebrtc/d0;-><init>(Lorg/hmwebrtc/ShareStreamingManager;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

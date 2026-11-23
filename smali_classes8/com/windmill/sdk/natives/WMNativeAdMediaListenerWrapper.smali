.class public Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;,
        Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;
    }
.end annotation


# static fields
.field private static final DEFAULT_UPDATE_INTERVAL:I = 0x3e8

.field private static final MIN_UPDATE_INTERVAL:I = 0x1f4


# instance fields
.field private final accumulatedPauseTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private adDataRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation
.end field

.field private final currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

.field private handler:Landroid/os/Handler;

.field private isChannelSelfInterFaceUpdateProgress:Z

.field private isChannelSelfUpdateProgress:Z

.field private final isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastNotifiedPosition:J

.field private final lastPauseTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

.field private final playState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;",
            ">;"
        }
    .end annotation
.end field

.field private progressRunnable:Ljava/lang/Runnable;

.field private progressUpdateInterval:I

.field private final startTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

.field private videoInfoFormChannel:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adData"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->IDLE:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->accumulatedPauseTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->lastPauseTime:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x3e8

    .line 9
    iput v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->progressUpdateInterval:I

    .line 10
    iput-boolean v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfUpdateProgress:Z

    .line 11
    iput-boolean v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfInterFaceUpdateProgress:Z

    .line 12
    iput-wide v2, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->lastNotifiedPosition:J

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->init(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adData",
            "nativeADMediaListener"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->IDLE:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->accumulatedPauseTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->lastPauseTime:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x3e8

    .line 22
    iput v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->progressUpdateInterval:I

    .line 23
    iput-boolean v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfUpdateProgress:Z

    .line 24
    iput-boolean v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfInterFaceUpdateProgress:Z

    .line 25
    iput-wide v2, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->lastNotifiedPosition:J

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->init(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->updateProgress()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->progressUpdateInterval:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->stopProgressUpdate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adData",
            "nativeADMediaListener"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->adDataRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->initProgressRunnable()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private initProgressRunnable()V
    .locals 1

    .line 1
    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;-><init>(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->progressRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method

.method private notifyProgressUpdate(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "duration"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "WMNativeAdMediaListenerWrapper notifyProgressUpdate called, current: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", duration: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", isChannelSelfUpdateProgress: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfUpdateProgress:Z

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", isChannelSelfInterFaceUpdateProgress: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfInterFaceUpdateProgress:Z

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-wide v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->lastNotifiedPosition:J

    .line 54
    .line 55
    cmp-long v3, p1, v1

    .line 56
    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    iput-wide p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->lastNotifiedPosition:J

    .line 60
    .line 61
    instance-of v1, v0, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListenerExt;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    check-cast v0, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListenerExt;

    .line 66
    .line 67
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListenerExt;->onVideoProgressUpdate(JJ)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method private resetState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->accumulatedPauseTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->lastPauseTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->IDLE:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    .line 27
    const-wide/16 v1, -0x1

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private startProgressUpdate()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

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
    if-gtz v4, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "WMNativeAdMediaListenerWrapper updateProgress duration is invalid: "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->stopProgressUpdate()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->handler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->progressRunnable:Ljava/lang/Runnable;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private stopProgressUpdate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->progressRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private updateProgress()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfUpdateProgress:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->notifyProgressUpdate(JJ)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoInfoFormChannel:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;->getVideoDuration()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmp-long v6, v2, v4

    .line 46
    .line 47
    if-lez v6, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 52
    .line 53
    .line 54
    move-wide v0, v2

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoInfoFormChannel:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    .line 56
    .line 57
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;->getVideoProgress()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    cmp-long v6, v2, v4

    .line 62
    .line 63
    if-ltz v6, :cond_3

    .line 64
    .line 65
    iget-object v4, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    .line 67
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 68
    .line 69
    .line 70
    cmp-long v4, v2, v0

    .line 71
    .line 72
    if-ltz v4, :cond_2

    .line 73
    .line 74
    iget-object v4, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    .line 76
    sget-object v5, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->COMPLETED:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->notifyProgressUpdate(JJ)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    const-string v0, "WMNativeAdMediaListenerWrapper destroy called"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->stopProgressUpdate()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->adDataRef:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->handler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->progressRunnable:Ljava/lang/Runnable;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoInfoFormChannel:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getVideoDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public isCompleted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->COMPLETED:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->PAUSED:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->PLAYING:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public onVideoCompleted()V
    .locals 5

    .line 1
    const-string v0, "WMNativeAdMediaListenerWrapper onVideoCompleted called"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->COMPLETED:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->stopProgressUpdate()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    cmp-long v4, v0, v2

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->notifyProgressUpdate(JJ)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoCompleted()V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public onVideoError(Lcom/windmill/sdk/WindMillError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windMillError"
        }
    .end annotation

    .line 1
    const-string v0, "WMNativeAdMediaListenerWrapper onVideoError called"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoError(Lcom/windmill/sdk/WindMillError;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    sget-object v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->IDLE:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->stopProgressUpdate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onVideoLoad()V
    .locals 1

    .line 1
    const-string v0, "WMNativeAdMediaListenerWrapper onVideoLoad called"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoLoad()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onVideoPause()V
    .locals 2

    .line 1
    const-string v0, "WMNativeAdMediaListenerWrapper onVideoPause called"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoPause()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfUpdateProgress:Z

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfInterFaceUpdateProgress:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void

    .line 23
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->PAUSED:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->stopProgressUpdate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onVideoProgressUpdate(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentVideoPosition",
            "duration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v2, v0, p3

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->startProgressUpdate()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p3, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->currentPosition:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    .line 21
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    sget-object p2, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->PLAYING:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfUpdateProgress:Z

    .line 33
    .line 34
    return-void
.end method

.method public onVideoResume()V
    .locals 2

    .line 1
    const-string v0, "WMNativeAdMediaListenerWrapper onVideoResume called"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoResume()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfUpdateProgress:Z

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfInterFaceUpdateProgress:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void

    .line 23
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->PLAYING:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->startProgressUpdate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onVideoStart(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoDuration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 8
    .line 9
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->IDLE:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->COMPLETED:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->resetState()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoDuration:Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "WMNativeAdMediaListenerWrapper onVideoStart called: videoDuration="

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoStart()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-boolean p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfUpdateProgress:Z

    .line 53
    .line 54
    if-nez p1, :cond_6

    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfInterFaceUpdateProgress:Z

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    sget-object p1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->PLAYING:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 62
    .line 63
    if-eq v0, p1, :cond_5

    .line 64
    .line 65
    sget-object p2, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->PAUSED:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 66
    .line 67
    if-ne v0, p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoResume()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    iget-object p2, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->startProgressUpdate()V

    .line 88
    .line 89
    .line 90
    :cond_5
    return-void

    .line 91
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->playState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    .line 93
    sget-object p2, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->PLAYING:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->startProgressUpdate()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public setNativeADMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeADMediaListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->nativeADMediaListener:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoInfoFormChannel(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoInfoFormChannel"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->isChannelSelfInterFaceUpdateProgress:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->videoInfoFormChannel:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    .line 9
    .line 10
    return-void
.end method

.method public setVideoProgressUpdateInterval(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intervalMs"
        }
    .end annotation

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    iput v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->progressUpdateInterval:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->progressUpdateInterval:I

    .line 9
    .line 10
    return-void
.end method

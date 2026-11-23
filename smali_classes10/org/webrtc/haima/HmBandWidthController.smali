.class public Lorg/webrtc/haima/HmBandWidthController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmBandWidthController$Observer;,
        Lorg/webrtc/haima/HmBandWidthController$State;,
        Lorg/webrtc/haima/HmBandWidthController$Request;
    }
.end annotation


# static fields
.field private static final kDefaultNotityIntervalMs:J = 0x1388L

.field public static kModuleName:Ljava/lang/String; = "bwc"

.field public static kProboStart:Ljava/lang/String; = "bwc.start"

.field public static kProboStop:Ljava/lang/String; = "bwc.stop"


# instance fields
.field private final mNotityIntervalMs:J

.field private final mObserver:Lorg/webrtc/haima/HmBandWidthController$Observer;

.field private final mObserverHandler:Landroid/os/Handler;

.field private mPrevAvailableBandWidthKbps:J

.field private mPrevNotifyTimeMs:J

.field private mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/haima/HmBandWidthController$Request;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lorg/webrtc/haima/HmBandWidthController$State;

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/webrtc/haima/HmBandWidthController$Observer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmBandWidthController;->mStateLock:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide/16 v1, 0x1388

    .line 12
    .line 13
    iput-wide v1, p0, Lorg/webrtc/haima/HmBandWidthController;->mNotityIntervalMs:J

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Lorg/webrtc/haima/HmBandWidthController;->mPrevNotifyTimeMs:J

    .line 18
    .line 19
    const-wide/16 v1, -0x1

    .line 20
    .line 21
    iput-wide v1, p0, Lorg/webrtc/haima/HmBandWidthController;->mPrevAvailableBandWidthKbps:J

    .line 22
    .line 23
    iput-object p1, p0, Lorg/webrtc/haima/HmBandWidthController;->mObserverHandler:Landroid/os/Handler;

    .line 24
    .line 25
    iput-object p2, p0, Lorg/webrtc/haima/HmBandWidthController;->mObserver:Lorg/webrtc/haima/HmBandWidthController$Observer;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    sget-object p1, Lorg/webrtc/haima/HmBandWidthController$State;->kInited:Lorg/webrtc/haima/HmBandWidthController$State;

    .line 29
    .line 30
    iput-object p1, p0, Lorg/webrtc/haima/HmBandWidthController;->mState:Lorg/webrtc/haima/HmBandWidthController$State;

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public static synthetic a(Lorg/webrtc/haima/HmBandWidthController;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/HmBandWidthController;->lambda$onUpdateAvailableBandWidth$0(J)V

    return-void
.end method

.method private internalStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmBandWidthController;->mStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/webrtc/haima/HmBandWidthController$State;->kStarted:Lorg/webrtc/haima/HmBandWidthController$State;

    .line 5
    .line 6
    iput-object v1, p0, Lorg/webrtc/haima/HmBandWidthController;->mState:Lorg/webrtc/haima/HmBandWidthController$State;

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method

.method private internalStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmBandWidthController;->mStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/webrtc/haima/HmBandWidthController$State;->kStoped:Lorg/webrtc/haima/HmBandWidthController$State;

    .line 5
    .line 6
    iput-object v1, p0, Lorg/webrtc/haima/HmBandWidthController;->mState:Lorg/webrtc/haima/HmBandWidthController$State;

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method

.method public static isMatchedModuleName(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lorg/webrtc/haima/HmBandWidthController;->kModuleName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private isStarted()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmBandWidthController;->mStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmBandWidthController;->mState:Lorg/webrtc/haima/HmBandWidthController$State;

    .line 5
    .line 6
    sget-object v2, Lorg/webrtc/haima/HmBandWidthController$State;->kStarted:Lorg/webrtc/haima/HmBandWidthController$State;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method private synthetic lambda$onUpdateAvailableBandWidth$0(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmBandWidthController;->mObserver:Lorg/webrtc/haima/HmBandWidthController$Observer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/webrtc/haima/HmBandWidthController$Observer;->onAvailableBandWidth(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public executeCommand(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lorg/webrtc/haima/HmBandWidthController;->kProboStart:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    const-string v3, "executeCommand cmd="

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lorg/webrtc/haima/HmBandWidthController;->kModuleName:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lorg/webrtc/haima/HmBandWidthController;->internalStart()V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    sget-object v0, Lorg/webrtc/haima/HmBandWidthController;->kProboStop:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    sget-object v0, Lorg/webrtc/haima/HmBandWidthController;->kModuleName:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lorg/webrtc/haima/HmBandWidthController;->internalStop()V

    .line 81
    .line 82
    .line 83
    return v2

    .line 84
    :cond_2
    sget-object v0, Lorg/webrtc/haima/HmBandWidthController;->kModuleName:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "executeCommand not implemented! cmd="

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return v1
.end method

.method public onUpdateAvailableBandWidth(J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmBandWidthController;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v2, p1, v0

    .line 10
    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Lorg/webrtc/haima/HmBandWidthController;->kModuleName:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "onUpdateAvailableBandWidth bwKbps:"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, p0, Lorg/webrtc/haima/HmBandWidthController;->mNotityIntervalMs:J

    .line 41
    .line 42
    cmp-long v6, v4, v0

    .line 43
    .line 44
    if-lez v6, :cond_1

    .line 45
    .line 46
    iget-wide v6, p0, Lorg/webrtc/haima/HmBandWidthController;->mPrevNotifyTimeMs:J

    .line 47
    .line 48
    cmp-long v8, v6, v0

    .line 49
    .line 50
    if-lez v8, :cond_1

    .line 51
    .line 52
    cmp-long v0, v6, v2

    .line 53
    .line 54
    if-gtz v0, :cond_1

    .line 55
    .line 56
    add-long/2addr v6, v4

    .line 57
    cmp-long v0, v6, v2

    .line 58
    .line 59
    if-lez v0, :cond_1

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    iput-wide p1, p0, Lorg/webrtc/haima/HmBandWidthController;->mPrevAvailableBandWidthKbps:J

    .line 63
    .line 64
    iget-object v0, p0, Lorg/webrtc/haima/HmBandWidthController;->mObserver:Lorg/webrtc/haima/HmBandWidthController$Observer;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lorg/webrtc/haima/HmBandWidthController;->mObserverHandler:Landroid/os/Handler;

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iput-wide v2, p0, Lorg/webrtc/haima/HmBandWidthController;->mPrevNotifyTimeMs:J

    .line 74
    .line 75
    new-instance v1, Lorg/webrtc/haima/b;

    .line 76
    .line 77
    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/haima/b;-><init>(Lorg/webrtc/haima/HmBandWidthController;J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmBandWidthController;->kModuleName:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "start "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lorg/webrtc/haima/HmBandWidthController;->internalStart()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmBandWidthController;->kModuleName:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "stop "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lorg/webrtc/haima/HmBandWidthController;->internalStop()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

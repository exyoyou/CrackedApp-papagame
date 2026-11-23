.class Lorg/hmwebrtc/log/LogAdapter$WorkThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/log/LogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkThread"
.end annotation


# instance fields
.field private mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSignal:Ljava/lang/Object;

.field private mThread:Ljava/lang/Thread;

.field private mTimeoutMs:J

.field private mWork:Lorg/hmwebrtc/log/LogAdapter$Work;


# direct methods
.method public constructor <init>(J)V
    .locals 1

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
    iput-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mSignal:Ljava/lang/Object;

    .line 10
    .line 11
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mTimeoutMs:J

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    return-void
.end method

.method private OnExitThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mWork:Lorg/hmwebrtc/log/LogAdapter$Work;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/log/LogAdapter$Work;->done()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mSignal:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mTimeoutMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$300(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->done()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lorg/hmwebrtc/log/LogAdapter$WorkThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->OnExitThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createTread()V
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;

    .line 2
    .line 3
    const-string v1, "writeLogThread"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/log/LogAdapter$WorkThread$1;-><init>(Lorg/hmwebrtc/log/LogAdapter$WorkThread;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mThread:Ljava/lang/Thread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private done()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mWork:Lorg/hmwebrtc/log/LogAdapter$Work;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/log/LogAdapter$Work;->done()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public setEvent()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mSignal:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mSignal:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "setEvent exception, msg:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public start(Lorg/hmwebrtc/log/LogAdapter$Work;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mWork:Lorg/hmwebrtc/log/LogAdapter$Work;

    .line 11
    .line 12
    iget-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->createTread()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mThread:Ljava/lang/Thread;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Thread;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mThread:Ljava/lang/Thread;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v1

    .line 21
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "stop exception, msg:"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    return-void

    .line 40
    :goto_2
    iput-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->mThread:Ljava/lang/Thread;

    .line 41
    .line 42
    throw v1
.end method

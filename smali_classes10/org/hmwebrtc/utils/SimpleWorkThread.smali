.class public Lorg/hmwebrtc/utils/SimpleWorkThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/utils/SimpleWorkThread$Work;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSignal:Ljava/lang/Object;

.field private mThread:Ljava/lang/Thread;

.field private final mThreadName:Ljava/lang/String;

.field private final mTimeoutMs:J

.field private mWork:Lorg/hmwebrtc/utils/SimpleWorkThread$Work;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SimpleWorkThread"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mSignal:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "SimpleWorkThread_"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mThreadName:Ljava/lang/String;

    .line 43
    .line 44
    iput-wide p2, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mTimeoutMs:J

    .line 45
    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    return-void
.end method

.method private OnExitThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mWork:Lorg/hmwebrtc/utils/SimpleWorkThread$Work;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/utils/SimpleWorkThread$Work;->done()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/utils/SimpleWorkThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/hmwebrtc/utils/SimpleWorkThread;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mSignal:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/utils/SimpleWorkThread;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mTimeoutMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$300(Lorg/hmwebrtc/utils/SimpleWorkThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/utils/SimpleWorkThread;->done()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lorg/hmwebrtc/utils/SimpleWorkThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/utils/SimpleWorkThread;->OnExitThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createTread()V
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/utils/SimpleWorkThread$1;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mThreadName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/utils/SimpleWorkThread$1;-><init>(Lorg/hmwebrtc/utils/SimpleWorkThread;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mThread:Ljava/lang/Thread;

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
    iget-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mWork:Lorg/hmwebrtc/utils/SimpleWorkThread$Work;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/utils/SimpleWorkThread$Work;->done()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public setEvent()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mSignal:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mSignal:Ljava/lang/Object;

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
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public start(Lorg/hmwebrtc/utils/SimpleWorkThread$Work;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iput-object p1, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mWork:Lorg/hmwebrtc/utils/SimpleWorkThread$Work;

    .line 11
    .line 12
    iget-object p1, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lorg/hmwebrtc/utils/SimpleWorkThread;->createTread()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mExitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mThread:Ljava/lang/Thread;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lorg/hmwebrtc/utils/SimpleWorkThread;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

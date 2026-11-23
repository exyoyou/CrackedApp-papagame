.class Lorg/hmwebrtc/log/LogAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/log/LogAdapter$LogThread;,
        Lorg/hmwebrtc/log/LogAdapter$WorkThread;,
        Lorg/hmwebrtc/log/LogAdapter$Work;,
        Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOG_LEVEL:I = 0x2

.field private static final LOG_THREAD_MAX_LOGSIZE:J = 0x32L

.field private static final LOG_THREAD_TIMEOUTMS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "LogAdapter"

.field private static mCacheSize:J = 0x32L

.field private static mFlushTime:J = 0x1388L


# instance fields
.field private mDebugTagList:[Ljava/lang/String;

.field private volatile mInitializeted:Z

.field private mLevel:I

.field private mLogThread:Lorg/hmwebrtc/log/LogAdapter$LogThread;

.field private final mPid:J

.field private mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-long v0, v0

    .line 9
    iput-wide v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mPid:J

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mLevel:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mInitializeted:Z

    .line 16
    .line 17
    new-instance v0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;-><init>(Lorg/hmwebrtc/log/LogAdapter;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic access$500()J
    .locals 2

    .line 1
    sget-wide v0, Lorg/hmwebrtc/log/LogAdapter;->mFlushTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$700()J
    .locals 2

    .line 1
    sget-wide v0, Lorg/hmwebrtc/log/LogAdapter;->mCacheSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private onFilter(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mDebugTagList:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lorg/hmwebrtc/log/LogAdapter;->mDebugTagList:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    if-ge v0, v3, :cond_2

    .line 15
    .line 16
    aget-object v2, v2, v0

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public addSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->access$900(Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;Lorg/hmwebrtc/log/LogApi$LogSink;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getLevel(I)I
    .locals 0

    .line 1
    iget p1, p0, Lorg/hmwebrtc/log/LogAdapter;->mLevel:I

    .line 2
    .line 3
    return p1
.end method

.method public getSinkCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public initializate(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mInitializeted:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid initializate!  singleThread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lorg/hmwebrtc/log/LogAdapter$LogThread;

    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    invoke-direct {p1, v0}, Lorg/hmwebrtc/log/LogAdapter$LogThread;-><init>(Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;)V

    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter;->mLogThread:Lorg/hmwebrtc/log/LogAdapter$LogThread;

    .line 4
    invoke-virtual {p1}, Lorg/hmwebrtc/log/LogAdapter$LogThread;->start()V

    :cond_1
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/hmwebrtc/log/LogAdapter;->mInitializeted:Z

    return p1
.end method

.method public initializate(ZJJ[Ljava/lang/String;)Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mInitializeted:Z

    if-eqz v0, :cond_0

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid initializate!  singleThread:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_0
    sput-wide p2, Lorg/hmwebrtc/log/LogAdapter;->mCacheSize:J

    .line 9
    sput-wide p4, Lorg/hmwebrtc/log/LogAdapter;->mFlushTime:J

    .line 10
    iput-object p6, p0, Lorg/hmwebrtc/log/LogAdapter;->mDebugTagList:[Ljava/lang/String;

    if-nez p1, :cond_1

    .line 11
    new-instance p1, Lorg/hmwebrtc/log/LogAdapter$LogThread;

    iget-object p2, p0, Lorg/hmwebrtc/log/LogAdapter;->mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    invoke-direct {p1, p2}, Lorg/hmwebrtc/log/LogAdapter$LogThread;-><init>(Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;)V

    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter;->mLogThread:Lorg/hmwebrtc/log/LogAdapter$LogThread;

    .line 12
    invoke-virtual {p1}, Lorg/hmwebrtc/log/LogAdapter$LogThread;->start()V

    :cond_1
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/hmwebrtc/log/LogAdapter;->mInitializeted:Z

    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mInitializeted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mLevel:I

    .line 7
    .line 8
    if-ge p1, v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-direct {p0, p2}, Lorg/hmwebrtc/log/LogAdapter;->onFilter(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-le v0, v1, :cond_3

    .line 24
    .line 25
    const-string v0, "\n"

    .line 26
    .line 27
    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    :cond_3
    new-instance v0, Lorg/hmwebrtc/log/LogApi$LogMessage;

    .line 49
    .line 50
    invoke-direct {v0}, Lorg/hmwebrtc/log/LogApi$LogMessage;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p3, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->msg:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p2, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->tag:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide p2

    .line 61
    iput-wide p2, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->time:J

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    .line 68
    .line 69
    .line 70
    move-result-wide p2

    .line 71
    iput-wide p2, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->tid:J

    .line 72
    .line 73
    iget-wide p2, p0, Lorg/hmwebrtc/log/LogAdapter;->mPid:J

    .line 74
    .line 75
    iput-wide p2, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->pid:J

    .line 76
    .line 77
    iput p1, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->level:I

    .line 78
    .line 79
    iget-object p2, p0, Lorg/hmwebrtc/log/LogAdapter;->mLogThread:Lorg/hmwebrtc/log/LogAdapter$LogThread;

    .line 80
    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p2, p1, v0}, Lorg/hmwebrtc/log/LogAdapter$LogThread;->onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget-object p2, p0, Lorg/hmwebrtc/log/LogAdapter;->mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 88
    .line 89
    invoke-virtual {p2, p1, v0}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->access$800(Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->removeSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/log/LogAdapter;->mLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public terminate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mInitializeted:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mLogThread:Lorg/hmwebrtc/log/LogAdapter$LogThread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->setEvent()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mLogThread:Lorg/hmwebrtc/log/LogAdapter$LogThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->stop()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter;->mSinkAdapter:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->access$800(Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.class public abstract Lcom/haima/hmcp/widgets/CountDownTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mCancelled:Z

    .line 6
    .line 7
    new-instance v0, Lcom/haima/hmcp/widgets/CountDownTimer$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/CountDownTimer$1;-><init>(Lcom/haima/hmcp/widgets/CountDownTimer;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mMillisInFuture:J

    .line 15
    .line 16
    iput-wide p3, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mCountdownInterval:J

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mTag:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/widgets/CountDownTimer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mCancelled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/widgets/CountDownTimer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/widgets/CountDownTimer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mMillisInFuture:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/widgets/CountDownTimer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mStopTimeInFuture:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/widgets/CountDownTimer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mCountdownInterval:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mCancelled:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/haima/hmcp/beans/ReportTimer;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mTag:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-wide v5, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mMillisInFuture:J

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    sget-object v8, Lcom/haima/hmcp/beans/ReportTimer$Action;->CANCEL:Lcom/haima/hmcp/beans/ReportTimer$Action;

    .line 39
    .line 40
    move-object v2, v0

    .line 41
    invoke-direct/range {v2 .. v8}, Lcom/haima/hmcp/beans/ReportTimer;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/haima/hmcp/beans/ReportTimer$Action;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEventRaw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Lcom/haima/hmcp/widgets/CountDownTimer;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mCancelled:Z

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mMillisInFuture:J

    .line 6
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
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/CountDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-wide v2, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mMillisInFuture:J

    .line 23
    .line 24
    add-long/2addr v0, v2

    .line 25
    iput-wide v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mStopTimeInFuture:J

    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/haima/hmcp/beans/ReportTimer;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mTag:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, ""

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-wide v5, p0, Lcom/haima/hmcp/widgets/CountDownTimer;->mMillisInFuture:J

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    sget-object v8, Lcom/haima/hmcp/beans/ReportTimer$Action;->CREATE:Lcom/haima/hmcp/beans/ReportTimer$Action;

    .line 66
    .line 67
    move-object v2, v0

    .line 68
    invoke-direct/range {v2 .. v8}, Lcom/haima/hmcp/beans/ReportTimer;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/haima/hmcp/beans/ReportTimer$Action;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEventRaw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-object p0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p0

    .line 82
    throw v0
.end method

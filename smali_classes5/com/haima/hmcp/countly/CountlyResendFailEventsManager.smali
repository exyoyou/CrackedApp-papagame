.class public Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;
    }
.end annotation


# static fields
.field private static volatile reSendFailEventManager:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;


# instance fields
.field private final DELAY_TIME:I

.field private final MAX_QUEUE_SIZE:I

.field private final PERIOD_TIME:I

.field private final TAG:Ljava/lang/String;

.field private final UPLOAD_MAX_LENGTH:I

.field private eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEvent:Ljava/util/Map;

.field private mResendTimer:Ljava/util/Timer;

.field private mSendFailEventTimerTask:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v0, 0x3e8

    .line 15
    .line 16
    iput v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->DELAY_TIME:I

    .line 17
    .line 18
    const/16 v0, 0x1388

    .line 19
    .line 20
    iput v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->PERIOD_TIME:I

    .line 21
    .line 22
    const/16 v0, 0x1f4

    .line 23
    .line 24
    iput v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->MAX_QUEUE_SIZE:I

    .line 25
    .line 26
    const v0, 0x4b000

    .line 27
    .line 28
    .line 29
    iput v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->UPLOAD_MAX_LENGTH:I

    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->sendFailEvents()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private addEvent(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "eventID"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "timeStamp"

    .line 13
    .line 14
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->isCacheEvent(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->needOverWritten(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->removeLastEvent()V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "OverWritten last event, eventID="

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {v1, v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordToDisk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/16 v2, 0x1f4

    .line 74
    .line 75
    if-ge v1, v2, :cond_3

    .line 76
    .line 77
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    const-string v2, "eventQueue is full"

    .line 86
    .line 87
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iput-object p1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mLastEvent:Ljava/util/Map;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "addEvent()  eventQueue count :"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v3, " eventID"

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    return-void
.end method

.method public static getInstance()Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->reSendFailEventManager:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->reSendFailEventManager:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->reSendFailEventManager:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->reSendFailEventManager:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 25
    .line 26
    return-object v0
.end method

.method private needOverWritten(Ljava/lang/String;)Z
    .locals 3

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
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mLastEvent:Ljava/util/Map;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "eventID"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->isOverWrittenEvent(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    return v1
.end method

.method private removeLastEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mLastEvent:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mLastEvent:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->deleteDiskCacheEvent(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private sendFailEvents()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->httpCountly:Lcom/haima/hmcp/countly/HttpCountly;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/2addr v1, v2

    .line 51
    iget-object v2, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "uploadData-AddedLen:"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const v2, 0x4b000

    .line 74
    .line 75
    .line 76
    if-le v1, v2, :cond_0

    .line 77
    .line 78
    :cond_1
    sget-object v1, Lcom/haima/hmcp/countly/CountlyUtil;->httpCountly:Lcom/haima/hmcp/countly/HttpCountly;

    .line 79
    .line 80
    const-string v2, "HMCPAndroidEvent"

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v1, v2, v0, v3}, Lcom/haima/hmcp/countly/HttpCountly;->postSendFailedEventData(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;I)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "not need send eventQueue :"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void
.end method


# virtual methods
.method public addEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Map;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, v0}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->addEvent(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method public startResend()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "startResend()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->stopResend()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/Timer;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mResendTimer:Ljava/util/Timer;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mSendFailEventTimerTask:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;-><init>(Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$1;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mSendFailEventTimerTask:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;

    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mResendTimer:Ljava/util/Timer;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mSendFailEventTimerTask:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;

    .line 33
    .line 34
    const-wide/16 v4, 0x3e8

    .line 35
    .line 36
    const-wide/16 v6, 0x1388

    .line 37
    .line 38
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public stopResend()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mResendTimer:Ljava/util/Timer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mResendTimer:Ljava/util/Timer;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mSendFailEventTimerTask:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->mSendFailEventTimerTask:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

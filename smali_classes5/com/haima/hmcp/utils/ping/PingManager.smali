.class public Lcom/haima/hmcp/utils/ping/PingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/utils/ping/PingCallback;


# static fields
.field static final PING_COUNTS_DEFAULT:I = 0xf

.field static final PING_COUNTS_MAX:I = 0x3c

.field static final PING_COUNTS_MIN:I = 0x1

.field static final PING_GRAY_ENABLE_PERCENT:I = 0x0

.field static final PING_HOST_DEFAULT:Ljava/lang/String; = "www.baidu.com"

.field static final PING_INTERVAL_DEFAULT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "NetPingManager"

.field private static mPingManager:Lcom/haima/hmcp/utils/ping/PingManager;


# instance fields
.field private mCloudId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

.field private mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/haima/hmcp/utils/ping/PingTask;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/haima/hmcp/utils/ping/PingTask;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/haima/hmcp/utils/ping/PingManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingManager:Lcom/haima/hmcp/utils/ping/PingManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/utils/ping/PingManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/ping/PingManager;->mPingManager:Lcom/haima/hmcp/utils/ping/PingManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/utils/ping/PingManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/utils/ping/PingManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/utils/ping/PingManager;->mPingManager:Lcom/haima/hmcp/utils/ping/PingManager;

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
    sget-object v0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingManager:Lcom/haima/hmcp/utils/ping/PingManager;

    .line 25
    .line 26
    return-object v0
.end method

.method private getPingPara()Lcom/haima/hmcp/utils/ping/PingPara;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/utils/ping/PingPara;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/utils/ping/PingPara;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 13
    .line 14
    return-object v0
.end method

.method private isEnable(Lcom/haima/hmcp/utils/ping/PingPara;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mCloudId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "NetPingManager"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, "is not enable: cloud id is null"

    .line 13
    .line 14
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-wide v3, p1, Lcom/haima/hmcp/utils/ping/PingPara;->pingGrayPercent:J

    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    cmp-long v0, v3, v5

    .line 25
    .line 26
    if-gtz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mCloudId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    rem-int/lit8 v0, v0, 0x64

    .line 40
    .line 41
    int-to-long v2, v0

    .line 42
    iget-wide v4, p1, Lcom/haima/hmcp/utils/ping/PingPara;->pingGrayPercent:J

    .line 43
    .line 44
    cmp-long p1, v2, v4

    .line 45
    .line 46
    if-gez p1, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    :cond_2
    return v1

    .line 50
    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 51
    .line 52
    const-string p1, "is not enable: ping para is null"

    .line 53
    .line 54
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, "is not enable: pingGrayPercent is "

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-wide v3, p1, Lcom/haima/hmcp/utils/ping/PingPara;->pingGrayPercent:J

    .line 69
    .line 70
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return v1
.end method


# virtual methods
.method public getPingResult()Lcom/haima/hmcp/utils/ping/PingResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->getPingResult()Lcom/haima/hmcp/utils/ping/PingResult;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public pingFailed(Lcom/haima/hmcp/utils/ping/PingPara;)V
    .locals 2

    .line 1
    const-string p1, "ping failed and stop, release"

    .line 2
    .line 3
    const-string v0, "NetPingManager"

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/ping/PingManager;->stop()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/ping/PingManager;->release()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget p1, p1, Lcom/haima/hmcp/utils/ping/PingPara;->type:I

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    const-string p1, "set default ping para and start"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/haima/hmcp/utils/ping/PingPara;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/haima/hmcp/utils/ping/PingPara;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput v0, p1, Lcom/haima/hmcp/utils/ping/PingPara;->type:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 40
    .line 41
    iget-wide v0, v0, Lcom/haima/hmcp/utils/ping/PingPara;->pingGrayPercent:J

    .line 42
    .line 43
    iput-wide v0, p1, Lcom/haima/hmcp/utils/ping/PingPara;->pingGrayPercent:J

    .line 44
    .line 45
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 46
    .line 47
    new-instance p1, Lcom/haima/hmcp/utils/ping/PingTask;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/haima/hmcp/utils/ping/PingTask;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/ping/PingManager;->start()V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "NetPingManager "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ping release"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->release()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setCloudId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mCloudId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public setPingPara(Lcom/haima/hmcp/utils/ping/PingPara;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ping/PingPara;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/haima/hmcp/utils/ping/PingPara;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/haima/hmcp/utils/ping/PingPara;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/haima/hmcp/utils/ping/PingPara;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "NetPingManager "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ping start"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/haima/hmcp/utils/ping/PingManager;->getPingPara()Lcom/haima/hmcp/utils/ping/PingPara;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lcom/haima/hmcp/utils/ping/PingManager;->isEnable(Lcom/haima/hmcp/utils/ping/PingPara;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/utils/ping/PingTask;->setContext(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/utils/ping/PingTask;->start(Lcom/haima/hmcp/utils/ping/PingPara;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/utils/ping/PingTask;->setPingCallback(Lcom/haima/hmcp/utils/ping/PingCallback;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "NetPingManager "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ping stop"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->stop()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingManager;->mPingTask:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/utils/ping/PingTask;->setPingCallback(Lcom/haima/hmcp/utils/ping/PingCallback;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

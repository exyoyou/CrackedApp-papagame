.class public Lcom/haima/hmcp/business/WsMessageManager;
.super Lcom/haima/hmcp/business/BaseManager;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/IWsMessage;


# static fields
.field private static final TAG:Ljava/lang/String; = "WsMessageManager"


# instance fields
.field private countDownMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/widgets/CountDownTimer;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private jsonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

.field private messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/beans/FutureCount;",
            ">;"
        }
    .end annotation
.end field

.field private sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/listeners/OnSendWsMessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/BaseManager;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->countDownMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    .line 31
    new-instance p1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->jsonMap:Ljava/util/Map;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/haima/hmcp/business/WsMessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 39
    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WsMessageManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/WsMessageManager;Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/WsMessageManager;->sendWsMessageRetry(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private resendMessage(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)Ljava/util/concurrent/Future;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/haima/hmcp/business/WsMessageManager$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/haima/hmcp/business/WsMessageManager$2;-><init>(Lcom/haima/hmcp/business/WsMessageManager;Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 p1, 0x7d0

    .line 11
    .line 12
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method private sendWsMessageCountDown(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WsMessageManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "====sendWsMessageCountDown====="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/haima/hmcp/business/WsMessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/haima/hmcp/business/WsMessageManager;->countDownMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 35
    .line 36
    iget-object v2, p1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1, v0, v2}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/haima/hmcp/business/WsMessageManager$1;

    .line 42
    .line 43
    const-wide/16 v5, 0x2710

    .line 44
    .line 45
    const-wide/16 v7, 0x2710

    .line 46
    .line 47
    move-object v3, v0

    .line 48
    move-object v4, p0

    .line 49
    move-object v9, p1

    .line 50
    invoke-direct/range {v3 .. v9}, Lcom/haima/hmcp/business/WsMessageManager$1;-><init>(Lcom/haima/hmcp/business/WsMessageManager;JJLcom/haima/hmcp/beans/WsMessage;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/haima/hmcp/business/WsMessageManager;->countDownMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/16 v2, 0x64

    .line 60
    .line 61
    if-ge v1, v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/haima/hmcp/business/WsMessageManager;->countDownMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    iget-object v2, p1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    iget-object p1, p1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void

    .line 85
    :cond_2
    :goto_0
    const-string p1, "====mWebSocketManager or countDownMap == null ===="

    .line 86
    .line 87
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private sendWsMessageNormal(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WsMessageManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "====sendWsMessageNormal====="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "===sendWsMessageNormal success====mid="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "=payload="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v0, "12902"

    .line 72
    .line 73
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Lcom/haima/hmcp/listeners/OnSendWsMessageListener;->sendWsMessageSuccess()V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method private sendWsMessageRetry(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WsMessageManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "====sendWsMessage====="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/haima/hmcp/business/WsMessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v1, v2, v3}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/WsMessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v2, p1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/haima/hmcp/beans/FutureCount;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget v2, v1, Lcom/haima/hmcp/beans/FutureCount;->count:I

    .line 51
    .line 52
    const/4 v3, 0x3

    .line 53
    if-lt v2, v3, :cond_1

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "tried 3 times, stop sending messageId\uff1a"

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    iget-object p1, p1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0, p2, p1}, Lcom/haima/hmcp/business/WsMessageManager;->removeSendWsMessage(ZLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    iput v2, v1, Lcom/haima/hmcp/beans/FutureCount;->count:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance v1, Lcom/haima/hmcp/beans/FutureCount;

    .line 90
    .line 91
    invoke-direct {v1}, Lcom/haima/hmcp/beans/FutureCount;-><init>()V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/WsMessageManager;->resendMessage(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)Ljava/util/concurrent/Future;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, v1, Lcom/haima/hmcp/beans/FutureCount;->future:Ljava/util/concurrent/Future;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/16 v2, 0x64

    .line 107
    .line 108
    if-ge v0, v2, :cond_3

    .line 109
    .line 110
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    .line 112
    iget-object v2, p1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    if-eqz p2, :cond_3

    .line 122
    .line 123
    iget-object p1, p1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_3
    return-void
.end method


# virtual methods
.method public cancelCountDownTimer(ZLjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WsMessageManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "====sendWsMessageCountDown====cancelCountDownTimer===mid="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->countDownMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->countDownMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/haima/hmcp/listeners/OnSendWsMessageListener;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/OnSendWsMessageListener;->sendWsMessageSuccess()V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v0, "===sendWsMessageCountDown success====mid="

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v0, "12902"

    .line 98
    .line 99
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_message_send_fail:I

    .line 104
    .line 105
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnSendWsMessageListener;->sendWsMessageFail(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v0, "===sendWsMessageCountDown failure====mid="

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string v0, "12903"

    .line 138
    .line 139
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :cond_3
    return-void
.end method

.method protected getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->jsonMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->jsonMap:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "message"

    .line 9
    .line 10
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->jsonMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public notifyResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cid"

    .line 2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bid"

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mid"

    .line 4
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "code"

    const/16 p2, 0x3e8

    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "message"

    const-string p2, "received intent data"

    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string p2, "intent"

    .line 7
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    if-eqz p1, :cond_0

    .line 10
    sget-object p1, Lcom/haima/hmcp/business/WsMessageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "====sendWsMessage====="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    sget-object p2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cid"

    .line 13
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bid"

    .line 14
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mid"

    .line 15
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "code"

    const/16 p2, 0x3e8

    .line 16
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 17
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    .line 18
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    if-eqz p1, :cond_0

    .line 21
    sget-object p1, Lcom/haima/hmcp/business/WsMessageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "====sendWsMessage====="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    sget-object p2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeSendWsMessage(ZLjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WsMessageManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "====sendWsMessage====removeSendWsMessage===mid="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/haima/hmcp/beans/FutureCount;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/haima/hmcp/beans/FutureCount;->future:Ljava/util/concurrent/Future;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/haima/hmcp/listeners/OnSendWsMessageListener;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v1, "===sendWsMessageRetry success====mid="

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v1, "12902"

    .line 99
    .line 100
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/OnSendWsMessageListener;->sendWsMessageSuccess()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v1, "===sendWsMessageRetry failure====mid="

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string v1, "12903"

    .line 129
    .line 130
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_message_send_fail:I

    .line 134
    .line 135
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnSendWsMessageListener;->sendWsMessageFail(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_3
    return-void
.end method

.method public sendWsMessage(Lcom/haima/hmcp/beans/BaseWsMessage;Lcom/haima/hmcp/enums/WsMessageType;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
    .locals 3

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_parameter_error:I

    .line 6
    .line 7
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p3, p1}, Lcom/haima/hmcp/listeners/OnSendWsMessageListener;->sendWsMessageFail(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/BaseWsMessage;->dataIsValid()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    sget-object p2, Lcom/haima/hmcp/business/WsMessageManager;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "====sendWsMessage===== parameter is not valid"

    .line 28
    .line 29
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz p3, :cond_2

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "12903"

    .line 58
    .line 59
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_parameter_error:I

    .line 63
    .line 64
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p3, p1}, Lcom/haima/hmcp/listeners/OnSendWsMessageListener;->sendWsMessageFail(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void

    .line 76
    :cond_3
    sget-object v0, Lcom/haima/hmcp/enums/WsMessageType;->CAP_SCREEN_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 77
    .line 78
    if-ne p2, v0, :cond_4

    .line 79
    .line 80
    iget-object v1, p1, Lcom/haima/hmcp/beans/BaseWsMessage;->data:Ljava/lang/Object;

    .line 81
    .line 82
    instance-of v1, v1, Lcom/haima/hmcp/beans/CapScreenData;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    new-instance v1, Lcom/haima/hmcp/beans/WsMessage;

    .line 87
    .line 88
    invoke-direct {v1}, Lcom/haima/hmcp/beans/WsMessage;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseWsMessage;->data:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lcom/haima/hmcp/beans/CapScreenData;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CapScreenData;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, v1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    new-instance v1, Lcom/haima/hmcp/beans/WsMessage;

    .line 103
    .line 104
    invoke-direct {v1}, Lcom/haima/hmcp/beans/WsMessage;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iput-object v2, v1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseWsMessage;->mid:Ljava/lang/String;

    .line 114
    .line 115
    iput-object p1, v1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 116
    .line 117
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v2, "===sendWsMessage  send====mid="

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v2, v1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "==payload=="

    .line 133
    .line 134
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v2, v1, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v2}, Lcom/haima/hmcp/utils/StringUtils;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/WsMessageManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string v2, "12901"

    .line 155
    .line 156
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Lcom/haima/hmcp/enums/WsMessageType;->INTENT_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 160
    .line 161
    if-eq p2, p1, :cond_8

    .line 162
    .line 163
    sget-object p1, Lcom/haima/hmcp/enums/WsMessageType;->UPDATE_VIEW_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 164
    .line 165
    if-eq p2, p1, :cond_8

    .line 166
    .line 167
    sget-object p1, Lcom/haima/hmcp/enums/WsMessageType;->MISC_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 168
    .line 169
    if-ne p2, p1, :cond_5

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    sget-object p1, Lcom/haima/hmcp/enums/WsMessageType;->GPS_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 173
    .line 174
    if-eq p2, p1, :cond_7

    .line 175
    .line 176
    if-ne p2, v0, :cond_6

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    sget-object p1, Lcom/haima/hmcp/enums/WsMessageType;->CLIPBOARD_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 180
    .line 181
    if-ne p2, p1, :cond_9

    .line 182
    .line 183
    invoke-direct {p0, v1, p3}, Lcom/haima/hmcp/business/WsMessageManager;->sendWsMessageCountDown(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_7
    :goto_1
    invoke-direct {p0, v1, p3}, Lcom/haima/hmcp/business/WsMessageManager;->sendWsMessageNormal(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_8
    :goto_2
    invoke-direct {p0, v1, p3}, Lcom/haima/hmcp/business/WsMessageManager;->sendWsMessageRetry(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V

    .line 192
    .line 193
    .line 194
    :cond_9
    :goto_3
    return-void
.end method

.method public stopRetrySendWsMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/business/WsMessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager;->countDownMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.class public Lcom/haima/hmcp/business/MessageManager;
.super Lcom/haima/hmcp/business/BaseManager;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/IMessage;


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageManager"


# instance fields
.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

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
            "Lcom/haima/hmcp/listeners/OnSendMessageListener;",
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
    iput-object p1, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/haima/hmcp/business/MessageManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/haima/hmcp/business/MessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/business/MessageManager;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/business/MessageManager;->sendMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private resendMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)Ljava/util/concurrent/Future;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/haima/hmcp/business/MessageManager$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/haima/hmcp/business/MessageManager$1;-><init>(Lcom/haima/hmcp/business/MessageManager;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 p1, 0x7d0

    .line 11
    .line 12
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

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

.method private sendMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V
    .locals 4

    .line 24
    sget-object v0, Lcom/haima/hmcp/business/MessageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "socketType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_4

    .line 26
    iget-object v2, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haima/hmcp/beans/FutureCount;

    if-eqz v1, :cond_2

    .line 27
    iget v2, v1, Lcom/haima/hmcp/beans/FutureCount;->count:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tried three times,stop sending messageId\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/business/MessageManager;->removeSendMessage(ZLcom/haima/hmcp/beans/Message;)V

    const/4 p1, 0x5

    .line 30
    iget p3, p2, Lcom/haima/hmcp/beans/Message;->type:I

    if-ne p1, p3, :cond_0

    iget-object p1, p2, Lcom/haima/hmcp/beans/Message;->payload:Ljava/lang/String;

    invoke-static {p1}, Lcom/haima/hmcp/utils/Utils;->checkIsVirtualGamePadPullPayMessage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    new-instance p1, Lcom/haima/hmcp/beans/report/ReportVirtualGamePadPayPullResult;

    iget-object p2, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    const-string p3, "tried three times,stop sending"

    invoke-direct {p1, p2, p3}, Lcom/haima/hmcp/beans/report/ReportVirtualGamePadPayPullResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "14203"

    .line 32
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    iput v2, v1, Lcom/haima/hmcp/beans/FutureCount;->count:I

    goto :goto_0

    .line 34
    :cond_2
    new-instance v1, Lcom/haima/hmcp/beans/FutureCount;

    invoke-direct {v1}, Lcom/haima/hmcp/beans/FutureCount;-><init>()V

    .line 35
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/business/MessageManager;->resendMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 36
    iput-object v2, v1, Lcom/haima/hmcp/beans/FutureCount;->future:Ljava/util/concurrent/Future;

    .line 37
    iget-object v2, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    .line 38
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 40
    iget-object v1, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string p3, "messageFutureMap size big than max count"

    .line 41
    invoke-static {v0, p3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/haima/hmcp/business/MessageManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    if-eqz p3, :cond_5

    .line 43
    invoke-static {p2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public removeSendMessage(Lcom/haima/hmcp/beans/Message;)Lcom/haima/hmcp/listeners/OnSendMessageListener;
    .locals 3

    .line 11
    sget-object v0, Lcom/haima/hmcp/business/MessageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/beans/FutureCount;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, v0, Lcom/haima/hmcp/beans/FutureCount;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/listeners/OnSendMessageListener;

    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeSendMessage(ZLcom/haima/hmcp/beans/Message;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/MessageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageResult-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/beans/FutureCount;

    .line 4
    iget-object v0, v0, Lcom/haima/hmcp/beans/FutureCount;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/listeners/OnSendMessageListener;

    .line 9
    iget-object v1, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/haima/hmcp/listeners/OnSendMessageListener;->result(ZLjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, p2, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/enums/MessageType;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V
    .locals 5

    if-nez p5, :cond_0

    .line 1
    sget-object p1, Lcom/haima/hmcp/business/MessageManager;->TAG:Ljava/lang/String;

    const-string p2, "listener is null"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/haima/hmcp/enums/MessageType;->SYSTEM_TYPE:Lcom/haima/hmcp/enums/MessageType;

    const-string v1, ""

    const/4 v2, 0x0

    if-ne p4, v0, :cond_1

    .line 3
    sget-object p1, Lcom/haima/hmcp/business/MessageManager;->TAG:Ljava/lang/String;

    const-string p2, "Application can not send system message"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p5, v2, v1}, Lcom/haima/hmcp/listeners/OnSendMessageListener;->result(ZLjava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 6
    :cond_2
    sget-object v0, Lcom/haima/hmcp/business/MessageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPayMessage == >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "==type=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/haima/hmcp/beans/Message;

    invoke-direct {v0}, Lcom/haima/hmcp/beans/Message;-><init>()V

    .line 8
    iput-object p2, v0, Lcom/haima/hmcp/beans/Message;->from:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/haima/hmcp/beans/Message;->to:Ljava/lang/String;

    .line 10
    iput-object p1, v0, Lcom/haima/hmcp/beans/Message;->payload:Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/haima/hmcp/beans/Message;->mid:Ljava/lang/String;

    .line 12
    iput-object p3, v0, Lcom/haima/hmcp/beans/Message;->uid:Ljava/lang/String;

    .line 13
    iput v2, v0, Lcom/haima/hmcp/beans/Message;->ack:I

    .line 14
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v0, Lcom/haima/hmcp/beans/Message;->type:I

    .line 15
    sget-object p1, Lcom/haima/hmcp/enums/MessageType;->TYPE_VIRTUAL_GAME_PAD:Lcom/haima/hmcp/enums/MessageType;

    if-ne p4, p1, :cond_3

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "v_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/haima/hmcp/beans/Message;->to:Ljava/lang/String;

    const/4 p1, 0x5

    .line 17
    iput p1, v0, Lcom/haima/hmcp/beans/Message;->type:I

    .line 18
    :cond_3
    sget-object p1, Lcom/haima/hmcp/enums/MessageType;->TRANSFER:Lcom/haima/hmcp/enums/MessageType;

    if-ne p1, p4, :cond_4

    .line 19
    sget-object p1, Lcom/haima/hmcp/enums/MessageType;->PAY_TYPE:Lcom/haima/hmcp/enums/MessageType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v0, Lcom/haima/hmcp/beans/Message;->type:I

    .line 20
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_TRANSFER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    invoke-direct {p0, p1, v0, p5}, Lcom/haima/hmcp/business/MessageManager;->sendMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V

    goto :goto_0

    .line 21
    :cond_4
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    invoke-direct {p0, p1, v0, p5}, Lcom/haima/hmcp/business/MessageManager;->sendMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V

    :goto_0
    return-void

    .line 22
    :cond_5
    :goto_1
    sget-object p1, Lcom/haima/hmcp/business/MessageManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "uid or cId empty.cId:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {p5, v2, v1}, Lcom/haima/hmcp/listeners/OnSendMessageListener;->result(ZLjava/lang/String;)V

    return-void
.end method

.method public stopRetrySendMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->sendListenerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->messageFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/business/MessageManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

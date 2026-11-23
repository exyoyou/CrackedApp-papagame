.class public Lcom/cloudplay/messagesdk/socket/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloudplay/messagesdk/listener/SendListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloudplay/messagesdk/entity/FutureCount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/cloudplay/messagesdk/socket/b/d;

.field private b:Lcom/cloudplay/messagesdk/socket/b/d;

.field private c:Lcom/cloudplay/messagesdk/socket/SocketType;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/Future;

.field private g:Ljava/util/concurrent/Future;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

.field private k:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloudplay/messagesdk/socket/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloudplay/messagesdk/socket/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/a;->h:Z

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/b/d;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    return-object p0
.end method

.method private synthetic a(Lcom/cloudplay/messagesdk/entity/HMTxtMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/entity/HMMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloudplay/messagesdk/socket/a;Lcom/cloudplay/messagesdk/entity/HMTxtMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/entity/HMTxtMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/a;ZLjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/socket/a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/cloudplay/messagesdk/socket/b/h/b;)V
    .locals 0

    .line 2
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSendMessage() sendMessageResult-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/cloudplay/messagesdk/socket/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloudplay/messagesdk/entity/FutureCount;

    .line 41
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/entity/FutureCount;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 42
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 43
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    sget-object v0, Lcom/cloudplay/messagesdk/socket/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloudplay/messagesdk/listener/SendListener;

    .line 46
    invoke-static {p1, p2, v1}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    .line 47
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/a;->j:Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    return-object p0
.end method

.method private b(Lcom/cloudplay/messagesdk/entity/HMTxtMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)Ljava/util/concurrent/Future;
    .locals 4

    .line 24
    invoke-static {}, Lcom/cloudplay/messagesdk/a/i;->b()Lcom/cloudplay/messagesdk/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/a/i;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/cloudplay/messagesdk/socket/b;-><init>(Lcom/cloudplay/messagesdk/socket/a;Lcom/cloudplay/messagesdk/entity/HMTxtMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    return-object p0
.end method

.method static synthetic d(Lcom/cloudplay/messagesdk/socket/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/a;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectLocalWSServer() mCurSocketType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/a;->h:Z

    .line 50
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v0

    sget-object v2, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    const-string v0, "connectLocalWSServer() mCurSocketType not match"

    .line 51
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectLocalWSServer() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "channelType"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "address"

    const-string v4, "ws://127.0.0.1:7682/token?proto=1&act=0&cli=m_master-2.4.0-cdfca6c7"

    .line 58
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object v3

    const-string v5, "4010"

    invoke-virtual {v3, v5, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/socket/b/h/b;-><init>()V

    const/16 v3, 0xfa

    .line 61
    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->d(I)V

    const/4 v3, 0x5

    .line 62
    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->a(I)V

    .line 63
    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->b(I)V

    const/4 v3, 0x3

    .line 64
    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->c(I)V

    .line 65
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/a;->k:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->a(Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;)V

    .line 66
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/b/h/b;)V

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Z)V

    .line 68
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    new-instance v5, Lcom/cloudplay/messagesdk/socket/a$a;

    invoke-direct {v5, p0, v2}, Lcom/cloudplay/messagesdk/socket/a$a;-><init>(Lcom/cloudplay/messagesdk/socket/a;Lcom/cloudplay/messagesdk/socket/SocketType;)V

    invoke-virtual {v3, v4, v5, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->connect(Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;Lcom/cloudplay/messagesdk/socket/b/h/b;)V
    :try_end_0
    .catch Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectLocalWSServer() e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/cloudplay/messagesdk/entity/HMMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V
    .locals 8

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLinkMessage() mCurSocketType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    instance-of v0, p1, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    if-eqz v0, :cond_5

    .line 7
    check-cast p1, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    .line 8
    invoke-static {p1}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v2

    sget-object v3, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    const-string v2, "sendLinkMessage() send Link MSG"

    .line 10
    invoke-static {v1, v2}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cloudplay/messagesdk/socket/a;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-gez v7, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getPayload()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/a;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLinkMessage() same payload in 200ms :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "same payload in 200ms"

    invoke-static {v2, v6, v6, v3}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cloudplay/messagesdk/socket/a;->d:J

    .line 17
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getPayload()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloudplay/messagesdk/socket/a;->e:Ljava/lang/String;

    .line 18
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    if-eqz v2, :cond_4

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLinkMessage() send :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-virtual {v2, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->sendMessage(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/cloudplay/messagesdk/socket/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    if-eqz p2, :cond_1

    .line 22
    sget-object v2, Lcom/cloudplay/messagesdk/socket/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloudplay/messagesdk/entity/FutureCount;

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 24
    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/entity/FutureCount;->getCount()I

    move-result v5

    const/4 v7, 0x2

    if-lt v5, v7, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RETRY_SEND_MESSAGE_COUNT"

    invoke-static {p2, v6, v6, v0}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/cloudplay/messagesdk/socket/a;->a(ZLjava/lang/String;)V

    return-void

    .line 27
    :cond_2
    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/entity/FutureCount;->getCount()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Lcom/cloudplay/messagesdk/entity/FutureCount;->setCount(I)V

    goto :goto_0

    .line 28
    :cond_3
    new-instance v2, Lcom/cloudplay/messagesdk/entity/FutureCount;

    invoke-direct {v2}, Lcom/cloudplay/messagesdk/entity/FutureCount;-><init>()V

    .line 29
    invoke-virtual {v2, v4}, Lcom/cloudplay/messagesdk/entity/FutureCount;->setCount(I)V

    .line 30
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/entity/HMTxtMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 31
    invoke-virtual {v2, p2}, Lcom/cloudplay/messagesdk/entity/FutureCount;->setFuture(Ljava/util/concurrent/Future;)V

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    if-ge p2, v3, :cond_5

    .line 33
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 34
    :cond_4
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mLinkSocket is NULL"

    invoke-static {p1, v6, v6, p2}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    const-string p1, "sendLinkMessage() mLinkSocket is NULL "

    .line 35
    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendLinkMessage() e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnWebSocketListener() listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/a;->j:Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    return-void
.end method

.method public a(Lcom/cloudplay/messagesdk/socket/SocketType;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSocketConnect() socketType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 103
    :cond_0
    sget-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    if-ne p1, v0, :cond_1

    .line 104
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/a;->g:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_1

    .line 105
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public a(Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageHandleObserveOn() schedulerType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/a;->k:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectLink() url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectLink() curSocketType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v0

    sget-object v2, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    const-string p1, "connectLink() mCurSocketType not match"

    .line 73
    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectLink() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " connected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_2
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/socket/b/h/b;-><init>()V

    const/16 v3, 0xfa

    .line 79
    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->d(I)V

    const/4 v3, 0x5

    .line 80
    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->a(I)V

    .line 81
    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->b(I)V

    const/4 v3, 0x3

    .line 82
    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->c(I)V

    .line 83
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/a;->k:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    invoke-virtual {v0, v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->a(Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/b/h/b;)V

    .line 85
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 86
    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "channelType"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "address"

    .line 87
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object v4

    const-string v6, "4010"

    invoke-virtual {v4, v6, v3}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    :try_start_0
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/a;->i:Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Z)V

    .line 91
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    new-instance v4, Lcom/cloudplay/messagesdk/socket/a$b;

    invoke-direct {v4, p0, v2}, Lcom/cloudplay/messagesdk/socket/a$b;-><init>(Lcom/cloudplay/messagesdk/socket/a;Lcom/cloudplay/messagesdk/socket/SocketType;)V

    invoke-virtual {v3, p1, v4, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->connect(Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;Lcom/cloudplay/messagesdk/socket/b/h/b;)V
    :try_end_0
    .catch Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    sget-object v1, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMSG"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object p1

    const-string v1, "4012"

    invoke-virtual {p1, v1, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public b()Lcom/cloudplay/messagesdk/socket/SocketType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    return-object v0
.end method

.method public b(Lcom/cloudplay/messagesdk/entity/HMMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendWSServerMessage() mCurSocketType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    instance-of v0, p1, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    .line 5
    invoke-static {p1}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v4, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v4}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v4

    sget-object v5, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v5}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v6

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    .line 7
    iget-object v4, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getAck()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-virtual {v2, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->sendMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloudplay/messagesdk/socket/b/d;->sendMessage(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    if-ne v0, v5, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getMid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mWsServerSocket is NULL"

    invoke-static {p1, v2, v2, p2}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    const-string p1, "sendWSServerMessage() mWsServerSocket is NULL "

    .line 14
    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_2
    instance-of v0, p1, Lcom/cloudplay/messagesdk/entity/HMBinaryMessage;

    if-eqz v0, :cond_4

    .line 16
    check-cast p1, Lcom/cloudplay/messagesdk/entity/HMBinaryMessage;

    .line 17
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v0

    sget-object v4, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v4}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v4

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMBinaryMessage;->getPayload()[B

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/cloudplay/messagesdk/socket/b/d;->sendMessage([BZ)V

    .line 20
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMBinaryMessage;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    goto :goto_1

    :cond_3
    const-string v0, "sendWSServerMessage() current socket type unsupported"

    .line 21
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMBinaryMessage;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendWSServerMessage() e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Lcom/cloudplay/messagesdk/socket/SocketType;)V
    .locals 7

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduledSocketConnect() socketType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mIsStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 29
    sget-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    if-ne p1, v0, :cond_1

    .line 30
    invoke-static {}, Lcom/cloudplay/messagesdk/a/i;->b()Lcom/cloudplay/messagesdk/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/a/i;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cloudplay/messagesdk/socket/a$c;

    invoke-direct {v1, p0}, Lcom/cloudplay/messagesdk/socket/a$c;-><init>(Lcom/cloudplay/messagesdk/socket/a;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/a;->f:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    if-ne p1, v0, :cond_2

    .line 32
    invoke-static {}, Lcom/cloudplay/messagesdk/a/i;->b()Lcom/cloudplay/messagesdk/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/a/i;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cloudplay/messagesdk/socket/a$d;

    invoke-direct {v1, p0}, Lcom/cloudplay/messagesdk/socket/a$d;-><init>(Lcom/cloudplay/messagesdk/socket/a;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/a;->g:Ljava/util/concurrent/Future;

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Lcom/cloudplay/messagesdk/socket/b/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    return-object v0
.end method

.method public c(Lcom/cloudplay/messagesdk/socket/SocketType;)V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurSocketType() curSocketType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/a;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 5
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "channelCFG"

    invoke-virtual {v0, v1, p1}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Lcom/cloudplay/messagesdk/socket/b/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

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

.method public f()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "stop() mIsStop:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/a;->h:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "WebSocketManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/a;->h:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/a;->h:Z

    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 44
    .line 45
    const-string v2, "stop() mName:"

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->b()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a()V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->b()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->sendClose()V

    .line 121
    .line 122
    .line 123
    :cond_2
    return-void
.end method

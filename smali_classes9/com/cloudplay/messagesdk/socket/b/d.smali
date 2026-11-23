.class public Lcom/cloudplay/messagesdk/socket/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/socket/b/d$f;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private final C:Ljava/lang/Runnable;

.field private final D:Ljava/lang/Runnable;

.field private final E:Ljava/lang/Runnable;

.field private a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

.field private b:Lcom/cloudplay/messagesdk/socket/b/f;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/cloudplay/messagesdk/socket/b/a;

.field private e:Ljava/io/BufferedOutputStream;

.field private f:Ljava/net/Socket;

.field private g:Ljava/net/URI;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

.field private p:Lcom/cloudplay/messagesdk/socket/b/h/b;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/util/concurrent/ScheduledExecutorService;

.field private v:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private w:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private x:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private y:I

.field private z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->t:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->y:I

    .line 8
    .line 9
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/d$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/cloudplay/messagesdk/socket/b/d$a;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->C:Ljava/lang/Runnable;

    .line 15
    .line 16
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/d$b;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/cloudplay/messagesdk/socket/b/d$b;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->D:Ljava/lang/Runnable;

    .line 22
    .line 23
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/d$c;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/cloudplay/messagesdk/socket/b/d$c;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->E:Ljava/lang/Runnable;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ","

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "WebSocketConnection() create:"

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v1, "WebSocketConnection"

    .line 76
    .line 77
    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->g()V

    .line 81
    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->q:Z

    .line 84
    .line 85
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->r:Z

    .line 86
    .line 87
    return-void
.end method

.method static synthetic A(Lcom/cloudplay/messagesdk/socket/b/d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->A:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic B(Lcom/cloudplay/messagesdk/socket/b/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic D(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->l()V

    return-void
.end method

.method public static synthetic E(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->k()V

    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;I)I
    .locals 0

    .line 12
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->y:I

    return p1
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->z:J

    return-wide p1
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    return-object p0
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .line 35
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->f:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->u:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->w:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failConnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",fail connection [code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Z)V

    .line 15
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->f()V

    .line 16
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    move-result v0

    const-string v2, "failConnection() "

    if-eqz v0, :cond_0

    .line 17
    :try_start_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->e()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failConnection() e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",Socket already closed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Z)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/socket/b/d;->b(ILjava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",Worker threads stopped"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;ILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/socket/b/d;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;Lcom/cloudplay/messagesdk/socket/b/g/g;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/net/Socket;[Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Ljava/net/Socket;[Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/d$e;

    invoke-direct {v1, p0, p1}, Lcom/cloudplay/messagesdk/socket/b/d$e;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 5

    .line 37
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/i;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/i;

    .line 39
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->o:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->y:I

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAppMessage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ping-Debug PingError send SEND_PING_FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebSocketConnection"

    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->q:Z

    .line 42
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v3, Lcom/cloudplay/messagesdk/socket/b/g/d;

    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/i;->a:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-direct {v3, v4, p1}, Lcom/cloudplay/messagesdk/socket/b/g/d;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",PingPongTimeout Notify_COSE_RECONNECT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/net/Socket;[Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/d;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/socket/b/d;J)J
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->A:J

    return-wide p1
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->x:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private b(ILjava/lang/String;)V
    .locals 6

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClose(code,reason) code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->m()Z

    move-result v0

    .line 14
    :goto_1
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->v:Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 16
    :cond_2
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->w:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_3

    .line 17
    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    :cond_3
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->x:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_4

    .line 19
    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 20
    :cond_4
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->u:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_5

    .line 21
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v3, 0x0

    .line 22
    iput-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    :cond_5
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    invoke-interface {v3}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->cleanup()V

    .line 24
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->o:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    const-string v5, "onClose(code,reason) "

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    .line 25
    :try_start_0
    invoke-interface {v3, p1, p2}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onClose(ILjava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_6
    invoke-interface {v3, p1, p2}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onClose(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",mWsHandler already NULL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_2
    iput-boolean v4, p0, Lcom/cloudplay/messagesdk/socket/b/d;->s:Z

    .line 30
    iput v2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->y:I

    return-void
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/socket/b/d;ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(ILjava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->b:Lcom/cloudplay/messagesdk/socket/b/f;

    const-string v1, "WebSocketConnection"

    const-string v2, "closeReaderThread() "

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/f;->a()V

    if-eqz p1, :cond_1

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->b:Lcom/cloudplay/messagesdk/socket/b/f;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mReader already NULL."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/socket/b/d;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->f:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic c(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->v:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic c(Lcom/cloudplay/messagesdk/socket/b/d;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Z)V

    return-void
.end method

.method static synthetic d(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Z)V

    .line 3
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->f()V

    .line 4
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->e()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeAndCleanup() e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebSocketConnection"

    invoke-static {v2, v1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 7
    invoke-direct {p0, v1}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Z)V

    .line 8
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->s:Z

    return-void
.end method

.method static synthetic e(Lcom/cloudplay/messagesdk/socket/b/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->j:I

    return p0
.end method

.method private e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/h;

    invoke-direct {v1, p0}, Lcom/cloudplay/messagesdk/socket/b/h;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v1, 0xbb8

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method private f()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeWriterThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->h()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 2
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/i/a;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/socket/b/i/a;-><init>()V

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 3
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->i()Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->messageHandleObserverOn(Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/d$d;

    invoke-direct {v1, p0}, Lcom/cloudplay/messagesdk/socket/b/d$d;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;)V

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->setOnMessageListener(Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;)V

    return-void
.end method

.method static synthetic g(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->i()V

    return-void
.end method

.method static synthetic h(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->k:Ljava/lang/String;

    return-object p0
.end method

.method private h()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/f;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->f:Ljava/net/Socket;

    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",WebSocketReader,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cloudplay/messagesdk/socket/b/f;-><init>(Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;Ljava/net/Socket;Lcom/cloudplay/messagesdk/socket/b/h/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->b:Lcom/cloudplay/messagesdk/socket/b/f;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createReader() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",WS reader created and started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->l:Ljava/lang/String;

    return-object p0
.end method

.method private i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->f:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/b/h/b;->e()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->e:Ljava/io/BufferedOutputStream;

    .line 4
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/a;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-direct {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/a;-><init>(Lcom/cloudplay/messagesdk/socket/b/h/b;)V

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->d:Lcom/cloudplay/messagesdk/socket/b/a;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWriter() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",WS writer created and started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->u:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->u:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic j(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->w:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method private synthetic k()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeUnderlyingSocket() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/cloudplay/messagesdk/socket/b/d;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->m:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->n:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic l()V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleReconnect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Reconnecting..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->c()Z

    return-void
.end method

.method static synthetic m(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->x:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method private m()Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/h/b;->h()I

    move-result v0

    .line 3
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->q:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->r:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleReconnect() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",Reconnection scheduled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebSocketConnection"

    invoke-static {v3, v2}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v3, Lcom/cloudplay/messagesdk/socket/b/g;

    invoke-direct {v3, p0}, Lcom/cloudplay/messagesdk/socket/b/g;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;)V

    int-to-long v4, v0

    invoke-interface {v2, v3, v4, v5}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return v1
.end method

.method static synthetic n(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->C:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/cloudplay/messagesdk/socket/b/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->o:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/cloudplay/messagesdk/socket/b/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->E:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->D:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->d:Lcom/cloudplay/messagesdk/socket/b/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->e:Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->j()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic y(Lcom/cloudplay/messagesdk/socket/b/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->y:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lcom/cloudplay/messagesdk/socket/b/d;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->y:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->y:I

    .line 6
    .line 7
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->v:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->w:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->x:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 28
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 29
    :cond_2
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->d()V

    .line 30
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->u:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    .line 31
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    invoke-interface {v0}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->cleanup()V

    .line 34
    iput-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->s:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->t:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->s:Z

    .line 6
    iput v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->y:I

    .line 7
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/d$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cloudplay/messagesdk/socket/b/d$f;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;Lcom/cloudplay/messagesdk/socket/b/d$a;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public connect(Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/cloudplay/messagesdk/socket/b/d;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;Lcom/cloudplay/messagesdk/socket/b/h/b;Ljava/util/Map;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;Lcom/cloudplay/messagesdk/socket/b/h/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/cloudplay/messagesdk/socket/b/d;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;Lcom/cloudplay/messagesdk/socket/b/h/b;Ljava/util/Map;)V

    return-void
.end method

.method public connect(Ljava/lang/String;[Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;
        }
    .end annotation

    .line 3
    new-instance v4, Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-direct {v4}, Lcom/cloudplay/messagesdk/socket/b/h/b;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cloudplay/messagesdk/socket/b/d;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;Lcom/cloudplay/messagesdk/socket/b/h/b;Ljava/util/Map;)V

    return-void
.end method

.method public connect(Ljava/lang/String;[Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;Lcom/cloudplay/messagesdk/socket/b/h/b;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;",
            "Lcom/cloudplay/messagesdk/socket/b/h/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;
        }
    .end annotation

    const-string v0, "ws"

    .line 4
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    move-result v1

    if-nez v1, :cond_c

    .line 5
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    .line 6
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->h:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->h:Ljava/lang/String;

    const-string v1, "wss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x50

    .line 10
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->j:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x1bb

    .line 11
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->j:I

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->j:I

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 14
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->i:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p1, :cond_4

    :try_start_1
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->k:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "/"

    .line 17
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->k:Ljava/lang/String;

    .line 18
    :goto_2
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->g:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->l:Ljava/lang/String;

    goto :goto_4

    .line 20
    :cond_6
    :goto_3
    iput-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    :goto_4
    iput-object p2, p0, Lcom/cloudplay/messagesdk/socket/b/d;->m:[Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/cloudplay/messagesdk/socket/b/d;->n:Ljava/util/Map;

    .line 23
    iput-object p3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->o:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 24
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    if-nez p1, :cond_8

    if-nez p4, :cond_7

    .line 25
    new-instance p1, Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-direct {p1}, Lcom/cloudplay/messagesdk/socket/b/h/b;-><init>()V

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    goto :goto_5

    .line 26
    :cond_7
    new-instance p1, Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-direct {p1, p4}, Lcom/cloudplay/messagesdk/socket/b/h/b;-><init>(Lcom/cloudplay/messagesdk/socket/b/h/b;)V

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    goto :goto_5

    :cond_8
    if-eqz p4, :cond_9

    .line 27
    new-instance p1, Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-direct {p1, p4}, Lcom/cloudplay/messagesdk/socket/b/h/b;-><init>(Lcom/cloudplay/messagesdk/socket/b/h/b;)V

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->p:Lcom/cloudplay/messagesdk/socket/b/h/b;

    :cond_9
    :goto_5
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->q:Z

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->s:Z

    .line 30
    new-instance p1, Lcom/cloudplay/messagesdk/socket/b/d$f;

    invoke-direct {p1, p0, v1}, Lcom/cloudplay/messagesdk/socket/b/d$f;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;Lcom/cloudplay/messagesdk/socket/b/d$a;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 31
    :cond_a
    :try_start_2
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",no host specified in WebSocket URI"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_b
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",unsupported scheme for WebSocket URI"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",invalid WebSocket URI"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_c
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isConnected() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

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
    const-string v1, "WebSocketConnection"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->f:Ljava/net/Socket;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->f:Ljava/net/Socket;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0
.end method

.method public sendClose()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendClose() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 2
    invoke-virtual {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->sendClose(I)V

    return-void
.end method

.method public sendClose(I)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendClose(code) code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->sendClose(ILjava/lang/String;)V

    return-void
.end method

.method public sendClose(ILjava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/g/d;

    invoke-direct {v0, p1, p2}, Lcom/cloudplay/messagesdk/socket/b/g/d;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->s:Z

    .line 7
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->q:Z

    .line 8
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->r:Z

    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/g/o;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/socket/b/g/o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    return-void
.end method

.method public sendMessage([BZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/cloudplay/messagesdk/socket/b/g/a;

    invoke-direct {p2, p1}, Lcom/cloudplay/messagesdk/socket/b/g/a;-><init>([B)V

    invoke-direct {p0, p2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/cloudplay/messagesdk/socket/b/g/l;

    invoke-direct {p2, p1}, Lcom/cloudplay/messagesdk/socket/b/g/l;-><init>([B)V

    invoke-direct {p0, p2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    :goto_0
    return-void
.end method

.method public sendPing()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/g/h;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/socket/b/g/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPing() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",WebSocket Ping sent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendPing([B)V
    .locals 1

    .line 3
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/g/h;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/socket/b/g/h;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    return-void
.end method

.method public sendPong()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/g/j;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/socket/b/g/j;-><init>()V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPong() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",WebSocket Pong sent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnection"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendPong([B)V
    .locals 1

    .line 3
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/g/j;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/socket/b/g/j;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendPong(byte[] payload)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",WebSocket Pong sent."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocketConnection"

    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/cloudplay/messagesdk/socket/b/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;

.field private c:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/i/a$a;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, p0, v1, v2}, Lcom/cloudplay/messagesdk/socket/b/i/a$a;-><init>(Lcom/cloudplay/messagesdk/socket/b/i/a;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/i/a;->a:Landroid/os/Handler;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/socket/b/i/a;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/socket/b/i/a;->b:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/a;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/o;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/l;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    return-void
.end method

.method public messageHandleObserverOn(Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/i/a;->c:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    .line 2
    .line 3
    return-void
.end method

.method public notify(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/i/a;->c:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    .line 2
    .line 3
    sget-object v1, Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;->b:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/socket/b/i/a;->a(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/i/a;->b:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;->onMessage(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/i/a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/i/a;->a:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/i/a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnMessageListener(Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/i/a;->b:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;

    .line 2
    .line 3
    return-void
.end method

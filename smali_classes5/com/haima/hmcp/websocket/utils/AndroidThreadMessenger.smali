.class public Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger$1;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger$1;-><init>(Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;->mListener:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public notify(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnMessageListener(Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;->mListener:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;

    .line 2
    .line 3
    return-void
.end method

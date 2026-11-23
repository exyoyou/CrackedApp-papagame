.class Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger$1;->this$0:Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger$1;->this$0:Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;->access$000(Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger$1;->this$0:Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;->access$000(Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;->onMessage(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

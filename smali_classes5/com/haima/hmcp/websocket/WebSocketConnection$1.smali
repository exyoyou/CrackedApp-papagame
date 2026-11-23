.class Lcom/haima/hmcp/websocket/WebSocketConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/websocket/WebSocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$1;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "mHandShakeRunner run()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$1;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$000(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$1;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/haima/hmcp/websocket/messages/CannotConnect;

    .line 20
    .line 21
    const-string v2, "mHandShakeRunner"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/messages/CannotConnect;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

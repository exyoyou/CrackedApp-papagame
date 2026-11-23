.class Lcom/haima/hmcp/websocket/WebSocketConnection$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/websocket/WebSocketConnection;->scheduleReconnect()Z
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
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$7;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ","

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$7;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$7;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "Reconnecting..."

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$7;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->reconnect()Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

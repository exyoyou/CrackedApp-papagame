.class Lcom/haima/hmcp/websocket/WebSocketConnection$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/websocket/WebSocketConnection;->reconnect()Z
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
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$5;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$5;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3402(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$5;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$802(Lcom/haima/hmcp/websocket/WebSocketConnection;I)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$5;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3500(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

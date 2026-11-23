.class public Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;


# instance fields
.field private mConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConnect(Lcom/haima/hmcp/websocket/types/ConnectionResponse;)V
    .locals 0

    return-void
.end method

.method public onHeartBeat(Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMessage([BZ)V
    .locals 0

    .line 2
    return-void
.end method

.method public onOpen()V
    .locals 0

    return-void
.end method

.method public onPing()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;->mConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendPong()V

    return-void
.end method

.method public onPing([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;->mConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    invoke-virtual {v0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendPong([B)V

    return-void
.end method

.method public onPong()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPong([B)V
    .locals 0

    .line 2
    return-void
.end method

.method public setConnection(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;->mConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    return-void
.end method

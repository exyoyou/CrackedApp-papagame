.class public interface abstract Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract connect(Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;Lcom/cloudplay/messagesdk/socket/b/h/b;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/String;[Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/String;[Ljava/lang/String;Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;Lcom/cloudplay/messagesdk/socket/b/h/b;Ljava/util/Map;)V
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
.end method

.method public abstract isConnected()Z
.end method

.method public abstract sendClose()V
.end method

.method public abstract sendClose(I)V
.end method

.method public abstract sendClose(ILjava/lang/String;)V
.end method

.method public abstract sendMessage(Ljava/lang/String;)V
.end method

.method public abstract sendMessage([BZ)V
.end method

.method public abstract sendPing()V
.end method

.method public abstract sendPing([B)V
.end method

.method public abstract sendPong()V
.end method

.method public abstract sendPong([B)V
.end method

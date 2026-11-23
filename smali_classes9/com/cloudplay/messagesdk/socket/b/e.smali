.class public Lcom/cloudplay/messagesdk/socket/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;


# instance fields
.field private a:Lcom/cloudplay/messagesdk/socket/b/d;

.field private b:Lcom/cloudplay/messagesdk/socket/SocketType;


# direct methods
.method public constructor <init>(Lcom/cloudplay/messagesdk/socket/SocketType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/e;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnect(Lcom/cloudplay/messagesdk/socket/b/h/a;)V
    .locals 0

    return-void
.end method

.method public onPing()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPing() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/e;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnectionHandler"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/e;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->sendPong()V

    return-void
.end method

.method public onPing([B)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPine(byte[] payload)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/e;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnectionHandler"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/e;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->sendPong([B)V

    return-void
.end method

.method public onPong()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPone() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/e;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketConnectionHandler"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPong([B)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPong(byte[] payload)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/e;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocketConnectionHandler"

    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConnection(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setConnection() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/e;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "WebSocketConnectionHandler"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/e;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 26
    .line 27
    return-void
.end method

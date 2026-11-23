.class Lcom/cloudplay/messagesdk/socket/a$a;
.super Lcom/cloudplay/messagesdk/socket/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/socket/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/cloudplay/messagesdk/socket/a;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/socket/a;Lcom/cloudplay/messagesdk/socket/SocketType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/cloudplay/messagesdk/socket/b/e;-><init>(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "connectLocalWSServer()->connect()->onClose() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " code:"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ",reason:"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "WebSocketManager"

    .line 41
    .line 42
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0, v1, p1, p2}, Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;->onDisConnect(Lcom/cloudplay/messagesdk/socket/SocketType;ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string p1, "connectLocalWSServer()->connect()->onClose() mOnWebSocketListener is null"

    .line 64
    .line 65
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectLocalWSServer()->connect()->onMessage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",payload:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebSocketManager"

    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;->onMessage(Lcom/cloudplay/messagesdk/socket/SocketType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "connectLocalWSServer()->connect()->onMessage() mOnWebSocketListener is null"

    .line 8
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMessage([BZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectLocalWSServer()->connect()->onMessage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebSocketManager"

    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;->onMessage(Lcom/cloudplay/messagesdk/socket/SocketType;[BZ)V

    goto :goto_0

    :cond_0
    const-string p1, "mOnWebSocketListener is null"

    .line 4
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOpen()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "connectLocalWSServer()->connect()->onOpen() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "WebSocketManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/cloudplay/messagesdk/entity/HMSysAbility;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/entity/HMSysAbility;-><init>()V

    .line 32
    .line 33
    .line 34
    const-wide/16 v3, 0x1

    .line 35
    .line 36
    invoke-virtual {v0, v3, v4}, Lcom/cloudplay/messagesdk/entity/HMSysAbility;->setHm_sys_config_channelType_ability(J)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/b/d;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->sendMessage(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$a;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;->onConnect(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-string v0, "connectLocalWSServer()->connect()->onOpen() mOnWebSocketListener is null"

    .line 71
    .line 72
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

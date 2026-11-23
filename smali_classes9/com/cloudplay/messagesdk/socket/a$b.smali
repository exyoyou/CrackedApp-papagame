.class Lcom/cloudplay/messagesdk/socket/a$b;
.super Lcom/cloudplay/messagesdk/socket/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/socket/a;->a(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

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
    const-string v1, "connectLink()->connect()->onClose()"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

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
    const-string v2, ",code:"

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
    const/4 v0, 0x3

    .line 46
    if-ne p1, v0, :cond_0

    .line 47
    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/a;->c(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/b/d;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->c()Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0, v1, p1, p2}, Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;->onDisConnect(Lcom/cloudplay/messagesdk/socket/SocketType;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-string p1, "connectLink()->connect()->onClose() mOnWebSocketListener is null"

    .line 83
    .line 84
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 9

    const-string v0, "data"

    const-string v1, "operation"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectLink()->connect()->onMessage(msg) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",message:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WebSocketManager"

    invoke-static {v4, v2}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "ack"

    .line 7
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "type"

    .line 8
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mid"

    .line 9
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 10
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {p1, v8, v7}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/a;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-ne v6, v8, :cond_2

    const-string p1, "payload"

    .line 11
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;->onMessage(Lcom/cloudplay/messagesdk/socket/SocketType;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "connectLink()->connect()->onMessage(msg)  mOnWebSocketListener is null"

    .line 14
    invoke-static {v4, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v2, v6, :cond_4

    .line 15
    const-class v2, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    invoke-static {p1, v2}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getPayload()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0xc9

    if-ne v1, p1, :cond_4

    .line 21
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;->onMessage(Lcom/cloudplay/messagesdk/socket/SocketType;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "connectLink()->connect()->onMessage(msg) mOnWebSocketListener is null"

    .line 25
    invoke-static {v4, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectLink()->connect()->onMessage(msg) e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onMessage([BZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectLink()->connect()->onMessage(byte[]) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebSocketManager"

    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;->onMessage(Lcom/cloudplay/messagesdk/socket/SocketType;[BZ)V

    goto :goto_0

    :cond_0
    const-string p1, "connectLink()->connect()->onMessage(byte[])  mOnWebSocketListener is null"

    .line 4
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOpen()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "connectLink()->connect()->onOpen() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

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
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$b;->c:Lcom/cloudplay/messagesdk/socket/a;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/a;)Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;->onConnect(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "connectLink()->connect()->onOpen() mOnWebSocketListener is null"

    .line 48
    .line 49
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.class Lcom/haima/hmcp/business/WebSocketManager$2;
.super Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/WebSocketManager;->connect2InstanceWsServer(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/WebSocketManager;

.field final synthetic val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/WebSocketManager;Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, " timeframe--connectWsServer connect2InstanceWsServer=>onClose=code=>"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "=reason=>"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " isInputStopByUserWsServer = "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/haima/hmcp/business/WebSocketManager;->access$800(Lcom/haima/hmcp/business/WebSocketManager;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$800(Lcom/haima/hmcp/business/WebSocketManager;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-interface {v0, p1, p2, v1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;->onDisconnect(ILjava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$700(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$700(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Lcom/haima/hmcp/listeners/WebSocketObserver;

    .line 109
    .line 110
    if-eqz p2, :cond_2

    .line 111
    .line 112
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 113
    .line 114
    const/4 v1, 0x2

    .line 115
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/WebSocketObserver;->onObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;I)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    return-void
.end method

.method public onHeartBeat(Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;->SEND_PING_SUCCESS:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "ws-server send ping"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$900(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->ping()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " timeframe--connectWsServer connect2InstanceWsServer=>onMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/haima/hmcp/business/WebSocketInstanceType;->SCREEN:Lcom/haima/hmcp/business/WebSocketInstanceType;

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/Utils;->countlyMessage(Lcom/haima/hmcp/business/WebSocketInstanceType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;->onTextMessage(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$700(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$700(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haima/hmcp/listeners/WebSocketObserver;

    if-eqz v1, :cond_3

    .line 12
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    invoke-interface {v1, v2, p1}, Lcom/haima/hmcp/listeners/WebSocketObserver;->onMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onMessage([BZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " timeframe--connectWsServer connect2InstanceWsServer=>onBinaryMessageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;->onMessage([BZ)V

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;->onMessage([BZ)V

    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "timeframe--connect2InstanceWsServer=>onOpen"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;->onConnect(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$700(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$700(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/haima/hmcp/listeners/WebSocketObserver;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    invoke-interface {v1, v2, v3}, Lcom/haima/hmcp/listeners/WebSocketObserver;->onObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method

.method public onPing()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ws-server onPing"

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPing([B)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ws-server onPing::payload"

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPong()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ws-server onPong"

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$2;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$900(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->pong()V

    return-void
.end method

.method public onPong([B)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ws-server onPong::payload"

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

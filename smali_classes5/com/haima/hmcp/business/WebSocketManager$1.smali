.class Lcom/haima/hmcp/business/WebSocketManager$1;
.super Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/WebSocketManager;->connect2Access(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/WebSocketManager;

.field final synthetic val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/WebSocketManager;Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;

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
    .locals 4

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
    const-string v2, "connectToAccessService=>onClose=code=>"

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
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/WebSocketManager;->access$102(Lcom/haima/hmcp/business/WebSocketManager;Z)Z

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, " == onClose current thread=="

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x3

    .line 72
    if-ne p1, v0, :cond_0

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "false "

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v2, "12303"

    .line 92
    .line 93
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;

    .line 97
    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    iget-object v2, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/haima/hmcp/business/WebSocketManager;->access$200(Lcom/haima/hmcp/business/WebSocketManager;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    xor-int/2addr v1, v2

    .line 107
    invoke-interface {v0, p1, p2, v1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;->onDisconnect(ILjava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 111
    .line 112
    const/4 p2, 0x0

    .line 113
    invoke-static {p1, p2}, Lcom/haima/hmcp/business/WebSocketManager;->access$102(Lcom/haima/hmcp/business/WebSocketManager;Z)Z

    .line 114
    .line 115
    .line 116
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$300(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_2

    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$300(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_4

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Ljava/util/Map$Entry;

    .line 154
    .line 155
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Lcom/haima/hmcp/listeners/WebSocketObserver;

    .line 160
    .line 161
    if-eqz p2, :cond_3

    .line 162
    .line 163
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 164
    .line 165
    const/4 v1, 0x2

    .line 166
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/WebSocketObserver;->onObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;I)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_4
    return-void
.end method

.method public onHeartBeat(Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object p2, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;->SEND_PING_FAIL:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const-string v0, "tag:"

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "Ping-Debug mAccessSocket onHeartBeat SEND_PING_FAIL !"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$400(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "13503"

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$400(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/haima/hmcp/business/WebSocketManager;->access$400(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->getTag()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ";mAccessSocket connected:"

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 77
    .line 78
    const/4 p2, 0x1

    .line 79
    invoke-static {p1, p2}, Lcom/haima/hmcp/business/WebSocketManager;->access$102(Lcom/haima/hmcp/business/WebSocketManager;Z)Z

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_0
    const-string p1, "mAccessSocket is null"

    .line 85
    .line 86
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_1
    sget-object p2, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;->SEND_PING_SUCCESS:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    const-string v1, "14004"

    .line 98
    .line 99
    const-string v2, "null"

    .line 100
    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$400(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$400(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->getTag()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p2, ";SEND_PING_SUCCESS"

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$500(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_3

    .line 151
    .line 152
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$500(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCountPlus1()V

    .line 159
    .line 160
    .line 161
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$600(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->ping()V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_4
    sget-object p2, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;->RECEIVE_PANG_SUCCESS:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_7

    .line 178
    .line 179
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 180
    .line 181
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$400(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_5

    .line 186
    .line 187
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$400(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->getPingPongCostTime()J

    .line 194
    .line 195
    .line 196
    move-result-wide p1

    .line 197
    iget-object v2, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 198
    .line 199
    invoke-static {v2}, Lcom/haima/hmcp/business/WebSocketManager;->access$400(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->getTag()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    goto :goto_0

    .line 208
    :cond_5
    const-wide/16 p1, -0x1

    .line 209
    .line 210
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v4, "use time : "

    .line 216
    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v0, ";RECEIVE_PANG_SUCCESS "

    .line 239
    .line 240
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 254
    .line 255
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$500(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-eqz p1, :cond_6

    .line 260
    .line 261
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 262
    .line 263
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$500(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCountPlus1()V

    .line 268
    .line 269
    .line 270
    :cond_6
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 271
    .line 272
    invoke-static {p1}, Lcom/haima/hmcp/business/WebSocketManager;->access$600(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1}, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->pong()V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;

    .line 280
    .line 281
    if-eqz p1, :cond_7

    .line 282
    .line 283
    invoke-interface {p1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;->onHeartBeatSuccess()V

    .line 284
    .line 285
    .line 286
    :cond_7
    :goto_1
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
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
    const-string v2, "==onTextMessage  current thread=="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/haima/hmcp/business/WebSocketInstanceType;->ACCESS:Lcom/haima/hmcp/business/WebSocketInstanceType;

    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/Utils;->countlyMessage(Lcom/haima/hmcp/business/WebSocketInstanceType;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0, p1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;->onTextMessage(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$300(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$300(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/haima/hmcp/listeners/WebSocketObserver;

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 97
    .line 98
    invoke-interface {v1, v2, p1}, Lcom/haima/hmcp/listeners/WebSocketObserver;->onMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Ping-Debug mAccessSocket onOpen  current thread=="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "==onOpen  current thread=="

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->val$connectionHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/haima/hmcp/business/WebSocketManager;->access$100(Lcom/haima/hmcp/business/WebSocketManager;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;->onConnect(Z)V

    .line 76
    .line 77
    .line 78
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/WebSocketManager;->access$202(Lcom/haima/hmcp/business/WebSocketManager;Z)Z

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$300(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$1;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$300(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/haima/hmcp/listeners/WebSocketObserver;

    .line 128
    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 132
    .line 133
    const/4 v3, 0x1

    .line 134
    invoke-interface {v1, v2, v3}, Lcom/haima/hmcp/listeners/WebSocketObserver;->onObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    return-void
.end method

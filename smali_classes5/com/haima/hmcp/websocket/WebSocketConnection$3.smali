.class Lcom/haima/hmcp/websocket/WebSocketConnection$3;
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
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$802(Lcom/haima/hmcp/websocket/WebSocketConnection;I)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$808(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$800(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "mName:"

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 48
    .line 49
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, ", mTag:"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 62
    .line 63
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, ", pingTimeoutCount = "

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 76
    .line 77
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$800(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v4, ", countMax = "

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 90
    .line 91
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingTimeoutCountMax()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$800(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 116
    .line 117
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingTimeoutCountMax()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-lt v2, v3, :cond_1

    .line 126
    .line 127
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 128
    .line 129
    invoke-static {v2, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$802(Lcom/haima/hmcp/websocket/WebSocketConnection;I)I

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Lcom/haima/hmcp/websocket/messages/PingError;

    .line 139
    .line 140
    const-string v3, "WebSocket ping timed out."

    .line 141
    .line 142
    invoke-direct {v2, v3}, Lcom/haima/hmcp/websocket/messages/PingError;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v2}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/haima/hmcp/utils/ConnectivityCheck;->getInstance()Lcom/haima/hmcp/utils/ConnectivityCheck;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 153
    .line 154
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 159
    .line 160
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 165
    .line 166
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1200(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    invoke-virtual {v1, v2, v3, v4}, Lcom/haima/hmcp/utils/ConnectivityCheck;->postCheckTask(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v2, "tag:"

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 184
    .line 185
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v2, ";isReconnected:"

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 198
    .line 199
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v2, ";pingTimeoutCount:"

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v0, ";hashCode:"

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$3;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 231
    .line 232
    const-string v2, "13502"

    .line 233
    .line 234
    invoke-static {v1, v2, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1300(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_2
    return-void
.end method

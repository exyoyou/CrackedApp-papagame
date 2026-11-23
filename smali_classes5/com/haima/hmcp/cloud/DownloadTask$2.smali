.class Lcom/haima/hmcp/cloud/DownloadTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/DownloadTask;->createPipe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/DownloadTask;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnect(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "cloud-file: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "download web-socket is connect"

    .line 16
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
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$200(Lcom/haima/hmcp/cloud/DownloadTask;)Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 34
    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", but task status is IDLE not run"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$200(Lcom/haima/hmcp/cloud/DownloadTask;)Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 90
    .line 91
    if-ne p1, v0, :cond_1

    .line 92
    .line 93
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/16 v0, 0x66

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$200(Lcom/haima/hmcp/cloud/DownloadTask;)Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->START_ORDER_ACK:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 110
    .line 111
    if-ne p1, v0, :cond_2

    .line 112
    .line 113
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/16 v0, 0x67

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v1, "can not resolve Download WS connect status:"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$200(Lcom/haima/hmcp/cloud/DownloadTask;)Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {p1, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->access$400(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v0, "mHandler is null when "

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_0
    return-void
.end method

.method public onDisconnect(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    const/4 p3, 0x6

    .line 2
    const-string v0, "cloud-file: "

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p1, p3, :cond_1

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string p3, "web-socket connect fail by server error: "

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$500(Lcom/haima/hmcp/cloud/DownloadTask;)Lcom/haima/hmcp/cloud/IWorkListener;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$500(Lcom/haima/hmcp/cloud/DownloadTask;)Lcom/haima/hmcp/cloud/IWorkListener;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/IWorkListener;->onHangUp()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string p3, "is allow web-socket reconnect: "

    .line 70
    .line 71
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$200(Lcom/haima/hmcp/cloud/DownloadTask;)Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    sget-object p3, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->DOWNLOADING:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 112
    .line 113
    if-ne p1, p3, :cond_2

    .line 114
    .line 115
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 116
    .line 117
    new-instance p3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v0, "download ws disconnect:"

    .line 123
    .line 124
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {p1, p2}, Lcom/haima/hmcp/cloud/DownloadTask;->access$400(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$600(Lcom/haima/hmcp/cloud/DownloadTask;)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    const/16 p3, 0xa

    .line 145
    .line 146
    if-ge p1, p3, :cond_4

    .line 147
    .line 148
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$608(Lcom/haima/hmcp/cloud/DownloadTask;)I

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_3

    .line 164
    .line 165
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const/16 p3, 0x69

    .line 174
    .line 175
    iput p3, p1, Landroid/os/Message;->what:I

    .line 176
    .line 177
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    const-wide/16 v2, 0x9c4

    .line 182
    .line 183
    invoke-virtual {p3, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 188
    .line 189
    const-string p3, "mHandler is null, while reconnect download websocket"

    .line 190
    .line 191
    invoke-static {p1, p3}, Lcom/haima/hmcp/cloud/DownloadTask;->access$700(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    new-instance p3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v2, "cloud-file: WebSocket is not active when send start download order, after 2.5s reconnect web-socket, reconnect count: "

    .line 204
    .line 205
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 209
    .line 210
    invoke-static {v2}, Lcom/haima/hmcp/cloud/DownloadTask;->access$600(Lcom/haima/hmcp/cloud/DownloadTask;)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    invoke-static {p1, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string p3, "WebSocket is disconnect:"

    .line 230
    .line 231
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string p3, "download task: reconnect download ws over max count:"

    .line 251
    .line 252
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object p3, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 256
    .line 257
    invoke-static {p3}, Lcom/haima/hmcp/cloud/DownloadTask;->access$600(Lcom/haima/hmcp/cloud/DownloadTask;)I

    .line 258
    .line 259
    .line 260
    move-result p3

    .line 261
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object p3, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 269
    .line 270
    invoke-static {p3, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$800(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p3

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :goto_1
    if-nez v1, :cond_5

    .line 296
    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string p3, "download web-socket is disconnect: "

    .line 303
    .line 304
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    new-instance p3, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 337
    .line 338
    const-string p2, "download socket disconnect"

    .line 339
    .line 340
    invoke-static {p1, p2}, Lcom/haima/hmcp/cloud/DownloadTask;->access$800(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :cond_5
    return-void
.end method

.method public onHeartBeatSuccess()V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud-file: download ws onMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->orderAckDispatcher(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage([BZ)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    invoke-static {p2, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->access$900(Lcom/haima/hmcp/cloud/DownloadTask;[B)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud-file: invalid binary message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

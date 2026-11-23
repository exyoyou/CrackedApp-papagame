.class Lcom/haima/hmcp/websocket/WebSocketConnection$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

.field final synthetic val$message:Lcom/haima/hmcp/websocket/messages/Message;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/websocket/WebSocketConnection;Lcom/haima/hmcp/websocket/messages/Message;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->val$message:Lcom/haima/hmcp/websocket/messages/Message;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/io/BufferedOutputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4800(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/Connection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->val$message:Lcom/haima/hmcp/websocket/messages/Message;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/websocket/Connection;->send(Lcom/haima/hmcp/websocket/messages/Message;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/io/BufferedOutputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->val$message:Lcom/haima/hmcp/websocket/messages/Message;

    .line 34
    .line 35
    instance-of v2, v1, Lcom/haima/hmcp/websocket/messages/Close;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    check-cast v1, Lcom/haima/hmcp/websocket/messages/Close;

    .line 40
    .line 41
    iget-boolean v1, v1, Lcom/haima/hmcp/websocket/messages/Close;->mIsReply:Z

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->val$message:Lcom/haima/hmcp/websocket/messages/Message;

    .line 52
    .line 53
    invoke-interface {v1, v2}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/haima/hmcp/websocket/exceptions/ParseFailed; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :catch_0
    move-exception v1

    .line 59
    goto :goto_0

    .line 60
    :catch_1
    move-exception v1

    .line 61
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 75
    .line 76
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v0, v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v2, Lcom/haima/hmcp/websocket/messages/Error;

    .line 113
    .line 114
    invoke-direct {v2, v1}, Lcom/haima/hmcp/websocket/messages/Error;-><init>(Ljava/lang/Exception;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v2}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_2
    move-exception v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 136
    .line 137
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v3, "run() : SocketException ("

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v1, ")"

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$9;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 190
    .line 191
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v1, Lcom/haima/hmcp/websocket/messages/ConnectionLost;

    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/messages/ConnectionLost;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_0
    :goto_1
    return-void
.end method

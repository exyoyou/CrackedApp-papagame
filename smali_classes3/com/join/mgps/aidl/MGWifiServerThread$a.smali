.class Lcom/join/mgps/aidl/MGWifiServerThread$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/aidl/MGWifiServerThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiServerThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$000(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {v0, v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$102(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 37
    .line 38
    new-instance v1, Ljava/net/ServerSocket;

    .line 39
    .line 40
    const/16 v2, 0x2001

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$102(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "tbl>>>isrun:"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$200(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/16 v1, 0x232f

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$200(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "tbl>>>mserverSocket.isClosed():"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 142
    .line 143
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 144
    .line 145
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/Socket;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$000(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    new-instance v0, Ljava/lang/Thread;

    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    .line 174
    .line 175
    .line 176
    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    if-eqz v0, :cond_3

    .line 178
    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_1
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$500(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_3

    .line 214
    .line 215
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 216
    .line 217
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const/16 v1, 0x2330

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :catch_2
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    .line 230
    .line 231
    :cond_3
    :goto_2
    return-void
.end method

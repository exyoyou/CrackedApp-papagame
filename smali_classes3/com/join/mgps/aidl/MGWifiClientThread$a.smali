.class Lcom/join/mgps/aidl/MGWifiClientThread$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiClientThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/aidl/MGWifiClientThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiClientThread;)V
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
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

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
    .locals 7

    .line 1
    const-string v0, "-1"

    .line 2
    .line 3
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$000(Lcom/join/mgps/aidl/MGWifiClientThread;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x3e8

    .line 13
    .line 14
    const-string v3, "192.168.43.1"

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/join/mgps/aidl/MGWifiClientThread;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getDhcpInfo()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/join/mgps/aidl/MGWifiClientThread;->context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4, v3}, Lcom/join/mgps/Util/WifiUtils;->pingCmd(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v6, "xxxxxxxxx"

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ";p="

    .line 56
    .line 57
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ";ip="

    .line 64
    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/join/mgps/aidl/MGWifiClientThread;->context:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getServerIPAddress()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v5, 0x0

    .line 88
    new-array v5, v5, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v1, v5}, Lcom/join/mgps/Util/h1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    if-eqz v4, :cond_0

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_0
    invoke-static {v2}, Lcom/join/mgps/Util/g2;->b(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    :goto_1
    const/4 v1, 0x3

    .line 101
    :goto_2
    if-lez v1, :cond_3

    .line 102
    .line 103
    :try_start_0
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 104
    .line 105
    new-instance v5, Ljava/net/Socket;

    .line 106
    .line 107
    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v5, v4, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 113
    .line 114
    iget-object v4, v4, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 115
    .line 116
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 117
    .line 118
    const/16 v6, 0x2001

    .line 119
    .line 120
    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 127
    .line 128
    iget-object v4, v4, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 129
    .line 130
    const/4 v5, 0x1

    .line 131
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 132
    .line 133
    .line 134
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 135
    .line 136
    new-instance v5, Ljava/io/DataInputStream;

    .line 137
    .line 138
    iget-object v6, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 139
    .line 140
    iget-object v6, v6, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v4, v5}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$102(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 153
    .line 154
    new-instance v5, Ljava/io/BufferedOutputStream;

    .line 155
    .line 156
    iget-object v6, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 157
    .line 158
    iget-object v6, v6, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v4, v5}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$202(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/io/BufferedOutputStream;)Ljava/io/BufferedOutputStream;

    .line 168
    .line 169
    .line 170
    new-instance v4, Ljava/lang/Thread;

    .line 171
    .line 172
    new-instance v5, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;

    .line 173
    .line 174
    invoke-direct {v5, p0}, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;-><init>(Lcom/join/mgps/aidl/MGWifiClientThread$a;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 184
    .line 185
    invoke-static {v1, v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :catchall_0
    move-exception v1

    .line 190
    goto :goto_3

    .line 191
    :catch_0
    move-exception v4

    .line 192
    :try_start_1
    invoke-static {v2}, Lcom/join/mgps/Util/g2;->b(I)V

    .line 193
    .line 194
    .line 195
    iget-object v5, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 196
    .line 197
    invoke-static {v5}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    add-int/lit8 v1, v1, -0x1

    .line 201
    .line 202
    if-nez v1, :cond_2

    .line 203
    .line 204
    iget-object v5, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 205
    .line 206
    invoke-static {v5, v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    :cond_2
    iget-object v5, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 210
    .line 211
    const/4 v6, 0x0

    .line 212
    iput-object v6, v5, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .line 216
    .line 217
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 218
    .line 219
    invoke-static {v4, v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :goto_3
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 224
    .line 225
    invoke-static {v2, v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    throw v1

    .line 229
    :cond_3
    :goto_4
    return-void
.end method

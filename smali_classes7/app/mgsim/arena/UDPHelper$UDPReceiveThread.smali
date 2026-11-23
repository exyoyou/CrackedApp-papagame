.class Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;
.super Lapp/mgsim/arena/SocketThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/mgsim/arena/UDPHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UDPReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Lapp/mgsim/arena/UDPHelper;


# direct methods
.method private constructor <init>(Lapp/mgsim/arena/UDPHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-direct {p0}, Lapp/mgsim/arena/SocketThread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/UDPHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;-><init>(Lapp/mgsim/arena/UDPHelper;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 9

    .line 1
    const-string v0, "UDPReceiveThread finally----"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 4
    .line 5
    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$100(Lapp/mgsim/arena/UDPHelper;)Landroid/net/wifi/WifiManager$MulticastLock;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    new-array v2, v1, [B

    .line 15
    .line 16
    new-instance v3, Ljava/net/DatagramPacket;

    .line 17
    .line 18
    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 22
    .line 23
    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 30
    .line 31
    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 42
    .line 43
    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    sub-long/2addr v7, v5

    .line 72
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v6, "receive meg for area: "

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v6, "---get ping time :"

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v1, v5}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 103
    .line 104
    invoke-static {v1, v4, v7, v8}, Lapp/mgsim/arena/UDPHelper;->access$300(Lapp/mgsim/arena/UDPHelper;BJ)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 109
    .line 110
    const-string v2, "UDPReceiveThread client is null or is closed----"

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    :try_start_1
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 120
    .line 121
    invoke-static {v2}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 128
    .line 129
    invoke-static {v2}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_1

    .line 138
    .line 139
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 140
    .line 141
    const-string v3, "UDPReceiveThread while exception ,restart receive thread..."

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 147
    .line 148
    invoke-static {v2}, Lapp/mgsim/arena/UDPHelper;->access$400(Lapp/mgsim/arena/UDPHelper;)V

    .line 149
    .line 150
    .line 151
    :cond_1
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 152
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v4, "UDPReceiveThread while exception:"

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v2, v1}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :goto_1
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 183
    .line 184
    invoke-virtual {v0}, Lapp/mgsim/arena/UDPHelper;->releaseWifiLock()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :goto_2
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 189
    .line 190
    invoke-virtual {v2, v0}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 194
    .line 195
    invoke-virtual {v0}, Lapp/mgsim/arena/UDPHelper;->releaseWifiLock()V

    .line 196
    .line 197
    .line 198
    throw v1
.end method

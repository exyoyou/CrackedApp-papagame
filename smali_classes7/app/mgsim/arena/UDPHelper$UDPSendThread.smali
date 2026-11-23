.class Lapp/mgsim/arena/UDPHelper$UDPSendThread;
.super Lapp/mgsim/arena/SocketThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/mgsim/arena/UDPHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UDPSendThread"
.end annotation


# instance fields
.field private info:Lapp/mgsim/arena/AreaInfo;

.field retryCount:I

.field final synthetic this$0:Lapp/mgsim/arena/UDPHelper;


# direct methods
.method public constructor <init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/AreaInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Lapp/mgsim/arena/SocketThread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->info:Lapp/mgsim/arena/AreaInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 3
    .line 4
    const/16 v2, 0x9

    .line 5
    .line 6
    invoke-static {v1, v2}, Lapp/mgsim/arena/UDPHelper;->access$500(Lapp/mgsim/arena/UDPHelper;I)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 11
    .line 12
    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 19
    .line 20
    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->info:Lapp/mgsim/arena/AreaInfo;

    .line 34
    .line 35
    invoke-virtual {v1}, Lapp/mgsim/arena/AreaInfo;->getHost()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->info:Lapp/mgsim/arena/AreaInfo;

    .line 40
    .line 41
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getPort()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->info:Lapp/mgsim/arena/AreaInfo;

    .line 46
    .line 47
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    int-to-byte v2, v2

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    new-instance v2, Ljava/net/DatagramPacket;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    array-length v6, v3

    .line 74
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    move-object v3, v2

    .line 79
    invoke-direct/range {v3 .. v8}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 83
    .line 84
    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v1, 0x1388

    .line 92
    .line 93
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 98
    .line 99
    const-string v2, "UDPSendThread client is null or client is closed---"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception v1

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_1
    nop

    .line 113
    :cond_1
    :goto_1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 114
    .line 115
    invoke-static {v0}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 122
    .line 123
    invoke-static {v0}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_2

    .line 132
    .line 133
    iget v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->retryCount:I

    .line 134
    .line 135
    const/16 v2, 0xa

    .line 136
    .line 137
    if-gt v0, v2, :cond_2

    .line 138
    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    iput v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->retryCount:I

    .line 142
    .line 143
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 144
    .line 145
    const-string v2, "UDPSendThread while exception restart send thread...."

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->execute()V

    .line 151
    .line 152
    .line 153
    :cond_2
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v3, "UDPSendThread while exception:"

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    return-void
.end method

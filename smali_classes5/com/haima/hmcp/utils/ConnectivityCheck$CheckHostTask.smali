.class public Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;
.super Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/ConnectivityCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckHostTask"
.end annotation


# instance fields
.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 5
    .line 6
    iput p3, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->port:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$500(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x4

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object p0, v2, v3

    .line 17
    .line 18
    iget-object v4, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v4, v2, v5

    .line 22
    .line 23
    iget v4, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->port:I

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v6, 0x2

    .line 30
    aput-object v4, v2, v6

    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    aput-object v1, v2, v4

    .line 34
    .line 35
    const-string v4, "%s check host:%s,port:%d dnsCheckResult:[%s]"

    .line 36
    .line 37
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$100()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v6, "host:"

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v6, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v6, "--"

    .line 64
    .line 65
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$600(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$700(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v4, "SUCCEED"

    .line 91
    .line 92
    const-string v6, "FAILED"

    .line 93
    .line 94
    const-string v7, "Reachable"

    .line 95
    .line 96
    const-string v8, "NOT Reachable"

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    iget-object v9, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v9, v1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$800(Ljava/lang/String;Ljava/net/InetAddress;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    iget-object v10, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 107
    .line 108
    iget v11, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->port:I

    .line 109
    .line 110
    invoke-static {v10, v11, v1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$900(Ljava/lang/String;ILjava/net/InetAddress;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    new-array v10, v5, [Ljava/lang/Object;

    .line 115
    .line 116
    if-eqz v9, :cond_0

    .line 117
    .line 118
    move-object v9, v7

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    move-object v9, v8

    .line 121
    :goto_0
    aput-object v9, v10, v3

    .line 122
    .line 123
    const-string v9, ",ipv4PingResult:%s"

    .line 124
    .line 125
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    new-array v9, v5, [Ljava/lang/Object;

    .line 133
    .line 134
    if-eqz v1, :cond_1

    .line 135
    .line 136
    move-object v1, v4

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    move-object v1, v6

    .line 139
    :goto_1
    aput-object v1, v9, v3

    .line 140
    .line 141
    const-string v1, ",ipv4TcpConnectResult:%s"

    .line 142
    .line 143
    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_2
    if-eqz v2, :cond_5

    .line 151
    .line 152
    iget-object v1, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$800(Ljava/lang/String;Ljava/net/InetAddress;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    iget-object v9, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->host:Ljava/lang/String;

    .line 159
    .line 160
    iget v10, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;->port:I

    .line 161
    .line 162
    invoke-static {v9, v10, v2}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$900(Ljava/lang/String;ILjava/net/InetAddress;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    new-array v9, v5, [Ljava/lang/Object;

    .line 167
    .line 168
    if-eqz v1, :cond_3

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_3
    move-object v7, v8

    .line 172
    :goto_2
    aput-object v7, v9, v3

    .line 173
    .line 174
    const-string v1, ",ipv6PingResult:%s"

    .line 175
    .line 176
    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    new-array v1, v5, [Ljava/lang/Object;

    .line 184
    .line 185
    if-eqz v2, :cond_4

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_4
    move-object v4, v6

    .line 189
    :goto_3
    aput-object v4, v1, v3

    .line 190
    .line 191
    const-string v2, ",ipv6TcpConnectResult:%s"

    .line 192
    .line 193
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    :cond_5
    const-string v1, "13334"

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$100()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-void
.end method

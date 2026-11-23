.class public Lcom/netcheck/LDNetDiagnoService/LDNetSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;
    }
.end annotation


# static fields
.field private static final h:I = 0x50

.field private static final i:I = 0x4

.field private static final j:Ljava/lang/String; = "DNS\u89e3\u6790\u6b63\u5e38,\u8fde\u63a5\u8d85\u65f6,TCP\u5efa\u7acb\u5931\u8d25"

.field private static final k:Ljava/lang/String; = "DNS\u89e3\u6790\u6b63\u5e38,IO\u5f02\u5e38,TCP\u5efa\u7acb\u5931\u8d25"

.field private static final l:Ljava/lang/String; = "DNS\u89e3\u6790\u5931\u8d25,\u4e3b\u673a\u5730\u5740\u4e0d\u53ef\u8fbe"

.field private static m:Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

.field static n:Z


# instance fields
.field private a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

.field private b:I

.field public c:[Ljava/net/InetAddress;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Z

.field private final f:[J

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "tracepath"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->n:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1770

    .line 5
    .line 6
    iput v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->b:I

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->f:[J

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->g:Z

    .line 15
    .line 16
    return-void
.end method

.method private b(Ljava/net/InetAddress;Ljava/lang/String;)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_9

    .line 8
    .line 9
    if-eqz p2, :cond_9

    .line 10
    .line 11
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 12
    .line 13
    const/16 v3, 0x50

    .line 14
    .line 15
    invoke-direct {v2, p1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "Connect to host: "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, "...\n"

    .line 34
    .line 35
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p1, p2}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketUpdated(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    :goto_0
    const/4 p2, -0x2

    .line 47
    const/4 v3, -0x1

    .line 48
    const/4 v4, 0x4

    .line 49
    if-ge p1, v4, :cond_3

    .line 50
    .line 51
    iget v5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->b:I

    .line 52
    .line 53
    invoke-direct {p0, v2, v5, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->c(Ljava/net/InetSocketAddress;II)V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->f:[J

    .line 57
    .line 58
    aget-wide v6, v5, p1

    .line 59
    .line 60
    const-wide/16 v8, -0x1

    .line 61
    .line 62
    cmp-long v5, v6, v8

    .line 63
    .line 64
    if-nez v5, :cond_0

    .line 65
    .line 66
    iget-object v5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 67
    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v7, p1, 0x1

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v7, "\'s time=TimeOut,  "

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-interface {v5, v6}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketUpdated(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget v5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->b:I

    .line 91
    .line 92
    add-int/lit16 v5, v5, 0xfa0

    .line 93
    .line 94
    iput v5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->b:I

    .line 95
    .line 96
    if-lez p1, :cond_2

    .line 97
    .line 98
    iget-object v5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->f:[J

    .line 99
    .line 100
    add-int/lit8 v6, p1, -0x1

    .line 101
    .line 102
    aget-wide v6, v5, v6

    .line 103
    .line 104
    cmp-long v5, v6, v8

    .line 105
    .line 106
    if-nez v5, :cond_2

    .line 107
    .line 108
    const/4 p1, -0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    const-wide/16 v8, -0x2

    .line 111
    .line 112
    cmp-long v5, v6, v8

    .line 113
    .line 114
    if-nez v5, :cond_1

    .line 115
    .line 116
    iget-object v5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 117
    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v7, p1, 0x1

    .line 124
    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v7, "\'s time=IOException"

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-interface {v5, v6}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketUpdated(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    if-lez p1, :cond_2

    .line 141
    .line 142
    iget-object v5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->f:[J

    .line 143
    .line 144
    add-int/lit8 v6, p1, -0x1

    .line 145
    .line 146
    aget-wide v6, v5, v6

    .line 147
    .line 148
    cmp-long v5, v6, v8

    .line 149
    .line 150
    if-nez v5, :cond_2

    .line 151
    .line 152
    const/4 p1, -0x2

    .line 153
    goto :goto_1

    .line 154
    :cond_1
    iget-object p2, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v4, p1, 0x1

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v4, "\'s time="

    .line 167
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v4, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->f:[J

    .line 172
    .line 173
    aget-wide v5, v4, p1

    .line 174
    .line 175
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v4, "ms,  "

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-interface {p2, v3}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketUpdated(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_3
    const/4 p1, 0x0

    .line 195
    :goto_1
    if-ne p1, v3, :cond_4

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_4
    if-ne p1, p2, :cond_5

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_5
    const-wide/16 p1, 0x0

    .line 202
    .line 203
    move-wide v5, p1

    .line 204
    const/4 v2, 0x0

    .line 205
    :goto_2
    if-ge v1, v4, :cond_7

    .line 206
    .line 207
    iget-object v3, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->f:[J

    .line 208
    .line 209
    aget-wide v7, v3, v1

    .line 210
    .line 211
    cmp-long v3, v7, p1

    .line 212
    .line 213
    if-lez v3, :cond_6

    .line 214
    .line 215
    add-long/2addr v5, v7

    .line 216
    add-int/lit8 v2, v2, 0x1

    .line 217
    .line 218
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_7
    if-lez v2, :cond_8

    .line 222
    .line 223
    int-to-long p1, v2

    .line 224
    div-long/2addr v5, p1

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string p2, "average="

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p2, "ms"

    .line 239
    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    :cond_8
    const/4 p1, 0x1

    .line 251
    const/4 v1, 0x1

    .line 252
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-interface {p1, p2}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketUpdated(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return v1
.end method

.method private c(Ljava/net/InetSocketAddress;II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {v1, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->f:[J

    .line 19
    .line 20
    sub-long/2addr p1, v2

    .line 21
    aput-wide p1, v0, p3
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    move-object v0, v1

    .line 29
    goto :goto_3

    .line 30
    :catch_0
    move-exception p1

    .line 31
    move-object v0, v1

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception p1

    .line 34
    move-object v0, v1

    .line 35
    goto :goto_1

    .line 36
    :catchall_1
    move-exception p1

    .line 37
    goto :goto_3

    .line 38
    :catch_2
    move-exception p1

    .line 39
    :goto_0
    :try_start_3
    iget-object p2, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->f:[J

    .line 40
    .line 41
    const-wide/16 v1, -0x2

    .line 42
    .line 43
    aput-wide v1, p2, p3

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_3
    move-exception p1

    .line 55
    :goto_1
    :try_start_5
    iget-object p2, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->f:[J

    .line 56
    .line 57
    const-wide/16 v1, -0x1

    .line 58
    .line 59
    aput-wide v1, p2, p3

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    :try_start_6
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_4
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_0
    :goto_2
    return-void

    .line 75
    :goto_3
    if-eqz v0, :cond_1

    .line 76
    .line 77
    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :catch_5
    move-exception p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_4
    throw p1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->c:[Ljava/net/InetAddress;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "\n"

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    iget-object v2, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->d:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    array-length p1, p1

    .line 13
    new-array v2, p1, [Z

    .line 14
    .line 15
    iput-object v2, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->e:[Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, p1, :cond_1

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 23
    .line 24
    invoke-interface {v3, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketUpdated(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v3, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->e:[Z

    .line 28
    .line 29
    iget-object v4, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->c:[Ljava/net/InetAddress;

    .line 30
    .line 31
    aget-object v4, v4, v2

    .line 32
    .line 33
    iget-object v5, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->d:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {p0, v4, v5}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->b(Ljava/net/InetAddress;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    aput-boolean v4, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->e:[Z

    .line 51
    .line 52
    array-length v2, p1

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_1
    if-ge v3, v2, :cond_4

    .line 55
    .line 56
    aget-boolean v4, p1, v3

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v5, 0x1

    .line 67
    if-ne v4, v5, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 70
    .line 71
    invoke-interface {p1, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketFinished(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v5

    .line 75
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 79
    .line 80
    const-string v2, "DNS\u89e3\u6790\u5931\u8d25,\u4e3b\u673a\u5730\u5740\u4e0d\u53ef\u8fbe"

    .line 81
    .line 82
    invoke-interface {p1, v2}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketFinished(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 86
    .line 87
    invoke-interface {p1, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketFinished(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v0
.end method

.method public static e()Lcom/netcheck/LDNetDiagnoService/LDNetSocket;
    .locals 1

    .line 1
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->m:Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->m:Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->m:Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->n:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v0, "80"

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->startJNITelnet(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    const-string v0, "LDNetSocket"

    .line 21
    .line 22
    const-string v1, "call jni failed, call execUseJava"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->d(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->d(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public f(Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 2
    .line 3
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->a:Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetSocket$a;->OnNetSocketUpdated(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->m:Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetSocket;->m:Lcom/netcheck/LDNetDiagnoService/LDNetSocket;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public native startJNITelnet(Ljava/lang/String;Ljava/lang/String;)V
.end method

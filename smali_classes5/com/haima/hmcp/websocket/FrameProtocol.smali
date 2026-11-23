.class public Lcom/haima/hmcp/websocket/FrameProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_PAYLOAD_NORMAL:I = 0x7d

.field private static final MAX_PAYLOAD_TWO_BYTE:I = 0xffff


# instance fields
.field private final mRng:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Random;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/websocket/FrameProtocol;->mRng:Ljava/util/Random;

    .line 10
    .line 11
    return-void
.end method

.method private newFrameMask()[B
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/websocket/FrameProtocol;->mRng:Ljava/util/Random;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private serializeFrame(I[BZZ)[B
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v2, -0x80

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    int-to-byte v4, v2

    .line 14
    move/from16 v5, p1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move/from16 v5, p1

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    int-to-byte v5, v5

    .line 21
    or-int/2addr v4, v5

    .line 22
    int-to-byte v4, v4

    .line 23
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 24
    .line 25
    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    :goto_1
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    array-length v6, v0

    .line 35
    int-to-long v6, v6

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move-wide v6, v4

    .line 38
    :goto_2
    const-wide/16 v8, 0x7d

    .line 39
    .line 40
    const/4 v10, 0x3

    .line 41
    const/4 v11, 0x2

    .line 42
    const/4 v12, 0x1

    .line 43
    cmp-long v13, v6, v8

    .line 44
    .line 45
    if-gtz v13, :cond_3

    .line 46
    .line 47
    long-to-int v8, v6

    .line 48
    int-to-byte v8, v8

    .line 49
    or-int/2addr v2, v8

    .line 50
    int-to-byte v2, v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const-wide/32 v8, 0xffff

    .line 56
    .line 57
    .line 58
    const/16 v13, 0x8

    .line 59
    .line 60
    const-wide/16 v14, 0xff

    .line 61
    .line 62
    cmp-long v16, v6, v8

    .line 63
    .line 64
    if-gtz v16, :cond_4

    .line 65
    .line 66
    or-int/lit8 v2, v2, 0x7e

    .line 67
    .line 68
    int-to-byte v2, v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 70
    .line 71
    .line 72
    new-array v2, v11, [B

    .line 73
    .line 74
    shr-long v8, v6, v13

    .line 75
    .line 76
    and-long/2addr v8, v14

    .line 77
    long-to-int v9, v8

    .line 78
    int-to-byte v8, v9

    .line 79
    aput-byte v8, v2, v3

    .line 80
    .line 81
    and-long v8, v6, v14

    .line 82
    .line 83
    long-to-int v9, v8

    .line 84
    int-to-byte v8, v9

    .line 85
    aput-byte v8, v2, v12

    .line 86
    .line 87
    invoke-virtual {v1, v2, v3, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    or-int/lit8 v2, v2, 0x7f

    .line 92
    .line 93
    int-to-byte v2, v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 95
    .line 96
    .line 97
    new-array v2, v13, [B

    .line 98
    .line 99
    const/16 v8, 0x38

    .line 100
    .line 101
    shr-long v8, v6, v8

    .line 102
    .line 103
    and-long/2addr v8, v14

    .line 104
    long-to-int v9, v8

    .line 105
    int-to-byte v8, v9

    .line 106
    aput-byte v8, v2, v3

    .line 107
    .line 108
    const/16 v8, 0x30

    .line 109
    .line 110
    shr-long v8, v6, v8

    .line 111
    .line 112
    and-long/2addr v8, v14

    .line 113
    long-to-int v9, v8

    .line 114
    int-to-byte v8, v9

    .line 115
    aput-byte v8, v2, v12

    .line 116
    .line 117
    const/16 v8, 0x28

    .line 118
    .line 119
    shr-long v8, v6, v8

    .line 120
    .line 121
    and-long/2addr v8, v14

    .line 122
    long-to-int v9, v8

    .line 123
    int-to-byte v8, v9

    .line 124
    aput-byte v8, v2, v11

    .line 125
    .line 126
    const/16 v8, 0x20

    .line 127
    .line 128
    shr-long v8, v6, v8

    .line 129
    .line 130
    and-long/2addr v8, v14

    .line 131
    long-to-int v9, v8

    .line 132
    int-to-byte v8, v9

    .line 133
    aput-byte v8, v2, v10

    .line 134
    .line 135
    const/16 v8, 0x18

    .line 136
    .line 137
    shr-long v8, v6, v8

    .line 138
    .line 139
    and-long/2addr v8, v14

    .line 140
    long-to-int v9, v8

    .line 141
    int-to-byte v8, v9

    .line 142
    const/4 v9, 0x4

    .line 143
    aput-byte v8, v2, v9

    .line 144
    .line 145
    const/16 v8, 0x10

    .line 146
    .line 147
    shr-long v8, v6, v8

    .line 148
    .line 149
    and-long/2addr v8, v14

    .line 150
    long-to-int v9, v8

    .line 151
    int-to-byte v8, v9

    .line 152
    const/4 v9, 0x5

    .line 153
    aput-byte v8, v2, v9

    .line 154
    .line 155
    shr-long v8, v6, v13

    .line 156
    .line 157
    and-long/2addr v8, v14

    .line 158
    long-to-int v9, v8

    .line 159
    int-to-byte v8, v9

    .line 160
    const/4 v9, 0x6

    .line 161
    aput-byte v8, v2, v9

    .line 162
    .line 163
    and-long v8, v6, v14

    .line 164
    .line 165
    long-to-int v9, v8

    .line 166
    int-to-byte v8, v9

    .line 167
    const/4 v9, 0x7

    .line 168
    aput-byte v8, v2, v9

    .line 169
    .line 170
    invoke-virtual {v1, v2, v3, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 171
    .line 172
    .line 173
    :goto_3
    if-eqz p4, :cond_5

    .line 174
    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/websocket/FrameProtocol;->newFrameMask()[B

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    aget-byte v8, v2, v3

    .line 180
    .line 181
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 182
    .line 183
    .line 184
    aget-byte v8, v2, v12

    .line 185
    .line 186
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 187
    .line 188
    .line 189
    aget-byte v8, v2, v11

    .line 190
    .line 191
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 192
    .line 193
    .line 194
    aget-byte v8, v2, v10

    .line 195
    .line 196
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_5
    const/4 v2, 0x0

    .line 201
    :goto_4
    cmp-long v8, v6, v4

    .line 202
    .line 203
    if-lez v8, :cond_7

    .line 204
    .line 205
    if-eqz p4, :cond_6

    .line 206
    .line 207
    const/4 v4, 0x0

    .line 208
    :goto_5
    int-to-long v8, v4

    .line 209
    cmp-long v5, v8, v6

    .line 210
    .line 211
    if-gez v5, :cond_6

    .line 212
    .line 213
    aget-byte v5, v0, v4

    .line 214
    .line 215
    rem-int/lit8 v8, v4, 0x4

    .line 216
    .line 217
    aget-byte v8, v2, v8

    .line 218
    .line 219
    xor-int/2addr v5, v8

    .line 220
    int-to-byte v5, v5

    .line 221
    aput-byte v5, v0, v4

    .line 222
    .line 223
    add-int/lit8 v4, v4, 0x1

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_6
    array-length v2, v0

    .line 227
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 228
    .line 229
    .line 230
    :cond_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    return-object v0
.end method


# virtual methods
.method public close(ILjava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/ParseFailed;
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lez p1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const-string v4, ""

    .line 11
    .line 12
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    :try_start_0
    const-string v4, "UTF-8"

    .line 19
    .line 20
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    array-length v4, p2

    .line 25
    add-int/2addr v4, v3

    .line 26
    new-array v4, v4, [B

    .line 27
    .line 28
    array-length v5, p2

    .line 29
    invoke-static {p2, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    new-instance p1, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;

    .line 34
    .line 35
    const-string p2, "reason is an invalid utf-8 string"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_0
    new-array v4, v3, [B

    .line 42
    .line 43
    :goto_0
    shr-int/lit8 p2, p1, 0x8

    .line 44
    .line 45
    and-int/lit16 p2, p2, 0xff

    .line 46
    .line 47
    int-to-byte p2, p2

    .line 48
    aput-byte p2, v4, v2

    .line 49
    .line 50
    and-int/lit16 p1, p1, 0xff

    .line 51
    .line 52
    int-to-byte p1, p1

    .line 53
    aput-byte p1, v4, v1

    .line 54
    .line 55
    invoke-direct {p0, v0, v4, v1, v1}, Lcom/haima/hmcp/websocket/FrameProtocol;->serializeFrame(I[BZZ)[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/haima/hmcp/websocket/FrameProtocol;->serializeFrame(I[BZZ)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public ping([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/ParseFailed;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/16 v1, 0x7d

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;

    .line 10
    .line 11
    const-string v0, "ping payload exceeds 125 octets"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    const/16 v0, 0x9

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/haima/hmcp/websocket/FrameProtocol;->serializeFrame(I[BZZ)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public pong([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/ParseFailed;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/16 v1, 0x7d

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;

    .line 10
    .line 11
    const-string v0, "ping payload exceeds 125 octets"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    const/16 v0, 0xa

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/haima/hmcp/websocket/FrameProtocol;->serializeFrame(I[BZZ)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public sendBinary([B)[B
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/haima/hmcp/websocket/FrameProtocol;->serializeFrame(I[BZZ)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public sendText([B)[B
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1, v0, v0}, Lcom/haima/hmcp/websocket/FrameProtocol;->serializeFrame(I[BZZ)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

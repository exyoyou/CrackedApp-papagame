.class Lcom/haima/hmcp/websocket/WebSocketReader;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_CLOSING:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_OPEN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "com.haima.hmcp.websocket.WebSocketReader"


# instance fields
.field private mBufferedStream:Ljava/io/BufferedInputStream;

.field private mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

.field private mInsideMessage:Z

.field private mMessageData:[B

.field private mMessageOpcode:I

.field private mMessagePayload:Ljava/io/ByteArrayOutputStream;

.field private final mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

.field private final mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

.field private mPosition:I

.field private mSocket:Ljava/net/Socket;

.field private mState:I

.field private mStopped:Z

.field private mUtf8Validator:Lcom/haima/hmcp/websocket/utils/Utf8Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;Ljava/net/Socket;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p4, 0x0

    .line 5
    iput-boolean p4, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mStopped:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mInsideMessage:Z

    .line 8
    .line 9
    new-instance p4, Lcom/haima/hmcp/websocket/utils/Utf8Validator;

    .line 10
    .line 11
    invoke-direct {p4}, Lcom/haima/hmcp/websocket/utils/Utf8Validator;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mUtf8Validator:Lcom/haima/hmcp/websocket/utils/Utf8Validator;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mSocket:Ljava/net/Socket;

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxFramePayloadSize()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/lit8 p1, p1, 0xe

    .line 27
    .line 28
    new-array p1, p1, [B

    .line 29
    .line 30
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageData:[B

    .line 31
    .line 32
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mSocket:Ljava/net/Socket;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxFramePayloadSize()I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    add-int/lit8 p4, p4, 0xe

    .line 45
    .line 46
    invoke-direct {p1, p2, p4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mBufferedStream:Ljava/io/BufferedInputStream;

    .line 50
    .line 51
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 52
    .line 53
    invoke-virtual {p3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxMessagePayloadSize()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessagePayload:Ljava/io/ByteArrayOutputStream;

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    iput p1, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mState:I

    .line 67
    .line 68
    sget-object p1, Lcom/haima/hmcp/websocket/WebSocketReader;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    const-string p2, "Created"

    .line 71
    .line 72
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private consumeData()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketReader;->processHandshake()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketReader;->processData()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method private emitServerError(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/messages/ServerError;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/haima/hmcp/websocket/messages/ServerError;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mState:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mStopped:Z

    .line 16
    .line 17
    return-void
.end method

.method private parseHttpHeaders([Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    aget-object v4, p1, v3

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-lez v5, :cond_0

    .line 18
    .line 19
    const-string v5, ": "

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    array-length v5, v4

    .line 26
    const/4 v6, 0x2

    .line 27
    if-ne v5, v6, :cond_0

    .line 28
    .line 29
    aget-object v5, v4, v2

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/4 v7, 0x1

    .line 36
    aget-object v8, v4, v7

    .line 37
    .line 38
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object v5, Lcom/haima/hmcp/websocket/WebSocketReader;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 44
    .line 45
    new-array v6, v6, [Ljava/lang/Object;

    .line 46
    .line 47
    aget-object v9, v4, v2

    .line 48
    .line 49
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    aput-object v9, v6, v2

    .line 54
    .line 55
    aget-object v4, v4, v7

    .line 56
    .line 57
    aput-object v4, v6, v7

    .line 58
    .line 59
    const-string v4, "\'%s\'=\'%s\'"

    .line 60
    .line 61
    invoke-static {v8, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v5, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-object v0
.end method

.method private processData()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 4
    .line 5
    const-string v2, "logic error"

    .line 6
    .line 7
    const/16 v3, 0x9

    .line 8
    .line 9
    const/4 v4, 0x7

    .line 10
    const/16 v5, 0xa

    .line 11
    .line 12
    const/16 v7, 0x8

    .line 13
    .line 14
    const/4 v8, 0x2

    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    if-nez v1, :cond_20

    .line 18
    .line 19
    iget v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 20
    .line 21
    if-lt v1, v8, :cond_1f

    .line 22
    .line 23
    iget-object v11, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageData:[B

    .line 24
    .line 25
    aget-byte v12, v11, v10

    .line 26
    .line 27
    and-int/lit16 v13, v12, 0x80

    .line 28
    .line 29
    if-eqz v13, :cond_0

    .line 30
    .line 31
    const/4 v13, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v13, 0x0

    .line 34
    :goto_0
    and-int/lit8 v14, v12, 0x70

    .line 35
    .line 36
    const/4 v15, 0x4

    .line 37
    shr-int/2addr v14, v15

    .line 38
    and-int/lit8 v12, v12, 0xf

    .line 39
    .line 40
    aget-byte v10, v11, v9

    .line 41
    .line 42
    and-int/lit16 v6, v10, 0x80

    .line 43
    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v6, 0x0

    .line 49
    :goto_1
    const/16 v15, 0x7f

    .line 50
    .line 51
    and-int/2addr v10, v15

    .line 52
    if-nez v14, :cond_1e

    .line 53
    .line 54
    if-nez v6, :cond_1d

    .line 55
    .line 56
    if-le v12, v4, :cond_7

    .line 57
    .line 58
    if-eqz v13, :cond_6

    .line 59
    .line 60
    const/16 v4, 0x7d

    .line 61
    .line 62
    if-gt v10, v4, :cond_5

    .line 63
    .line 64
    if-eq v12, v7, :cond_3

    .line 65
    .line 66
    if-eq v12, v3, :cond_3

    .line 67
    .line 68
    if-ne v12, v5, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v3, "control frame using reserved opcode "

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :cond_3
    :goto_2
    if-ne v12, v7, :cond_d

    .line 95
    .line 96
    if-eq v10, v9, :cond_4

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_4
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 100
    .line 101
    const-string v2, "received close control frame with payload len 1"

    .line 102
    .line 103
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :cond_5
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 108
    .line 109
    const-string v2, "control frame with payload length > 125 octets"

    .line 110
    .line 111
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :cond_6
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 116
    .line 117
    const-string v2, "fragmented control frame"

    .line 118
    .line 119
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v1

    .line 123
    :cond_7
    if-eqz v12, :cond_9

    .line 124
    .line 125
    if-eq v12, v9, :cond_9

    .line 126
    .line 127
    if-ne v12, v8, :cond_8

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v3, "data frame using reserved opcode "

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :cond_9
    :goto_3
    iget-boolean v4, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mInsideMessage:Z

    .line 154
    .line 155
    if-nez v4, :cond_b

    .line 156
    .line 157
    if-eqz v12, :cond_a

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_a
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 161
    .line 162
    const-string v2, "received continuation data frame outside fragmented message"

    .line 163
    .line 164
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v1

    .line 168
    :cond_b
    :goto_4
    if-eqz v4, :cond_d

    .line 169
    .line 170
    if-nez v12, :cond_c

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_c
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 174
    .line 175
    const-string v2, "received non-continuation data frame while inside fragmented message"

    .line 176
    .line 177
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :cond_d
    :goto_5
    if-eqz v6, :cond_e

    .line 182
    .line 183
    const/4 v4, 0x4

    .line 184
    goto :goto_6

    .line 185
    :cond_e
    const/4 v4, 0x0

    .line 186
    :goto_6
    const/16 v9, 0x7e

    .line 187
    .line 188
    if-ge v10, v9, :cond_f

    .line 189
    .line 190
    add-int/2addr v4, v8

    .line 191
    goto :goto_7

    .line 192
    :cond_f
    if-ne v10, v9, :cond_10

    .line 193
    .line 194
    const/16 v16, 0x4

    .line 195
    .line 196
    add-int/lit8 v4, v4, 0x4

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_10
    if-ne v10, v15, :cond_1c

    .line 200
    .line 201
    add-int/2addr v4, v5

    .line 202
    :goto_7
    if-lt v1, v4, :cond_1b

    .line 203
    .line 204
    const-string v1, "invalid data frame length (not using minimal length encoding)"

    .line 205
    .line 206
    const/4 v2, 0x3

    .line 207
    if-ne v10, v9, :cond_12

    .line 208
    .line 209
    aget-byte v3, v11, v8

    .line 210
    .line 211
    and-int/lit16 v3, v3, 0xff

    .line 212
    .line 213
    shl-int/2addr v3, v7

    .line 214
    aget-byte v2, v11, v2

    .line 215
    .line 216
    and-int/lit16 v2, v2, 0xff

    .line 217
    .line 218
    or-int/2addr v2, v3

    .line 219
    int-to-long v2, v2

    .line 220
    const-wide/16 v7, 0x7e

    .line 221
    .line 222
    cmp-long v5, v2, v7

    .line 223
    .line 224
    if-ltz v5, :cond_11

    .line 225
    .line 226
    move/from16 v17, v6

    .line 227
    .line 228
    const/4 v5, 0x4

    .line 229
    goto :goto_8

    .line 230
    :cond_11
    new-instance v2, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 231
    .line 232
    invoke-direct {v2, v1}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v2

    .line 236
    :cond_12
    if-ne v10, v15, :cond_15

    .line 237
    .line 238
    aget-byte v8, v11, v8

    .line 239
    .line 240
    and-int/lit16 v9, v8, 0x80

    .line 241
    .line 242
    if-nez v9, :cond_14

    .line 243
    .line 244
    and-int/lit16 v8, v8, 0xff

    .line 245
    .line 246
    int-to-long v8, v8

    .line 247
    const/16 v10, 0x38

    .line 248
    .line 249
    shl-long/2addr v8, v10

    .line 250
    aget-byte v2, v11, v2

    .line 251
    .line 252
    and-int/lit16 v2, v2, 0xff

    .line 253
    .line 254
    move/from16 v17, v6

    .line 255
    .line 256
    int-to-long v5, v2

    .line 257
    const/16 v2, 0x30

    .line 258
    .line 259
    shl-long/2addr v5, v2

    .line 260
    or-long/2addr v5, v8

    .line 261
    const/4 v2, 0x4

    .line 262
    aget-byte v8, v11, v2

    .line 263
    .line 264
    and-int/lit16 v2, v8, 0xff

    .line 265
    .line 266
    int-to-long v8, v2

    .line 267
    const/16 v2, 0x28

    .line 268
    .line 269
    shl-long/2addr v8, v2

    .line 270
    or-long/2addr v5, v8

    .line 271
    const/4 v2, 0x5

    .line 272
    aget-byte v2, v11, v2

    .line 273
    .line 274
    and-int/lit16 v2, v2, 0xff

    .line 275
    .line 276
    int-to-long v8, v2

    .line 277
    const/16 v2, 0x20

    .line 278
    .line 279
    shl-long/2addr v8, v2

    .line 280
    or-long/2addr v5, v8

    .line 281
    const/4 v2, 0x6

    .line 282
    aget-byte v2, v11, v2

    .line 283
    .line 284
    and-int/lit16 v2, v2, 0xff

    .line 285
    .line 286
    int-to-long v8, v2

    .line 287
    const/16 v2, 0x18

    .line 288
    .line 289
    shl-long/2addr v8, v2

    .line 290
    or-long/2addr v5, v8

    .line 291
    const/4 v2, 0x7

    .line 292
    aget-byte v2, v11, v2

    .line 293
    .line 294
    and-int/lit16 v2, v2, 0xff

    .line 295
    .line 296
    int-to-long v8, v2

    .line 297
    const/16 v2, 0x10

    .line 298
    .line 299
    shl-long/2addr v8, v2

    .line 300
    or-long/2addr v5, v8

    .line 301
    aget-byte v2, v11, v7

    .line 302
    .line 303
    and-int/lit16 v2, v2, 0xff

    .line 304
    .line 305
    int-to-long v8, v2

    .line 306
    shl-long v7, v8, v7

    .line 307
    .line 308
    or-long/2addr v5, v7

    .line 309
    aget-byte v2, v11, v3

    .line 310
    .line 311
    and-int/lit16 v2, v2, 0xff

    .line 312
    .line 313
    int-to-long v2, v2

    .line 314
    or-long/2addr v2, v5

    .line 315
    const-wide/32 v5, 0x10000

    .line 316
    .line 317
    .line 318
    cmp-long v7, v2, v5

    .line 319
    .line 320
    if-ltz v7, :cond_13

    .line 321
    .line 322
    const/16 v5, 0xa

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_13
    new-instance v2, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 326
    .line 327
    invoke-direct {v2, v1}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v2

    .line 331
    :cond_14
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 332
    .line 333
    const-string v2, "invalid data frame length (> 2^63)"

    .line 334
    .line 335
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v1

    .line 339
    :cond_15
    move/from16 v17, v6

    .line 340
    .line 341
    int-to-long v2, v10

    .line 342
    const/4 v5, 0x2

    .line 343
    :goto_8
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 344
    .line 345
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxFramePayloadSize()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    int-to-long v6, v1

    .line 350
    cmp-long v1, v2, v6

    .line 351
    .line 352
    if-gtz v1, :cond_1a

    .line 353
    .line 354
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 355
    .line 356
    const/4 v6, 0x0

    .line 357
    invoke-direct {v1, v6}, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;-><init>(Lcom/haima/hmcp/websocket/WebSocketReader$1;)V

    .line 358
    .line 359
    .line 360
    iput-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 361
    .line 362
    iput v12, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mOpcode:I

    .line 363
    .line 364
    iput-boolean v13, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mFin:Z

    .line 365
    .line 366
    iput v14, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mReserved:I

    .line 367
    .line 368
    long-to-int v3, v2

    .line 369
    iput v3, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mPayloadLen:I

    .line 370
    .line 371
    iput v4, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mHeaderLen:I

    .line 372
    .line 373
    add-int/2addr v4, v3

    .line 374
    iput v4, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mTotalLen:I

    .line 375
    .line 376
    if-eqz v17, :cond_16

    .line 377
    .line 378
    const/4 v2, 0x4

    .line 379
    new-array v3, v2, [B

    .line 380
    .line 381
    iput-object v3, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mMask:[B

    .line 382
    .line 383
    const/4 v1, 0x0

    .line 384
    :goto_9
    if-ge v1, v2, :cond_17

    .line 385
    .line 386
    iget-object v3, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 387
    .line 388
    iget-object v3, v3, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mMask:[B

    .line 389
    .line 390
    iget-object v4, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageData:[B

    .line 391
    .line 392
    add-int v6, v5, v1

    .line 393
    .line 394
    aget-byte v4, v4, v6

    .line 395
    .line 396
    and-int/lit16 v4, v4, 0xff

    .line 397
    .line 398
    int-to-byte v4, v4

    .line 399
    aput-byte v4, v3, v5

    .line 400
    .line 401
    add-int/lit8 v1, v1, 0x1

    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_16
    const/4 v2, 0x0

    .line 405
    iput-object v2, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mMask:[B

    .line 406
    .line 407
    :cond_17
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 408
    .line 409
    iget v2, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mPayloadLen:I

    .line 410
    .line 411
    if-eqz v2, :cond_19

    .line 412
    .line 413
    iget v2, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 414
    .line 415
    iget v1, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mTotalLen:I

    .line 416
    .line 417
    if-lt v2, v1, :cond_18

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_18
    const/4 v9, 0x0

    .line 421
    goto :goto_b

    .line 422
    :cond_19
    :goto_a
    const/4 v9, 0x1

    .line 423
    :goto_b
    return v9

    .line 424
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    const-string v4, "frame payload too large:"

    .line 430
    .line 431
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v2, ",max size:"

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    iget-object v2, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 443
    .line 444
    invoke-virtual {v2}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxFramePayloadSize()I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 459
    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    iget-object v3, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 469
    .line 470
    invoke-virtual {v3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxFramePayloadSize()I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v1

    .line 485
    :cond_1b
    const/4 v1, 0x0

    .line 486
    return v1

    .line 487
    :cond_1c
    new-instance v1, Ljava/lang/Exception;

    .line 488
    .line 489
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v1

    .line 493
    :cond_1d
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 494
    .line 495
    const-string v2, "masked server frame"

    .line 496
    .line 497
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v1

    .line 501
    :cond_1e
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 502
    .line 503
    const-string v2, "RSV != 0 and no extension negotiated"

    .line 504
    .line 505
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw v1

    .line 509
    :cond_1f
    const/4 v4, 0x0

    .line 510
    return v4

    .line 511
    :cond_20
    const/4 v4, 0x0

    .line 512
    iget v5, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 513
    .line 514
    iget v6, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mTotalLen:I

    .line 515
    .line 516
    if-lt v5, v6, :cond_37

    .line 517
    .line 518
    iget v5, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mPayloadLen:I

    .line 519
    .line 520
    if-lez v5, :cond_21

    .line 521
    .line 522
    new-array v6, v5, [B

    .line 523
    .line 524
    iget-object v9, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageData:[B

    .line 525
    .line 526
    iget v1, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mHeaderLen:I

    .line 527
    .line 528
    invoke-static {v9, v1, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    .line 530
    .line 531
    goto :goto_c

    .line 532
    :cond_21
    const/4 v6, 0x0

    .line 533
    :goto_c
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageData:[B

    .line 534
    .line 535
    iget-object v5, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 536
    .line 537
    iget v5, v5, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mTotalLen:I

    .line 538
    .line 539
    array-length v9, v1

    .line 540
    sub-int/2addr v9, v5

    .line 541
    invoke-static {v1, v5, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    .line 543
    .line 544
    iget v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 545
    .line 546
    iget-object v4, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 547
    .line 548
    iget v5, v4, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mTotalLen:I

    .line 549
    .line 550
    sub-int/2addr v1, v5

    .line 551
    iput v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 552
    .line 553
    iget v1, v4, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mOpcode:I

    .line 554
    .line 555
    const-string v5, "UTF-8"

    .line 556
    .line 557
    const/4 v9, 0x7

    .line 558
    if-le v1, v9, :cond_2a

    .line 559
    .line 560
    if-ne v1, v7, :cond_27

    .line 561
    .line 562
    iget v1, v4, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mPayloadLen:I

    .line 563
    .line 564
    if-lt v1, v8, :cond_25

    .line 565
    .line 566
    const/4 v2, 0x0

    .line 567
    aget-byte v3, v6, v2

    .line 568
    .line 569
    and-int/lit16 v2, v3, 0xff

    .line 570
    .line 571
    mul-int/lit16 v2, v2, 0x100

    .line 572
    .line 573
    const/4 v3, 0x1

    .line 574
    aget-byte v4, v6, v3

    .line 575
    .line 576
    and-int/lit16 v3, v4, 0xff

    .line 577
    .line 578
    add-int/2addr v2, v3

    .line 579
    const/16 v3, 0x3e8

    .line 580
    .line 581
    if-lt v2, v3, :cond_24

    .line 582
    .line 583
    if-lt v2, v3, :cond_22

    .line 584
    .line 585
    const/16 v4, 0xbb7

    .line 586
    .line 587
    if-gt v2, v4, :cond_22

    .line 588
    .line 589
    if-eq v2, v3, :cond_22

    .line 590
    .line 591
    const/16 v3, 0x3e9

    .line 592
    .line 593
    if-eq v2, v3, :cond_22

    .line 594
    .line 595
    const/16 v3, 0x3ea

    .line 596
    .line 597
    if-eq v2, v3, :cond_22

    .line 598
    .line 599
    const/16 v3, 0x3eb

    .line 600
    .line 601
    if-eq v2, v3, :cond_22

    .line 602
    .line 603
    const/16 v3, 0x3ef

    .line 604
    .line 605
    if-eq v2, v3, :cond_22

    .line 606
    .line 607
    const/16 v3, 0x3f0

    .line 608
    .line 609
    if-eq v2, v3, :cond_22

    .line 610
    .line 611
    const/16 v3, 0x3f1

    .line 612
    .line 613
    if-eq v2, v3, :cond_22

    .line 614
    .line 615
    const/16 v3, 0x3f2

    .line 616
    .line 617
    if-eq v2, v3, :cond_22

    .line 618
    .line 619
    const/16 v3, 0x3f3

    .line 620
    .line 621
    if-ne v2, v3, :cond_24

    .line 622
    .line 623
    :cond_22
    const/16 v3, 0x1388

    .line 624
    .line 625
    if-ge v2, v3, :cond_24

    .line 626
    .line 627
    if-le v1, v8, :cond_26

    .line 628
    .line 629
    add-int/lit8 v3, v1, -0x2

    .line 630
    .line 631
    new-array v3, v3, [B

    .line 632
    .line 633
    sub-int/2addr v1, v8

    .line 634
    const/4 v4, 0x0

    .line 635
    invoke-static {v6, v8, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    .line 637
    .line 638
    new-instance v1, Lcom/haima/hmcp/websocket/utils/Utf8Validator;

    .line 639
    .line 640
    invoke-direct {v1}, Lcom/haima/hmcp/websocket/utils/Utf8Validator;-><init>()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v3}, Lcom/haima/hmcp/websocket/utils/Utf8Validator;->validate([B)Z

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/utils/Utf8Validator;->isValid()Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-eqz v1, :cond_23

    .line 651
    .line 652
    new-instance v6, Ljava/lang/String;

    .line 653
    .line 654
    invoke-direct {v6, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 655
    .line 656
    .line 657
    goto :goto_d

    .line 658
    :cond_23
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 659
    .line 660
    const-string v2, "invalid close reasons (not UTF-8)"

    .line 661
    .line 662
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    throw v1

    .line 666
    :cond_24
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 667
    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .line 672
    .line 673
    const-string v4, "invalid close code "

    .line 674
    .line 675
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    throw v1

    .line 689
    :cond_25
    const/16 v2, 0x3ed

    .line 690
    .line 691
    :cond_26
    const/4 v6, 0x0

    .line 692
    :goto_d
    invoke-virtual {v0, v2, v6}, Lcom/haima/hmcp/websocket/WebSocketReader;->onClose(ILjava/lang/String;)V

    .line 693
    .line 694
    .line 695
    const/4 v1, 0x0

    .line 696
    iput v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mState:I

    .line 697
    .line 698
    goto :goto_e

    .line 699
    :cond_27
    if-ne v1, v3, :cond_28

    .line 700
    .line 701
    invoke-virtual {v0, v6}, Lcom/haima/hmcp/websocket/WebSocketReader;->onPing([B)V

    .line 702
    .line 703
    .line 704
    :goto_e
    const/4 v1, 0x0

    .line 705
    const/4 v3, 0x1

    .line 706
    goto/16 :goto_14

    .line 707
    .line 708
    :cond_28
    const/16 v3, 0xa

    .line 709
    .line 710
    if-ne v1, v3, :cond_29

    .line 711
    .line 712
    invoke-virtual {v0, v6}, Lcom/haima/hmcp/websocket/WebSocketReader;->onPong([B)V

    .line 713
    .line 714
    .line 715
    goto :goto_e

    .line 716
    :cond_29
    new-instance v1, Ljava/lang/Exception;

    .line 717
    .line 718
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    throw v1

    .line 722
    :cond_2a
    iget-boolean v3, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mInsideMessage:Z

    .line 723
    .line 724
    if-nez v3, :cond_2b

    .line 725
    .line 726
    const/4 v3, 0x1

    .line 727
    iput-boolean v3, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mInsideMessage:Z

    .line 728
    .line 729
    iput v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageOpcode:I

    .line 730
    .line 731
    if-ne v1, v3, :cond_2b

    .line 732
    .line 733
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 734
    .line 735
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getValidateIncomingUtf8()Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-eqz v1, :cond_2b

    .line 740
    .line 741
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mUtf8Validator:Lcom/haima/hmcp/websocket/utils/Utf8Validator;

    .line 742
    .line 743
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/utils/Utf8Validator;->reset()V

    .line 744
    .line 745
    .line 746
    :cond_2b
    if-eqz v6, :cond_2f

    .line 747
    .line 748
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessagePayload:Ljava/io/ByteArrayOutputStream;

    .line 749
    .line 750
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    array-length v3, v6

    .line 755
    add-int/2addr v1, v3

    .line 756
    iget-object v3, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 757
    .line 758
    invoke-virtual {v3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxMessagePayloadSize()I

    .line 759
    .line 760
    .line 761
    move-result v3

    .line 762
    if-gt v1, v3, :cond_2e

    .line 763
    .line 764
    iget v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageOpcode:I

    .line 765
    .line 766
    const/4 v3, 0x1

    .line 767
    if-ne v1, v3, :cond_2d

    .line 768
    .line 769
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 770
    .line 771
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getValidateIncomingUtf8()Z

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    if-eqz v1, :cond_2d

    .line 776
    .line 777
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mUtf8Validator:Lcom/haima/hmcp/websocket/utils/Utf8Validator;

    .line 778
    .line 779
    invoke-virtual {v1, v6}, Lcom/haima/hmcp/websocket/utils/Utf8Validator;->validate([B)Z

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    if-eqz v1, :cond_2c

    .line 784
    .line 785
    goto :goto_f

    .line 786
    :cond_2c
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 787
    .line 788
    const-string v2, "invalid UTF-8 in text message payload"

    .line 789
    .line 790
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    throw v1

    .line 794
    :cond_2d
    :goto_f
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessagePayload:Ljava/io/ByteArrayOutputStream;

    .line 795
    .line 796
    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 797
    .line 798
    .line 799
    goto :goto_10

    .line 800
    :cond_2e
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 801
    .line 802
    const-string v2, "message payload too large"

    .line 803
    .line 804
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    throw v1

    .line 808
    :cond_2f
    :goto_10
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 809
    .line 810
    iget-boolean v1, v1, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;->mFin:Z

    .line 811
    .line 812
    if-eqz v1, :cond_35

    .line 813
    .line 814
    iget v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageOpcode:I

    .line 815
    .line 816
    const/4 v3, 0x1

    .line 817
    if-ne v1, v3, :cond_33

    .line 818
    .line 819
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 820
    .line 821
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getValidateIncomingUtf8()Z

    .line 822
    .line 823
    .line 824
    move-result v1

    .line 825
    if-eqz v1, :cond_31

    .line 826
    .line 827
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mUtf8Validator:Lcom/haima/hmcp/websocket/utils/Utf8Validator;

    .line 828
    .line 829
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/utils/Utf8Validator;->isValid()Z

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    if-eqz v1, :cond_30

    .line 834
    .line 835
    goto :goto_11

    .line 836
    :cond_30
    new-instance v1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 837
    .line 838
    const-string v2, "UTF-8 text message payload ended within Unicode code point"

    .line 839
    .line 840
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    throw v1

    .line 844
    :cond_31
    :goto_11
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 845
    .line 846
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getReceiveTextMessagesRaw()Z

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    if-eqz v1, :cond_32

    .line 851
    .line 852
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessagePayload:Ljava/io/ByteArrayOutputStream;

    .line 853
    .line 854
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketReader;->onRawTextMessage([B)V

    .line 859
    .line 860
    .line 861
    goto :goto_12

    .line 862
    :cond_32
    new-instance v1, Ljava/lang/String;

    .line 863
    .line 864
    iget-object v2, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessagePayload:Ljava/io/ByteArrayOutputStream;

    .line 865
    .line 866
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketReader;->onTextMessage(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    goto :goto_12

    .line 877
    :cond_33
    if-ne v1, v8, :cond_34

    .line 878
    .line 879
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessagePayload:Ljava/io/ByteArrayOutputStream;

    .line 880
    .line 881
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketReader;->onBinaryMessage([B)V

    .line 886
    .line 887
    .line 888
    :goto_12
    const/4 v1, 0x0

    .line 889
    iput-boolean v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mInsideMessage:Z

    .line 890
    .line 891
    iget-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessagePayload:Ljava/io/ByteArrayOutputStream;

    .line 892
    .line 893
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 894
    .line 895
    .line 896
    goto :goto_13

    .line 897
    :cond_34
    new-instance v1, Ljava/lang/Exception;

    .line 898
    .line 899
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    throw v1

    .line 903
    :cond_35
    const/4 v3, 0x1

    .line 904
    :goto_13
    const/4 v1, 0x0

    .line 905
    :goto_14
    iput-object v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mFrameHeader:Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;

    .line 906
    .line 907
    iget v1, v0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 908
    .line 909
    if-lez v1, :cond_36

    .line 910
    .line 911
    const/4 v9, 0x1

    .line 912
    goto :goto_15

    .line 913
    :cond_36
    const/4 v9, 0x0

    .line 914
    :goto_15
    return v9

    .line 915
    :cond_37
    const/4 v1, 0x0

    .line 916
    return v1
.end method

.method private processHandshake()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x4

    .line 4
    .line 5
    :goto_0
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_11

    .line 7
    .line 8
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageData:[B

    .line 9
    .line 10
    aget-byte v3, v2, v0

    .line 11
    .line 12
    const/16 v4, 0xd

    .line 13
    .line 14
    if-ne v3, v4, :cond_10

    .line 15
    .line 16
    add-int/lit8 v3, v0, 0x1

    .line 17
    .line 18
    aget-byte v3, v2, v3

    .line 19
    .line 20
    const/16 v5, 0xa

    .line 21
    .line 22
    if-ne v3, v5, :cond_10

    .line 23
    .line 24
    add-int/lit8 v3, v0, 0x2

    .line 25
    .line 26
    aget-byte v3, v2, v3

    .line 27
    .line 28
    if-ne v3, v4, :cond_10

    .line 29
    .line 30
    add-int/lit8 v3, v0, 0x3

    .line 31
    .line 32
    aget-byte v3, v2, v3

    .line 33
    .line 34
    if-ne v3, v5, :cond_10

    .line 35
    .line 36
    new-instance v3, Ljava/lang/String;

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x4

    .line 39
    .line 40
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v4, "UTF-8"

    .line 45
    .line 46
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "\r\n"

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    aget-object v3, v2, v1

    .line 56
    .line 57
    const-string v4, " "

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    array-length v6, v5

    .line 64
    const/4 v7, 0x2

    .line 65
    const/4 v8, 0x1

    .line 66
    if-lt v6, v7, :cond_f

    .line 67
    .line 68
    aget-object v6, v5, v1

    .line 69
    .line 70
    const-string v9, "HTTP"

    .line 71
    .line 72
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_0

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_0
    aget-object v3, v5, v1

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string v6, "HTTP/1.1"

    .line 87
    .line 88
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-nez v6, :cond_1

    .line 93
    .line 94
    new-array v0, v8, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v3, v0, v1

    .line 97
    .line 98
    const-string v2, "Unsupported HTTP version %s"

    .line 99
    .line 100
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->emitServerError(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_7

    .line 108
    .line 109
    :cond_1
    :try_start_0
    aget-object v3, v5, v8

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/16 v6, 0x65

    .line 120
    .line 121
    if-eq v3, v6, :cond_5

    .line 122
    .line 123
    array-length v0, v5

    .line 124
    if-le v0, v7, :cond_4

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const/4 v2, 0x2

    .line 132
    :goto_1
    array-length v6, v5

    .line 133
    if-ge v2, v6, :cond_3

    .line 134
    .line 135
    aget-object v6, v5, v2

    .line 136
    .line 137
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    array-length v6, v5

    .line 141
    sub-int/2addr v6, v8

    .line 142
    if-eq v2, v6, :cond_2

    .line 143
    .line 144
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const-string v0, ""

    .line 156
    .line 157
    :goto_2
    new-array v2, v7, [Ljava/lang/Object;

    .line 158
    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    aput-object v3, v2, v1

    .line 164
    .line 165
    aput-object v0, v2, v8

    .line 166
    .line 167
    const-string v0, "WebSocket connection upgrade failed (%d %s)"

    .line 168
    .line 169
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->emitServerError(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_5
    array-length v3, v2

    .line 179
    invoke-static {v2, v8, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, [Ljava/lang/String;

    .line 184
    .line 185
    invoke-direct {p0, v2}, Lcom/haima/hmcp/websocket/WebSocketReader;->parseHttpHeaders([Ljava/lang/String;)Ljava/util/Map;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const-string v3, "upgrade"

    .line 190
    .line 191
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-nez v4, :cond_6

    .line 196
    .line 197
    const-string v0, "HTTP Upgrade header missing"

    .line 198
    .line 199
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->emitServerError(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_7

    .line 203
    .line 204
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    check-cast v4, Ljava/lang/String;

    .line 209
    .line 210
    if-eqz v4, :cond_e

    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_7

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_7
    const-string v4, "connection"

    .line 224
    .line 225
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-nez v5, :cond_8

    .line 230
    .line 231
    const-string v0, "HTTP Connection header missing"

    .line 232
    .line 233
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->emitServerError(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_7

    .line 237
    .line 238
    :cond_8
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, Ljava/lang/String;

    .line 243
    .line 244
    const-string v6, ","

    .line 245
    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    array-length v6, v5

    .line 251
    const/4 v7, 0x0

    .line 252
    :goto_3
    if-ge v7, v6, :cond_a

    .line 253
    .line 254
    aget-object v9, v5, v7

    .line 255
    .line 256
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    if-eqz v9, :cond_9

    .line 265
    .line 266
    const/4 v3, 0x1

    .line 267
    goto :goto_4

    .line 268
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_a
    const/4 v3, 0x0

    .line 272
    :goto_4
    if-nez v3, :cond_b

    .line 273
    .line 274
    new-array v0, v8, [Ljava/lang/Object;

    .line 275
    .line 276
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    aput-object v2, v0, v1

    .line 281
    .line 282
    const-string v2, "HTTP Connection header does not include \'upgrade\' value (case-insensitive) : %s"

    .line 283
    .line 284
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->emitServerError(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_b
    const-string v3, "sec-websocket-accept"

    .line 293
    .line 294
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-nez v3, :cond_c

    .line 299
    .line 300
    const-string v0, "HTTP Sec-WebSocket-Accept header missing in opening handshake reply"

    .line 301
    .line 302
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->emitServerError(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_c
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageData:[B

    .line 307
    .line 308
    array-length v4, v3

    .line 309
    sub-int/2addr v4, v0

    .line 310
    invoke-static {v3, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    .line 312
    .line 313
    iget v3, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 314
    .line 315
    sub-int/2addr v3, v0

    .line 316
    iput v3, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 317
    .line 318
    if-lez v3, :cond_d

    .line 319
    .line 320
    const/4 v1, 0x1

    .line 321
    :cond_d
    const/4 v0, 0x3

    .line 322
    iput v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mState:I

    .line 323
    .line 324
    invoke-virtual {p0, v2}, Lcom/haima/hmcp/websocket/WebSocketReader;->onHandshake(Ljava/util/Map;)V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_e
    :goto_5
    new-array v0, v8, [Ljava/lang/Object;

    .line 329
    .line 330
    aput-object v4, v0, v1

    .line 331
    .line 332
    const-string v2, "HTTP Upgrade header different from \'websocket\' (case-insensitive) : %s"

    .line 333
    .line 334
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->emitServerError(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto :goto_7

    .line 342
    :catch_0
    new-array v0, v8, [Ljava/lang/Object;

    .line 343
    .line 344
    aget-object v2, v5, v8

    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    aput-object v2, v0, v1

    .line 351
    .line 352
    const-string v2, "Bad HTTP status code (\'%s\')"

    .line 353
    .line 354
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->emitServerError(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_f
    :goto_6
    new-array v0, v8, [Ljava/lang/Object;

    .line 363
    .line 364
    aput-object v3, v0, v1

    .line 365
    .line 366
    const-string v2, "Bad HTTP response status line %s"

    .line 367
    .line 368
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->emitServerError(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_10
    add-int/lit8 v0, v0, -0x1

    .line 377
    .line 378
    goto/16 :goto_0

    .line 379
    .line 380
    :cond_11
    :goto_7
    return v1
.end method


# virtual methods
.method protected onBinaryMessage([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/messages/BinaryMessage;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/haima/hmcp/websocket/messages/BinaryMessage;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onClose(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/messages/Close;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/haima/hmcp/websocket/messages/Close;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onHandshake(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/messages/ServerHandshake;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/haima/hmcp/websocket/messages/ServerHandshake;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onPing([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/messages/Ping;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/haima/hmcp/websocket/messages/Ping;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onPong([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/messages/Pong;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/haima/hmcp/websocket/messages/Pong;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onRawTextMessage([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/messages/RawTextMessage;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/haima/hmcp/websocket/messages/RawTextMessage;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onTextMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/messages/TextMessage;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/haima/hmcp/websocket/messages/TextMessage;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public quit()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mState:I

    .line 3
    .line 4
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketReader;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "Quit"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketReader;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "Running"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    :try_start_0
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mBufferedStream:Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessageData:[B

    .line 15
    .line 16
    iget v5, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 17
    .line 18
    array-length v6, v4

    .line 19
    sub-int/2addr v6, v5

    .line 20
    invoke-virtual {v3, v4, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v4, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 25
    .line 26
    add-int/2addr v4, v3

    .line 27
    iput v4, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mPosition:I

    .line 28
    .line 29
    if-lez v3, :cond_1

    .line 30
    .line 31
    :goto_0
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketReader;->consumeData()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget v4, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mState:I

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    iput-boolean v2, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mStopped:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    if-gez v3, :cond_3

    .line 46
    .line 47
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketReader;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string v4, "run() : ConnectionLost"

    .line 50
    .line 51
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 55
    .line 56
    new-instance v4, Lcom/haima/hmcp/websocket/messages/ConnectionLost;

    .line 57
    .line 58
    invoke-direct {v4, v1}, Lcom/haima/hmcp/websocket/messages/ConnectionLost;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v3, v4}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mStopped:Z

    .line 65
    .line 66
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mStopped:Z
    :try_end_0
    .catch Lcom/haima/hmcp/websocket/exceptions/WebSocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :catch_0
    move-exception v1

    .line 75
    :try_start_1
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketReader;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v5, "run() : Exception ("

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/Error;

    .line 107
    .line 108
    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v3}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catch_1
    move-exception v3

    .line 116
    iget v4, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mState:I

    .line 117
    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mSocket:Ljava/net/Socket;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_4

    .line 127
    .line 128
    sget-object v4, Lcom/haima/hmcp/websocket/WebSocketReader;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v6, "run() : SocketException ("

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 158
    .line 159
    new-instance v3, Lcom/haima/hmcp/websocket/messages/ConnectionLost;

    .line 160
    .line 161
    invoke-direct {v3, v1}, Lcom/haima/hmcp/websocket/messages/ConnectionLost;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v0, v3}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mStopped:Z

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :catch_2
    move-exception v1

    .line 171
    :try_start_2
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketReader;->TAG:Ljava/lang/String;

    .line 172
    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v5, "run() : WebSocketException ("

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 201
    .line 202
    new-instance v3, Lcom/haima/hmcp/websocket/messages/ProtocolViolation;

    .line 203
    .line 204
    invoke-direct {v3, v1}, Lcom/haima/hmcp/websocket/messages/ProtocolViolation;-><init>(Lcom/haima/hmcp/websocket/exceptions/WebSocketException;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v3}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :goto_3
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketReader;->TAG:Ljava/lang/String;

    .line 212
    .line 213
    const-string v1, "Ended"

    .line 214
    .line 215
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :goto_4
    iput-boolean v2, p0, Lcom/haima/hmcp/websocket/WebSocketReader;->mStopped:Z

    .line 220
    .line 221
    throw v0
.end method

.class public abstract Lio/netty/handler/ssl/SslClientHelloHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/ByteToMessageDecoder;",
        "Lio/netty/channel/ChannelOutboundHandler;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private handshakeBuffer:Lio/netty/buffer/ByteBuf;

.field private handshakeFailed:Z

.field private readPending:Z

.field private suppressRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/netty/handler/ssl/SslClientHelloHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$102(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/SslClientHelloHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->readPending:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->readPending:Z

    .line 2
    .line 3
    return p1
.end method

.method private releaseHandshakeBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 8
    .line 9
    return-void
.end method

.method private static releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->lookup(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    .line 17
    .line 18
    new-instance v1, Lio/netty/handler/ssl/SslClientHelloHandler$1;

    .line 19
    .line 20
    invoke-direct {v1, p0, p2, p1}, Lio/netty/handler/ssl/SslClientHelloHandler$1;-><init>(Lio/netty/handler/ssl/SslClientHelloHandler;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelHandlerContext;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_1
    move-exception p1

    .line 37
    invoke-static {p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    .line 2
    .line 3
    if-nez p3, :cond_c

    .line 4
    .line 5
    iget-boolean p3, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeFailed:Z

    .line 6
    .line 7
    if-nez p3, :cond_c

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, -0x1

    .line 19
    const/4 v3, -0x1

    .line 20
    :cond_0
    const/4 v4, 0x5

    .line 21
    if-lt v1, v4, :cond_c

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x1

    .line 28
    packed-switch v5, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :pswitch_0
    add-int/lit8 v5, v0, 0x1

    .line 34
    .line 35
    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v7, 0x3

    .line 40
    if-ne v5, v7, :cond_a

    .line 41
    .line 42
    add-int/lit8 v5, v0, 0x3

    .line 43
    .line 44
    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    add-int/2addr v5, v4

    .line 49
    if-ge v1, v5, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    if-ne v5, v4, :cond_2

    .line 53
    .line 54
    invoke-direct {p0, p1, p3}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    add-int v7, v0, v5

    .line 59
    .line 60
    if-ne v3, v2, :cond_7

    .line 61
    .line 62
    add-int/lit8 v3, v0, 0x4

    .line 63
    .line 64
    if-le v3, v7, :cond_3

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    add-int/lit8 v0, v0, 0x5

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eq v7, v6, :cond_4

    .line 74
    .line 75
    invoke-direct {p0, p1, p3}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/lit8 v5, v5, -0x4

    .line 86
    .line 87
    add-int/lit8 v6, v0, 0x4

    .line 88
    .line 89
    add-int/2addr v6, v4

    .line 90
    if-gt v6, v5, :cond_5

    .line 91
    .line 92
    add-int/2addr v3, v4

    .line 93
    invoke-virtual {p2, v3, v0}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    iget-object v4, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 102
    .line 103
    if-nez v4, :cond_6

    .line 104
    .line 105
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v4, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iput-object v4, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 117
    .line 118
    .line 119
    :goto_0
    move v8, v3

    .line 120
    move v3, v0

    .line 121
    move v0, v8

    .line 122
    :cond_7
    iget-object v4, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 123
    .line 124
    add-int/lit8 v6, v0, 0x5

    .line 125
    .line 126
    add-int/lit8 v7, v5, -0x5

    .line 127
    .line 128
    invoke-virtual {v4, p2, v6, v7}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 129
    .line 130
    .line 131
    add-int/2addr v0, v5

    .line 132
    sub-int/2addr v1, v5

    .line 133
    iget-object v4, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 134
    .line 135
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-gt v3, v4, :cond_0

    .line 140
    .line 141
    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object p3, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 149
    .line 150
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_1
    invoke-static {p2, v0}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    const/4 v1, -0x2

    .line 159
    if-eq v0, v1, :cond_9

    .line 160
    .line 161
    if-ne v0, v2, :cond_8

    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    invoke-direct {p0, p1, p3}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_9
    iput-boolean v6, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeFailed:Z

    .line 169
    .line 170
    new-instance v0, Lio/netty/handler/ssl/NotSslRecordException;

    .line 171
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v2, "not an SSL/TLS record: "

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-direct {v0, v1}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 201
    .line 202
    .line 203
    new-instance v1, Lio/netty/handler/ssl/SniCompletionEvent;

    .line 204
    .line 205
    invoke-direct {v1, v0}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 209
    .line 210
    .line 211
    invoke-static {p1, v0, v6}, Lio/netty/handler/ssl/SslUtils;->handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V

    .line 212
    .line 213
    .line 214
    throw v0

    .line 215
    :cond_a
    :goto_1
    invoke-direct {p0, p1, p3}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Lio/netty/handler/ssl/NotSslRecordException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    sget-object v1, Lio/netty/handler/ssl/SslClientHelloHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 221
    .line 222
    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_b

    .line 227
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v3, "Unexpected client hello packet: "

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-interface {v1, p2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    :cond_b
    invoke-direct {p0, p1, p3}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :catch_1
    move-exception p1

    .line 257
    throw p1

    .line 258
    :cond_c
    :goto_2
    return-void

    .line 259
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseHandshakeBuffer()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected abstract lookup(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->readPending:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

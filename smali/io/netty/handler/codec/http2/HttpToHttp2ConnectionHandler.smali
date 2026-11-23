.class public Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;
.super Lio/netty/handler/codec/http2/Http2ConnectionHandler;
.source "SourceFile"


# instance fields
.field private currentStreamId:I

.field private final validateHeaders:Z


# direct methods
.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 2
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V

    .line 4
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    return-void
.end method

.method private getStreamId(Lio/netty/handler/codec/http/HttpHeaders;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->incrementAndGetNextStreamId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1, v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method private static writeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;ILio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;)V
    .locals 13

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_DEPENDENCY_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    .line 11
    .line 12
    .line 13
    move-result v7

    .line 14
    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 15
    .line 16
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v2, 0x10

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getShort(Ljava/lang/CharSequence;S)S

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    invoke-virtual/range {p6 .. p6}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    .line 29
    .line 30
    .line 31
    move-result-object v12

    .line 32
    move-object v3, p1

    .line 33
    move-object v4, p0

    .line 34
    move v5, p2

    .line 35
    move-object/from16 v6, p4

    .line 36
    .line 37
    move/from16 v11, p5

    .line 38
    .line 39
    invoke-interface/range {v3 .. v12}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 12

    .line 1
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpMessage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpContent;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;

    .line 14
    .line 15
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, p3, v1, v2}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;-><init>(Lio/netty/channel/ChannelPromise;Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    .line 24
    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    instance-of v1, p2, Lio/netty/handler/codec/http/HttpMessage;

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move-object v1, p2

    .line 37
    check-cast v1, Lio/netty/handler/codec/http/HttpMessage;

    .line 38
    .line 39
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {p0, v2}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->getStreamId(Lio/netty/handler/codec/http/HttpHeaders;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    .line 48
    .line 49
    iget-boolean v2, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    .line 50
    .line 51
    invoke-static {v1, v2}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpMessage;Z)Lio/netty/handler/codec/http2/Http2Headers;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    instance-of v2, p2, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    move-object v2, p2

    .line 60
    check-cast v2, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 61
    .line 62
    invoke-interface {v2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    const/4 v10, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v10, 0x0

    .line 75
    :goto_0
    iget v3, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    .line 76
    .line 77
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    move-object v1, p1

    .line 82
    move-object v2, v8

    .line 83
    move v6, v10

    .line 84
    move-object v7, v0

    .line 85
    invoke-static/range {v1 .. v7}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;ILio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v10, 0x0

    .line 90
    :goto_1
    if-nez v10, :cond_6

    .line 91
    .line 92
    instance-of v1, p2, Lio/netty/handler/codec/http/HttpContent;

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    sget-object v1, Lio/netty/handler/codec/http/EmptyHttpHeaders;->INSTANCE:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    .line 97
    .line 98
    sget-object v2, Lio/netty/handler/codec/http2/EmptyHttp2Headers;->INSTANCE:Lio/netty/handler/codec/http2/EmptyHttp2Headers;

    .line 99
    .line 100
    instance-of v3, p2, Lio/netty/handler/codec/http/LastHttpContent;

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    move-object v1, p2

    .line 105
    check-cast v1, Lio/netty/handler/codec/http/LastHttpContent;

    .line 106
    .line 107
    invoke-interface {v1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-boolean v2, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    .line 112
    .line 113
    invoke-static {v1, v2}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Z)Lio/netty/handler/codec/http2/Http2Headers;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object v10, v1

    .line 118
    move-object v11, v2

    .line 119
    const/4 v1, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    move-object v10, v1

    .line 122
    move-object v11, v2

    .line 123
    const/4 v1, 0x0

    .line 124
    :goto_2
    move-object v2, p2

    .line 125
    check-cast v2, Lio/netty/handler/codec/http/HttpContent;

    .line 126
    .line 127
    invoke-interface {v2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    invoke-virtual {v10}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    const/4 v6, 0x1

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    const/4 v6, 0x0

    .line 142
    :goto_3
    iget v3, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    move-object v1, v8

    .line 150
    move-object v2, p1

    .line 151
    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2DataWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    .line 153
    .line 154
    :try_start_1
    invoke-virtual {v10}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_5

    .line 159
    .line 160
    iget v3, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    .line 161
    .line 162
    const/4 v6, 0x1

    .line 163
    move-object v1, p1

    .line 164
    move-object v2, v8

    .line 165
    move-object v4, v10

    .line 166
    move-object v5, v11

    .line 167
    move-object v7, v0

    .line 168
    invoke-static/range {v1 .. v7}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;ILio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .line 170
    .line 171
    :cond_5
    const/4 p3, 0x0

    .line 172
    goto :goto_4

    .line 173
    :catchall_0
    move-exception v1

    .line 174
    goto :goto_5

    .line 175
    :cond_6
    :goto_4
    if-eqz p3, :cond_7

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :catchall_1
    move-exception v1

    .line 179
    const/4 v9, 0x1

    .line 180
    :goto_5
    :try_start_2
    invoke-virtual {p0, p1, p3, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 184
    .line 185
    .line 186
    if-eqz v9, :cond_7

    .line 187
    .line 188
    :goto_6
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :cond_7
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->doneAllocatingPromises()Lio/netty/channel/ChannelPromise;

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :catchall_2
    move-exception p1

    .line 196
    if-eqz v9, :cond_8

    .line 197
    .line 198
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_8
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->doneAllocatingPromises()Lio/netty/channel/ChannelPromise;

    .line 202
    .line 203
    .line 204
    throw p1
.end method

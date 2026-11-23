.class public Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;
.super Lio/netty/handler/codec/http2/Http2EventAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;
    }
.end annotation


# static fields
.field private static final DEFAULT_SEND_DETECTOR:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;


# instance fields
.field protected final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final maxContentLength:I

.field private final messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private final propagateSettings:Z

.field private final sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

.field protected final validateHttpHeaders:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->DEFAULT_SEND_DETECTOR:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;IZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2EventAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lez p2, :cond_0

    .line 5
    .line 6
    const-string v0, "connection"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    .line 13
    .line 14
    iput-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 15
    .line 16
    iput p2, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->maxContentLength:I

    .line 17
    .line 18
    iput-boolean p3, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->validateHttpHeaders:Z

    .line 19
    .line 20
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->propagateSettings:Z

    .line 21
    .line 22
    sget-object p2, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->DEFAULT_SEND_DETECTOR:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    .line 23
    .line 24
    iput-object p2, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    .line 25
    .line 26
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance p3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string p4, "maxContentLength: "

    .line 41
    .line 42
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, " (expected: > 0)"

    .line 49
    .line 50
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method private processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V
    .locals 0

    .line 1
    if-eqz p4, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-eq p4, p3, :cond_0

    .line 8
    .line 9
    const/4 p4, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p4, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p3, p4, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0, p2, p3}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->putMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V

    .line 17
    .line 18
    .line 19
    :goto_1
    return-void
.end method


# virtual methods
.method protected fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p4, p3}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    int-to-long p3, p3

    .line 13
    invoke-static {p2, p3, p4}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected final getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 8
    .line 9
    return-object p1
.end method

.method protected newMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1, p2, p4, p3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpRequest;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1, p2, p4, p3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpResponse;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    return-object p1
.end method

.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    iget v7, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->maxContentLength:I

    .line 28
    .line 29
    sub-int v8, v7, v5

    .line 30
    .line 31
    if-gt v6, v8, :cond_1

    .line 32
    .line 33
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {v4, p3, p2, v5}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 38
    .line 39
    .line 40
    if-eqz p5, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1, v3, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/2addr v5, p4

    .line 46
    return v5

    .line 47
    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 48
    .line 49
    const/4 p3, 0x2

    .line 50
    new-array p3, p3, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    aput-object p4, p3, v3

    .line 57
    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    aput-object p2, p3, v2

    .line 63
    .line 64
    const-string p2, "Content length exceeded max of %d for stream id %d"

    .line 65
    .line 66
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    throw p1

    .line 71
    :cond_2
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 72
    .line 73
    new-array p3, v2, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    aput-object p2, p3, v3

    .line 80
    .line 81
    const-string p2, "Data Frame received for unknown stream id %d"

    .line 82
    .line 83
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    throw p1
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 4
    iget-object p6, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {p6, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p8

    .line 5
    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 6
    invoke-interface {p3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p6

    sget-object p7, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_DEPENDENCY_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {p7}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object p7

    invoke-virtual {p6, p7, p4}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 7
    :cond_0
    invoke-interface {p3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p4

    sget-object p6, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {p6}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object p6

    invoke-virtual {p4, p6, p5}, Lio/netty/handler/codec/http/HttpHeaders;->setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;

    .line 8
    invoke-direct {p0, p1, p2, p3, p8}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    :cond_1
    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {p4, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3, p5}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    :cond_0
    return-void
.end method

.method public onPushPromiseRead(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object p5, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 2
    .line 3
    invoke-interface {p5, p3}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    invoke-interface {p4}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText()Lio/netty/util/AsciiString;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p4, v0}, Lio/netty/handler/codec/http2/Http2Headers;->status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    move-object v2, p5

    .line 28
    move-object v3, p4

    .line 29
    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p4, :cond_1

    .line 35
    .line 36
    invoke-interface {p4}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_PROMISE_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 41
    .line 42
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p3, v1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 47
    .line 48
    .line 49
    invoke-interface {p4}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    sget-object p3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 54
    .line 55
    invoke-virtual {p3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    const/16 v1, 0x10

    .line 60
    .line 61
    invoke-virtual {p2, p3, v1}, Lio/netty/handler/codec/http/HttpHeaders;->setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, p5, p4, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 69
    .line 70
    const/4 p2, 0x1

    .line 71
    new-array p2, p2, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    aput-object p3, p2, v0

    .line 78
    .line 79
    const-string p3, "Push Promise Frame received for pre-existing stream id %d"

    .line 80
    .line 81
    invoke-static {p1, p3, p2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    throw p1
.end method

.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->onRstStreamRead(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V

    .line 4
    :cond_0
    invoke-static {p3, p4}, Lio/netty/handler/codec/http2/Http2Error;->valueOf(J)Lio/netty/handler/codec/http2/Http2Error;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "HTTP/2 to HTTP layer caught stream reset"

    invoke-static {p2, p3, v0, p4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method protected onRstStreamRead(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V

    return-void
.end method

.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->propagateSettings:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onStreamRemoved(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean p5, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->validateHttpHeaders:Z

    .line 9
    .line 10
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 11
    .line 12
    .line 13
    move-result-object p6

    .line 14
    invoke-virtual {p0, p2, p3, p5, p6}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->newMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 p3, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    if-eqz p5, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    .line 24
    .line 25
    .line 26
    move-result p5

    .line 27
    invoke-static {p5, p3, v0, p6}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, v1

    .line 32
    :goto_0
    const/4 p3, 0x0

    .line 33
    :goto_1
    iget-object p5, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    .line 34
    .line 35
    invoke-interface {p5, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;->mustSendImmediately(Lio/netty/handler/codec/http/FullHttpMessage;)Z

    .line 36
    .line 37
    .line 38
    move-result p5

    .line 39
    if-eqz p5, :cond_3

    .line 40
    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object p4, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    .line 45
    .line 46
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 47
    .line 48
    .line 49
    move-result-object p5

    .line 50
    invoke-interface {p4, p5, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;->copyIfNeeded(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/http/FullHttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_2
    invoke-virtual {p0, p1, v0, p3, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_3
    return-object v0
.end method

.method protected final putMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 2
    .line 3
    invoke-interface {p1, v0, p2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 8
    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected final removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->removeProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

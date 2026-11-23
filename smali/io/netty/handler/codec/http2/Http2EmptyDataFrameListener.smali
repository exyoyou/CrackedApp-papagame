.class final Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;
.super Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;
.source "SourceFile"


# instance fields
.field private emptyDataFrames:I

.field private final maxConsecutiveEmptyFrames:I

.field private violationDetected:Z


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2FrameListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;-><init>(Lio/netty/handler/codec/http2/Http2FrameListener;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "maxConsecutiveEmptyFrames"

    .line 5
    .line 6
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;->maxConsecutiveEmptyFrames:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p5, :cond_2

    .line 3
    .line 4
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v1, p0, Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;->emptyDataFrames:I

    .line 12
    .line 13
    add-int/lit8 v2, v1, 0x1

    .line 14
    .line 15
    iput v2, p0, Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;->emptyDataFrames:I

    .line 16
    .line 17
    iget v2, p0, Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;->maxConsecutiveEmptyFrames:I

    .line 18
    .line 19
    if-ne v1, v2, :cond_3

    .line 20
    .line 21
    iget-boolean v1, p0, Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;->violationDetected:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;->violationDetected:Z

    .line 28
    .line 29
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    .line 30
    .line 31
    new-array p1, p1, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    aput-object p3, p1, v0

    .line 38
    .line 39
    const-string p3, "Maximum number %d of empty data frames without end_of_stream flag received"

    .line 40
    .line 41
    invoke-static {p2, p3, p1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    throw p1

    .line 46
    :cond_2
    :goto_0
    iput v0, p0, Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;->emptyDataFrames:I

    .line 47
    .line 48
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p5}, Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;->onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;->emptyDataFrames:I

    .line 4
    invoke-super/range {p0 .. p8}, Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lio/netty/handler/codec/http2/Http2EmptyDataFrameListener;->emptyDataFrames:I

    .line 2
    invoke-super/range {p0 .. p5}, Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V

    return-void
.end method

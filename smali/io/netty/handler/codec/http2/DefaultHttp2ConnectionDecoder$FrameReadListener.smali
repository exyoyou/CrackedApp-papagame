.class final Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameReadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)V

    return-void
.end method

.method private applyLocalSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->pushEnabled()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 6
    .line 7
    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$600(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameReader;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader;->configuration()Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;->headersConfiguration()Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;->frameSizePolicy()Lio/netty/handler/codec/http2/Http2FrameSizePolicy;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 26
    .line 27
    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 38
    .line 39
    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-interface {v3, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->allowPushTo(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v1, "Server sending SETTINGS frame with ENABLE_PUSH specified"

    .line 61
    .line 62
    invoke-static {p1, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    throw p1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxConcurrentStreams()Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 74
    .line 75
    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    const-wide/32 v6, 0x7fffffff

    .line 88
    .line 89
    .line 90
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    long-to-int v0, v4

    .line 95
    invoke-interface {v3, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->maxActiveStreams(I)V

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->headerTableSize()Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    invoke-interface {v2, v3, v4}, Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;->maxHeaderTableSize(J)V

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxHeaderListSize()Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    iget-object v5, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    invoke-virtual {v5, v6, v7}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->calculateMaxHeaderListSizeGoAway(J)J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    invoke-interface {v2, v3, v4, v5, v6}, Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;->maxHeaderListSize(JJ)V

    .line 132
    .line 133
    .line 134
    :cond_4
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxFrameSize()Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2FrameSizePolicy;->maxFrameSize(I)V

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_6

    .line 152
    .line 153
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 154
    .line 155
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2FlowController;->initialWindowSize(I)V

    .line 164
    .line 165
    .line 166
    :cond_6
    return-void
.end method

.method private shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    if-nez p3, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->streamCreatedAfterGoAwaySent(I)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1000()Lio/netty/util/internal/logging/InternalLogger;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    aput-object p1, v0, v2

    .line 24
    .line 25
    aput-object p4, v0, v3

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v0, v1

    .line 32
    .line 33
    const-string p1, "{} ignoring {} frame for stream {}. Stream sent after GOAWAY sent"

    .line 34
    .line 35
    invoke-interface {p3, p1, v0}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return v3

    .line 39
    :cond_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(I)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    .line 43
    .line 44
    new-array p3, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object p4, p3, v2

    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    aput-object p4, p3, v3

    .line 53
    .line 54
    const-string p4, "Received %s frame for an unknown stream %d"

    .line 55
    .line 56
    invoke-static {p2, p1, p4, p3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    throw p1

    .line 61
    :cond_1
    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Stream;->isResetSent()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_3

    .line 66
    .line 67
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->streamCreatedAfterGoAwaySent(I)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return v2

    .line 75
    :cond_3
    :goto_0
    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1000()Lio/netty/util/internal/logging/InternalLogger;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p2}, Lio/netty/util/internal/logging/InternalLogger;->isInfoEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1000()Lio/netty/util/internal/logging/InternalLogger;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    aput-object p1, v0, v2

    .line 96
    .line 97
    aput-object p4, v0, v3

    .line 98
    .line 99
    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Stream;->isResetSent()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    const-string p1, "RST_STREAM sent."

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p3, "Stream created after GOAWAY sent. Last known stream by peer "

    .line 114
    .line 115
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 119
    .line 120
    invoke-static {p3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamKnownByPeer()I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_1
    aput-object p1, v0, v1

    .line 140
    .line 141
    const-string p1, "{} ignoring {} frame for stream {}"

    .line 142
    .line 143
    invoke-interface {p2, p1, v0}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    return v3
.end method

.method private streamCreatedAfterGoAwaySent(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 12
    .line 13
    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->goAwaySent()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->isValidStreamId(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamKnownByPeer()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-le p1, v0, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method private verifyStreamMayHaveExisted(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    aput-object p1, v1, v2

    .line 25
    .line 26
    const-string p1, "Stream %d does not exist"

    .line 27
    .line 28
    invoke-static {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    throw p1
.end method


# virtual methods
.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v4, p2

    .line 4
    .line 5
    move-object/from16 v5, p3

    .line 6
    .line 7
    move/from16 v6, p4

    .line 8
    .line 9
    move/from16 v8, p5

    .line 10
    .line 11
    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 12
    .line 13
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, v4}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int v11, v0, v6

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    :try_start_0
    const-string v0, "DATA"

    .line 36
    .line 37
    move-object/from16 v12, p1

    .line 38
    .line 39
    invoke-direct {v1, v12, v4, v9, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-interface {v10, v9, v5, v6, v8}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v10, v9, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v4}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(I)V

    .line 52
    .line 53
    .line 54
    return v11

    .line 55
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    .line 56
    .line 57
    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    aget v0, v0, v7

    .line 66
    .line 67
    if-eq v0, v3, :cond_2

    .line 68
    .line 69
    const/4 v7, 0x2

    .line 70
    if-eq v0, v7, :cond_2

    .line 71
    .line 72
    const/4 v13, 0x3

    .line 73
    const-string v14, "Stream %d in unexpected state: %s"

    .line 74
    .line 75
    if-eq v0, v13, :cond_1

    .line 76
    .line 77
    const/4 v13, 0x4

    .line 78
    if-eq v0, v13, :cond_1

    .line 79
    .line 80
    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    sget-object v13, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 85
    .line 86
    new-array v7, v7, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v15

    .line 96
    aput-object v15, v7, v2

    .line 97
    .line 98
    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    aput-object v2, v7, v3

    .line 103
    .line 104
    invoke-static {v0, v13, v14, v7}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    sget-object v13, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    .line 114
    .line 115
    new-array v7, v7, [Ljava/lang/Object;

    .line 116
    .line 117
    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    aput-object v15, v7, v2

    .line 126
    .line 127
    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    aput-object v2, v7, v3

    .line 132
    .line 133
    invoke-static {v0, v13, v14, v7}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    .line 139
    :goto_0
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 140
    .line 141
    invoke-static {v2, v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    :try_start_1
    invoke-interface {v10, v9, v5, v6, v8}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    .line 146
    .line 147
    .line 148
    iget-object v3, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 149
    .line 150
    invoke-static {v3, v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    .line 151
    .line 152
    .line 153
    move-result v13
    :try_end_1
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    if-nez v0, :cond_4

    .line 155
    .line 156
    :try_start_2
    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 157
    .line 158
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    move-object/from16 v3, p1

    .line 163
    .line 164
    move/from16 v4, p2

    .line 165
    .line 166
    move-object/from16 v5, p3

    .line 167
    .line 168
    move/from16 v6, p4

    .line 169
    .line 170
    move/from16 v7, p5

    .line 171
    .line 172
    invoke-interface/range {v2 .. v7}, Lio/netty/handler/codec/http2/Http2FrameListener;->onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I

    .line 173
    .line 174
    .line 175
    move-result v0
    :try_end_2
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    invoke-interface {v10, v9, v0}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    .line 177
    .line 178
    .line 179
    if-eqz v8, :cond_3

    .line 180
    .line 181
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 182
    .line 183
    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundInvoker;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-interface {v2, v9, v3}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStreamRemote(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    .line 192
    .line 193
    .line 194
    :cond_3
    return v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    move v2, v13

    .line 197
    goto :goto_1

    .line 198
    :catch_1
    move-exception v0

    .line 199
    move v2, v13

    .line 200
    goto :goto_2

    .line 201
    :cond_4
    :try_start_3
    throw v0
    :try_end_3
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    :catchall_0
    move-exception v0

    .line 203
    goto :goto_3

    .line 204
    :catch_2
    move-exception v0

    .line 205
    :goto_1
    :try_start_4
    iget-object v3, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 206
    .line 207
    invoke-static {v3, v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    sub-int/2addr v2, v3

    .line 212
    sub-int/2addr v11, v2

    .line 213
    throw v0

    .line 214
    :catch_3
    move-exception v0

    .line 215
    :goto_2
    iget-object v3, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 216
    .line 217
    invoke-static {v3, v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    sub-int/2addr v2, v3

    .line 222
    sub-int/2addr v11, v2

    .line 223
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    :goto_3
    invoke-interface {v10, v9, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    .line 225
    .line 226
    .line 227
    if-eqz v8, :cond_5

    .line 228
    .line 229
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 230
    .line 231
    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundInvoker;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-interface {v2, v9, v3}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStreamRemote(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    .line 240
    .line 241
    .line 242
    :cond_5
    throw v0

    .line 243
    :catchall_1
    move-exception v0

    .line 244
    sget-object v5, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 245
    .line 246
    new-array v3, v3, [Ljava/lang/Object;

    .line 247
    .line 248
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    aput-object v4, v3, v2

    .line 253
    .line 254
    const-string v2, "Unhandled error on data stream id %d"

    .line 255
    .line 256
    invoke-static {v5, v0, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    throw v0

    .line 261
    :catch_4
    move-exception v0

    .line 262
    invoke-interface {v10, v9, v5, v6, v8}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v10, v9, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    .line 266
    .line 267
    .line 268
    throw v0
.end method

.method public onGoAwayRead(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-wide v3, p3

    .line 6
    move-object v5, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->onGoAwayRead0(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    move-object v0, p0

    move v3, p2

    move/from16 v10, p8

    .line 2
    iget-object v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 3
    iget-object v5, v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v5

    invoke-interface {v5, p2}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4
    iget-object v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1, p2, v10}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object v11, v1

    const/4 v5, 0x0

    :goto_1
    const-string v1, "HEADERS"

    move-object v12, p1

    .line 6
    invoke-direct {p0, p1, p2, v11, v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpStatusClass;->valueOf(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v1

    sget-object v6, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    if-ne v1, v6, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v1, :cond_4

    if-nez v10, :cond_5

    .line 9
    :cond_4
    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->isHeadersReceived()Z

    move-result v8

    if-nez v8, :cond_c

    :cond_5
    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->isTrailersReceived()Z

    move-result v8

    if-nez v8, :cond_c

    .line 10
    sget-object v8, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v2, :cond_a

    if-eq v8, v7, :cond_a

    const-string v9, "Stream %d in unexpected state: %s"

    if-eq v8, v6, :cond_8

    const/4 v5, 0x4

    if-eq v8, v5, :cond_7

    const/4 v5, 0x5

    if-ne v8, v5, :cond_6

    .line 11
    invoke-interface {v11, v10}, Lio/netty/handler/codec/http2/Http2Stream;->open(Z)Lio/netty/handler/codec/http2/Http2Stream;

    goto :goto_3

    .line 12
    :cond_6
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 13
    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    aput-object v4, v3, v2

    .line 14
    invoke-static {v1, v9, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 15
    :cond_7
    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    new-array v5, v7, [Ljava/lang/Object;

    .line 16
    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    aput-object v4, v5, v2

    .line 17
    invoke-static {v1, v3, v9, v5}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    :cond_8
    if-eqz v5, :cond_9

    goto :goto_3

    .line 18
    :cond_9
    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    new-array v5, v7, [Ljava/lang/Object;

    .line 19
    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    aput-object v4, v5, v2

    .line 20
    invoke-static {v1, v3, v9, v5}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 21
    :cond_a
    :goto_3
    invoke-interface {v11, v1}, Lio/netty/handler/codec/http2/Http2Stream;->headersReceived(Z)Lio/netty/handler/codec/http2/Http2Stream;

    .line 22
    iget-object v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface {v1, p2, v5, v6, v7}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->updateDependencyTree(IISZ)V

    .line 23
    iget-object v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    if-eqz v10, :cond_b

    .line 24
    iget-object v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStreamRemote(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    :cond_b
    return-void

    .line 25
    :cond_c
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v5, v6, [Ljava/lang/Object;

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    aput-object v2, v5, v7

    const-string v2, "Stream %d received too many headers EOS: %s state: %s"

    .line 27
    invoke-static {p2, v1, v2, v5}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    .line 1
    invoke-virtual/range {v0 .. v8}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    return-void
.end method

.method public onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 10
    .line 11
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    move-object v2, p1

    .line 21
    move-wide v4, p2

    .line 22
    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 26
    .line 27
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onPriorityRead(Lio/netty/channel/ChannelHandlerContext;IISZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p2, p3, p4, p5}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->updateDependencyTree(IISZ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 15
    .line 16
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, p1

    .line 21
    move v3, p2

    .line 22
    move v4, p3

    .line 23
    move v5, p4

    .line 24
    move v6, p5

    .line 25
    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPriorityRead(Lio/netty/channel/ChannelHandlerContext;IISZ)V

    .line 26
    .line 27
    .line 28
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
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_7

    .line 13
    .line 14
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 15
    .line 16
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "PUSH_PROMISE"

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, v0, v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 v2, 0x1

    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    sget-object v3, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    .line 37
    .line 38
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    aget v3, v3, v4

    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    if-eq v3, v2, :cond_2

    .line 50
    .line 51
    if-ne v3, v4, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 55
    .line 56
    new-array p2, v4, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    aput-object p3, p2, v1

    .line 67
    .line 68
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    aput-object p3, p2, v2

    .line 73
    .line 74
    const-string p3, "Stream %d in unexpected state for receiving push promise: %s"

    .line 75
    .line 76
    invoke-static {p1, p3, p2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    throw p1

    .line 81
    :cond_2
    :goto_0
    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 82
    .line 83
    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$900(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v3, p1, p4}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->isAuthoritative(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 94
    .line 95
    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$900(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v3, p4}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->isCacheable(Lio/netty/handler/codec/http2/Http2Headers;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 106
    .line 107
    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$900(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v3, p4}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->isSafe(Lio/netty/handler/codec/http2/Http2Headers;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 118
    .line 119
    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-interface {v1, p3, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->reservePushStream(ILio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2Stream;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 131
    .line 132
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    move-object v2, p1

    .line 137
    move v3, p2

    .line 138
    move v4, p3

    .line 139
    move-object v5, p4

    .line 140
    move v6, p5

    .line 141
    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPushPromiseRead(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_3
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 146
    .line 147
    new-array p4, v4, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    aput-object p2, p4, v1

    .line 154
    .line 155
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    aput-object p2, p4, v2

    .line 160
    .line 161
    const-string p2, "Promised request on stream %d for promised stream %d is not known to be safe"

    .line 162
    .line 163
    invoke-static {p3, p1, p2, p4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    throw p1

    .line 168
    :cond_4
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 169
    .line 170
    new-array p4, v4, [Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    aput-object p2, p4, v1

    .line 177
    .line 178
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    aput-object p2, p4, v2

    .line 183
    .line 184
    const-string p2, "Promised request on stream %d for promised stream %d is not known to be cacheable"

    .line 185
    .line 186
    invoke-static {p3, p1, p2, p4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    throw p1

    .line 191
    :cond_5
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 192
    .line 193
    new-array p4, v4, [Ljava/lang/Object;

    .line 194
    .line 195
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    aput-object p2, p4, v1

    .line 200
    .line 201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    aput-object p2, p4, v2

    .line 206
    .line 207
    const-string p2, "Promised request on stream %d for promised stream %d is not authoritative"

    .line 208
    .line 209
    invoke-static {p3, p1, p2, p4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    throw p1

    .line 214
    :cond_6
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 215
    .line 216
    new-array p3, v2, [Ljava/lang/Object;

    .line 217
    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    aput-object p2, p3, v1

    .line 223
    .line 224
    const-string p2, "Stream %d does not exist"

    .line 225
    .line 226
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    throw p1

    .line 231
    :cond_7
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 232
    .line 233
    const-string p2, "A client cannot push."

    .line 234
    .line 235
    new-array p3, v1, [Ljava/lang/Object;

    .line 236
    .line 237
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    throw p1
.end method

.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    .line 18
    .line 19
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    aget v1, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    if-eq v1, v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x6

    .line 33
    if-eq v1, v2, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 36
    .line 37
    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2FrameListener;->onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 45
    .line 46
    invoke-static {p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p2, v0, p1}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 59
    .line 60
    const/4 p3, 0x1

    .line 61
    new-array p3, p3, [Ljava/lang/Object;

    .line 62
    .line 63
    const/4 p4, 0x0

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    aput-object p2, p3, p4

    .line 69
    .line 70
    const-string p2, "RST_STREAM received for IDLE stream %d"

    .line 71
    .line 72
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    throw p1

    .line 77
    :cond_2
    return-void
.end method

.method public onSettingsAckRead(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->pollSentSettings()Lio/netty/handler/codec/http2/Http2Settings;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->applyLocalSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 17
    .line 18
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2FrameListener;->onSettingsAckRead(Lio/netty/channel/ChannelHandlerContext;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 10
    .line 11
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 23
    .line 24
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 33
    .line 34
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;->consumeReceivedSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 42
    .line 43
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameListener;->onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onUnknownFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->onUnknownFrame0(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onWindowUpdateRead(Lio/netty/channel/ChannelHandlerContext;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lio/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->streamCreatedAfterGoAwaySent(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 29
    .line 30
    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1, v0, p3}, Lio/netty/handler/codec/http2/Http2FlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 42
    .line 43
    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameListener;->onWindowUpdateRead(Lio/netty/channel/ChannelHandlerContext;II)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

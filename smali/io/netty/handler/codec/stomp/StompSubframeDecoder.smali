.class public Lio/netty/handler/codec/stomp/StompSubframeDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;,
        Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;,
        Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x1fc4

.field private static final DEFAULT_MAX_LINE_LENGTH:I = 0x400


# instance fields
.field private alreadyReadChunkSize:I

.field private final commandParser:Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;

.field private contentLength:J

.field private final headerParser:Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;

.field private lastContent:Lio/netty/handler/codec/stomp/LastStompContentSubframe;

.field private final maxChunkSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x400

    const/16 v1, 0x1fc4

    .line 1
    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/stomp/StompSubframeDecoder;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/stomp/StompSubframeDecoder;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 2

    .line 4
    sget-object v0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->SKIP_CONTROL_CHARACTERS:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->contentLength:J

    const-string v0, "maxLineLength"

    .line 6
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    const-string v0, "maxChunkSize"

    .line 7
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 8
    iput p2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->maxChunkSize:I

    .line 9
    new-instance p2, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;

    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lio/netty/util/internal/AppendableCharSequence;-><init>(I)V

    invoke-direct {p2, v0, p1}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;-><init>(Lio/netty/util/internal/AppendableCharSequence;I)V

    iput-object p2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->commandParser:Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;

    .line 10
    new-instance p2, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;

    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lio/netty/util/internal/AppendableCharSequence;-><init>(I)V

    invoke-direct {p2, v0, p1, p3}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;-><init>(Lio/netty/util/internal/AppendableCharSequence;IZ)V

    iput-object p2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->headerParser:Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/16 v0, 0x400

    const/16 v1, 0x1fc4

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/stomp/StompSubframeDecoder;-><init>(IIZ)V

    return-void
.end method

.method private static getContentLength(Lio/netty/handler/codec/stomp/StompHeaders;)J
    .locals 5

    .line 1
    sget-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-interface {p0, v0, v1, v2}, Lio/netty/handler/codec/Headers;->getLong(Ljava/lang/Object;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    cmp-long p0, v3, v1

    .line 10
    .line 11
    if-ltz p0, :cond_0

    .line 12
    .line 13
    return-wide v3

    .line 14
    :cond_0
    new-instance p0, Lio/netty/handler/codec/DecoderException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " must be non-negative"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method private readCommand(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompCommand;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->commandParser:Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :try_start_0
    invoke-static {p1}, Lio/netty/handler/codec/stomp/StompCommand;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/stomp/StompCommand;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    new-instance v0, Lio/netty/handler/codec/DecoderException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Cannot to parse command "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_0
    new-instance p1, Lio/netty/handler/codec/DecoderException;

    .line 42
    .line 43
    const-string v0, "Failed to read command from channel"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method private readHeaders(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/stomp/StompHeaders;)Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->headerParser:Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->parseHeader(Lio/netty/handler/codec/stomp/StompHeaders;Lio/netty/buffer/ByteBuf;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lio/netty/handler/codec/stomp/StompHeaders;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    .line 10
    .line 11
    invoke-interface {p2, p1}, Lio/netty/handler/codec/Headers;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-static {p2}, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->getContentLength(Lio/netty/handler/codec/stomp/StompHeaders;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iput-wide p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->contentLength:J

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    cmp-long v2, p1, v0

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    sget-object p1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->FINALIZE_FRAME_READ:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    sget-object p1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->READ_CONTENT:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 33
    .line 34
    return-object p1
.end method

.method private resetDecoder()V
    .locals 2

    .line 1
    sget-object v0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->SKIP_CONTROL_CHARACTERS:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->contentLength:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->alreadyReadChunkSize:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->lastContent:Lio/netty/handler/codec/stomp/LastStompContentSubframe;

    .line 15
    .line 16
    return-void
.end method

.method private static skipControlCharacters(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static skipNullCharacter(Lio/netty/buffer/ByteBuf;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "unexpected byte in buffer "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " while expecting NULL byte"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 6
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
    sget-object v0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$1;->$SwitchMap$io$netty$handler$codec$stomp$StompSubframeDecoder$State:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->state()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v1, v0, v1

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {p2}, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->skipControlCharacters(Lio/netty/buffer/ByteBuf;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->READ_HEADERS:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    sget-object v1, Lio/netty/handler/codec/stomp/StompCommand;->UNKNOWN:Lio/netty/handler/codec/stomp/StompCommand;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->readCommand(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompCommand;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v3, Lio/netty/handler/codec/stomp/DefaultStompHeadersSubframe;

    .line 49
    .line 50
    invoke-direct {v3, v1}, Lio/netty/handler/codec/stomp/DefaultStompHeadersSubframe;-><init>(Lio/netty/handler/codec/stomp/StompCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-interface {v3}, Lio/netty/handler/codec/stomp/StompHeadersSubframe;->headers()Lio/netty/handler/codec/stomp/StompHeaders;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {p0, p2, v2}, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->readHeaders(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/stomp/StompHeaders;)Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    .line 67
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->state()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    aget v0, v0, v1

    .line 78
    .line 79
    const/4 v1, 0x4

    .line 80
    if-eq v0, v1, :cond_3

    .line 81
    .line 82
    const/4 p1, 0x5

    .line 83
    if-eq v0, p1, :cond_b

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    iget v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->maxChunkSize:I

    .line 95
    .line 96
    if-le v0, v1, :cond_5

    .line 97
    .line 98
    move v0, v1

    .line 99
    :cond_5
    iget-wide v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->contentLength:J

    .line 100
    .line 101
    const-wide/16 v3, 0x0

    .line 102
    .line 103
    cmp-long v5, v1, v3

    .line 104
    .line 105
    if-ltz v5, :cond_8

    .line 106
    .line 107
    iget v3, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->alreadyReadChunkSize:I

    .line 108
    .line 109
    int-to-long v3, v3

    .line 110
    sub-long/2addr v1, v3

    .line 111
    long-to-int v2, v1

    .line 112
    if-le v0, v2, :cond_6

    .line 113
    .line 114
    move v0, v2

    .line 115
    :cond_6
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->alreadyReadChunkSize:I

    .line 124
    .line 125
    add-int/2addr v1, v0

    .line 126
    iput v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->alreadyReadChunkSize:I

    .line 127
    .line 128
    int-to-long v0, v1

    .line 129
    iget-wide v2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->contentLength:J

    .line 130
    .line 131
    cmp-long v4, v0, v2

    .line 132
    .line 133
    if-ltz v4, :cond_7

    .line 134
    .line 135
    new-instance v0, Lio/netty/handler/codec/stomp/DefaultLastStompContentSubframe;

    .line 136
    .line 137
    invoke-direct {v0, p1}, Lio/netty/handler/codec/stomp/DefaultLastStompContentSubframe;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->lastContent:Lio/netty/handler/codec/stomp/LastStompContentSubframe;

    .line 141
    .line 142
    sget-object p1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->FINALIZE_FRAME_READ:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    new-instance p2, Lio/netty/handler/codec/stomp/DefaultStompContentSubframe;

    .line 149
    .line 150
    invoke-direct {p2, p1}, Lio/netty/handler/codec/stomp/DefaultStompContentSubframe;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_8
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const/4 v2, 0x0

    .line 166
    invoke-static {p2, v0, v1, v2}, Lio/netty/buffer/ByteBufUtil;->indexOf(Lio/netty/buffer/ByteBuf;IIB)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-ne v0, v1, :cond_9

    .line 175
    .line 176
    sget-object p1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->FINALIZE_FRAME_READ:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_9
    if-lez v0, :cond_a

    .line 183
    .line 184
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    sub-int v1, v0, v1

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_a
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    sub-int/2addr v1, v2

    .line 200
    :goto_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p1, p2, v1}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget v2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->alreadyReadChunkSize:I

    .line 209
    .line 210
    add-int/2addr v2, v1

    .line 211
    iput v2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->alreadyReadChunkSize:I

    .line 212
    .line 213
    if-lez v0, :cond_d

    .line 214
    .line 215
    new-instance v0, Lio/netty/handler/codec/stomp/DefaultLastStompContentSubframe;

    .line 216
    .line 217
    invoke-direct {v0, p1}, Lio/netty/handler/codec/stomp/DefaultLastStompContentSubframe;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 218
    .line 219
    .line 220
    iput-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->lastContent:Lio/netty/handler/codec/stomp/LastStompContentSubframe;

    .line 221
    .line 222
    sget-object p1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->FINALIZE_FRAME_READ:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 223
    .line 224
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_b
    :goto_2
    invoke-static {p2}, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->skipNullCharacter(Lio/netty/buffer/ByteBuf;)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->lastContent:Lio/netty/handler/codec/stomp/LastStompContentSubframe;

    .line 231
    .line 232
    if-nez p1, :cond_c

    .line 233
    .line 234
    sget-object p1, Lio/netty/handler/codec/stomp/LastStompContentSubframe;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/stomp/LastStompContentSubframe;

    .line 235
    .line 236
    iput-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->lastContent:Lio/netty/handler/codec/stomp/LastStompContentSubframe;

    .line 237
    .line 238
    :cond_c
    iget-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->lastContent:Lio/netty/handler/codec/stomp/LastStompContentSubframe;

    .line 239
    .line 240
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    invoke-direct {p0}, Lio/netty/handler/codec/stomp/StompSubframeDecoder;->resetDecoder()V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_d
    new-instance p2, Lio/netty/handler/codec/stomp/DefaultStompContentSubframe;

    .line 248
    .line 249
    invoke-direct {p2, p1}, Lio/netty/handler/codec/stomp/DefaultStompContentSubframe;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :catch_0
    move-exception p1

    .line 257
    new-instance p2, Lio/netty/handler/codec/stomp/DefaultLastStompContentSubframe;

    .line 258
    .line 259
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 260
    .line 261
    invoke-direct {p2, v0}, Lio/netty/handler/codec/stomp/DefaultLastStompContentSubframe;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 262
    .line 263
    .line 264
    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-interface {p2, p1}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    sget-object p1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->BAD_FRAME:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 275
    .line 276
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :goto_3
    return-void

    .line 280
    :catch_1
    move-exception p1

    .line 281
    move-object v2, v3

    .line 282
    goto :goto_4

    .line 283
    :catch_2
    move-exception p1

    .line 284
    :goto_4
    if-nez v2, :cond_e

    .line 285
    .line 286
    new-instance v2, Lio/netty/handler/codec/stomp/DefaultStompHeadersSubframe;

    .line 287
    .line 288
    invoke-direct {v2, v1}, Lio/netty/handler/codec/stomp/DefaultStompHeadersSubframe;-><init>(Lio/netty/handler/codec/stomp/StompCommand;)V

    .line 289
    .line 290
    .line 291
    :cond_e
    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-interface {v2, p1}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 296
    .line 297
    .line 298
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    sget-object p1, Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;->BAD_FRAME:Lio/netty/handler/codec/stomp/StompSubframeDecoder$State;

    .line 302
    .line 303
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    return-void
.end method

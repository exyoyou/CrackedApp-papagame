.class Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/stomp/StompSubframeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Utf8LineParser"
.end annotation


# instance fields
.field private final charSeq:Lio/netty/util/internal/AppendableCharSequence;

.field private interim:C

.field private lineLength:I

.field private final maxLineLength:I

.field private nextRead:Z


# direct methods
.method constructor <init>(Lio/netty/util/internal/AppendableCharSequence;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "charSeq"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lio/netty/util/internal/AppendableCharSequence;

    .line 11
    .line 12
    iput-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    .line 13
    .line 14
    iput p2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->maxLineLength:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method charSequence()Lio/netty/util/internal/AppendableCharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->reset()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/util/ByteProcessor;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    .line 19
    .line 20
    return-object p1
.end method

.method public process(B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    iput p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const/16 v0, 0xa

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    iget v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    .line 22
    .line 23
    iget v3, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->maxLineLength:I

    .line 24
    .line 25
    if-gt v0, v3, :cond_6

    .line 26
    .line 27
    iget-boolean v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->nextRead:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-char v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 32
    .line 33
    and-int/lit8 p1, p1, 0x3f

    .line 34
    .line 35
    shl-int/lit8 p1, p1, 0x6

    .line 36
    .line 37
    or-int/2addr p1, v0

    .line 38
    int-to-char p1, p1

    .line 39
    iput-char p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 40
    .line 41
    iput-boolean v2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->nextRead:Z

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-char v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v3, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    .line 49
    .line 50
    and-int/lit8 p1, p1, 0x3f

    .line 51
    .line 52
    or-int/2addr p1, v0

    .line 53
    int-to-char p1, p1

    .line 54
    invoke-virtual {v3, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    .line 55
    .line 56
    .line 57
    iput-char v2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-ltz p1, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    .line 63
    .line 64
    int-to-char p1, p1

    .line 65
    invoke-virtual {v0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    and-int/lit16 v0, p1, 0xe0

    .line 70
    .line 71
    const/16 v2, 0xc0

    .line 72
    .line 73
    if-ne v0, v2, :cond_5

    .line 74
    .line 75
    and-int/lit8 p1, p1, 0x1f

    .line 76
    .line 77
    shl-int/lit8 p1, p1, 0x6

    .line 78
    .line 79
    int-to-char p1, p1

    .line 80
    iput-char p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    and-int/lit8 p1, p1, 0xf

    .line 84
    .line 85
    shl-int/lit8 p1, p1, 0xc

    .line 86
    .line 87
    int-to-char p1, p1

    .line 88
    iput-char p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 89
    .line 90
    iput-boolean v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->nextRead:Z

    .line 91
    .line 92
    :goto_0
    return v1

    .line 93
    :cond_6
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v1, "An STOMP line is larger than "

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->maxLineLength:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, " bytes."

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p1, v0}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method protected reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    .line 8
    .line 9
    iput-char v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 10
    .line 11
    iput-boolean v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->nextRead:Z

    .line 12
    .line 13
    return-void
.end method

.class final Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;
.super Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/stomp/StompSubframeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderParser"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private valid:Z

.field private final validateHeaders:Z


# direct methods
.method constructor <init>(Lio/netty/util/internal/AppendableCharSequence;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;-><init>(Lio/netty/util/internal/AppendableCharSequence;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->validateHeaders:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method parseHeader(Lio/netty/handler/codec/stomp/StompHeaders;Lio/netty/buffer/ByteBuf;)Z
    .locals 2

    .line 1
    invoke-super {p0, p2}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->valid:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, v0, p2}, Lio/netty/handler/codec/Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->validateHeaders:Z

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "received an invalid header line \'"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 p2, 0x27

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v0, 0x3a

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "a header value or name contains a prohibited character \':\', "

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2

    .line 125
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 126
    return p1

    .line 127
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 128
    return p1
.end method

.method public process(B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x3a

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSequence()Lio/netty/util/internal/AppendableCharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v0, v1, p1}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->valid:Z

    .line 35
    .line 36
    return p1

    .line 37
    :cond_0
    const-string v0, ""

    .line 38
    .line 39
    iput-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iput-boolean v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->valid:Z

    .line 43
    .line 44
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->process(B)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method protected reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->valid:Z

    .line 6
    .line 7
    invoke-super {p0}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->reset()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

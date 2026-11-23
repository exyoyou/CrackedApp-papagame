.class public Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/channel/AddressedEnvelope<",
        "Lio/netty/handler/codec/dns/DnsResponse;",
        "Ljava/net/InetSocketAddress;",
        ">;>;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final recordEncoder:Lio/netty/handler/codec/dns/DnsRecordEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/dns/DnsRecordEncoder;->DEFAULT:Lio/netty/handler/codec/dns/DnsRecordEncoder;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;-><init>(Lio/netty/handler/codec/dns/DnsRecordEncoder;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/dns/DnsRecordEncoder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    const-string v0, "recordEncoder"

    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/dns/DnsRecordEncoder;

    iput-object p1, p0, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->recordEncoder:Lio/netty/handler/codec/dns/DnsRecordEncoder;

    return-void
.end method

.method private static encodeHeader(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/netty/handler/codec/dns/DnsMessage;->id()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lio/netty/handler/codec/dns/DnsMessage;->opCode()Lio/netty/handler/codec/dns/DnsOpCode;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lio/netty/handler/codec/dns/DnsOpCode;->byteValue()B

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 17
    .line 18
    shl-int/lit8 v0, v0, 0xb

    .line 19
    .line 20
    const v1, 0x8000

    .line 21
    .line 22
    .line 23
    or-int/2addr v0, v1

    .line 24
    invoke-interface {p0}, Lio/netty/handler/codec/dns/DnsResponse;->isAuthoritativeAnswer()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    or-int/lit16 v0, v0, 0x400

    .line 31
    .line 32
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/dns/DnsResponse;->isTruncated()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    or-int/lit16 v0, v0, 0x200

    .line 39
    .line 40
    :cond_1
    invoke-interface {p0}, Lio/netty/handler/codec/dns/DnsMessage;->isRecursionDesired()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    or-int/lit16 v0, v0, 0x100

    .line 47
    .line 48
    :cond_2
    invoke-interface {p0}, Lio/netty/handler/codec/dns/DnsResponse;->isRecursionAvailable()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    or-int/lit16 v0, v0, 0x80

    .line 55
    .line 56
    :cond_3
    invoke-interface {p0}, Lio/netty/handler/codec/dns/DnsMessage;->z()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    shl-int/lit8 v1, v1, 0x4

    .line 61
    .line 62
    or-int/2addr v0, v1

    .line 63
    invoke-interface {p0}, Lio/netty/handler/codec/dns/DnsResponse;->code()Lio/netty/handler/codec/dns/DnsResponseCode;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lio/netty/handler/codec/dns/DnsResponseCode;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    or-int/2addr v0, v1

    .line 72
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 73
    .line 74
    .line 75
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->QUESTION:Lio/netty/handler/codec/dns/DnsSection;

    .line 76
    .line 77
    invoke-interface {p0, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 82
    .line 83
    .line 84
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    .line 85
    .line 86
    invoke-interface {p0, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 91
    .line 92
    .line 93
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->AUTHORITY:Lio/netty/handler/codec/dns/DnsSection;

    .line 94
    .line 95
    invoke-interface {p0, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 100
    .line 101
    .line 102
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->ADDITIONAL:Lio/netty/handler/codec/dns/DnsSection;

    .line 103
    .line 104
    invoke-interface {p0, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private encodeQuestions(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->QUESTION:Lio/netty/handler/codec/dns/DnsSection;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->recordEncoder:Lio/netty/handler/codec/dns/DnsRecordEncoder;

    .line 11
    .line 12
    sget-object v3, Lio/netty/handler/codec/dns/DnsSection;->QUESTION:Lio/netty/handler/codec/dns/DnsSection;

    .line 13
    .line 14
    invoke-interface {p1, v3, v1}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lio/netty/handler/codec/dns/DnsQuestion;

    .line 19
    .line 20
    invoke-interface {v2, v3, p2}, Lio/netty/handler/codec/dns/DnsRecordEncoder;->encodeQuestion(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/buffer/ByteBuf;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private encodeRecords(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/handler/codec/dns/DnsSection;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->recordEncoder:Lio/netty/handler/codec/dns/DnsRecordEncoder;

    .line 9
    .line 10
    invoke-interface {p1, p2, v1}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-interface {v2, v3, p3}, Lio/netty/handler/codec/dns/DnsRecordEncoder;->encodeRecord(Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/buffer/ByteBuf;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method protected allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/AddressedEnvelope;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 p2, 0x400

    .line 6
    .line 7
    invoke-interface {p1, p2}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/AddressedEnvelope;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;",
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

    .line 2
    invoke-interface {p2}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 3
    invoke-interface {p2}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/dns/DnsResponse;

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/AddressedEnvelope;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-static {v1, p1}, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->encodeHeader(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/buffer/ByteBuf;)V

    .line 6
    invoke-direct {p0, v1, p1}, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->encodeQuestions(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/buffer/ByteBuf;)V

    .line 7
    sget-object p2, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    invoke-direct {p0, v1, p2, p1}, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->encodeRecords(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/handler/codec/dns/DnsSection;Lio/netty/buffer/ByteBuf;)V

    .line 8
    sget-object p2, Lio/netty/handler/codec/dns/DnsSection;->AUTHORITY:Lio/netty/handler/codec/dns/DnsSection;

    invoke-direct {p0, v1, p2, p1}, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->encodeRecords(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/handler/codec/dns/DnsSection;Lio/netty/buffer/ByteBuf;)V

    .line 9
    sget-object p2, Lio/netty/handler/codec/dns/DnsSection;->ADDITIONAL:Lio/netty/handler/codec/dns/DnsSection;

    invoke-direct {p0, v1, p2, p1}, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->encodeRecords(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/handler/codec/dns/DnsSection;Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance p2, Lio/netty/channel/socket/DatagramPacket;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 11
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 12
    throw p2
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lio/netty/channel/AddressedEnvelope;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/dns/DatagramDnsResponseEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/AddressedEnvelope;Ljava/util/List;)V

    return-void
.end method

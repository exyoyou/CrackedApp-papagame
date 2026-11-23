.class Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$1;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

.field final synthetic val$tcpCtx:Lio/netty/resolver/dns/TcpDnsQueryContext;


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;Lio/netty/resolver/dns/TcpDnsQueryContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$1;->this$2:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

    .line 2
    .line 3
    iput-object p2, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$1;->val$tcpCtx:Lio/netty/resolver/dns/TcpDnsQueryContext;

    .line 4
    .line 5
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast p2, Lio/netty/handler/codec/dns/DnsResponse;

    .line 6
    .line 7
    invoke-interface {p2}, Lio/netty/handler/codec/dns/DnsMessage;->id()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v4, 0x4

    .line 27
    new-array v4, v4, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v0, v4, v3

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    aput-object v6, v4, v5

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    aput-object v6, v4, v5

    .line 44
    .line 45
    const/4 v5, 0x3

    .line 46
    aput-object p2, v4, v5

    .line 47
    .line 48
    const-string v5, "{} RECEIVED: TCP [{}: {}], {}"

    .line 49
    .line 50
    invoke-interface {v2, v5, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v2, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$1;->this$2:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

    .line 54
    .line 55
    iget-object v4, v2, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;->this$1:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;

    .line 56
    .line 57
    iget-object v4, v4, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->this$0:Lio/netty/resolver/dns/DnsNameResolver;

    .line 58
    .line 59
    iget-object v4, v4, Lio/netty/resolver/dns/DnsNameResolver;->queryContextManager:Lio/netty/resolver/dns/DnsQueryContextManager;

    .line 60
    .line 61
    iget-object v2, v2, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;->val$res:Lio/netty/handler/codec/dns/DatagramDnsResponse;

    .line 62
    .line 63
    invoke-virtual {v2}, Lio/netty/handler/codec/dns/DatagramDnsResponse;->sender()Ljava/net/InetSocketAddress;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v4, v2, v1}, Lio/netty/resolver/dns/DnsQueryContextManager;->get(Ljava/net/InetSocketAddress;I)Lio/netty/resolver/dns/DnsQueryContext;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v4, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$1;->val$tcpCtx:Lio/netty/resolver/dns/TcpDnsQueryContext;

    .line 72
    .line 73
    if-ne v2, v4, :cond_1

    .line 74
    .line 75
    new-instance v0, Lio/netty/resolver/dns/DnsNameResolver$AddressedEnvelopeAdapter;

    .line 76
    .line 77
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 86
    .line 87
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 96
    .line 97
    invoke-direct {v0, v1, p1, p2}, Lio/netty/resolver/dns/DnsNameResolver$AddressedEnvelopeAdapter;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsResponse;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v0}, Lio/netty/resolver/dns/DnsQueryContext;->finish(Lio/netty/channel/AddressedEnvelope;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$1;->val$tcpCtx:Lio/netty/resolver/dns/TcpDnsQueryContext;

    .line 108
    .line 109
    const-string p2, "Received TCP response with unexpected ID"

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p1, p2, v2, v3}, Lio/netty/resolver/dns/DnsQueryContext;->tryFailure(Ljava/lang/String;Ljava/lang/Throwable;Z)Z

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string p2, "{} Received a DNS response with an unexpected ID: {}"

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {p1, p2, v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$1;->val$tcpCtx:Lio/netty/resolver/dns/TcpDnsQueryContext;

    .line 2
    .line 3
    const-string v1, "TCP fallback error"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p2, v2}, Lio/netty/resolver/dns/DnsQueryContext;->tryFailure(Ljava/lang/String;Ljava/lang/Throwable;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x4

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    iget-object v2, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$1;->this$2:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

    .line 36
    .line 37
    iget v2, v2, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;->val$queryId:I

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x1

    .line 44
    aput-object v2, v1, v3

    .line 45
    .line 46
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v2, 0x2

    .line 55
    aput-object p1, v1, v2

    .line 56
    .line 57
    const/4 p1, 0x3

    .line 58
    aput-object p2, v1, p1

    .line 59
    .line 60
    const-string p1, "{} Error during processing response: TCP [{}: {}]"

    .line 61
    .line 62
    invoke-interface {v0, p1, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

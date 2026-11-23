.class Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Lio/netty/channel/AddressedEnvelope<",
        "Lio/netty/handler/codec/dns/DnsResponse;",
        "Ljava/net/InetSocketAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

.field final synthetic val$channel:Lio/netty/channel/Channel;


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;Lio/netty/channel/Channel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$2;->this$2:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

    .line 2
    .line 3
    iput-object p2, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$2;->val$channel:Lio/netty/channel/Channel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$2;->val$channel:Lio/netty/channel/Channel;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$2;->this$2:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

    .line 13
    .line 14
    iget-object v0, v0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;->val$qCtx:Lio/netty/resolver/dns/DnsQueryContext;

    .line 15
    .line 16
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lio/netty/channel/AddressedEnvelope;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lio/netty/resolver/dns/DnsQueryContext;->finish(Lio/netty/channel/AddressedEnvelope;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$2;->this$2:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

    .line 26
    .line 27
    iget-object p1, p1, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;->val$res:Lio/netty/handler/codec/dns/DatagramDnsResponse;

    .line 28
    .line 29
    invoke-virtual {p1}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1$2;->this$2:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

    .line 34
    .line 35
    iget-object v0, p1, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;->val$qCtx:Lio/netty/resolver/dns/DnsQueryContext;

    .line 36
    .line 37
    iget-object p1, p1, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;->val$res:Lio/netty/handler/codec/dns/DatagramDnsResponse;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lio/netty/resolver/dns/DnsQueryContext;->finish(Lio/netty/channel/AddressedEnvelope;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

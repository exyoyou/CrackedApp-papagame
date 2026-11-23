.class public final Lio/netty/resolver/dns/SingletonDnsServerAddressStreamProvider;
.super Lio/netty/resolver/dns/UniSequentialDnsServerAddressStreamProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/netty/resolver/dns/DnsServerAddresses;->singleton(Ljava/net/InetSocketAddress;)Lio/netty/resolver/dns/DnsServerAddresses;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/UniSequentialDnsServerAddressStreamProvider;-><init>(Lio/netty/resolver/dns/DnsServerAddresses;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

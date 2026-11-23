.class abstract Lio/netty/resolver/dns/UniSequentialDnsServerAddressStreamProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/resolver/dns/DnsServerAddressStreamProvider;


# instance fields
.field private final addresses:Lio/netty/resolver/dns/DnsServerAddresses;


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsServerAddresses;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "addresses"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lio/netty/resolver/dns/DnsServerAddresses;

    .line 11
    .line 12
    iput-object p1, p0, Lio/netty/resolver/dns/UniSequentialDnsServerAddressStreamProvider;->addresses:Lio/netty/resolver/dns/DnsServerAddresses;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 0

    .line 1
    iget-object p1, p0, Lio/netty/resolver/dns/UniSequentialDnsServerAddressStreamProvider;->addresses:Lio/netty/resolver/dns/DnsServerAddresses;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

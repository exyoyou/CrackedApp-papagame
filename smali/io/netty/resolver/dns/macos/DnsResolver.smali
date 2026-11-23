.class final Lio/netty/resolver/dns/macos/DnsResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final domain:Ljava/lang/String;

.field private final nameservers:[Ljava/net/InetSocketAddress;

.field private final options:Ljava/lang/String;

.field private final port:I

.field private final searchOrder:I

.field private final searches:[Ljava/lang/String;

.field private final timeout:I


# direct methods
.method constructor <init>(Ljava/lang/String;[[BI[Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/netty/resolver/dns/macos/DnsResolver;->domain:Ljava/lang/String;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    new-array p1, p1, [Ljava/net/InetSocketAddress;

    .line 10
    .line 11
    iput-object p1, p0, Lio/netty/resolver/dns/macos/DnsResolver;->nameservers:[Ljava/net/InetSocketAddress;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    array-length v0, p2

    .line 15
    new-array v0, v0, [Ljava/net/InetSocketAddress;

    .line 16
    .line 17
    iput-object v0, p0, Lio/netty/resolver/dns/macos/DnsResolver;->nameservers:[Ljava/net/InetSocketAddress;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    array-length v1, p2

    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    aget-object v1, p2, v0

    .line 24
    .line 25
    iget-object v2, p0, Lio/netty/resolver/dns/macos/DnsResolver;->nameservers:[Ljava/net/InetSocketAddress;

    .line 26
    .line 27
    array-length v3, v1

    .line 28
    invoke-static {v1, p1, v3}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    aput-object v1, v2, v0

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    iput p3, p0, Lio/netty/resolver/dns/macos/DnsResolver;->port:I

    .line 38
    .line 39
    iput-object p4, p0, Lio/netty/resolver/dns/macos/DnsResolver;->searches:[Ljava/lang/String;

    .line 40
    .line 41
    iput-object p5, p0, Lio/netty/resolver/dns/macos/DnsResolver;->options:Ljava/lang/String;

    .line 42
    .line 43
    iput p6, p0, Lio/netty/resolver/dns/macos/DnsResolver;->timeout:I

    .line 44
    .line 45
    iput p7, p0, Lio/netty/resolver/dns/macos/DnsResolver;->searchOrder:I

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method domain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/macos/DnsResolver;->domain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method nameservers()[Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/macos/DnsResolver;->nameservers:[Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    return-object v0
.end method

.method options()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/macos/DnsResolver;->options:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method port()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/resolver/dns/macos/DnsResolver;->port:I

    .line 2
    .line 3
    return v0
.end method

.method searchOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/resolver/dns/macos/DnsResolver;->searchOrder:I

    .line 2
    .line 3
    return v0
.end method

.method searches()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/macos/DnsResolver;->searches:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method timeout()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/resolver/dns/macos/DnsResolver;->timeout:I

    .line 2
    .line 3
    return v0
.end method

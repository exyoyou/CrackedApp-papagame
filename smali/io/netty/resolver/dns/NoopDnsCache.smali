.class public final Lio/netty/resolver/dns/NoopDnsCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/resolver/dns/DnsCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/resolver/dns/NoopDnsCache$NoopDnsCacheEntry;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/resolver/dns/NoopDnsCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/netty/resolver/dns/NoopDnsCache;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/netty/resolver/dns/NoopDnsCache;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/netty/resolver/dns/NoopDnsCache;->INSTANCE:Lio/netty/resolver/dns/NoopDnsCache;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/Throwable;Lio/netty/channel/EventLoop;)Lio/netty/resolver/dns/DnsCacheEntry;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/InetAddress;JLio/netty/channel/EventLoop;)Lio/netty/resolver/dns/DnsCacheEntry;
    .locals 0

    .line 2
    new-instance p1, Lio/netty/resolver/dns/NoopDnsCache$NoopDnsCacheEntry;

    invoke-direct {p1, p3}, Lio/netty/resolver/dns/NoopDnsCache$NoopDnsCacheEntry;-><init>(Ljava/net/InetAddress;)V

    return-object p1
.end method

.method public clear()V
    .locals 0

    .line 1
    return-void
.end method

.method public clear(Ljava/lang/String;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lio/netty/resolver/dns/DnsCacheEntry;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lio/netty/resolver/dns/NoopDnsCache;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

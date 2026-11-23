.class public final enum Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

.field public static final enum AF_IPv4:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

.field public static final enum AF_IPv6:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

.field public static final enum AF_UNIX:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

.field public static final enum AF_UNSPEC:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

.field private static final FAMILY_MASK:B = -0x10t


# instance fields
.field private final byteValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 2
    .line 3
    const-string v1, "AF_UNSPEC"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;-><init>(Ljava/lang/String;IB)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_UNSPEC:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 10
    .line 11
    new-instance v1, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 12
    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    const-string v4, "AF_IPv4"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v1, v4, v5, v3}, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;-><init>(Ljava/lang/String;IB)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_IPv4:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 22
    .line 23
    new-instance v3, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 24
    .line 25
    const/16 v4, 0x20

    .line 26
    .line 27
    const-string v6, "AF_IPv6"

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    invoke-direct {v3, v6, v7, v4}, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;-><init>(Ljava/lang/String;IB)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_IPv6:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 34
    .line 35
    new-instance v4, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 36
    .line 37
    const/16 v6, 0x30

    .line 38
    .line 39
    const-string v8, "AF_UNIX"

    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    invoke-direct {v4, v8, v9, v6}, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;-><init>(Ljava/lang/String;IB)V

    .line 43
    .line 44
    .line 45
    sput-object v4, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_UNIX:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    new-array v6, v6, [Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 49
    .line 50
    aput-object v0, v6, v2

    .line 51
    .line 52
    aput-object v1, v6, v5

    .line 53
    .line 54
    aput-object v3, v6, v7

    .line 55
    .line 56
    aput-object v4, v6, v9

    .line 57
    .line 58
    sput-object v6, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->$VALUES:[Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 59
    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-byte p3, p0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->byteValue:B

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(B)Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;
    .locals 3

    and-int/lit8 p0, p0, -0x10

    int-to-byte v0, p0

    if-eqz v0, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_UNIX:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown address family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_IPv6:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_IPv4:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_UNSPEC:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;
    .locals 1

    .line 1
    const-class v0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->$VALUES:[Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->byteValue:B

    .line 2
    .line 3
    return v0
.end method

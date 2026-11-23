.class public final Lio/netty/handler/codec/socks/SocksAuthResponse;
.super Lio/netty/handler/codec/socks/SocksResponse;
.source "SourceFile"


# static fields
.field private static final SUBNEGOTIATION_VERSION:Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;


# instance fields
.field private final authStatus:Lio/netty/handler/codec/socks/SocksAuthStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;->AUTH_PASSWORD:Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;

    .line 2
    .line 3
    sput-object v0, Lio/netty/handler/codec/socks/SocksAuthResponse;->SUBNEGOTIATION_VERSION:Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/socks/SocksAuthStatus;)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/socks/SocksResponseType;->AUTH:Lio/netty/handler/codec/socks/SocksResponseType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/netty/handler/codec/socks/SocksResponse;-><init>(Lio/netty/handler/codec/socks/SocksResponseType;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "authStatus"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lio/netty/handler/codec/socks/SocksAuthStatus;

    .line 13
    .line 14
    iput-object p1, p0, Lio/netty/handler/codec/socks/SocksAuthResponse;->authStatus:Lio/netty/handler/codec/socks/SocksAuthStatus;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public authStatus()Lio/netty/handler/codec/socks/SocksAuthStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksAuthResponse;->authStatus:Lio/netty/handler/codec/socks/SocksAuthStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public encodeAsByteBuf(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/socks/SocksAuthResponse;->SUBNEGOTIATION_VERSION:Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;->byteValue()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksAuthResponse;->authStatus:Lio/netty/handler/codec/socks/SocksAuthStatus;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/netty/handler/codec/socks/SocksAuthStatus;->byteValue()B

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 17
    .line 18
    .line 19
    return-void
.end method

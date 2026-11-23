.class public abstract Lio/netty/handler/codec/socks/SocksMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final protocolVersion:Lio/netty/handler/codec/socks/SocksProtocolVersion;

.field private final type:Lio/netty/handler/codec/socks/SocksMessageType;


# direct methods
.method protected constructor <init>(Lio/netty/handler/codec/socks/SocksMessageType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/netty/handler/codec/socks/SocksProtocolVersion;->SOCKS5:Lio/netty/handler/codec/socks/SocksProtocolVersion;

    .line 5
    .line 6
    iput-object v0, p0, Lio/netty/handler/codec/socks/SocksMessage;->protocolVersion:Lio/netty/handler/codec/socks/SocksProtocolVersion;

    .line 7
    .line 8
    const-string v0, "type"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lio/netty/handler/codec/socks/SocksMessageType;

    .line 15
    .line 16
    iput-object p1, p0, Lio/netty/handler/codec/socks/SocksMessage;->type:Lio/netty/handler/codec/socks/SocksMessageType;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public abstract encodeAsByteBuf(Lio/netty/buffer/ByteBuf;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public protocolVersion()Lio/netty/handler/codec/socks/SocksProtocolVersion;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksMessage;->protocolVersion:Lio/netty/handler/codec/socks/SocksProtocolVersion;

    .line 2
    .line 3
    return-object v0
.end method

.method public type()Lio/netty/handler/codec/socks/SocksMessageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksMessage;->type:Lio/netty/handler/codec/socks/SocksMessageType;

    .line 2
    .line 3
    return-object v0
.end method

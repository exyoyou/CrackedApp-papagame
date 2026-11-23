.class public abstract Lio/netty/handler/codec/socks/SocksResponse;
.super Lio/netty/handler/codec/socks/SocksMessage;
.source "SourceFile"


# instance fields
.field private final responseType:Lio/netty/handler/codec/socks/SocksResponseType;


# direct methods
.method protected constructor <init>(Lio/netty/handler/codec/socks/SocksResponseType;)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/socks/SocksMessageType;->RESPONSE:Lio/netty/handler/codec/socks/SocksMessageType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/netty/handler/codec/socks/SocksMessage;-><init>(Lio/netty/handler/codec/socks/SocksMessageType;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "responseType"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lio/netty/handler/codec/socks/SocksResponseType;

    .line 13
    .line 14
    iput-object p1, p0, Lio/netty/handler/codec/socks/SocksResponse;->responseType:Lio/netty/handler/codec/socks/SocksResponseType;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public responseType()Lio/netty/handler/codec/socks/SocksResponseType;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksResponse;->responseType:Lio/netty/handler/codec/socks/SocksResponseType;

    .line 2
    .line 3
    return-object v0
.end method

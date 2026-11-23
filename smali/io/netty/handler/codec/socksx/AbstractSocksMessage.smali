.class public abstract Lio/netty/handler/codec/socksx/AbstractSocksMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/socksx/SocksMessage;


# instance fields
.field private decoderResult:Lio/netty/handler/codec/DecoderResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    .line 5
    .line 6
    iput-object v0, p0, Lio/netty/handler/codec/socksx/AbstractSocksMessage;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public decoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/socksx/AbstractSocksMessage;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
    .locals 1

    .line 1
    const-string v0, "decoderResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/netty/handler/codec/DecoderResult;

    .line 8
    .line 9
    iput-object p1, p0, Lio/netty/handler/codec/socksx/AbstractSocksMessage;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    .line 10
    .line 11
    return-void
.end method

.class public final Lio/netty/handler/codec/haproxy/HAProxySSLTLV;
.super Lio/netty/handler/codec/haproxy/HAProxyTLV;
.source "SourceFile"


# instance fields
.field private final clientBitField:B

.field private final tlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;"
        }
    .end annotation
.end field

.field private final verify:I


# direct methods
.method constructor <init>(IBLjava/util/List;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IB",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_SSL:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p4}, Lio/netty/handler/codec/haproxy/HAProxyTLV;-><init>(Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;BLio/netty/buffer/ByteBuf;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->verify:I

    .line 9
    .line 10
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->tlvs:Ljava/util/List;

    .line 15
    .line 16
    iput-byte p2, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->clientBitField:B

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public encapsulatedTLVs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->tlvs:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public isPP2ClientCertConn()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->clientBitField:B

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isPP2ClientCertSess()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->clientBitField:B

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isPP2ClientSSL()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->clientBitField:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public verify()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->verify:I

    .line 2
    .line 3
    return v0
.end method

.class public final synthetic Lio/netty/channel/socket/nio/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/nio/channels/spi/SelectorProvider;Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object p0

    return-object p0
.end method

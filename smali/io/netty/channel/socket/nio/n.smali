.class public final synthetic Lio/netty/channel/socket/nio/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/nio/channels/ServerSocketChannel;Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/ServerSocketChannel;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lio/netty/channel/socket/nio/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SocketChannel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/nio/channels/SocketChannel;->shutdownInput()Ljava/nio/channels/SocketChannel;

    move-result-object p0

    return-object p0
.end method

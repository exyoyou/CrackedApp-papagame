.class final Lorg/jboss/netty/channel/socket/nio/m;
.super Lorg/jboss/netty/channel/socket/nio/r;
.source "SourceFile"


# instance fields
.field volatile J:Lorg/jboss/netty/channel/j;

.field volatile K:Z

.field L:J

.field volatile M:Lorg/jboss/netty/util/f;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/t;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    invoke-static {}, Lorg/jboss/netty/channel/socket/nio/m;->u()Ljava/nio/channels/SocketChannel;

    .line 3
    .line 4
    .line 5
    move-result-object v5

    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/socket/nio/r;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/t;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->x(Lorg/jboss/netty/channel/e;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static u()Ljava/nio/channels/SocketChannel;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    .line 8
    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    :try_start_2
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    .line 14
    .line 15
    const-string v3, "Failed to enter non-blocking mode."

    .line 16
    .line 17
    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_1
    throw v1

    .line 30
    :catch_2
    move-exception v0

    .line 31
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    .line 32
    .line 33
    const-string v2, "Failed to open a socket."

    .line 34
    .line 35
    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

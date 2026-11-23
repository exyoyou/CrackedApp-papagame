.class public final Lcom/join/kotlin/network/message/MessageClientInitializer;
.super Lio/netty/channel/ChannelInitializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/socket/SocketChannel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/join/kotlin/network/message/MessageClientInitializer;",
        "Lio/netty/channel/ChannelInitializer;",
        "Lio/netty/channel/socket/SocketChannel;",
        "<init>",
        "()V",
        "initChannel",
        "",
        "ch",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic initChannel(Lio/netty/channel/Channel;)V
    .locals 0

    .line 1
    check-cast p1, Lio/netty/channel/socket/SocketChannel;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/network/message/MessageClientInitializer;->initChannel(Lio/netty/channel/socket/SocketChannel;)V

    return-void
.end method

.method protected initChannel(Lio/netty/channel/socket/SocketChannel;)V
    .locals 12
    .param p1    # Lio/netty/channel/socket/SocketChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 3
    new-instance v9, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;

    const/high16 v3, 0x200000

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;-><init>(IIIIIZ)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 4
    new-instance v3, Lio/netty/handler/codec/protobuf/ProtobufDecoder;

    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/protobuf/ProtobufDecoder;-><init>(Lcom/google/protobuf/MessageLite;)V

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 5
    new-instance v3, Lio/netty/handler/codec/LengthFieldPrepender;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v2}, Lio/netty/handler/codec/LengthFieldPrepender;-><init>(IIZ)V

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 6
    new-instance v3, Lio/netty/handler/codec/protobuf/ProtobufEncoder;

    invoke-direct {v3}, Lio/netty/handler/codec/protobuf/ProtobufEncoder;-><init>()V

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 7
    new-instance v3, Lio/netty/handler/logging/LoggingHandler;

    invoke-direct {v3}, Lio/netty/handler/logging/LoggingHandler;-><init>()V

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 8
    new-instance v11, Lio/netty/handler/timeout/IdleStateHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lio/netty/handler/timeout/IdleStateHandler;-><init>(JJJLjava/util/concurrent/TimeUnit;)V

    aput-object v11, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v0, v0, [Lio/netty/channel/ChannelHandler;

    .line 9
    new-instance v1, Lcom/join/kotlin/network/message/MessageClientHandler;

    invoke-direct {v1}, Lcom/join/kotlin/network/message/MessageClientHandler;-><init>()V

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

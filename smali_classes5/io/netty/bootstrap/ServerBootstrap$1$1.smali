.class Lio/netty/bootstrap/ServerBootstrap$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/ServerBootstrap$1;->initChannel(Lio/netty/channel/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/bootstrap/ServerBootstrap$1;

.field final synthetic val$ch:Lio/netty/channel/Channel;

.field final synthetic val$pipeline:Lio/netty/channel/ChannelPipeline;


# direct methods
.method constructor <init>(Lio/netty/bootstrap/ServerBootstrap$1;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/Channel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->this$1:Lio/netty/bootstrap/ServerBootstrap$1;

    .line 2
    .line 3
    iput-object p2, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->val$pipeline:Lio/netty/channel/ChannelPipeline;

    .line 4
    .line 5
    iput-object p3, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->val$ch:Lio/netty/channel/Channel;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->val$pipeline:Lio/netty/channel/ChannelPipeline;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Lio/netty/channel/ChannelHandler;

    .line 5
    .line 6
    new-instance v8, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;

    .line 7
    .line 8
    iget-object v3, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->val$ch:Lio/netty/channel/Channel;

    .line 9
    .line 10
    iget-object v2, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->this$1:Lio/netty/bootstrap/ServerBootstrap$1;

    .line 11
    .line 12
    iget-object v4, v2, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildGroup:Lio/netty/channel/EventLoopGroup;

    .line 13
    .line 14
    iget-object v5, v2, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildHandler:Lio/netty/channel/ChannelHandler;

    .line 15
    .line 16
    iget-object v6, v2, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildOptions:[Ljava/util/Map$Entry;

    .line 17
    .line 18
    iget-object v7, v2, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildAttrs:[Ljava/util/Map$Entry;

    .line 19
    .line 20
    move-object v2, v8

    .line 21
    invoke-direct/range {v2 .. v7}, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/EventLoopGroup;Lio/netty/channel/ChannelHandler;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v8, v1, v2

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 28
    .line 29
    .line 30
    return-void
.end method

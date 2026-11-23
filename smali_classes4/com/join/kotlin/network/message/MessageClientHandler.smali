.class public final Lcom/join/kotlin/network/message/MessageClientHandler;
.super Lio/netty/channel/SimpleChannelInboundHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/SimpleChannelInboundHandler<",
        "Lcom/wufan/user/service/protobuf/MessageProto$Response;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001c\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u0012\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0012\u0010\u000f\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001c\u0010\u0010\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/join/kotlin/network/message/MessageClientHandler;",
        "Lio/netty/channel/SimpleChannelInboundHandler;",
        "Lcom/wufan/user/service/protobuf/MessageProto$Response;",
        "<init>",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "channelRead0",
        "",
        "ctx",
        "Lio/netty/channel/ChannelHandlerContext;",
        "msg",
        "channelActive",
        "channelInactive",
        "userEventTriggered",
        "evt",
        "",
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


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/channel/SimpleChannelInboundHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MessageClientHandler"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/kotlin/network/message/MessageClientHandler;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1    # Lio/netty/channel/ChannelHandlerContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/kotlin/network/message/MessageManager;->handleChanelActive()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1    # Lio/netty/channel/ChannelHandlerContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/kotlin/network/message/MessageManager;->setActiveState(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected channelRead0(Lio/netty/channel/ChannelHandlerContext;Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 0
    .param p1    # Lio/netty/channel/ChannelHandlerContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/network/message/MessageManager;->handleResponseMessage(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic channelRead0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/network/message/MessageClientHandler;->channelRead0(Lio/netty/channel/ChannelHandlerContext;Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClientHandler;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lio/netty/channel/ChannelHandlerContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lio/netty/handler/timeout/IdleStateEvent;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p2, Lio/netty/handler/timeout/IdleStateEvent;

    .line 9
    .line 10
    invoke-virtual {p2}, Lio/netty/handler/timeout/IdleStateEvent;->state()Lio/netty/handler/timeout/IdleState;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Lio/netty/handler/timeout/IdleState;->WRITER_IDLE:Lio/netty/handler/timeout/IdleState;

    .line 15
    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/kotlin/network/message/MessageManager;->sendHeartBeat()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

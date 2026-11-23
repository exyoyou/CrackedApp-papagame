.class public final Lio/netty/channel/sctp/SctpNotificationHandler;
.super Lcom/sun/nio/sctp/AbstractNotificationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/nio/sctp/AbstractNotificationHandler<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final sctpChannel:Lio/netty/channel/sctp/SctpChannel;


# direct methods
.method public constructor <init>(Lio/netty/channel/sctp/SctpChannel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/nio/sctp/AbstractNotificationHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sctpChannel"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lio/netty/channel/sctp/SctpChannel;

    .line 11
    .line 12
    iput-object p1, p0, Lio/netty/channel/sctp/SctpNotificationHandler;->sctpChannel:Lio/netty/channel/sctp/SctpChannel;

    .line 13
    .line 14
    return-void
.end method

.method private fireEvent(Lcom/sun/nio/sctp/Notification;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/sctp/SctpNotificationHandler;->sctpChannel:Lio/netty/channel/sctp/SctpChannel;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public handleNotification(Lcom/sun/nio/sctp/AssociationChangeNotification;Ljava/lang/Object;)Lcom/sun/nio/sctp/HandlerResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/channel/sctp/SctpNotificationHandler;->fireEvent(Lcom/sun/nio/sctp/Notification;)V

    .line 2
    sget-object p1, Lcom/sun/nio/sctp/HandlerResult;->CONTINUE:Lcom/sun/nio/sctp/HandlerResult;

    return-object p1
.end method

.method public handleNotification(Lcom/sun/nio/sctp/PeerAddressChangeNotification;Ljava/lang/Object;)Lcom/sun/nio/sctp/HandlerResult;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/netty/channel/sctp/SctpNotificationHandler;->fireEvent(Lcom/sun/nio/sctp/Notification;)V

    .line 4
    sget-object p1, Lcom/sun/nio/sctp/HandlerResult;->CONTINUE:Lcom/sun/nio/sctp/HandlerResult;

    return-object p1
.end method

.method public handleNotification(Lcom/sun/nio/sctp/SendFailedNotification;Ljava/lang/Object;)Lcom/sun/nio/sctp/HandlerResult;
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lio/netty/channel/sctp/SctpNotificationHandler;->fireEvent(Lcom/sun/nio/sctp/Notification;)V

    .line 6
    sget-object p1, Lcom/sun/nio/sctp/HandlerResult;->CONTINUE:Lcom/sun/nio/sctp/HandlerResult;

    return-object p1
.end method

.method public handleNotification(Lcom/sun/nio/sctp/ShutdownNotification;Ljava/lang/Object;)Lcom/sun/nio/sctp/HandlerResult;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lio/netty/channel/sctp/SctpNotificationHandler;->fireEvent(Lcom/sun/nio/sctp/Notification;)V

    .line 8
    iget-object p1, p0, Lio/netty/channel/sctp/SctpNotificationHandler;->sctpChannel:Lio/netty/channel/sctp/SctpChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    .line 9
    sget-object p1, Lcom/sun/nio/sctp/HandlerResult;->RETURN:Lcom/sun/nio/sctp/HandlerResult;

    return-object p1
.end method

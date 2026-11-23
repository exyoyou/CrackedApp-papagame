.class public final synthetic Lcom/join/kotlin/network/message/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/network/message/MessageClient;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/network/message/MessageClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/network/message/c;->b:Lcom/join/kotlin/network/message/MessageClient;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/c;->b:Lcom/join/kotlin/network/message/MessageClient;

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-static {v0, p1}, Lcom/join/kotlin/network/message/MessageClient;->a(Lcom/join/kotlin/network/message/MessageClient;Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

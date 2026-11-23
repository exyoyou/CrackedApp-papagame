.class Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannel$AbstractUnsafe;->shutdownOutput(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

.field final synthetic val$outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field final synthetic val$shutdownCause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    .line 2
    .line 3
    iput-object p2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->val$promise:Lio/netty/channel/ChannelPromise;

    .line 4
    .line 5
    iput-object p3, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->val$outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 6
    .line 7
    iput-object p4, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->val$shutdownCause:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    .line 2
    .line 3
    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->doShutdownOutput()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->val$promise:Lio/netty/channel/ChannelPromise;

    .line 9
    .line 10
    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    .line 14
    .line 15
    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4$1;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    :try_start_1
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->val$promise:Lio/netty/channel/ChannelPromise;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    .line 34
    .line 35
    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    .line 36
    .line 37
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4$1;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4$1;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    .line 52
    .line 53
    iget-object v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    .line 54
    .line 55
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4$1;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4$1;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

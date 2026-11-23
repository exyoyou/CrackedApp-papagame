.class final Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/AbstractKQueueServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KQueueServerSocketUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acceptedAddress:[B

.field final synthetic this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/AbstractKQueueServerChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x1a

    .line 7
    .line 8
    new-array p1, p1, [B

    .line 9
    .line 10
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->clearReadFilter0()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    .line 20
    .line 21
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p1, v2}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->attemptedBytesRead(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyBefore()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    .line 36
    .line 37
    iget-object v3, v3, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 38
    .line 39
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lio/netty/channel/unix/Socket;->accept([B)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, -0x1

    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1, v4}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1, v2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->incMessagesRead(I)V

    .line 56
    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    iput-boolean v4, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readPending:Z

    .line 60
    .line 61
    iget-object v5, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    .line 62
    .line 63
    iget-object v6, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    .line 64
    .line 65
    aget-byte v4, v6, v4

    .line 66
    .line 67
    invoke-virtual {v5, v3, v6, v2, v4}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->newChildChannel(I[BII)Lio/netty/channel/Channel;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v1, v3}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->continueReading()Z

    .line 75
    .line 76
    .line 77
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-nez v3, :cond_1

    .line 79
    .line 80
    :goto_0
    const/4 v2, 0x0

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception v2

    .line 83
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 87
    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catchall_1
    move-exception p1

    .line 99
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

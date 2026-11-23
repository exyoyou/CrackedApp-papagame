.class final Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;
.super Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/EpollDatagramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EpollDatagramChannelUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/EpollDatagramChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/EpollDatagramChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method epollInReady()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->clearEpollIn0()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 24
    .line 25
    sget v3, Lio/netty/channel/epoll/Native;->EPOLLET:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->isFlagSet(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->edgeTriggered(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 35
    .line 36
    invoke-virtual {v2}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v0}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInBefore()V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 51
    .line 52
    invoke-virtual {v4}, Lio/netty/channel/epoll/EpollDatagramChannel;->isConnected()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :cond_1
    invoke-virtual {v1, v3}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v6, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 61
    .line 62
    invoke-virtual {v6}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getMaxDatagramPayloadSize()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    sget-boolean v7, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_RECVMMSG:Z

    .line 71
    .line 72
    const/4 v8, 0x1

    .line 73
    const/4 v9, 0x0

    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    if-nez v6, :cond_2

    .line 77
    .line 78
    const/4 v7, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    div-int/2addr v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v7, 0x0

    .line 87
    :goto_0
    if-gt v7, v8, :cond_5

    .line 88
    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    :try_start_1
    iget-object v7, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 92
    .line 93
    invoke-static {v7, v1, v5, v6}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$000(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/buffer/ByteBuf;I)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    iget-object v7, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 99
    .line 100
    invoke-static {v7, v1, v5, v6}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$100(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/buffer/ByteBuf;I)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    iget-object v8, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 106
    .line 107
    invoke-static {v8, v1, v5, v6, v7}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$200(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/buffer/ByteBuf;II)Z

    .line 108
    .line 109
    .line 110
    move-result v5
    :try_end_1
    .catch Lio/netty/channel/unix/Errors$NativeIoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :goto_1
    if-eqz v5, :cond_6

    .line 112
    .line 113
    :try_start_2
    iput-boolean v9, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    .line 114
    .line 115
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->continueReading()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_1

    .line 120
    .line 121
    :cond_6
    const/4 v3, 0x0

    .line 122
    goto :goto_2

    .line 123
    :catch_0
    move-exception v3

    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    iget-object v4, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 127
    .line 128
    invoke-static {v4, v3}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$300(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/unix/Errors$NativeIoException;)Ljava/io/IOException;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    throw v3

    .line 133
    :cond_7
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :catchall_0
    move-exception v3

    .line 135
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 136
    .line 137
    .line 138
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 139
    .line 140
    .line 141
    if-eqz v3, :cond_8

    .line 142
    .line 143
    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    .line 145
    .line 146
    :cond_8
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :catchall_1
    move-exception v1

    .line 151
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 152
    .line 153
    .line 154
    throw v1
.end method

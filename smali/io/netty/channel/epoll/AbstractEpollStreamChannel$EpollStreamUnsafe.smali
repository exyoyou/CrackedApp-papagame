.class Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;
.super Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EpollStreamUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;


# direct methods
.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/epoll/EpollRecvByteAllocatorHandle;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    .line 11
    .line 12
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p5}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 26
    .line 27
    .line 28
    if-nez p4, :cond_2

    .line 29
    .line 30
    instance-of p1, p3, Ljava/io/IOException;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->shutdownInput(Z)V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method


# virtual methods
.method epollInReady()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

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
    move-result-object v7

    .line 23
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 24
    .line 25
    sget v2, Lio/netty/channel/epoll/Native;->EPOLLET:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/AbstractEpollChannel;->isFlagSet(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v7, v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->edgeTriggered(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 35
    .line 36
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v7, v0}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInBefore()V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    move-object v4, v2

    .line 52
    :cond_1
    const/4 v5, 0x0

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 56
    .line 57
    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$400(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)Ljava/util/Queue;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    :cond_2
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;

    .line 68
    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    invoke-virtual {v6, v7}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->spliceIn(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 78
    .line 79
    invoke-virtual {v6}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->isActive()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_7

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    :goto_0
    const/4 v9, 0x0

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    invoke-virtual {v7, v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    .line 92
    .line 93
    .line 94
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 95
    :try_start_1
    iget-object v8, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 96
    .line 97
    invoke-virtual {v8, v6}, Lio/netty/channel/epoll/AbstractEpollChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    invoke-virtual {v7, v8}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->lastBytesRead(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->lastBytesRead()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    const/4 v9, 0x1

    .line 109
    if-gtz v8, :cond_6

    .line 110
    .line 111
    invoke-interface {v6}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .line 113
    .line 114
    :try_start_2
    invoke-virtual {v7}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->lastBytesRead()I

    .line 115
    .line 116
    .line 117
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    if-gez v1, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    const/4 v9, 0x0

    .line 122
    :goto_1
    if-eqz v9, :cond_8

    .line 123
    .line 124
    :try_start_3
    iput-boolean v5, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    :try_start_4
    invoke-virtual {v7, v9}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->incMessagesRead(I)V

    .line 128
    .line 129
    .line 130
    iput-boolean v5, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    .line 131
    .line 132
    invoke-interface {v3, v6}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    .line 134
    .line 135
    :try_start_5
    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 136
    .line 137
    invoke-virtual {v6, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_7

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_7
    :goto_2
    invoke-virtual {v7}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->continueReading()Z

    .line 145
    .line 146
    .line 147
    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 148
    if-nez v6, :cond_1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_8
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 152
    .line 153
    .line 154
    invoke-interface {v3}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 155
    .line 156
    .line 157
    if-eqz v9, :cond_9

    .line 158
    .line 159
    invoke-virtual {p0, v5}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->shutdownInput(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :catchall_0
    move-exception v1

    .line 164
    move-object v5, v1

    .line 165
    move-object v4, v2

    .line 166
    move v6, v9

    .line 167
    goto :goto_5

    .line 168
    :catchall_1
    move-exception v1

    .line 169
    move-object v5, v1

    .line 170
    move-object v4, v6

    .line 171
    goto :goto_4

    .line 172
    :catchall_2
    move-exception v1

    .line 173
    move-object v5, v1

    .line 174
    move-object v4, v2

    .line 175
    :goto_4
    const/4 v6, 0x0

    .line 176
    :goto_5
    move-object v2, p0

    .line 177
    :try_start_7
    invoke-direct/range {v2 .. v7}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/epoll/EpollRecvByteAllocatorHandle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 178
    .line 179
    .line 180
    :cond_9
    :goto_6
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :catchall_3
    move-exception v1

    .line 185
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 186
    .line 187
    .line 188
    throw v1
.end method

.method newEpollHandle(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/channel/epoll/EpollRecvByteAllocatorStreamingHandle;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorStreamingHandle;-><init>(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected prepareToClose()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->prepareToClose()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

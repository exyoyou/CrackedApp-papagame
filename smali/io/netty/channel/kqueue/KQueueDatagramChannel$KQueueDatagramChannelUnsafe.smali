.class final Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/KQueueDatagramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KQueueDatagramChannelUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

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
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    .line 20
    .line 21
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1, v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyBefore()V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    .line 37
    .line 38
    invoke-virtual {v4}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->isConnected()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    :cond_1
    invoke-virtual {p1, v2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    .line 43
    .line 44
    .line 45
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-virtual {p1, v6}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->attemptedBytesRead(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    :try_start_2
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    .line 56
    .line 57
    invoke-virtual {v6, v5}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {p1, v6}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V
    :try_end_2
    .catch Lio/netty/channel/unix/Errors$NativeIoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_3
    invoke-virtual {p1}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->lastBytesRead()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-gtz v6, :cond_2

    .line 69
    .line 70
    invoke-interface {v5}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_2
    new-instance v6, Lio/netty/channel/socket/DatagramPacket;

    .line 76
    .line 77
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->localAddress()Ljava/net/SocketAddress;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Ljava/net/InetSocketAddress;

    .line 82
    .line 83
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->remoteAddress()Ljava/net/SocketAddress;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Ljava/net/InetSocketAddress;

    .line 88
    .line 89
    invoke-direct {v6, v5, v7, v8}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :catch_0
    move-exception v2

    .line 95
    invoke-virtual {v2}, Lio/netty/channel/unix/Errors$NativeIoException;->expectedErr()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    sget v4, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    .line 100
    .line 101
    if-ne v3, v4, :cond_3

    .line 102
    .line 103
    new-instance v3, Ljava/net/PortUnreachableException;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-direct {v3, v4}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 113
    .line 114
    .line 115
    throw v3

    .line 116
    :cond_3
    throw v2

    .line 117
    :cond_4
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_5

    .line 122
    .line 123
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    .line 124
    .line 125
    iget-object v6, v6, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 126
    .line 127
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    .line 128
    .line 129
    .line 130
    move-result-wide v7

    .line 131
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->capacity()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    invoke-virtual {v6, v7, v8, v9, v10}, Lio/netty/channel/unix/Socket;->recvFromAddress(JII)Lio/netty/channel/unix/DatagramSocketAddress;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    invoke-virtual {v5, v6, v7}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    iget-object v7, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    .line 157
    .line 158
    iget-object v7, v7, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    invoke-virtual {v7, v6, v8, v9}, Lio/netty/channel/unix/Socket;->recvFrom(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    :goto_0
    if-nez v6, :cond_6

    .line 173
    .line 174
    const/4 v2, -0x1

    .line 175
    invoke-virtual {p1, v2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v5}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_6
    invoke-virtual {v6}, Lio/netty/channel/unix/DatagramSocketAddress;->localAddress()Lio/netty/channel/unix/DatagramSocketAddress;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    if-nez v7, :cond_7

    .line 187
    .line 188
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->localAddress()Ljava/net/SocketAddress;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    check-cast v7, Ljava/net/InetSocketAddress;

    .line 193
    .line 194
    :cond_7
    invoke-virtual {v6}, Lio/netty/channel/unix/DatagramSocketAddress;->receivedAmount()I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    invoke-virtual {p1, v8}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    invoke-virtual {p1}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->lastBytesRead()I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    add-int/2addr v8, v9

    .line 210
    invoke-virtual {v5, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 211
    .line 212
    .line 213
    new-instance v8, Lio/netty/channel/socket/DatagramPacket;

    .line 214
    .line 215
    invoke-direct {v8, v5, v7, v6}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 216
    .line 217
    .line 218
    move-object v6, v8

    .line 219
    :goto_1
    const/4 v7, 0x1

    .line 220
    invoke-virtual {p1, v7}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->incMessagesRead(I)V

    .line 221
    .line 222
    .line 223
    const/4 v7, 0x0

    .line 224
    iput-boolean v7, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readPending:Z

    .line 225
    .line 226
    invoke-interface {v1, v6}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    .line 228
    .line 229
    :try_start_4
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->continueReading()Z

    .line 230
    .line 231
    .line 232
    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    if-nez v5, :cond_1

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :catchall_0
    move-exception v2

    .line 237
    goto :goto_2

    .line 238
    :catchall_1
    move-exception v2

    .line 239
    move-object v5, v3

    .line 240
    :goto_2
    move-object v3, v2

    .line 241
    if-eqz v5, :cond_8

    .line 242
    .line 243
    :try_start_5
    invoke-interface {v5}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :catchall_2
    move-exception p1

    .line 248
    goto :goto_4

    .line 249
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 250
    .line 251
    .line 252
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 253
    .line 254
    .line 255
    if-eqz v3, :cond_9

    .line 256
    .line 257
    invoke-interface {v1, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 258
    .line 259
    .line 260
    :cond_9
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :goto_4
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 265
    .line 266
    .line 267
    throw p1
.end method

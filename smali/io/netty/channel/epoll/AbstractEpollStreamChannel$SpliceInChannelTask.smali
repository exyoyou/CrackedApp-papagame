.class final Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;
.super Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpliceInChannelTask"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 2
    .line 3
    invoke-direct {p0, p1, p3, p4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public spliceIn(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z
    .locals 8

    .line 1
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 7
    .line 8
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 13
    .line 14
    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$500(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)Lio/netty/channel/unix/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lio/netty/channel/unix/FileDescriptor;->pipe()[Lio/netty/channel/unix/FileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 26
    .line 27
    aget-object v4, v0, v2

    .line 28
    .line 29
    invoke-static {v3, v4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$602(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/unix/FileDescriptor;)Lio/netty/channel/unix/FileDescriptor;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 33
    .line 34
    aget-object v0, v0, v1

    .line 35
    .line 36
    invoke-static {v3, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$502(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/unix/FileDescriptor;)Lio/netty/channel/unix/FileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    invoke-virtual {p0, v0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->spliceIn(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/RecvByteBufAllocator$Handle;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-lez p1, :cond_4

    .line 45
    .line 46
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    .line 47
    .line 48
    const v3, 0x7fffffff

    .line 49
    .line 50
    .line 51
    if-eq v0, v3, :cond_2

    .line 52
    .line 53
    sub-int/2addr v0, p1

    .line 54
    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    .line 55
    .line 56
    :cond_2
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 64
    .line 65
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_0
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 74
    .line 75
    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lio/netty/channel/DefaultChannelConfig;->isAutoRead()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 84
    .line 85
    invoke-virtual {v4}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-instance v5, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceOutTask;

    .line 90
    .line 91
    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 92
    .line 93
    iget-object v7, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 94
    .line 95
    invoke-direct {v5, v6, v7, p1, v3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceOutTask;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/epoll/AbstractEpollStreamChannel;IZ)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v4, v5, v0}, Lio/netty/channel/Channel$Unsafe;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 102
    .line 103
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {p1}, Lio/netty/channel/Channel$Unsafe;->flush()V

    .line 108
    .line 109
    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    iget-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 119
    .line 120
    invoke-virtual {p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, v2}, Lio/netty/channel/epoll/EpollChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 125
    .line 126
    .line 127
    :cond_4
    iget p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    if-nez p1, :cond_5

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    const/4 v1, 0x0

    .line 133
    :goto_1
    return v1

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 136
    .line 137
    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 138
    .line 139
    .line 140
    return v1
.end method

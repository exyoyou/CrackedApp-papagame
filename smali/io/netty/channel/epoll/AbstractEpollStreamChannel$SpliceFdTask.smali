.class final Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;
.super Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpliceFdTask"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fd:Lio/netty/channel/unix/FileDescriptor;

.field private offset:I

.field private final promise:Lio/netty/channel/ChannelPromise;

.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/unix/FileDescriptor;IILio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 2
    .line 3
    invoke-direct {p0, p1, p4, p5}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->fd:Lio/netty/channel/unix/FileDescriptor;

    .line 7
    .line 8
    iput-object p5, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 9
    .line 10
    iput p3, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->offset:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public spliceIn(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z
    .locals 12

    .line 1
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->promise:Lio/netty/channel/ChannelPromise;

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
    invoke-static {}, Lio/netty/channel/unix/FileDescriptor;->pipe()[Lio/netty/channel/unix/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    aget-object v3, v0, v2

    .line 18
    .line 19
    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->spliceIn(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/RecvByteBufAllocator$Handle;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-lez p1, :cond_2

    .line 26
    .line 27
    iget v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    .line 28
    .line 29
    const v5, 0x7fffffff

    .line 30
    .line 31
    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    sub-int/2addr v4, p1

    .line 35
    iput v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v3}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const-wide/16 v5, -0x1

    .line 42
    .line 43
    iget-object v7, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->fd:Lio/netty/channel/unix/FileDescriptor;

    .line 44
    .line 45
    invoke-virtual {v7}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget v8, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->offset:I

    .line 50
    .line 51
    int-to-long v8, v8

    .line 52
    int-to-long v10, p1

    .line 53
    invoke-static/range {v4 .. v11}, Lio/netty/channel/epoll/Native;->splice(IJIJJ)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iget v5, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->offset:I

    .line 58
    .line 59
    add-int/2addr v5, v4

    .line 60
    iput v5, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->offset:I

    .line 61
    .line 62
    sub-int/2addr p1, v4

    .line 63
    if-gtz p1, :cond_1

    .line 64
    .line 65
    iget p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    .line 66
    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 70
    .line 71
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    :try_start_2
    invoke-static {v3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_2
    invoke-static {v3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    invoke-static {v3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 93
    .line 94
    .line 95
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 98
    .line 99
    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 100
    .line 101
    .line 102
    return v1
.end method

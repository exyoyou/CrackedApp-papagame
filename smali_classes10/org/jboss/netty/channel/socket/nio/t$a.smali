.class final Lorg/jboss/netty/channel/socket/nio/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final b:Lorg/jboss/netty/channel/socket/nio/r;

.field private final c:Lorg/jboss/netty/channel/j;

.field private final d:Z

.field final synthetic e:Lorg/jboss/netty/channel/socket/nio/t;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/socket/nio/r;Lorg/jboss/netty/channel/j;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->e:Lorg/jboss/netty/channel/socket/nio/t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->c:Lorg/jboss/netty/channel/j;

    .line 9
    .line 10
    iput-boolean p4, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/r;->getLocalAddress()Ljava/net/InetSocketAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/r;->getRemoteAddress()Ljava/net/InetSocketAddress;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->d:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 23
    .line 24
    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 25
    .line 26
    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 33
    .line 34
    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 35
    .line 36
    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 37
    .line 38
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->e:Lorg/jboss/netty/channel/socket/nio/t;

    .line 39
    .line 40
    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 41
    .line 42
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 43
    .line 44
    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/nio/b;->m()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 49
    .line 50
    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->c:Lorg/jboss/netty/channel/j;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 58
    .line 59
    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/r;->t()V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->c:Lorg/jboss/netty/channel/j;

    .line 63
    .line 64
    invoke-interface {v2}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-boolean v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->d:Z

    .line 68
    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 72
    .line 73
    check-cast v2, Lorg/jboss/netty/channel/socket/nio/m;

    .line 74
    .line 75
    iget-boolean v2, v2, Lorg/jboss/netty/channel/socket/nio/m;->K:Z

    .line 76
    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 80
    .line 81
    invoke-static {v2, v0}, Lorg/jboss/netty/channel/s;->k(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 85
    .line 86
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/s;->p(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->c:Lorg/jboss/netty/channel/j;

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 96
    .line 97
    .line 98
    :cond_5
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->e:Lorg/jboss/netty/channel/socket/nio/t;

    .line 99
    .line 100
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 101
    .line 102
    invoke-static {v2}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 107
    .line 108
    .line 109
    instance-of v1, v0, Ljava/nio/channels/ClosedChannelException;

    .line 110
    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    :goto_0
    return-void

    .line 114
    :cond_6
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    .line 115
    .line 116
    const-string v2, "Failed to register a socket to the selector."

    .line 117
    .line 118
    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->c:Lorg/jboss/netty/channel/j;

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 132
    .line 133
    .line 134
    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->e:Lorg/jboss/netty/channel/socket/nio/t;

    .line 135
    .line 136
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/socket/nio/r;

    .line 137
    .line 138
    invoke-static {v1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

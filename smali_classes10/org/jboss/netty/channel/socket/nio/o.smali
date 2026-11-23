.class Lorg/jboss/netty/channel/socket/nio/o;
.super Lorg/jboss/netty/channel/socket/nio/c;
.source "SourceFile"


# static fields
.field static final synthetic b:Z


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/nio/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/h<",
            "Lorg/jboss/netty/channel/socket/nio/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/h<",
            "Lorg/jboss/netty/channel/socket/nio/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/o;->a:Lorg/jboss/netty/channel/socket/nio/h;

    .line 5
    .line 6
    return-void
.end method

.method private static e(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 2
    .line 3
    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lorg/jboss/netty/channel/socket/nio/m;->K:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->s()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->getLocalAddress()Ljava/net/InetSocketAddress;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p0, p2}, Lorg/jboss/netty/channel/s;->k(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p2

    .line 30
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p2}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private f(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 2
    .line 3
    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 4
    .line 5
    invoke-virtual {v0, p3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p1, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 12
    .line 13
    invoke-virtual {p3, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;->f(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/a;->t0()Lorg/jboss/netty/channel/j;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/o$a;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lorg/jboss/netty/channel/socket/nio/o$a;-><init>(Lorg/jboss/netty/channel/socket/nio/o;Lorg/jboss/netty/channel/j;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, v0}, Lorg/jboss/netty/channel/j;->e(Lorg/jboss/netty/channel/k;)V

    .line 27
    .line 28
    .line 29
    sget-object p3, Lorg/jboss/netty/channel/k;->Z1:Lorg/jboss/netty/channel/k;

    .line 30
    .line 31
    invoke-interface {p2, p3}, Lorg/jboss/netty/channel/j;->e(Lorg/jboss/netty/channel/k;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p1, Lorg/jboss/netty/channel/socket/nio/m;->J:Lorg/jboss/netty/channel/j;

    .line 35
    .line 36
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/o;->g()Lorg/jboss/netty/channel/socket/nio/k;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p3, p1, p2}, Lorg/jboss/netty/channel/socket/nio/k;->f(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p3

    .line 45
    invoke-interface {p2, p3}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 52
    .line 53
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2, p1, p3}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private g()Lorg/jboss/netty/channel/socket/nio/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/o;->a:Lorg/jboss/netty/channel/socket/nio/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/h;->c()Lorg/jboss/netty/channel/socket/nio/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jboss/netty/channel/socket/nio/k;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public b(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of p1, p2, Lorg/jboss/netty/channel/q;

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    check-cast p2, Lorg/jboss/netty/channel/q;

    .line 6
    .line 7
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/jboss/netty/channel/socket/nio/m;

    .line 12
    .line 13
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p2}, Lorg/jboss/netty/channel/q;->getState()Lorg/jboss/netty/channel/ChannelState;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {p2}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/o$b;->a:[I

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    aget v1, v2, v1

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eq v1, v2, :cond_5

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    if-eq v1, v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 47
    .line 48
    check-cast p2, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {v1, p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/e;->t(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    if-eqz p2, :cond_2

    .line 59
    .line 60
    check-cast p2, Ljava/net/SocketAddress;

    .line 61
    .line 62
    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/o;->f(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 67
    .line 68
    invoke-virtual {p2, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    if-eqz p2, :cond_4

    .line 73
    .line 74
    check-cast p2, Ljava/net/SocketAddress;

    .line 75
    .line 76
    invoke-static {p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/o;->e(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 81
    .line 82
    invoke-virtual {p2, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_7

    .line 93
    .line 94
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 95
    .line 96
    invoke-virtual {p2, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    instance-of p1, p2, Lorg/jboss/netty/channel/i0;

    .line 101
    .line 102
    if-eqz p1, :cond_7

    .line 103
    .line 104
    check-cast p2, Lorg/jboss/netty/channel/i0;

    .line 105
    .line 106
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lorg/jboss/netty/channel/socket/nio/r;

    .line 111
    .line 112
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/Queue;

    .line 113
    .line 114
    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Lorg/jboss/netty/channel/socket/nio/e;->z(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    :goto_0
    return-void
.end method

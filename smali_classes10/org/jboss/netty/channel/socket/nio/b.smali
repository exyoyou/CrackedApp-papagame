.class abstract Lorg/jboss/netty/channel/socket/nio/b;
.super Lorg/jboss/netty/channel/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/b$b;,
        Lorg/jboss/netty/channel/socket/nio/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/nio/channels/SelectableChannel;",
        ":",
        "Ljava/nio/channels/WritableByteChannel;",
        ">",
        "Lorg/jboss/netty/channel/a;"
    }
.end annotation


# instance fields
.field volatile A:Ljava/net/InetSocketAddress;

.field final B:Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final o:Lorg/jboss/netty/channel/socket/nio/e;

.field final p:Ljava/lang/Object;

.field final q:Ljava/lang/Runnable;

.field final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final s:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/i0;",
            ">;"
        }
    .end annotation
.end field

.field final t:Ljava/util/concurrent/atomic/AtomicInteger;

.field final u:Ljava/util/concurrent/atomic/AtomicInteger;

.field v:Lorg/jboss/netty/channel/i0;

.field w:Lorg/jboss/netty/channel/socket/nio/x$g;

.field x:Z

.field y:Z

.field private volatile z:Ljava/net/InetSocketAddress;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/e;Ljava/nio/channels/SelectableChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/e;",
            "Lorg/jboss/netty/channel/i;",
            "Lorg/jboss/netty/channel/n;",
            "Lorg/jboss/netty/channel/p;",
            "Lorg/jboss/netty/channel/socket/nio/e;",
            "TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/channel/a;-><init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->p:Ljava/lang/Object;

    .line 3
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/b$b;

    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/b$b;-><init>(Lorg/jboss/netty/channel/socket/nio/b;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->q:Ljava/lang/Runnable;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/b$a;

    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/b$a;-><init>(Lorg/jboss/netty/channel/socket/nio/b;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/Queue;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iput-object p6, p0, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 9
    iput-object p7, p0, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/e;Ljava/nio/channels/SelectableChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/e;",
            "Lorg/jboss/netty/channel/i;",
            "Lorg/jboss/netty/channel/n;",
            "Lorg/jboss/netty/channel/p;",
            "Lorg/jboss/netty/channel/socket/nio/e;",
            "TC;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/a;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;)V

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->p:Ljava/lang/Object;

    .line 12
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/b$b;

    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/b$b;-><init>(Lorg/jboss/netty/channel/socket/nio/b;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->q:Ljava/lang/Runnable;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/b$a;

    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/b$a;-><init>(Lorg/jboss/netty/channel/socket/nio/b;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/Queue;

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    iput-object p5, p0, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 18
    iput-object p6, p0, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    return-void
.end method


# virtual methods
.method public L0()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->isOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->m()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/b;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->k()Lorg/jboss/netty/channel/socket/nio/j;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteBufferLowWaterMark()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-lt v2, v3, :cond_2

    .line 38
    .line 39
    :goto_0
    or-int/2addr v0, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->k()Lorg/jboss/netty/channel/socket/nio/j;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteBufferHighWaterMark()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-lt v2, v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    and-int/lit8 v0, v0, -0x5

    .line 53
    .line 54
    :goto_1
    return v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->k()Lorg/jboss/netty/channel/socket/nio/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->z:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->l()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->z:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->n()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected i()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/a;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public abstract k()Lorg/jboss/netty/channel/socket/nio/j;
.end method

.method abstract l()Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method m()I
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/a;->L0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method abstract n()Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public o()Lorg/jboss/netty/channel/socket/nio/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 2
    .line 3
    return-object v0
.end method

.method p(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/a;->j(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.class final Lorg/jboss/netty/channel/socket/nio/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final b:Lorg/jboss/netty/channel/socket/nio/k;

.field private final c:Lorg/jboss/netty/channel/socket/nio/m;

.field final synthetic d:Lorg/jboss/netty/channel/socket/nio/k;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/k;Lorg/jboss/netty/channel/socket/nio/k;Lorg/jboss/netty/channel/socket/nio/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->d:Lorg/jboss/netty/channel/socket/nio/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/k;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/m;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/r;->q()Lorg/jboss/netty/channel/socket/nio/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/jboss/netty/channel/f;->getConnectTimeoutMillis()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/m;

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/r;->isConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/m;

    .line 22
    .line 23
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->d:Lorg/jboss/netty/channel/socket/nio/k;

    .line 24
    .line 25
    invoke-static {v2}, Lorg/jboss/netty/channel/socket/nio/k;->n(Lorg/jboss/netty/channel/socket/nio/k;)Lorg/jboss/netty/util/g;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->d:Lorg/jboss/netty/channel/socket/nio/k;

    .line 30
    .line 31
    invoke-static {v3}, Lorg/jboss/netty/channel/socket/nio/k;->m(Lorg/jboss/netty/channel/socket/nio/k;)Lorg/jboss/netty/util/h;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    int-to-long v4, v0

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-interface {v2, v3, v4, v5, v0}, Lorg/jboss/netty/util/g;->a(Lorg/jboss/netty/util/h;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/f;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, v1, Lorg/jboss/netty/channel/socket/nio/m;->M:Lorg/jboss/netty/util/f;

    .line 43
    .line 44
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/m;

    .line 45
    .line 46
    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 47
    .line 48
    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 49
    .line 50
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/k;

    .line 51
    .line 52
    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 53
    .line 54
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/m;

    .line 55
    .line 56
    const/16 v3, 0x8

    .line 57
    .line 58
    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/m;

    .line 63
    .line 64
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 65
    .line 66
    invoke-static {v0}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/m;

    .line 74
    .line 75
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/r;->q()Lorg/jboss/netty/channel/socket/nio/s;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Lorg/jboss/netty/channel/f;->getConnectTimeoutMillis()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-lez v0, :cond_1

    .line 84
    .line 85
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/m;

    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    int-to-long v4, v0

    .line 92
    const-wide/32 v6, 0xf4240

    .line 93
    .line 94
    .line 95
    mul-long v4, v4, v6

    .line 96
    .line 97
    add-long/2addr v2, v4

    .line 98
    iput-wide v2, v1, Lorg/jboss/netty/channel/socket/nio/m;->L:J

    .line 99
    .line 100
    :cond_1
    return-void
.end method

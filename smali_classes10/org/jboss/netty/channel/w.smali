.class public Lorg/jboss/netty/channel/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/j;


# static fields
.field private static final j:Ljava/lang/Throwable;

.field private static volatile k:Z

.field private static l:Z


# instance fields
.field private final b:Lorg/jboss/netty/channel/e;

.field private final c:Z

.field private d:Lorg/jboss/netty/channel/k;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/channel/k;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/channel/l;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/Throwable;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jboss/netty/channel/w;->j:Ljava/lang/Throwable;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lorg/jboss/netty/channel/w;->k:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/e;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jboss/netty/channel/w;->b:Lorg/jboss/netty/channel/e;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/jboss/netty/channel/w;->c:Z

    .line 7
    .line 8
    return-void
.end method

.method private g(JZ)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw v0

    .line 17
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, p1, v2

    .line 20
    .line 21
    if-gtz v0, :cond_2

    .line 22
    .line 23
    move-wide v4, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    :goto_1
    const/4 v6, 0x0

    .line 30
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 31
    :try_start_1
    iget-boolean v7, v1, Lorg/jboss/netty/channel/w;->g:Z

    .line 32
    .line 33
    if-nez v7, :cond_9

    .line 34
    .line 35
    if-gtz v0, :cond_3

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_3
    invoke-static {}, Lorg/jboss/netty/channel/w;->h()V

    .line 39
    .line 40
    .line 41
    iget v0, v1, Lorg/jboss/netty/channel/w;->i:I

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    add-int/2addr v0, v7

    .line 45
    iput v0, v1, Lorg/jboss/netty/channel/w;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    move-wide v8, p1

    .line 48
    :cond_4
    const-wide/32 v10, 0xf4240

    .line 49
    .line 50
    .line 51
    :try_start_2
    div-long v12, v8, v10

    .line 52
    .line 53
    rem-long/2addr v8, v10

    .line 54
    long-to-int v0, v8

    .line 55
    invoke-virtual {p0, v12, v13, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_3

    .line 61
    :catch_0
    move-exception v0

    .line 62
    if-nez p3, :cond_8

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    :goto_2
    :try_start_3
    iget-boolean v0, v1, Lorg/jboss/netty/channel/w;->g:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    :try_start_4
    iget v0, v1, Lorg/jboss/netty/channel/w;->i:I

    .line 70
    .line 71
    sub-int/2addr v0, v7

    .line 72
    iput v0, v1, Lorg/jboss/netty/channel/w;->i:I

    .line 73
    .line 74
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    if-eqz v6, :cond_5

    .line 76
    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 82
    .line 83
    .line 84
    :cond_5
    return v7

    .line 85
    :cond_6
    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v8

    .line 89
    sub-long/2addr v8, v4

    .line 90
    sub-long v8, p1, v8

    .line 91
    .line 92
    cmp-long v0, v8, v2

    .line 93
    .line 94
    if-gtz v0, :cond_4

    .line 95
    .line 96
    iget-boolean v0, v1, Lorg/jboss/netty/channel/w;->g:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    .line 98
    :try_start_6
    iget v2, v1, Lorg/jboss/netty/channel/w;->i:I

    .line 99
    .line 100
    sub-int/2addr v2, v7

    .line 101
    iput v2, v1, Lorg/jboss/netty/channel/w;->i:I

    .line 102
    .line 103
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 104
    if-eqz v6, :cond_7

    .line 105
    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 111
    .line 112
    .line 113
    :cond_7
    return v0

    .line 114
    :cond_8
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 115
    :goto_3
    :try_start_8
    iget v2, v1, Lorg/jboss/netty/channel/w;->i:I

    .line 116
    .line 117
    sub-int/2addr v2, v7

    .line 118
    iput v2, v1, Lorg/jboss/netty/channel/w;->i:I

    .line 119
    .line 120
    throw v0

    .line 121
    :cond_9
    :goto_4
    monitor-exit p0

    .line 122
    return v7

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 125
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 126
    :catchall_2
    move-exception v0

    .line 127
    if-eqz v6, :cond_a

    .line 128
    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 134
    .line 135
    .line 136
    :cond_a
    throw v0
.end method

.method private static h()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/jboss/netty/channel/w;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lorg/jboss/netty/util/internal/c;->a:Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread."

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public static i()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/jboss/netty/channel/w;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method private j(Lorg/jboss/netty/channel/k;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lorg/jboss/netty/channel/k;->a(Lorg/jboss/netty/channel/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->d:Lorg/jboss/netty/channel/k;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/w;->j(Lorg/jboss/netty/channel/k;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->d:Lorg/jboss/netty/channel/k;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lorg/jboss/netty/channel/k;

    .line 30
    .line 31
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/w;->j(Lorg/jboss/netty/channel/k;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private l(Lorg/jboss/netty/channel/l;JJJ)V
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p0

    .line 3
    move-wide v2, p2

    .line 4
    move-wide v4, p4

    .line 5
    move-wide v6, p6

    .line 6
    :try_start_0
    invoke-interface/range {v0 .. v7}, Lorg/jboss/netty/channel/l;->b(Lorg/jboss/netty/channel/j;JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->a()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    instance-of v1, v0, Ljava/lang/Error;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Error;

    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    throw v0
.end method

.method public static n(Z)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-boolean v0, Lorg/jboss/netty/channel/w;->l:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lorg/jboss/netty/channel/w;->l:Z

    .line 9
    .line 10
    :cond_0
    sput-boolean p0, Lorg/jboss/netty/channel/w;->k:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Throwable;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->h:Ljava/lang/Throwable;

    .line 3
    .line 4
    sget-object v1, Lorg/jboss/netty/channel/w;->j:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :cond_0
    monitor-exit p0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public await()Lorg/jboss/netty/channel/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lorg/jboss/netty/channel/w;->h()V

    .line 5
    iget v0, p0, Lorg/jboss/netty/channel/w;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/w;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget v0, p0, Lorg/jboss/netty/channel/w;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/channel/w;->i:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lorg/jboss/netty/channel/w;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/w;->i:I

    throw v0

    .line 8
    :cond_0
    monitor-exit p0

    return-object p0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public await(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/w;->g(JZ)Z

    move-result p1

    return p1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/w;->g(JZ)Z

    move-result p1

    return p1
.end method

.method public awaitUninterruptibly()Lorg/jboss/netty/channel/j;
    .locals 3

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/channel/w;->g:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lorg/jboss/netty/channel/w;->h()V

    .line 4
    iget v1, p0, Lorg/jboss/netty/channel/w;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/channel/w;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    iget v1, p0, Lorg/jboss/netty/channel/w;->i:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/channel/w;->i:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lorg/jboss/netty/channel/w;->i:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/channel/w;->i:I

    throw v0

    :catch_0
    iget v0, p0, Lorg/jboss/netty/channel/w;->i:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/jboss/netty/channel/w;->i:I

    const/4 v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-object p0

    :catchall_1
    move-exception v0

    .line 9
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1

    .line 12
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/w;->g(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 13
    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 10
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/w;->g(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 11
    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public b(Lorg/jboss/netty/channel/k;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->d:Lorg/jboss/netty/channel/k;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lorg/jboss/netty/channel/k;

    .line 30
    .line 31
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->d:Lorg/jboss/netty/channel/k;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->d:Lorg/jboss/netty/channel/k;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    instance-of v0, p1, Lorg/jboss/netty/channel/l;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->f:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1

    .line 59
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 60
    .line 61
    const-string v0, "listener"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public c(JJJ)Z
    .locals 13

    .line 1
    move-object v9, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, v9, Lorg/jboss/netty/channel/w;->g:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, v9, Lorg/jboss/netty/channel/w;->f:Ljava/util/List;

    .line 11
    .line 12
    const/4 v10, 0x1

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-array v2, v2, [Lorg/jboss/netty/channel/l;

    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, [Lorg/jboss/netty/channel/l;

    .line 33
    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    array-length v11, v0

    .line 36
    const/4 v12, 0x0

    .line 37
    :goto_0
    if-ge v12, v11, :cond_2

    .line 38
    .line 39
    aget-object v2, v0, v12

    .line 40
    .line 41
    move-object v1, p0

    .line 42
    move-wide v3, p1

    .line 43
    move-wide/from16 v5, p3

    .line 44
    .line 45
    move-wide/from16 v7, p5

    .line 46
    .line 47
    invoke-direct/range {v1 .. v8}, Lorg/jboss/netty/channel/w;->l(Lorg/jboss/netty/channel/l;JJJ)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v12, v12, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return v10

    .line 54
    :cond_3
    :goto_1
    :try_start_1
    monitor-exit p0

    .line 55
    return v10

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw v0
.end method

.method public cancel()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return v1

    .line 14
    :cond_1
    sget-object v0, Lorg/jboss/netty/channel/w;->j:Ljava/lang/Throwable;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->h:Ljava/lang/Throwable;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z

    .line 20
    .line 21
    iget v1, p0, Lorg/jboss/netty/channel/w;->i:I

    .line 22
    .line 23
    if-lez v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 26
    .line 27
    .line 28
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->k()V

    .line 30
    .line 31
    .line 32
    return v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method public d()Lorg/jboss/netty/channel/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->a()Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    instance-of v1, v0, Ljava/lang/Exception;

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    instance-of v1, v0, Ljava/lang/Error;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    check-cast v0, Ljava/lang/Error;

    .line 24
    .line 25
    throw v0

    .line 26
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_3
    check-cast v0, Ljava/lang/Exception;

    .line 33
    .line 34
    throw v0
.end method

.method public e(Lorg/jboss/netty/channel/k;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->d:Lorg/jboss/netty/channel/k;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iput-object p1, p0, Lorg/jboss/netty/channel/w;->d:Lorg/jboss/netty/channel/k;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :goto_0
    instance-of v0, p1, Lorg/jboss/netty/channel/l;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->f:Ljava/util/List;

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->f:Ljava/util/List;

    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->f:Ljava/util/List;

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    check-cast v1, Lorg/jboss/netty/channel/l;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_4
    const/4 v1, 0x0

    .line 57
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/w;->j(Lorg/jboss/netty/channel/k;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p1

    .line 67
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 68
    .line 69
    const-string v0, "listener"

    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->b:Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->h:Ljava/lang/Throwable;

    .line 3
    .line 4
    sget-object v1, Lorg/jboss/netty/channel/w;->j:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    monitor-exit p0

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized isSuccess()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->h:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    monitor-exit p0

    .line 14
    return v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public setFailure(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/w;->h:Ljava/lang/Throwable;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lorg/jboss/netty/channel/w;->g:Z

    .line 13
    .line 14
    iget v0, p0, Lorg/jboss/netty/channel/w;->i:I

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 19
    .line 20
    .line 21
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->k()V

    .line 23
    .line 24
    .line 25
    return p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public setSuccess()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/jboss/netty/channel/w;->g:Z

    .line 11
    .line 12
    iget v1, p0, Lorg/jboss/netty/channel/w;->i:I

    .line 13
    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 17
    .line 18
    .line 19
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->k()V

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public sync()Lorg/jboss/netty/channel/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->await()Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->m()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->awaitUninterruptibly()Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->m()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

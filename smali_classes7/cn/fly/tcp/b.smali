.class public Lcn/fly/tcp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/fly/tcp/b;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/lang/Object;

.field private g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private h:I

.field private i:J

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcn/fly/tcp/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcn/fly/tcp/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcn/fly/tcp/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/Object;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcn/fly/tcp/b;->f:Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcn/fly/tcp/b;->k:I

    .line 42
    .line 43
    invoke-direct {p0}, Lcn/fly/tcp/b;->h()Landroid/content/BroadcastReceiver;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Landroid/content/IntentFilter;

    .line 48
    .line 49
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Lcn/fly/commons/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private a(IZ)Lcn/fly/mcl/TcpStatus;
    .locals 7

    .line 57
    invoke-direct {p0}, Lcn/fly/tcp/b;->g()Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_0

    .line 58
    invoke-static {v1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/e/c;->g()Z

    move-result v0

    const/16 v2, 0xa

    if-eqz v0, :cond_1

    .line 60
    invoke-static {v2}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    return-object p1

    .line 61
    :cond_1
    iget-object v0, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x19

    .line 62
    invoke-static {p1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    const-string p2, "TCP connect/register task is running"

    .line 63
    invoke-virtual {p1, p2}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result v3

    .line 65
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init tp, main p: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    const/16 v4, 0x15

    if-eqz v3, :cond_b

    if-nez p2, :cond_3

    .line 66
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p2

    invoke-virtual {p2}, Lcn/fly/tcp/e/c;->i()Z

    move-result p2

    if-nez p2, :cond_4

    .line 67
    :cond_3
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p2

    invoke-virtual {p2}, Lcn/fly/tcp/e/c;->j()V

    .line 68
    :cond_4
    invoke-direct {p0}, Lcn/fly/tcp/b;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 69
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/tcp/e/c;->h()V

    .line 70
    invoke-static {v1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object p2, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p1

    .line 72
    :cond_5
    :try_start_1
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p2

    invoke-virtual {p2}, Lcn/fly/tcp/e/c;->b()Z

    move-result p2

    if-nez p2, :cond_6

    .line 73
    invoke-static {v4}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    .line 74
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p2

    invoke-virtual {p2}, Lcn/fly/tcp/e/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    iget-object p2, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p1

    .line 76
    :cond_6
    :try_start_2
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p2

    invoke-virtual {p2}, Lcn/fly/tcp/e/c;->i()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 77
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tcp/e/c;->a(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    .line 78
    invoke-direct {p0}, Lcn/fly/tcp/b;->g()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 79
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/tcp/e/c;->h()V

    .line 80
    invoke-static {v1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    iget-object p2, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p1

    :cond_7
    if-eqz p1, :cond_8

    .line 82
    :try_start_3
    iget p2, p1, Lcn/fly/mcl/TcpStatus;->code:I

    if-ne p2, v2, :cond_8

    .line 83
    invoke-static {}, Lcn/fly/tcp/lifecycle/a;->a()Lcn/fly/tcp/lifecycle/a;

    .line 84
    invoke-direct {p0}, Lcn/fly/tcp/b;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    iget-object p2, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p1

    .line 86
    :cond_8
    :try_start_4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    const-string v1, "tp reg failed"

    invoke-virtual {p2, v1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    const/16 p1, 0x18

    .line 87
    invoke-static {p1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    :goto_0
    iget-object p2, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p1

    .line 89
    :cond_a
    :try_start_5
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string p2, "tp reg avail false"

    invoke-virtual {p1, p2}, Lcn/fly/tcp/f/c;->a(Ljava/lang/String;)V

    .line 90
    invoke-static {v4}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    .line 91
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p2

    invoke-virtual {p2}, Lcn/fly/tcp/e/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    iget-object p2, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p1

    :cond_b
    :try_start_6
    const-string p1, "sub process"

    .line 93
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tp reg failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/String;)V

    .line 94
    invoke-static {v4}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 95
    iget-object p2, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 96
    :try_start_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    const/16 p1, 0x17

    .line 98
    invoke-static {p1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 99
    iget-object p2, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcn/fly/tcp/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    throw p1
.end method

.method static synthetic a(Lcn/fly/tcp/b;IZ)Lcn/fly/mcl/TcpStatus;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/fly/tcp/b;->a(IZ)Lcn/fly/mcl/TcpStatus;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcn/fly/tcp/b;
    .locals 2

    .line 7
    sget-object v0, Lcn/fly/tcp/b;->a:Lcn/fly/tcp/b;

    if-nez v0, :cond_1

    .line 8
    const-class v0, Lcn/fly/tcp/b;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcn/fly/tcp/b;->a:Lcn/fly/tcp/b;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcn/fly/tcp/b;

    invoke-direct {v1}, Lcn/fly/tcp/b;-><init>()V

    sput-object v1, Lcn/fly/tcp/b;->a:Lcn/fly/tcp/b;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 12
    :cond_1
    :goto_0
    sget-object v0, Lcn/fly/tcp/b;->a:Lcn/fly/tcp/b;

    return-object v0
.end method

.method static synthetic a(Lcn/fly/tcp/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcn/fly/tcp/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(II)V
    .locals 3

    .line 28
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sched: count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcn/fly/tcp/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p1

    const/16 p2, 0x1a

    invoke-static {p2}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/tcp/e/c;->a(Lcn/fly/mcl/TcpStatus;)V

    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/e/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p1

    const/16 p2, 0xa

    invoke-static {p2}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/tcp/e/c;->a(Lcn/fly/mcl/TcpStatus;)V

    return-void

    .line 33
    :cond_1
    new-instance v0, Lcn/fly/tcp/b$4;

    invoke-direct {v0, p0, p1}, Lcn/fly/tcp/b$4;-><init>(Lcn/fly/tcp/b;I)V

    .line 34
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2, v0}, Lcn/fly/tcp/b;->a(IJLjava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 35
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p1

    const/16 p2, 0x19

    invoke-static {p2}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p2

    const-string v0, "TCP connect/register task is running"

    .line 36
    invoke-virtual {p2, v0}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lcn/fly/tcp/e/c;->a(Lcn/fly/mcl/TcpStatus;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 20
    iget-object v0, p0, Lcn/fly/tcp/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Lcn/fly/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcn/fly/tools/utils/ActivityTracker;

    move-result-object p1

    new-instance v0, Lcn/fly/tcp/b$2;

    invoke-direct {v0, p0}, Lcn/fly/tcp/b$2;-><init>(Lcn/fly/tcp/b;)V

    invoke-static {v0}, Lcn/fly/tcp/c;->a(Lcn/fly/tcp/c$a;)Lcn/fly/tools/utils/ActivityTracker$Tracker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/fly/tools/utils/ActivityTracker;->addTracker(Lcn/fly/tools/utils/ActivityTracker$Tracker;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcn/fly/mcl/BusinessCallBack;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/fly/mcl/BusinessCallBack<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcn/fly/tcp/lifecycle/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/fly/tcp/b$6;

    invoke-direct {v1, p0, p1, p2}, Lcn/fly/tcp/b$6;-><init>(Lcn/fly/tcp/b;Lcn/fly/mcl/BusinessCallBack;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tcp/b;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/fly/tcp/b;->a(II)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tcp/b;Lcn/fly/mcl/BusinessCallBack;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcn/fly/tcp/b;->a(Lcn/fly/mcl/BusinessCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tcp/b;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcn/fly/tcp/b;->b(Z)V

    return-void
.end method

.method private a(I)Z
    .locals 3

    .line 49
    iget-object v0, p0, Lcn/fly/tcp/b;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iget v1, p0, Lcn/fly/tcp/b;->j:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    .line 51
    monitor-exit v0

    return v2

    :cond_0
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcn/fly/tcp/b;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 53
    iput v2, p0, Lcn/fly/tcp/b;->h:I

    const-wide/16 v1, 0x0

    .line 54
    iput-wide v1, p0, Lcn/fly/tcp/b;->i:J

    .line 55
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(IJLjava/lang/Runnable;)Z
    .locals 5

    .line 38
    iget-object v0, p0, Lcn/fly/tcp/b;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcn/fly/tcp/b;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    iget v1, p0, Lcn/fly/tcp/b;->h:I

    const/4 v2, 0x0

    if-lt p1, v1, :cond_1

    if-ne p1, v1, :cond_0

    iget-wide v3, p0, Lcn/fly/tcp/b;->i:J

    cmp-long v1, p2, v3

    if-ltz v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcn/fly/tcp/b;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TP lifecycle skip pending conn, priority: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", delay: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 43
    monitor-exit v0

    return v2

    .line 44
    :cond_2
    :goto_1
    iget v1, p0, Lcn/fly/tcp/b;->j:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/fly/tcp/b;->j:I

    .line 45
    iput p1, p0, Lcn/fly/tcp/b;->h:I

    .line 46
    iput-wide p2, p0, Lcn/fly/tcp/b;->i:J

    .line 47
    sget-object p1, Lcn/fly/tcp/lifecycle/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcn/fly/tcp/b$5;

    invoke-direct {v3, p0, v1, p4}, Lcn/fly/tcp/b$5;-><init>(Lcn/fly/tcp/b;ILjava/lang/Runnable;)V

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v3, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcn/fly/tcp/b;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 48
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcn/fly/tcp/b;I)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcn/fly/tcp/b;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/fly/tcp/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/tcp/b;->c(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 8
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/fly/tcp/b;->a(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcn/fly/tcp/a;->a()Lcn/fly/tcp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object v1

    invoke-static {}, Lcn/fly/commons/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/fly/tcp/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 11
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    move-result-object p1

    const-string v0, "use_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/fly/commons/ae;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/fly/tcp/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/tcp/b;->d(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 3

    .line 8
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TP lifecycle onActSt chgd, fg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcn/fly/tcp/b;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcn/fly/tcp/b;->e()V

    return-void
.end method

.method private d(Z)V
    .locals 3

    .line 4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TP lifecycle onNetworkChanged. avail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", last: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/fly/tcp/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcn/fly/tcp/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcn/fly/tcp/b;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 7
    iput v0, p0, Lcn/fly/tcp/b;->k:I

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/tcp/e/c;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string v0, "TP lifecycle tcp status: true"

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    const-wide/16 v0, 0xc8

    .line 10
    invoke-virtual {p0, v0, v1}, Lcn/fly/tcp/b;->a(J)V

    :cond_3
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/b;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcn/fly/tcp/b;->j:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcn/fly/tcp/b;->j:I

    .line 9
    .line 10
    iget-object v1, p0, Lcn/fly/tcp/b;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcn/fly/tcp/b;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 20
    .line 21
    :cond_0
    iput v2, p0, Lcn/fly/tcp/b;->h:I

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    iput-wide v1, p0, Lcn/fly/tcp/b;->i:J

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method private g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "TP lifecycle ignored by user close"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private h()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 1
    new-instance v0, Lcn/fly/tcp/b$7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcn/fly/tcp/b$7;-><init>(Lcn/fly/tcp/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .line 26
    invoke-direct {p0}, Lcn/fly/tcp/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 27
    :goto_0
    new-instance v1, Lcn/fly/tcp/b$3;

    invoke-direct {v1, p0}, Lcn/fly/tcp/b$3;-><init>(Lcn/fly/tcp/b;)V

    invoke-direct {p0, v0, p1, p2, v1}, Lcn/fly/tcp/b;->a(IJLjava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcn/fly/mcl/BusinessCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/mcl/BusinessCallBack<",
            "Lcn/fly/mcl/TcpStatus;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcn/fly/tcp/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/e/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 15
    invoke-static {v0}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/fly/tcp/b;->a(Lcn/fly/mcl/BusinessCallBack;Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_0
    new-instance v0, Lcn/fly/tcp/b$1;

    invoke-direct {v0, p0, p1}, Lcn/fly/tcp/b$1;-><init>(Lcn/fly/tcp/b;Lcn/fly/mcl/BusinessCallBack;)V

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcn/fly/tcp/b;->a(IJLjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x19

    .line 17
    invoke-static {v0}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object v0

    const-string v1, "TCP connect/register task is running"

    .line 18
    invoke-virtual {v0, v1}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object v0

    .line 19
    invoke-direct {p0, p1, v0}, Lcn/fly/tcp/b;->a(Lcn/fly/mcl/BusinessCallBack;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 22
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TP lifecycle onSessCls recon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcn/fly/tcp/lifecycle/a;->a()Lcn/fly/tcp/lifecycle/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/lifecycle/a;->c()Z

    .line 24
    invoke-direct {p0}, Lcn/fly/tcp/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcn/fly/tcp/b;->e()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    const-string v1, "TP lifecycle autoInit ignored by user close"

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/fly/tcp/e/c;->a(Lcn/fly/mcl/TcpStatus;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/fly/tcp/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, v2}, Lcn/fly/tcp/b;->b(Z)V

    .line 7
    invoke-direct {p0, v1, v1}, Lcn/fly/tcp/b;->a(II)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcn/fly/tcp/b;->f()V

    .line 4
    invoke-static {}, Lcn/fly/tcp/lifecycle/a;->a()Lcn/fly/tcp/lifecycle/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/lifecycle/a;->c()Z

    .line 5
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/e/c;->h()V

    .line 6
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/e/c;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    return v0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    const-string v1, "TP lifecycle onHBFld"

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcn/fly/tcp/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/fly/tcp/b;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcn/fly/tcp/b;->a(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

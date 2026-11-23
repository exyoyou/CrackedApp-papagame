.class final Lorg/greenrobot/eventbus/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/greenrobot/eventbus/i;

.field private b:Lorg/greenrobot/eventbus/i;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method declared-synchronized a(Lorg/greenrobot/eventbus/i;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/j;->b:Lorg/greenrobot/eventbus/i;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p1, v0, Lorg/greenrobot/eventbus/i;->c:Lorg/greenrobot/eventbus/i;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/greenrobot/eventbus/j;->b:Lorg/greenrobot/eventbus/i;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/j;->a:Lorg/greenrobot/eventbus/i;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Lorg/greenrobot/eventbus/j;->b:Lorg/greenrobot/eventbus/i;

    .line 18
    .line 19
    iput-object p1, p0, Lorg/greenrobot/eventbus/j;->a:Lorg/greenrobot/eventbus/i;

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "Head present, but no tail"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 37
    .line 38
    const-string v0, "null cannot be enqueued"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_1
    monitor-exit p0

    .line 45
    throw p1
.end method

.method declared-synchronized b()Lorg/greenrobot/eventbus/i;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/j;->a:Lorg/greenrobot/eventbus/i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lorg/greenrobot/eventbus/i;->c:Lorg/greenrobot/eventbus/i;

    .line 7
    .line 8
    iput-object v1, p0, Lorg/greenrobot/eventbus/j;->a:Lorg/greenrobot/eventbus/i;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lorg/greenrobot/eventbus/j;->b:Lorg/greenrobot/eventbus/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method declared-synchronized c(I)Lorg/greenrobot/eventbus/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/j;->a:Lorg/greenrobot/eventbus/i;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    int-to-long v0, p1

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/j;->b()Lorg/greenrobot/eventbus/i;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

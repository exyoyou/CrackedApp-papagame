.class final Lorg/jboss/netty/util/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private b:J

.field private c:J

.field final synthetic d:Lorg/jboss/netty/util/c;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/util/c$a;",
            ">;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 13
    .line 14
    iget v1, v0, Lorg/jboss/netty/util/c;->j:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iget-object v2, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 19
    .line 20
    iget v2, v2, Lorg/jboss/netty/util/c;->h:I

    .line 21
    .line 22
    and-int/2addr v1, v2

    .line 23
    iput v1, v0, Lorg/jboss/netty/util/c;->j:I

    .line 24
    .line 25
    iget-object v0, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 26
    .line 27
    iget-object v0, v0, Lorg/jboss/netty/util/c;->g:[Lorg/jboss/netty/util/internal/f;

    .line 28
    .line 29
    aget-object v0, v0, v1

    .line 30
    .line 31
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jboss/netty/util/c$b;->b(Ljava/util/List;Lorg/jboss/netty/util/internal/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 35
    .line 36
    iget-object p1, p1, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    iget-object p2, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 48
    .line 49
    iget-object p2, p2, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method private b(Ljava/util/List;Lorg/jboss/netty/util/internal/f;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/util/c$a;",
            ">;",
            "Lorg/jboss/netty/util/internal/f<",
            "Lorg/jboss/netty/util/c$a;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/f;->rewind()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lorg/jboss/netty/util/c$a;

    .line 16
    .line 17
    iget-wide v2, v1, Lorg/jboss/netty/util/c$a;->d:J

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long v6, v2, v4

    .line 22
    .line 23
    if-gtz v6, :cond_2

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 26
    .line 27
    .line 28
    iget-wide v2, v1, Lorg/jboss/netty/util/c$a;->b:J

    .line 29
    .line 30
    cmp-long v4, v2, p3

    .line 31
    .line 32
    if-gtz v4, :cond_0

    .line 33
    .line 34
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-wide v2, v1, Lorg/jboss/netty/util/c$a;->d:J

    .line 50
    .line 51
    const-wide/16 v4, 0x1

    .line 52
    .line 53
    sub-long/2addr v2, v4

    .line 54
    iput-wide v2, v1, Lorg/jboss/netty/util/c$a;->d:J

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Lorg/jboss/netty/util/c$a;

    .line 74
    .line 75
    iget-object v0, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 76
    .line 77
    iget-wide v1, p2, Lorg/jboss/netty/util/c$a;->b:J

    .line 78
    .line 79
    sub-long/2addr v1, p3

    .line 80
    invoke-virtual {v0, p2, v1, v2}, Lorg/jboss/netty/util/c;->e(Lorg/jboss/netty/util/c$a;J)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/util/c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lorg/jboss/netty/util/c$a;

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/jboss/netty/util/c$a;->c()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private d()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/util/c$b;->b:J

    .line 2
    .line 3
    iget-object v2, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 4
    .line 5
    iget-wide v2, v2, Lorg/jboss/netty/util/c;->e:J

    .line 6
    .line 7
    iget-wide v4, p0, Lorg/jboss/netty/util/c$b;->c:J

    .line 8
    .line 9
    mul-long v2, v2, v4

    .line 10
    .line 11
    add-long/2addr v0, v2

    .line 12
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 17
    .line 18
    iget-wide v4, v4, Lorg/jboss/netty/util/c;->e:J

    .line 19
    .line 20
    iget-wide v6, p0, Lorg/jboss/netty/util/c$b;->c:J

    .line 21
    .line 22
    mul-long v4, v4, v6

    .line 23
    .line 24
    iget-wide v6, p0, Lorg/jboss/netty/util/c$b;->b:J

    .line 25
    .line 26
    sub-long/2addr v2, v6

    .line 27
    sub-long/2addr v4, v2

    .line 28
    invoke-static {}, Lorg/jboss/netty/util/internal/d;->d()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const-wide/16 v2, 0xa

    .line 35
    .line 36
    div-long/2addr v4, v2

    .line 37
    mul-long v4, v4, v2

    .line 38
    .line 39
    :cond_1
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    cmp-long v6, v4, v2

    .line 42
    .line 43
    if-gtz v6, :cond_2

    .line 44
    .line 45
    iget-wide v2, p0, Lorg/jboss/netty/util/c$b;->c:J

    .line 46
    .line 47
    const-wide/16 v4, 0x1

    .line 48
    .line 49
    add-long/2addr v2, v4

    .line 50
    iput-wide v2, p0, Lorg/jboss/netty/util/c$b;->c:J

    .line 51
    .line 52
    return-wide v0

    .line 53
    :cond_2
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    iget-object v2, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 58
    .line 59
    iget-object v2, v2, Lorg/jboss/netty/util/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v3, 0x1

    .line 66
    if-eq v2, v3, :cond_0

    .line 67
    .line 68
    const-wide/16 v0, -0x1

    .line 69
    .line 70
    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, p0, Lorg/jboss/netty/util/c$b;->b:J

    .line 11
    .line 12
    const-wide/16 v1, 0x1

    .line 13
    .line 14
    iput-wide v1, p0, Lorg/jboss/netty/util/c$b;->c:J

    .line 15
    .line 16
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/util/c$b;->d:Lorg/jboss/netty/util/c;

    .line 17
    .line 18
    iget-object v1, v1, Lorg/jboss/netty/util/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Lorg/jboss/netty/util/c$b;->d()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    cmp-long v5, v1, v3

    .line 34
    .line 35
    if-lez v5, :cond_0

    .line 36
    .line 37
    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/util/c$b;->a(Ljava/util/List;J)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/c$b;->c(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

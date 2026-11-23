.class public abstract Lorg/jboss/netty/channel/socket/nio/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/y;
.implements Lorg/jboss/netty/util/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lorg/jboss/netty/channel/socket/nio/e;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/channel/socket/nio/y<",
        "TE;>;",
        "Lorg/jboss/netty/util/b;"
    }
.end annotation


# instance fields
.field private final a:[Lorg/jboss/netty/channel/socket/nio/e;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/Executor;

.field private volatile d:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/f;-><init>(Ljava/util/concurrent/Executor;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;IZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_2

    if-lez p2, :cond_1

    .line 4
    new-array p2, p2, [Lorg/jboss/netty/channel/socket/nio/e;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/f;->a:[Lorg/jboss/netty/channel/socket/nio/e;

    .line 5
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/f;->c:Ljava/util/concurrent/Executor;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->g()V

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "workerCount ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "must be a positive integer."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "workerExecutor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->shutdown()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/f;->c:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    aput-object v2, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Lorg/jboss/netty/util/internal/e;->c([Ljava/util/concurrent/Executor;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->a:[Lorg/jboss/netty/channel/socket/nio/e;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/d;->rebuildSelector()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public bridge synthetic e()Led/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->i()Lorg/jboss/netty/channel/socket/nio/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected f(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "This will be removed. Override this and the newWorker(..) method!"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method protected g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->d:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/f;->a:[Lorg/jboss/netty/channel/socket/nio/e;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-ge v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/f;->c:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/socket/nio/f;->h(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/e;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    aput-object v2, v1, v0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "Init was done before"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method protected h(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/f;->f(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()Lorg/jboss/netty/channel/socket/nio/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->a:[Lorg/jboss/netty/channel/socket/nio/e;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/f;->a:[Lorg/jboss/netty/channel/socket/nio/e;

    .line 10
    .line 11
    array-length v2, v2

    .line 12
    rem-int/2addr v1, v2

    .line 13
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    return-object v0
.end method

.method public shutdown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->a:[Lorg/jboss/netty/channel/socket/nio/e;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/d;->shutdown()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.class public Lcom/sdk/d/f;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/d/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field public final a:I

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public transient c:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public transient d:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/locks/ReentrantLock;

.field public final f:Ljava/util/concurrent/locks/Condition;

.field public final g:Ljava/util/concurrent/locks/ReentrantLock;

.field public final h:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/sdk/d/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    if-lez p1, :cond_0

    iput p1, p0, Lcom/sdk/d/f;->a:I

    new-instance p1, Lcom/sdk/d/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sdk/d/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iput-object p1, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/sdk/d/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sdk/d/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iput-object v0, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :goto_0
    iget-object v0, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/sdk/d/a;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/d/a<",
            "TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object v1, p1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object p1, p1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object v1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    invoke-virtual {v1}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :goto_0
    iget-object v2, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, v2, Lcom/sdk/d/a;->b:Lcom/sdk/d/e;

    iget-object v3, v3, Lcom/sdk/d/e;->a:Lcom/sdk/d/b;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    .line 7
    iget-object v4, p1, Lcom/sdk/d/a;->b:Lcom/sdk/d/e;

    iget-object v4, v4, Lcom/sdk/d/e;->a:Lcom/sdk/d/b;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_1

    iput-object p1, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object v2, p1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    iput-object p1, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object p1, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public a(Lcom/sdk/d/a;Lcom/sdk/d/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/d/a<",
            "TE;>;",
            "Lcom/sdk/d/a<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object v0, p2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iget-object v0, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    :cond_0
    iget-object p1, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    iget p2, p0, Lcom/sdk/d/f;->a:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :goto_0
    iget-object v1, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v1, :cond_0

    iput-object v0, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    iput-object v0, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/sdk/d/f;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_0
    iget-object v1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :cond_1
    iget-object v1, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw p1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 1
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/sdk/d/f;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, p0, :cond_6

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, p2, :cond_2

    :try_start_1
    iget-object v5, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    invoke-virtual {v5}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V

    iput-object v2, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    if-lez v3, :cond_1

    :try_start_2
    iput-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object p2, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v3

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p2

    iget v2, p0, Lcom/sdk/d/f;->a:I

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    throw p1

    :cond_2
    if-lez v3, :cond_3

    iput-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object p1, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v3

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    iget v2, p0, Lcom/sdk/d/f;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_4
    return p2

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_5
    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sdk/d/f$a;

    invoke-direct {v0, p0}, Lcom/sdk/d/f$a;-><init>(Lcom/sdk/d/f;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/sdk/d/f;->a:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    new-instance v1, Lcom/sdk/d/a;

    invoke-direct {v1, p1}, Lcom/sdk/d/a;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v4, p0, Lcom/sdk/d/f;->a:I

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sdk/d/f;->a:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sdk/d/f;->c()V

    :cond_3
    if-ltz v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    iget-object p4, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/sdk/d/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/sdk/d/a;

    invoke-direct {p2, p1}, Lcom/sdk/d/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    iget p3, p0, Lcom/sdk/d/f;->a:I

    if-ge p2, p3, :cond_2

    iget-object p2, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sdk/d/f;->c()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object v2, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    iget-object v3, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v1, p0, Lcom/sdk/d/f;->a:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_3
    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    iget-object p3, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget p3, p0, Lcom/sdk/d/f;->a:I

    if-ne p2, p3, :cond_3

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sdk/d/a;

    invoke-direct {v0, p1}, Lcom/sdk/d/a;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/sdk/d/f;->a:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sdk/d/f;->a:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sdk/d/f;->c()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remainingCapacity()I
    .locals 2

    iget v0, p0, Lcom/sdk/d/f;->a:I

    iget-object v1, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_0
    iget-object v1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :cond_1
    iget-object v2, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;Lcom/sdk/d/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v1, p0, Lcom/sdk/d/f;->a:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    const/4 v2, 0x0

    :goto_0
    iget-object v1, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    const/4 v1, 0x0

    :goto_0
    iget-object v0, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aput-object v0, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw p1
.end method

.class final Lorg/jboss/netty/channel/socket/nio/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Queue<",
        "Lorg/jboss/netty/channel/i0;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field private final b:Lorg/jboss/netty/util/internal/k;

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/i0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lorg/jboss/netty/channel/socket/nio/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lorg/jboss/netty/util/internal/k;

    .line 7
    .line 8
    invoke-direct {p1}, Lorg/jboss/netty/util/internal/k;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Lorg/jboss/netty/util/internal/k;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 19
    .line 20
    return-void
.end method

.method private d(Lorg/jboss/netty/channel/i0;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lorg/jboss/netty/buffer/e;

    .line 10
    .line 11
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method


# virtual methods
.method public a(Lorg/jboss/netty/channel/i0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/jboss/netty/channel/i0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/b$a;->a(Lorg/jboss/netty/channel/i0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jboss/netty/channel/i0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b()Lorg/jboss/netty/channel/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jboss/netty/channel/i0;

    .line 8
    .line 9
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic element()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b$a;->b()Lorg/jboss/netty/channel/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f(Lorg/jboss/netty/channel/i0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/b$a;->d(Lorg/jboss/netty/channel/i0;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/b;->k()Lorg/jboss/netty/channel/socket/nio/j;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteBufferHighWaterMark()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lt v0, v1, :cond_0

    .line 29
    .line 30
    sub-int/2addr v0, p1

    .line 31
    if-ge v0, v1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 34
    .line 35
    iget-object p1, p1, Lorg/jboss/netty/channel/socket/nio/b;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Lorg/jboss/netty/util/internal/k;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Lorg/jboss/netty/util/internal/k;

    .line 55
    .line 56
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 62
    .line 63
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->u(Lorg/jboss/netty/channel/e;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Lorg/jboss/netty/util/internal/k;

    .line 67
    .line 68
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    const/4 p1, 0x1

    .line 74
    return p1
.end method

.method public h()Lorg/jboss/netty/channel/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jboss/netty/channel/i0;

    .line 8
    .line 9
    return-object v0
.end method

.method public i()Lorg/jboss/netty/channel/i0;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jboss/netty/channel/i0;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/b$a;->d(Lorg/jboss/netty/channel/i0;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 16
    .line 17
    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    neg-int v3, v1

    .line 20
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 25
    .line 26
    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/b;->k()Lorg/jboss/netty/channel/socket/nio/j;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteBufferLowWaterMark()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    if-ge v2, v3, :cond_1

    .line 37
    .line 38
    :cond_0
    add-int/2addr v2, v1

    .line 39
    if-lt v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 42
    .line 43
    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/b;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 49
    .line 50
    invoke-interface {v1}, Lorg/jboss/netty/channel/e;->isConnected()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Lorg/jboss/netty/util/internal/k;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Lorg/jboss/netty/util/internal/k;

    .line 71
    .line 72
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->d:Lorg/jboss/netty/channel/socket/nio/b;

    .line 78
    .line 79
    invoke-static {v1}, Lorg/jboss/netty/channel/s;->u(Lorg/jboss/netty/channel/e;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Lorg/jboss/netty/util/internal/k;

    .line 83
    .line 84
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jboss/netty/channel/i0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j()Lorg/jboss/netty/channel/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jboss/netty/channel/i0;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/jboss/netty/channel/i0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/b$a;->f(Lorg/jboss/netty/channel/i0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b$a;->h()Lorg/jboss/netty/channel/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b$a;->i()Lorg/jboss/netty/channel/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b$a;->j()Lorg/jboss/netty/channel/i0;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

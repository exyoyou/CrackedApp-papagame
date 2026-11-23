.class final Lio/netty/util/Recycler$Stack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Stack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

.field private cursor:Lio/netty/util/Recycler$WeakOrderQueue;

.field elements:[Lio/netty/util/Recycler$DefaultHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;"
        }
    .end annotation
.end field

.field private handleRecycleCount:I

.field private volatile head:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final interval:I

.field private final maxCapacity:I

.field private final maxDelayedQueues:I

.field final parent:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private prev:Lio/netty/util/Recycler$WeakOrderQueue;

.field size:I

.field final threadRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/util/Recycler;Ljava/lang/Thread;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler<",
            "TT;>;",
            "Ljava/lang/Thread;",
            "IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->parent:Lio/netty/util/Recycler;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    iput p3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    div-int p2, p3, p4

    .line 18
    .line 19
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    invoke-static {}, Lio/netty/util/Recycler;->access$800()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    new-array p1, p1, [Lio/netty/util/Recycler$DefaultHandle;

    .line 41
    .line 42
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 43
    .line 44
    iput p5, p0, Lio/netty/util/Recycler$Stack;->interval:I

    .line 45
    .line 46
    iput p5, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 47
    .line 48
    iput p6, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    .line 49
    .line 50
    return-void
.end method

.method static synthetic access$700(Lio/netty/util/Recycler$Stack;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/netty/util/Recycler$Stack;->interval:I

    .line 2
    .line 3
    return p0
.end method

.method private newWeakOrderQueue(Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/netty/util/Recycler$WeakOrderQueue;->newQueue(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private pushLater(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Thread;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lio/netty/util/Recycler;->access$400()Lio/netty/util/concurrent/FastThreadLocal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lio/netty/util/Recycler$WeakOrderQueue;

    .line 21
    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget v2, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    .line 29
    .line 30
    if-lt v1, v2, :cond_1

    .line 31
    .line 32
    sget-object p1, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 33
    .line 34
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-direct {p0, p2}, Lio/netty/util/Recycler$Stack;->newWeakOrderQueue(Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget-object p2, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 50
    .line 51
    if-ne v1, p2, :cond_4

    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    :goto_0
    invoke-virtual {v1, p1}, Lio/netty/util/Recycler$WeakOrderQueue;->add(Lio/netty/util/Recycler$DefaultHandle;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private pushNow(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 2
    .line 3
    iget v1, p1, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p1, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    .line 13
    .line 14
    iput v0, p1, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 15
    .line 16
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 17
    .line 18
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 19
    .line 20
    if-ge v0, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$Stack;->dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    shl-int/lit8 v2, v0, 0x1

    .line 35
    .line 36
    iget v3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, [Lio/netty/util/Recycler$DefaultHandle;

    .line 47
    .line 48
    iput-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 49
    .line 50
    :cond_1
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 51
    .line 52
    aput-object p1, v1, v0

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    iput v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "recycled already"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method private scavenge()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/util/Recycler$Stack;->scavengeSome()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 11
    .line 12
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 13
    .line 14
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method private scavengeSome()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_2
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->getNext()Lio/netty/util/Recycler$WeakOrderQueue;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-nez v5, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->hasFinalData()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-eqz v2, :cond_5

    .line 48
    .line 49
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->reclaimAllSpaceAndUnlink()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lio/netty/util/Recycler$WeakOrderQueue;->setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    move-object v2, v0

    .line 57
    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    .line 58
    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_6
    move-object v0, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_7
    :goto_3
    move v4, v1

    .line 65
    move-object v0, v3

    .line 66
    :goto_4
    iput-object v2, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 67
    .line 68
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 69
    .line 70
    return v4
.end method


# virtual methods
.method dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lio/netty/util/Recycler$DefaultHandle;->hasBeenRecycled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 7
    .line 8
    iget v2, p0, Lio/netty/util/Recycler$Stack;->interval:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    add-int/2addr v0, v3

    .line 14
    iput v0, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    iput v1, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 18
    .line 19
    iput-boolean v3, p1, Lio/netty/util/Recycler$DefaultHandle;->hasBeenRecycled:Z

    .line 20
    .line 21
    :cond_1
    return v1
.end method

.method increaseCapacity(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 5
    .line 6
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    if-ge v0, p1, :cond_1

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, [Lio/netty/util/Recycler$DefaultHandle;

    .line 26
    .line 27
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 28
    .line 29
    :cond_2
    return p1
.end method

.method newHandle()Lio/netty/util/Recycler$DefaultHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/netty/util/Recycler$DefaultHandle;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/netty/util/Recycler$DefaultHandle;-><init>(Lio/netty/util/Recycler$Stack;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method pop()Lio/netty/util/Recycler$DefaultHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Lio/netty/util/Recycler$Stack;->scavenge()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 14
    .line 15
    if-gtz v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 21
    .line 22
    aget-object v3, v2, v0

    .line 23
    .line 24
    aput-object v1, v2, v0

    .line 25
    .line 26
    iput v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 27
    .line 28
    iget v0, v3, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    .line 29
    .line 30
    iget v1, v3, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput v0, v3, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 36
    .line 37
    iput v0, v3, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    .line 38
    .line 39
    return-object v3

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v1, "recycled multiple times"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method push(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lio/netty/util/Recycler$Stack;->pushNow(Lio/netty/util/Recycler$DefaultHandle;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/netty/util/Recycler$Stack;->pushLater(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Thread;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method declared-synchronized setHead(Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lio/netty/util/Recycler$WeakOrderQueue;->setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

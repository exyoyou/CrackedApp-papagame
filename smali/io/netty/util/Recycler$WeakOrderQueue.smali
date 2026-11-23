.class final Lio/netty/util/Recycler$WeakOrderQueue;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakOrderQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Recycler$WeakOrderQueue$Head;,
        Lio/netty/util/Recycler$WeakOrderQueue$Link;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;


# instance fields
.field private handleRecycleCount:I

.field private final head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

.field private final id:I

.field private final interval:I

.field private next:Lio/netty/util/Recycler$WeakOrderQueue;

.field private tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/netty/util/Recycler$WeakOrderQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lio/netty/util/Recycler;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    .line 3
    new-instance v1, Lio/netty/util/Recycler$WeakOrderQueue$Head;

    invoke-direct {v1, v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->interval:I

    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lio/netty/util/Recycler;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    .line 7
    new-instance p2, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-direct {p2}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>()V

    iput-object p2, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 8
    new-instance p2, Lio/netty/util/Recycler$WeakOrderQueue$Head;

    iget-object v0, p1, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object p2, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    .line 9
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iput-object v0, p2, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 10
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$700(Lio/netty/util/Recycler$Stack;)I

    move-result p1

    iput p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->interval:I

    .line 11
    iput p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->handleRecycleCount:I

    return-void
.end method

.method static newQueue(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Ljava/lang/Thread;",
            ")",
            "Lio/netty/util/Recycler$WeakOrderQueue;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reserveSpaceForLink(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lio/netty/util/Recycler$WeakOrderQueue;-><init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lio/netty/util/Recycler$Stack;->setHead(Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method add(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    .line 2
    .line 3
    iput v0, p1, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    .line 4
    .line 5
    iget v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->handleRecycleCount:I

    .line 6
    .line 7
    iget v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->interval:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->handleRecycleCount:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->handleRecycleCount:I

    .line 18
    .line 19
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    .line 32
    .line 33
    invoke-virtual {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->newLink()Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iput-object v1, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 41
    .line 42
    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    move-object v3, v1

    .line 49
    move v1, v0

    .line 50
    move-object v0, v3

    .line 51
    :cond_2
    iget-object v2, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 52
    .line 53
    aput-object p1, v2, v1

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    iput-object v2, p1, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method getNext()Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 2
    .line 3
    return-object v0
.end method

.method hasFinalData()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 2
    .line 3
    iget v1, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method reclaimAllSpaceAndUnlink()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reclaimAllSpaceAndUnlink()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 8
    .line 9
    return-void
.end method

.method setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 2
    .line 3
    return-void
.end method

.method transfer(Lio/netty/util/Recycler$Stack;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    .line 2
    .line 3
    iget-object v0, v0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v2, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    .line 10
    .line 11
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ne v2, v3, :cond_2

    .line 16
    .line 17
    iget-object v0, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v2, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->relink(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget v2, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int v4, v3, v2

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    iget v5, p1, Lio/netty/util/Recycler$Stack;->size:I

    .line 39
    .line 40
    add-int/2addr v4, v5

    .line 41
    iget-object v6, p1, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 42
    .line 43
    array-length v6, v6

    .line 44
    if-le v4, v6, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1, v4}, Lio/netty/util/Recycler$Stack;->increaseCapacity(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    add-int/2addr v4, v2

    .line 51
    sub-int/2addr v4, v5

    .line 52
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    :cond_4
    if-eq v2, v3, :cond_b

    .line 57
    .line 58
    iget-object v4, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 59
    .line 60
    iget-object v6, p1, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 61
    .line 62
    :goto_0
    if-ge v2, v3, :cond_8

    .line 63
    .line 64
    aget-object v7, v4, v2

    .line 65
    .line 66
    iget v8, v7, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 67
    .line 68
    if-nez v8, :cond_5

    .line 69
    .line 70
    iget v8, v7, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    .line 71
    .line 72
    iput v8, v7, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    iget v9, v7, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    .line 76
    .line 77
    if-ne v8, v9, :cond_7

    .line 78
    .line 79
    :goto_1
    const/4 v8, 0x0

    .line 80
    aput-object v8, v4, v2

    .line 81
    .line 82
    invoke-virtual {p1, v7}, Lio/netty/util/Recycler$Stack;->dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_6

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    iput-object p1, v7, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    .line 90
    .line 91
    add-int/lit8 v8, v5, 0x1

    .line 92
    .line 93
    aput-object v7, v6, v5

    .line 94
    .line 95
    move v5, v8

    .line 96
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v0, "recycled already"

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_8
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-ne v3, v2, :cond_9

    .line 112
    .line 113
    iget-object v2, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 114
    .line 115
    if-eqz v2, :cond_9

    .line 116
    .line 117
    iget-object v4, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    .line 118
    .line 119
    invoke-virtual {v4, v2}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->relink(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    .line 120
    .line 121
    .line 122
    :cond_9
    iput v3, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    .line 123
    .line 124
    iget v0, p1, Lio/netty/util/Recycler$Stack;->size:I

    .line 125
    .line 126
    if-ne v0, v5, :cond_a

    .line 127
    .line 128
    return v1

    .line 129
    :cond_a
    iput v5, p1, Lio/netty/util/Recycler$Stack;->size:I

    .line 130
    .line 131
    const/4 p1, 0x1

    .line 132
    return p1

    .line 133
    :cond_b
    return v1
.end method

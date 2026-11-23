.class public abstract Lio/netty/util/Recycler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Recycler$Stack;,
        Lio/netty/util/Recycler$WeakOrderQueue;,
        Lio/netty/util/Recycler$DefaultHandle;,
        Lio/netty/util/Recycler$Handle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_MAX_CAPACITY_PER_THREAD:I = 0x1000

.field private static final DEFAULT_MAX_CAPACITY_PER_THREAD:I

.field private static final DELAYED_RECYCLED:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/util/Map<",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Lio/netty/util/Recycler$WeakOrderQueue;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final INITIAL_CAPACITY:I

.field private static final LINK_CAPACITY:I

.field private static final MAX_DELAYED_QUEUES_PER_THREAD:I

.field private static final MAX_SHARED_CAPACITY_FACTOR:I

.field private static final NOOP_HANDLE:Lio/netty/util/Recycler$Handle;

.field private static final OWN_THREAD_ID:I

.field private static final RATIO:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final interval:I

.field private final maxCapacityPerThread:I

.field private final maxDelayedQueuesPerThread:I

.field private final maxSharedCapacityFactor:I

.field private final threadLocal:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Lio/netty/util/Recycler$Stack<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lio/netty/util/Recycler;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 8
    .line 9
    new-instance v1, Lio/netty/util/Recycler$1;

    .line 10
    .line 11
    invoke-direct {v1}, Lio/netty/util/Recycler$1;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lio/netty/util/Recycler;->NOOP_HANDLE:Lio/netty/util/Recycler$Handle;

    .line 15
    .line 16
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    const/high16 v2, -0x80000000

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lio/netty/util/Recycler;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sput v1, Lio/netty/util/Recycler;->OWN_THREAD_ID:I

    .line 30
    .line 31
    const-string v1, "io.netty.recycler.maxCapacity"

    .line 32
    .line 33
    const/16 v2, 0x1000

    .line 34
    .line 35
    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string v3, "io.netty.recycler.maxCapacityPerThread"

    .line 40
    .line 41
    invoke-static {v3, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-gez v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v2, v1

    .line 49
    :goto_0
    sput v2, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY_PER_THREAD:I

    .line 50
    .line 51
    const-string v1, "io.netty.recycler.maxSharedCapacityFactor"

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    invoke-static {v1, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sput v1, Lio/netty/util/Recycler;->MAX_SHARED_CAPACITY_FACTOR:I

    .line 63
    .line 64
    invoke-static {}, Lio/netty/util/NettyRuntime;->availableProcessors()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    mul-int/lit8 v4, v4, 0x2

    .line 69
    .line 70
    const-string v3, "io.netty.recycler.maxDelayedQueuesPerThread"

    .line 71
    .line 72
    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    sput v3, Lio/netty/util/Recycler;->MAX_DELAYED_QUEUES_PER_THREAD:I

    .line 82
    .line 83
    const-string v3, "io.netty.recycler.linkCapacity"

    .line 84
    .line 85
    const/16 v4, 0x10

    .line 86
    .line 87
    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-static {v3}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    sput v3, Lio/netty/util/Recycler;->LINK_CAPACITY:I

    .line 100
    .line 101
    const-string v4, "io.netty.recycler.ratio"

    .line 102
    .line 103
    const/16 v5, 0x8

    .line 104
    .line 105
    invoke-static {v4, v5}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-static {v4}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    sput v4, Lio/netty/util/Recycler;->RATIO:I

    .line 114
    .line 115
    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_2

    .line 120
    .line 121
    if-nez v2, :cond_1

    .line 122
    .line 123
    const-string v1, "-Dio.netty.recycler.maxCapacityPerThread: disabled"

    .line 124
    .line 125
    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v1, "-Dio.netty.recycler.maxSharedCapacityFactor: disabled"

    .line 129
    .line 130
    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v1, "-Dio.netty.recycler.linkCapacity: disabled"

    .line 134
    .line 135
    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "-Dio.netty.recycler.ratio: disabled"

    .line 139
    .line 140
    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    const-string v5, "-Dio.netty.recycler.maxCapacityPerThread: {}"

    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-interface {v0, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    const-string v5, "-Dio.netty.recycler.maxSharedCapacityFactor: {}"

    .line 154
    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v0, v5, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    const-string v1, "-Dio.netty.recycler.linkCapacity: {}"

    .line 163
    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-interface {v0, v1, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    const-string v1, "-Dio.netty.recycler.ratio: {}"

    .line 172
    .line 173
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-interface {v0, v1, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_2
    :goto_1
    const/16 v0, 0x100

    .line 181
    .line 182
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    sput v0, Lio/netty/util/Recycler;->INITIAL_CAPACITY:I

    .line 187
    .line 188
    new-instance v0, Lio/netty/util/Recycler$3;

    .line 189
    .line 190
    invoke-direct {v0}, Lio/netty/util/Recycler$3;-><init>()V

    .line 191
    .line 192
    .line 193
    sput-object v0, Lio/netty/util/Recycler;->DELAYED_RECYCLED:Lio/netty/util/concurrent/FastThreadLocal;

    .line 194
    .line 195
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY_PER_THREAD:I

    invoke-direct {p0, v0}, Lio/netty/util/Recycler;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .line 2
    sget v0, Lio/netty/util/Recycler;->MAX_SHARED_CAPACITY_FACTOR:I

    invoke-direct {p0, p1, v0}, Lio/netty/util/Recycler;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2

    .line 3
    sget v0, Lio/netty/util/Recycler;->RATIO:I

    sget v1, Lio/netty/util/Recycler;->MAX_DELAYED_QUEUES_PER_THREAD:I

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/util/Recycler;-><init>(IIII)V

    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lio/netty/util/Recycler$2;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$2;-><init>(Lio/netty/util/Recycler;)V

    iput-object v0, p0, Lio/netty/util/Recycler;->threadLocal:Lio/netty/util/concurrent/FastThreadLocal;

    .line 6
    invoke-static {p3}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    move-result p3

    iput p3, p0, Lio/netty/util/Recycler;->interval:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 7
    iput v0, p0, Lio/netty/util/Recycler;->maxCapacityPerThread:I

    .line 8
    iput p3, p0, Lio/netty/util/Recycler;->maxSharedCapacityFactor:I

    .line 9
    iput v0, p0, Lio/netty/util/Recycler;->maxDelayedQueuesPerThread:I

    goto :goto_0

    .line 10
    :cond_0
    iput p1, p0, Lio/netty/util/Recycler;->maxCapacityPerThread:I

    .line 11
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/netty/util/Recycler;->maxSharedCapacityFactor:I

    .line 12
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/netty/util/Recycler;->maxDelayedQueuesPerThread:I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/netty/util/Recycler;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/netty/util/Recycler;->maxCapacityPerThread:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lio/netty/util/Recycler;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/netty/util/Recycler;->maxSharedCapacityFactor:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lio/netty/util/Recycler;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/netty/util/Recycler;->interval:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lio/netty/util/Recycler;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/netty/util/Recycler;->maxDelayedQueuesPerThread:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400()Lio/netty/util/concurrent/FastThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/Recycler;->DELAYED_RECYCLED:Lio/netty/util/concurrent/FastThreadLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 1
    sget v0, Lio/netty/util/Recycler;->LINK_CAPACITY:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/Recycler;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 1
    sget v0, Lio/netty/util/Recycler;->INITIAL_CAPACITY:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 1
    sget v0, Lio/netty/util/Recycler;->OWN_THREAD_ID:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/util/Recycler;->maxCapacityPerThread:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/netty/util/Recycler;->NOOP_HANDLE:Lio/netty/util/Recycler$Handle;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lio/netty/util/Recycler;->newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/netty/util/Recycler;->threadLocal:Lio/netty/util/concurrent/FastThreadLocal;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/netty/util/Recycler$Stack;

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/netty/util/Recycler$Stack;->pop()Lio/netty/util/Recycler$DefaultHandle;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/netty/util/Recycler$Stack;->newHandle()Lio/netty/util/Recycler$DefaultHandle;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1}, Lio/netty/util/Recycler;->newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, v1, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    .line 35
    .line 36
    :cond_1
    iget-object v0, v1, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    .line 37
    .line 38
    return-object v0
.end method

.method protected abstract newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public final recycle(Ljava/lang/Object;Lio/netty/util/Recycler$Handle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/netty/util/Recycler$Handle<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lio/netty/util/Recycler;->NOOP_HANDLE:Lio/netty/util/Recycler$Handle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p2, Lio/netty/util/Recycler$DefaultHandle;

    .line 8
    .line 9
    iget-object v0, p2, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    .line 10
    .line 11
    iget-object v0, v0, Lio/netty/util/Recycler$Stack;->parent:Lio/netty/util/Recycler;

    .line 12
    .line 13
    if-eq v0, p0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-virtual {p2, p1}, Lio/netty/util/Recycler$DefaultHandle;->recycle(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method final threadLocalCapacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler;->threadLocal:Lio/netty/util/concurrent/FastThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/netty/util/Recycler$Stack;

    .line 8
    .line 9
    iget-object v0, v0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    return v0
.end method

.method final threadLocalSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler;->threadLocal:Lio/netty/util/concurrent/FastThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/netty/util/Recycler$Stack;

    .line 8
    .line 9
    iget v0, v0, Lio/netty/util/Recycler$Stack;->size:I

    .line 10
    .line 11
    return v0
.end method

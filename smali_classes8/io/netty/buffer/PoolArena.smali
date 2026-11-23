.class abstract Lio/netty/buffer/PoolArena;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/PoolArenaMetric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolArena$DirectArena;,
        Lio/netty/buffer/PoolArena$HeapArena;,
        Lio/netty/buffer/PoolArena$SizeClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolArenaMetric;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final HAS_UNSAFE:Z

.field static final numTinySubpagePools:I = 0x20


# instance fields
.field private final activeBytesHuge:Lio/netty/util/internal/LongCounter;

.field private final allocationsHuge:Lio/netty/util/internal/LongCounter;

.field private allocationsNormal:J

.field private final allocationsSmall:Lio/netty/util/internal/LongCounter;

.field private final allocationsTiny:Lio/netty/util/internal/LongCounter;

.field private final chunkListMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolChunkListMetric;",
            ">;"
        }
    .end annotation
.end field

.field final chunkSize:I

.field private final deallocationsHuge:Lio/netty/util/internal/LongCounter;

.field private deallocationsNormal:J

.field private deallocationsSmall:J

.field private deallocationsTiny:J

.field final directMemoryCacheAlignment:I

.field final directMemoryCacheAlignmentMask:I

.field private final maxOrder:I

.field final numSmallSubpagePools:I

.field final numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

.field final pageShifts:I

.field final pageSize:I

.field final parent:Lio/netty/buffer/PooledByteBufAllocator;

.field private final q000:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q025:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q050:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q075:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q100:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final qInit:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final smallSubpagePools:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field final subpageOverflowMask:I

.field private final tinySubpagePools:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lio/netty/buffer/PoolArena;->HAS_UNSAFE:Z

    .line 6
    .line 7
    return-void
.end method

.method protected constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V
    .locals 14

    .line 1
    move-object v6, p0

    .line 2
    move/from16 v0, p2

    .line 3
    .line 4
    move/from16 v1, p4

    .line 5
    .line 6
    move/from16 v2, p6

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iput-object v3, v6, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    .line 16
    .line 17
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iput-object v3, v6, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    .line 22
    .line 23
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, v6, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 28
    .line 29
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iput-object v3, v6, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    .line 34
    .line 35
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iput-object v3, v6, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 40
    .line 41
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v3, v6, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    move-object v3, p1

    .line 49
    iput-object v3, v6, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    .line 50
    .line 51
    iput v0, v6, Lio/netty/buffer/PoolArena;->pageSize:I

    .line 52
    .line 53
    move/from16 v3, p3

    .line 54
    .line 55
    iput v3, v6, Lio/netty/buffer/PoolArena;->maxOrder:I

    .line 56
    .line 57
    iput v1, v6, Lio/netty/buffer/PoolArena;->pageShifts:I

    .line 58
    .line 59
    move/from16 v7, p5

    .line 60
    .line 61
    iput v7, v6, Lio/netty/buffer/PoolArena;->chunkSize:I

    .line 62
    .line 63
    iput v2, v6, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    .line 64
    .line 65
    add-int/lit8 v2, v2, -0x1

    .line 66
    .line 67
    iput v2, v6, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignmentMask:I

    .line 68
    .line 69
    add-int/lit8 v2, v0, -0x1

    .line 70
    .line 71
    not-int v2, v2

    .line 72
    iput v2, v6, Lio/netty/buffer/PoolArena;->subpageOverflowMask:I

    .line 73
    .line 74
    const/16 v2, 0x20

    .line 75
    .line 76
    invoke-direct {p0, v2}, Lio/netty/buffer/PoolArena;->newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iput-object v2, v6, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    :goto_0
    iget-object v4, v6, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 85
    .line 86
    array-length v5, v4

    .line 87
    if-ge v3, v5, :cond_0

    .line 88
    .line 89
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolArena;->newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    aput-object v5, v4, v3

    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    add-int/lit8 v1, v1, -0x9

    .line 99
    .line 100
    iput v1, v6, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    .line 101
    .line 102
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolArena;->newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, v6, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 107
    .line 108
    :goto_1
    iget-object v1, v6, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 109
    .line 110
    array-length v3, v1

    .line 111
    if-ge v2, v3, :cond_1

    .line 112
    .line 113
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolArena;->newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    aput-object v3, v1, v2

    .line 118
    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    new-instance v8, Lio/netty/buffer/PoolChunkList;

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    const/16 v3, 0x64

    .line 126
    .line 127
    const v4, 0x7fffffff

    .line 128
    .line 129
    .line 130
    move-object v0, v8

    .line 131
    move-object v1, p0

    .line 132
    move/from16 v5, p5

    .line 133
    .line 134
    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    .line 135
    .line 136
    .line 137
    iput-object v8, v6, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    .line 138
    .line 139
    new-instance v9, Lio/netty/buffer/PoolChunkList;

    .line 140
    .line 141
    const/16 v3, 0x4b

    .line 142
    .line 143
    const/16 v4, 0x64

    .line 144
    .line 145
    move-object v0, v9

    .line 146
    move-object v2, v8

    .line 147
    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    .line 148
    .line 149
    .line 150
    iput-object v9, v6, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    .line 151
    .line 152
    new-instance v10, Lio/netty/buffer/PoolChunkList;

    .line 153
    .line 154
    const/16 v3, 0x32

    .line 155
    .line 156
    move-object v0, v10

    .line 157
    move-object v2, v9

    .line 158
    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    .line 159
    .line 160
    .line 161
    iput-object v10, v6, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    .line 162
    .line 163
    new-instance v11, Lio/netty/buffer/PoolChunkList;

    .line 164
    .line 165
    const/16 v3, 0x19

    .line 166
    .line 167
    const/16 v4, 0x4b

    .line 168
    .line 169
    move-object v0, v11

    .line 170
    move-object v2, v10

    .line 171
    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    .line 172
    .line 173
    .line 174
    iput-object v11, v6, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    .line 175
    .line 176
    new-instance v12, Lio/netty/buffer/PoolChunkList;

    .line 177
    .line 178
    const/4 v3, 0x1

    .line 179
    const/16 v4, 0x32

    .line 180
    .line 181
    move-object v0, v12

    .line 182
    move-object v2, v11

    .line 183
    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    .line 184
    .line 185
    .line 186
    iput-object v12, v6, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    .line 187
    .line 188
    new-instance v13, Lio/netty/buffer/PoolChunkList;

    .line 189
    .line 190
    const/high16 v3, -0x80000000

    .line 191
    .line 192
    const/16 v4, 0x19

    .line 193
    .line 194
    move-object v0, v13

    .line 195
    move-object v2, v12

    .line 196
    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    .line 197
    .line 198
    .line 199
    iput-object v13, v6, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    .line 200
    .line 201
    invoke-virtual {v8, v9}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v10}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v11}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v12}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 211
    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    invoke-virtual {v12, v0}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v13}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    .line 221
    .line 222
    const/4 v1, 0x6

    .line 223
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iput-object v0, v6, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    .line 249
    .line 250
    return-void
.end method

.method private allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache;",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p3}, Lio/netty/buffer/PoolArena;->normalizeCapacity(I)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lio/netty/buffer/PoolArena;->isTinyOrSmall(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-static {v0}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1, p0, p2, p3, v0}, Lio/netty/buffer/PoolThreadCache;->allocateTiny(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {v0}, Lio/netty/buffer/PoolArena;->tinyIdx(I)I

    move-result p1

    .line 8
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, p0, p2, p3, v0}, Lio/netty/buffer/PoolThreadCache;->allocateSmall(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-static {v0}, Lio/netty/buffer/PoolArena;->smallIdx(I)I

    move-result p1

    .line 11
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 12
    :goto_0
    aget-object v2, v2, p1

    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object p1, v2, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-eq p1, v2, :cond_3

    .line 15
    invoke-virtual {p1}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide v6

    .line 16
    iget-object v3, p1, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    const/4 v5, 0x0

    move-object v4, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V

    .line 17
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolArena;->incTinySmallAllocation(Z)V

    .line 18
    monitor-exit v2

    return-void

    .line 19
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    monitor-enter p0

    .line 21
    :try_start_1
    invoke-direct {p0, p2, p3, v0}, Lio/netty/buffer/PoolArena;->allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V

    .line 22
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolArena;->incTinySmallAllocation(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 25
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 26
    :cond_4
    iget v1, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    if-gt v0, v1, :cond_6

    .line 27
    invoke-virtual {p1, p0, p2, p3, v0}, Lio/netty/buffer/PoolThreadCache;->allocateNormal(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 28
    :cond_5
    monitor-enter p0

    .line 29
    :try_start_4
    invoke-direct {p0, p2, p3, v0}, Lio/netty/buffer/PoolArena;->allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V

    .line 30
    iget-wide p1, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    .line 31
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 32
    :cond_6
    invoke-direct {p0, p2, p3}, Lio/netty/buffer/PoolArena;->allocateHuge(Lio/netty/buffer/PooledByteBuf;I)V

    :goto_1
    return-void
.end method

.method private allocateHuge(Lio/netty/buffer/PooledByteBuf;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lio/netty/buffer/PoolArena;->newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/netty/buffer/PoolChunk;->chunkSize()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-long v2, v2

    .line 12
    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, p2}, Lio/netty/buffer/PooledByteBuf;->initUnpooled(Lio/netty/buffer/PoolChunk;I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 19
    .line 20
    invoke-interface {p1}, Lio/netty/util/internal/LongCounter;->increment()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolArena;->pageSize:I

    .line 43
    .line 44
    iget v1, p0, Lio/netty/buffer/PoolArena;->maxOrder:I

    .line 45
    .line 46
    iget v2, p0, Lio/netty/buffer/PoolArena;->pageShifts:I

    .line 47
    .line 48
    iget v3, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/netty/buffer/PoolArena;->newChunk(IIII)Lio/netty/buffer/PoolChunk;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunk;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method private static appendPoolSubPages(Ljava/lang/StringBuilder;[Lio/netty/buffer/PoolSubpage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_2

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    iget-object v2, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 8
    .line 9
    if-ne v2, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ": "

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, v2, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 31
    .line 32
    if-ne v2, v1, :cond_1

    .line 33
    .line 34
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method private varargs destroyPoolChunkLists([Lio/netty/buffer/PoolChunkList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {v2, p0}, Lio/netty/buffer/PoolChunkList;->destroy(Lio/netty/buffer/PoolArena;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method private static destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolSubpage<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    invoke-virtual {v2}, Lio/netty/buffer/PoolSubpage;->destroy()V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method private incTinySmallAllocation(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    .line 4
    .line 5
    invoke-interface {p1}, Lio/netty/util/internal/LongCounter;->increment()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    .line 10
    .line 11
    invoke-interface {p1}, Lio/netty/util/internal/LongCounter;->increment()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method static isTiny(I)Z
    .locals 0

    and-int/lit16 p0, p0, -0x200

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-array p1, p1, [Lio/netty/buffer/PoolSubpage;

    .line 2
    .line 3
    return-object p1
.end method

.method private newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/netty/buffer/PoolSubpage;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/netty/buffer/PoolSubpage;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object v0, v0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 7
    .line 8
    iput-object v0, v0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 9
    .line 10
    return-object v0
.end method

.method private sizeClass(I)Lio/netty/buffer/PoolArena$SizeClass;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->isTinyOrSmall(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lio/netty/buffer/PoolArena$SizeClass;->Normal:Lio/netty/buffer/PoolArena$SizeClass;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lio/netty/buffer/PoolArena$SizeClass;->Tiny:Lio/netty/buffer/PoolArena$SizeClass;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lio/netty/buffer/PoolArena$SizeClass;->Small:Lio/netty/buffer/PoolArena$SizeClass;

    .line 20
    .line 21
    :goto_0
    return-object p1
.end method

.method static smallIdx(I)I
    .locals 1

    ushr-int/lit8 p0, p0, 0xa

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static subPageMetricList([Lio/netty/buffer/PoolSubpage;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolSubpage<",
            "*>;)",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    iget-object v4, v3, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 13
    .line 14
    if-ne v4, v3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v4, v4, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 21
    .line 22
    if-ne v4, v3, :cond_0

    .line 23
    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object v0
.end method

.method static tinyIdx(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method alignCapacity(I)I
    .locals 2

    .line 1
    iget v0, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignmentMask:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    sub-int/2addr p1, v0

    .line 11
    :goto_0
    return p1
.end method

.method allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache;",
            "II)",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lio/netty/buffer/PoolArena;->newByteBuf(I)Lio/netty/buffer/PooledByteBuf;

    move-result-object p3

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V

    return-object p3
.end method

.method public chunkLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolChunkListMetric;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected final finalize()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x6

    .line 8
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    iget-object v7, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 12
    .line 13
    invoke-static {v7}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    .line 14
    .line 15
    .line 16
    iget-object v7, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 17
    .line 18
    invoke-static {v7}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    .line 19
    .line 20
    .line 21
    new-array v6, v6, [Lio/netty/buffer/PoolChunkList;

    .line 22
    .line 23
    iget-object v7, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    .line 24
    .line 25
    aput-object v7, v6, v5

    .line 26
    .line 27
    iget-object v5, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    .line 28
    .line 29
    aput-object v5, v6, v4

    .line 30
    .line 31
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    .line 32
    .line 33
    aput-object v4, v6, v3

    .line 34
    .line 35
    iget-object v3, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    .line 36
    .line 37
    aput-object v3, v6, v2

    .line 38
    .line 39
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    .line 40
    .line 41
    aput-object v2, v6, v1

    .line 42
    .line 43
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    .line 44
    .line 45
    aput-object v1, v6, v0

    .line 46
    .line 47
    invoke-direct {p0, v6}, Lio/netty/buffer/PoolArena;->destroyPoolChunkLists([Lio/netty/buffer/PoolChunkList;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v7

    .line 52
    iget-object v8, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 53
    .line 54
    invoke-static {v8}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    .line 55
    .line 56
    .line 57
    iget-object v8, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 58
    .line 59
    invoke-static {v8}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    .line 60
    .line 61
    .line 62
    new-array v6, v6, [Lio/netty/buffer/PoolChunkList;

    .line 63
    .line 64
    iget-object v8, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    .line 65
    .line 66
    aput-object v8, v6, v5

    .line 67
    .line 68
    iget-object v5, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    .line 69
    .line 70
    aput-object v5, v6, v4

    .line 71
    .line 72
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    .line 73
    .line 74
    aput-object v4, v6, v3

    .line 75
    .line 76
    iget-object v3, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    .line 77
    .line 78
    aput-object v3, v6, v2

    .line 79
    .line 80
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    .line 81
    .line 82
    aput-object v2, v6, v1

    .line 83
    .line 84
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    .line 85
    .line 86
    aput-object v1, v6, v0

    .line 87
    .line 88
    invoke-direct {p0, v6}, Lio/netty/buffer/PoolArena;->destroyPoolChunkLists([Lio/netty/buffer/PoolChunkList;)V

    .line 89
    .line 90
    .line 91
    throw v7
.end method

.method findSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    ushr-int/lit8 p1, p1, 0x4

    .line 8
    .line 9
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    ushr-int/lit8 p1, p1, 0xa

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    ushr-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 23
    .line 24
    move v1, v0

    .line 25
    move-object v0, p1

    .line 26
    move p1, v1

    .line 27
    :goto_1
    aget-object p1, v0, p1

    .line 28
    .line 29
    return-object p1
.end method

.method free(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lio/netty/buffer/PoolChunk;->unpooled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->chunkSize()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    .line 13
    .line 14
    neg-int p2, p2

    .line 15
    int-to-long p2, p2

    .line 16
    invoke-interface {p1, p2, p3}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 20
    .line 21
    invoke-interface {p1}, Lio/netty/util/internal/LongCounter;->increment()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0, p5}, Lio/netty/buffer/PoolArena;->sizeClass(I)Lio/netty/buffer/PoolArena$SizeClass;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    if-eqz p6, :cond_1

    .line 30
    .line 31
    move-object v0, p6

    .line 32
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    move-object v3, p2

    .line 35
    move-wide v4, p3

    .line 36
    move v6, p5

    .line 37
    move-object v7, v8

    .line 38
    invoke-virtual/range {v0 .. v7}, Lio/netty/buffer/PoolThreadCache;->add(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolArena$SizeClass;)Z

    .line 39
    .line 40
    .line 41
    move-result p5

    .line 42
    if-eqz p5, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const/4 v6, 0x0

    .line 46
    move-object v0, p0

    .line 47
    move-object v1, p1

    .line 48
    move-wide v2, p3

    .line 49
    move-object v4, v8

    .line 50
    move-object v5, p2

    .line 51
    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PoolArena;->freeChunk(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PoolArena$SizeClass;Ljava/nio/ByteBuffer;Z)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method freeChunk(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PoolArena$SizeClass;Ljava/nio/ByteBuffer;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;J",
            "Lio/netty/buffer/PoolArena$SizeClass;",
            "Ljava/nio/ByteBuffer;",
            "Z)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-nez p6, :cond_3

    .line 4
    .line 5
    :try_start_0
    sget-object p6, Lio/netty/buffer/PoolArena$1;->$SwitchMap$io$netty$buffer$PoolArena$SizeClass:[I

    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    aget p4, p6, p4

    .line 12
    .line 13
    const-wide/16 v1, 0x1

    .line 14
    .line 15
    if-eq p4, v0, :cond_2

    .line 16
    .line 17
    const/4 p6, 0x2

    .line 18
    if-eq p4, p6, :cond_1

    .line 19
    .line 20
    const/4 p6, 0x3

    .line 21
    if-ne p4, p6, :cond_0

    .line 22
    .line 23
    iget-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    .line 24
    .line 25
    add-long/2addr v3, v1

    .line 26
    iput-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/Error;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    iget-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    .line 36
    .line 37
    add-long/2addr v3, v1

    .line 38
    iput-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    .line 42
    .line 43
    add-long/2addr v3, v1

    .line 44
    iput-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    .line 45
    .line 46
    :cond_3
    :goto_0
    iget-object p4, p1, Lio/netty/buffer/PoolChunk;->parent:Lio/netty/buffer/PoolChunkList;

    .line 47
    .line 48
    invoke-virtual {p4, p1, p2, p3, p5}, Lio/netty/buffer/PoolChunkList;->free(Lio/netty/buffer/PoolChunk;JLjava/nio/ByteBuffer;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v0, 0x0

    .line 56
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    .line 60
    .line 61
    .line 62
    :cond_5
    return-void

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1
.end method

.method abstract isDirect()Z
.end method

.method isTinyOrSmall(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/buffer/PoolArena;->subpageOverflowMask:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method protected abstract memoryCopy(Ljava/lang/Object;ILio/netty/buffer/PooledByteBuf;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method protected abstract newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end method

.method normalizeCapacity(I)I
    .locals 1

    .line 1
    const-string v0, "reqCapacity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    .line 7
    .line 8
    if-lt p1, v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->alignCapacity(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_0
    return p1

    .line 20
    :cond_1
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 27
    .line 28
    ushr-int/lit8 v0, p1, 0x1

    .line 29
    .line 30
    or-int/2addr p1, v0

    .line 31
    ushr-int/lit8 v0, p1, 0x2

    .line 32
    .line 33
    or-int/2addr p1, v0

    .line 34
    ushr-int/lit8 v0, p1, 0x4

    .line 35
    .line 36
    or-int/2addr p1, v0

    .line 37
    ushr-int/lit8 v0, p1, 0x8

    .line 38
    .line 39
    or-int/2addr p1, v0

    .line 40
    ushr-int/lit8 v0, p1, 0x10

    .line 41
    .line 42
    or-int/2addr p1, v0

    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    if-gez p1, :cond_2

    .line 46
    .line 47
    ushr-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    :cond_2
    return p1

    .line 50
    :cond_3
    iget v0, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    .line 51
    .line 52
    if-lez v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->alignCapacity(I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_4
    and-int/lit8 v0, p1, 0xf

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    return p1

    .line 64
    :cond_5
    and-int/lit8 p1, p1, -0x10

    .line 65
    .line 66
    add-int/lit8 p1, p1, 0x10

    .line 67
    .line 68
    return p1
.end method

.method public numActiveAllocations()J
    .locals 8

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    .line 8
    .line 9
    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 15
    .line 16
    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    add-long/2addr v0, v2

    .line 21
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 22
    .line 23
    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    sub-long/2addr v0, v2

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    .line 30
    .line 31
    iget-wide v4, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    .line 32
    .line 33
    iget-wide v6, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    .line 34
    .line 35
    add-long/2addr v4, v6

    .line 36
    iget-wide v6, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    .line 37
    .line 38
    add-long/2addr v4, v6

    .line 39
    sub-long/2addr v2, v4

    .line 40
    add-long/2addr v0, v2

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    return-wide v0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0
.end method

.method public numActiveBytes()J
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    monitor-enter p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lio/netty/buffer/PoolChunkListMetric;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lio/netty/buffer/PoolChunkMetric;

    .line 40
    .line 41
    invoke-interface {v4}, Lio/netty/buffer/PoolChunkMetric;->chunkSize()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    int-to-long v4, v4

    .line 46
    add-long/2addr v0, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    return-wide v0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw v0
.end method

.method public numActiveHugeAllocations()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numHugeAllocations()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numHugeDeallocations()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public numActiveNormalAllocations()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    .line 3
    .line 4
    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    .line 5
    .line 6
    sub-long/2addr v0, v2

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method

.method public numActiveSmallAllocations()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numSmallAllocations()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numSmallDeallocations()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public numActiveTinyAllocations()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numTinyAllocations()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numTinyDeallocations()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public numAllocations()J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    .line 6
    .line 7
    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    .line 12
    .line 13
    invoke-interface {v4}, Lio/netty/util/internal/LongCounter;->value()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    add-long/2addr v2, v4

    .line 18
    add-long/2addr v2, v0

    .line 19
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 20
    .line 21
    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    add-long/2addr v2, v0

    .line 26
    return-wide v2

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public numChunkLists()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public numDeallocations()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    .line 3
    .line 4
    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    .line 5
    .line 6
    add-long/2addr v0, v2

    .line 7
    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    .line 8
    .line 9
    add-long/2addr v0, v2

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 12
    .line 13
    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    add-long/2addr v0, v2

    .line 18
    return-wide v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

.method public numHugeAllocations()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public numHugeDeallocations()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public declared-synchronized numNormalAllocations()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized numNormalDeallocations()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public numSmallAllocations()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public declared-synchronized numSmallDeallocations()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public numSmallSubpages()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public numThreadCaches()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public numTinyAllocations()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public declared-synchronized numTinyDeallocations()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public numTinySubpages()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method reallocate(Lio/netty/buffer/PooledByteBuf;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v2, p1, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 7
    .line 8
    iget-object v3, p1, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    iget-wide v4, p1, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 11
    .line 12
    iget-object v1, p1, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 13
    .line 14
    iget v6, p1, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 15
    .line 16
    iget v7, p1, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    .line 17
    .line 18
    iget-object v8, p0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    .line 19
    .line 20
    invoke-virtual {v8}, Lio/netty/buffer/PooledByteBufAllocator;->threadCache()Lio/netty/buffer/PoolThreadCache;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    invoke-direct {p0, v8, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V

    .line 25
    .line 26
    .line 27
    if-le p2, v0, :cond_1

    .line 28
    .line 29
    move p2, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1, p2}, Lio/netty/buffer/AbstractByteBuf;->trimIndicesToCapacity(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, v1, v6, p1, p2}, Lio/netty/buffer/PoolArena;->memoryCopy(Ljava/lang/Object;ILio/netty/buffer/PooledByteBuf;I)V

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    iget-object p1, p1, Lio/netty/buffer/PooledByteBuf;->cache:Lio/netty/buffer/PoolThreadCache;

    .line 40
    .line 41
    move-object v1, p0

    .line 42
    move v6, v7

    .line 43
    move-object v7, p1

    .line 44
    invoke-virtual/range {v1 .. v7}, Lio/netty/buffer/PoolArena;->free(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public smallSubpages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/buffer/PoolArena;->subPageMetricList([Lio/netty/buffer/PoolSubpage;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tinySubpages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/buffer/PoolArena;->subPageMetricList([Lio/netty/buffer/PoolSubpage;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "Chunk(s) at 0~25%:"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "Chunk(s) at 0~50%:"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "Chunk(s) at 25~75%:"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, "Chunk(s) at 50~100%:"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, "Chunk(s) at 75~100%:"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, "Chunk(s) at 100%:"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, "tiny subpages:"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 111
    .line 112
    invoke-static {v0, v2}, Lio/netty/buffer/PoolArena;->appendPoolSubPages(Ljava/lang/StringBuilder;[Lio/netty/buffer/PoolSubpage;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, "small subpages:"

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 124
    .line 125
    invoke-static {v0, v2}, Lio/netty/buffer/PoolArena;->appendPoolSubPages(Ljava/lang/StringBuilder;[Lio/netty/buffer/PoolSubpage;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    .line 136
    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p0

    .line 139
    throw v0
.end method

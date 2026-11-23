.class public Lcom/facebook/cache/disk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/cache/disk/h;
.implements Lf3/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/d$c;,
        Lcom/facebook/cache/disk/d$b;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final r:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final s:I = 0x1

.field private static final t:J

.field private static final u:J

.field private static final v:D = 0.02

.field private static final w:J = -0x1L


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private d:J

.field private final e:Lcom/facebook/cache/common/CacheEventListener;

.field final f:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private g:J

.field private final h:J

.field private final i:Lcom/facebook/common/statfs/StatFsHelper;

.field private final j:Lcom/facebook/cache/disk/c;

.field private final k:Lcom/facebook/cache/disk/g;

.field private final l:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final m:Z

.field private final n:Lcom/facebook/cache/disk/d$b;

.field private final o:Ll3/a;

.field private final p:Ljava/lang/Object;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/cache/disk/d;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 4
    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    const-wide/16 v1, 0x2

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sput-wide v0, Lcom/facebook/cache/disk/d;->t:J

    .line 14
    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    const-wide/16 v1, 0x1e

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sput-wide v0, Lcom/facebook/cache/disk/d;->u:J

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/c;Lcom/facebook/cache/disk/g;Lcom/facebook/cache/disk/d$c;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lf3/b;Ljava/util/concurrent/Executor;Z)V
    .locals 2
    .param p6    # Lf3/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "diskStorage",
            "entryEvictionComparatorSupplier",
            "params",
            "cacheEventListener",
            "cacheErrorLogger",
            "diskTrimmableRegistry",
            "executorForBackgrountInit",
            "indexPopulateAtStartupEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iget-wide v0, p3, Lcom/facebook/cache/disk/d$c;->b:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->a:J

    .line 14
    .line 15
    iget-wide v0, p3, Lcom/facebook/cache/disk/d$c;->c:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->b:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->d:J

    .line 20
    .line 21
    invoke-static {}, Lcom/facebook/common/statfs/StatFsHelper;->e()Lcom/facebook/common/statfs/StatFsHelper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/common/statfs/StatFsHelper;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/facebook/cache/disk/d;->k:Lcom/facebook/cache/disk/g;

    .line 30
    .line 31
    const-wide/16 p1, -0x1

    .line 32
    .line 33
    iput-wide p1, p0, Lcom/facebook/cache/disk/d;->g:J

    .line 34
    .line 35
    iput-object p4, p0, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 36
    .line 37
    iget-wide p1, p3, Lcom/facebook/cache/disk/d$c;->a:J

    .line 38
    .line 39
    iput-wide p1, p0, Lcom/facebook/cache/disk/d;->h:J

    .line 40
    .line 41
    iput-object p5, p0, Lcom/facebook/cache/disk/d;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 42
    .line 43
    new-instance p1, Lcom/facebook/cache/disk/d$b;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/facebook/cache/disk/d$b;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 49
    .line 50
    invoke-static {}, Ll3/e;->a()Ll3/e;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/facebook/cache/disk/d;->o:Ll3/a;

    .line 55
    .line 56
    iput-boolean p8, p0, Lcom/facebook/cache/disk/d;->m:Z

    .line 57
    .line 58
    new-instance p1, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 64
    .line 65
    if-eqz p6, :cond_0

    .line 66
    .line 67
    invoke-interface {p6, p0}, Lf3/b;->b(Lf3/a;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    if-eqz p8, :cond_1

    .line 71
    .line 72
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/facebook/cache/disk/d;->c:Ljava/util/concurrent/CountDownLatch;

    .line 79
    .line 80
    new-instance p1, Lcom/facebook/cache/disk/d$a;

    .line 81
    .line 82
    invoke-direct {p1, p0}, Lcom/facebook/cache/disk/d$a;-><init>(Lcom/facebook/cache/disk/d;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p7, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 90
    .line 91
    const/4 p2, 0x0

    .line 92
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/facebook/cache/disk/d;->c:Ljava/util/concurrent/CountDownLatch;

    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/facebook/cache/disk/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/facebook/cache/disk/d;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->t()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic l(Lcom/facebook/cache/disk/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/cache/disk/d;->q:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic m(Lcom/facebook/cache/disk/d;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/d;->c:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method

.method private o(Lcom/facebook/cache/disk/c$d;Lcom/facebook/cache/common/c;Ljava/lang/String;)Ld3/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "inserter",
            "key",
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {p1, p2}, Lcom/facebook/cache/disk/c$d;->d(Ljava/lang/Object;)Ld3/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 14
    .line 15
    invoke-interface {p1}, Ld3/a;->size()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x1

    .line 20
    .line 21
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/facebook/cache/disk/d$b;->c(JJ)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method private p(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "desiredSize",
            "reason"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->getEntries()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {v1, v0}, Lcom/facebook/cache/disk/d;->q(Ljava/util/Collection;)Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/facebook/cache/disk/d$b;->b()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    sub-long v6, v4, v2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v10, 0x0

    .line 28
    const-wide/16 v11, 0x0

    .line 29
    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v13

    .line 34
    if-eqz v13, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v13

    .line 40
    check-cast v13, Lcom/facebook/cache/disk/c$c;

    .line 41
    .line 42
    cmp-long v14, v11, v6

    .line 43
    .line 44
    if-lez v14, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object v14, v1, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 48
    .line 49
    invoke-interface {v14, v13}, Lcom/facebook/cache/disk/c;->b(Lcom/facebook/cache/disk/c$c;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v14

    .line 53
    iget-object v8, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 54
    .line 55
    invoke-interface {v13}, Lcom/facebook/cache/disk/c$c;->getId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const-wide/16 v8, 0x0

    .line 63
    .line 64
    cmp-long v16, v14, v8

    .line 65
    .line 66
    if-lez v16, :cond_1

    .line 67
    .line 68
    add-int/lit8 v10, v10, 0x1

    .line 69
    .line 70
    add-long/2addr v11, v14

    .line 71
    invoke-static {}, Lcom/facebook/cache/disk/j;->f()Lcom/facebook/cache/disk/j;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-interface {v13}, Lcom/facebook/cache/disk/c$c;->getId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v8, v9}, Lcom/facebook/cache/disk/j;->o(Ljava/lang/String;)Lcom/facebook/cache/disk/j;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    move-object/from16 v9, p3

    .line 84
    .line 85
    invoke-virtual {v8, v9}, Lcom/facebook/cache/disk/j;->l(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/j;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v8, v14, v15}, Lcom/facebook/cache/disk/j;->n(J)Lcom/facebook/cache/disk/j;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    sub-long v13, v4, v11

    .line 94
    .line 95
    invoke-virtual {v8, v13, v14}, Lcom/facebook/cache/disk/j;->k(J)Lcom/facebook/cache/disk/j;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v8, v2, v3}, Lcom/facebook/cache/disk/j;->j(J)Lcom/facebook/cache/disk/j;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    iget-object v13, v1, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 104
    .line 105
    invoke-interface {v13, v8}, Lcom/facebook/cache/common/CacheEventListener;->d(Lcom/facebook/cache/common/b;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Lcom/facebook/cache/disk/j;->g()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    move-object/from16 v9, p3

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 116
    .line 117
    neg-long v2, v11

    .line 118
    neg-int v4, v10

    .line 119
    int-to-long v4, v4

    .line 120
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/facebook/cache/disk/d$b;->c(JJ)V

    .line 121
    .line 122
    .line 123
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 124
    .line 125
    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->e()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    iget-object v2, v1, Lcom/facebook/cache/disk/d;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 131
    .line 132
    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 133
    .line 134
    sget-object v4, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 135
    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v6, "evictAboveSize: "

    .line 142
    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    throw v0
.end method

.method private q(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/c$c;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/c$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->o:Ll3/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/a;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-wide v2, Lcom/facebook/cache/disk/d;->t:J

    .line 8
    .line 9
    add-long/2addr v0, v2

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/facebook/cache/disk/c$c;

    .line 43
    .line 44
    invoke-interface {v4}, Lcom/facebook/cache/disk/c$c;->getTimestamp()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    cmp-long v7, v5, v0

    .line 49
    .line 50
    if-lez v7, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->k:Lcom/facebook/cache/disk/g;

    .line 61
    .line 62
    invoke-interface {p1}, Lcom/facebook/cache/disk/g;->get()Lcom/facebook/cache/disk/f;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    .line 71
    .line 72
    return-object v2
.end method

.method private s()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->t()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->x()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/facebook/cache/disk/d$b;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-wide v4, p0, Lcom/facebook/cache/disk/d;->d:J

    .line 18
    .line 19
    cmp-long v6, v2, v4

    .line 20
    .line 21
    if-lez v6, :cond_0

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/facebook/cache/disk/d$b;->e()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->t()Z

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-wide v4, p0, Lcom/facebook/cache/disk/d;->d:J

    .line 34
    .line 35
    cmp-long v1, v2, v4

    .line 36
    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    const-wide/16 v1, 0x9

    .line 40
    .line 41
    mul-long v4, v4, v1

    .line 42
    .line 43
    const-wide/16 v1, 0xa

    .line 44
    .line 45
    div-long/2addr v4, v1

    .line 46
    sget-object v1, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CACHE_FULL:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 47
    .line 48
    invoke-direct {p0, v4, v5, v1}, Lcom/facebook/cache/disk/d;->p(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw v1
.end method

.method private t()Z
    .locals 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->o:Ll3/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/a;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/facebook/cache/disk/d$b;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/facebook/cache/disk/d;->g:J

    .line 16
    .line 17
    const-wide/16 v4, -0x1

    .line 18
    .line 19
    cmp-long v6, v2, v4

    .line 20
    .line 21
    if-eqz v6, :cond_1

    .line 22
    .line 23
    sub-long/2addr v0, v2

    .line 24
    sget-wide v2, Lcom/facebook/cache/disk/d;->u:J

    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-lez v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    return v0

    .line 33
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->u()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method private u()Z
    .locals 23
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->o:Ll3/a;

    .line 4
    .line 5
    invoke-interface {v0}, Ll3/a;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sget-wide v4, Lcom/facebook/cache/disk/d;->t:J

    .line 10
    .line 11
    add-long/2addr v4, v2

    .line 12
    iget-boolean v0, v1, Lcom/facebook/cache/disk/d;->m:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-boolean v0, v1, Lcom/facebook/cache/disk/d;->m:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    :try_start_0
    iget-object v8, v1, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 39
    .line 40
    invoke-interface {v8}, Lcom/facebook/cache/disk/c;->getEntries()Ljava/util/Collection;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    const-wide/16 v9, 0x0

    .line 49
    .line 50
    const-wide/16 v11, -0x1

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    const/4 v14, 0x0

    .line 55
    const/4 v15, 0x0

    .line 56
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v16

    .line 60
    const/16 v17, 0x1

    .line 61
    .line 62
    if-eqz v16, :cond_4

    .line 63
    .line 64
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v16

    .line 68
    check-cast v16, Lcom/facebook/cache/disk/c$c;

    .line 69
    .line 70
    add-int/lit8 v14, v14, 0x1

    .line 71
    .line 72
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$c;->getSize()J

    .line 73
    .line 74
    .line 75
    move-result-wide v18

    .line 76
    add-long v9, v9, v18

    .line 77
    .line 78
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$c;->getTimestamp()J

    .line 79
    .line 80
    .line 81
    move-result-wide v18

    .line 82
    cmp-long v20, v18, v4

    .line 83
    .line 84
    if-lez v20, :cond_2

    .line 85
    .line 86
    add-int/lit8 v15, v15, 0x1

    .line 87
    .line 88
    int-to-long v6, v7

    .line 89
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$c;->getSize()J

    .line 90
    .line 91
    .line 92
    move-result-wide v19

    .line 93
    add-long v6, v6, v19

    .line 94
    .line 95
    long-to-int v7, v6

    .line 96
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$c;->getTimestamp()J

    .line 97
    .line 98
    .line 99
    move-result-wide v19

    .line 100
    move-wide/from16 v21, v4

    .line 101
    .line 102
    sub-long v4, v19, v2

    .line 103
    .line 104
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    move-wide v11, v4

    .line 109
    const/4 v13, 0x1

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move-wide/from16 v21, v4

    .line 112
    .line 113
    iget-boolean v4, v1, Lcom/facebook/cache/disk/d;->m:Z

    .line 114
    .line 115
    if-eqz v4, :cond_3

    .line 116
    .line 117
    invoke-static {v0}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$c;->getId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_2
    move-wide/from16 v4, v21

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    if-eqz v13, :cond_5

    .line 131
    .line 132
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 133
    .line 134
    sget-object v5, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->READ_INVALID_ENTRY:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 135
    .line 136
    sget-object v6, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 137
    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v13, "Future timestamp found in "

    .line 144
    .line 145
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v13, " files , with a total size of "

    .line 152
    .line 153
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v7, " bytes, and a maximum time delta of "

    .line 160
    .line 161
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v7, "ms"

    .line 168
    .line 169
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    const/4 v8, 0x0

    .line 177
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/facebook/cache/disk/d$b;->a()J

    .line 183
    .line 184
    .line 185
    move-result-wide v4

    .line 186
    int-to-long v6, v14

    .line 187
    cmp-long v8, v4, v6

    .line 188
    .line 189
    if-nez v8, :cond_6

    .line 190
    .line 191
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/facebook/cache/disk/d$b;->b()J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    cmp-long v8, v4, v9

    .line 198
    .line 199
    if-eqz v8, :cond_8

    .line 200
    .line 201
    :cond_6
    iget-boolean v4, v1, Lcom/facebook/cache/disk/d;->m:Z

    .line 202
    .line 203
    if-eqz v4, :cond_7

    .line 204
    .line 205
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 206
    .line 207
    if-eq v4, v0, :cond_7

    .line 208
    .line 209
    invoke-static {v0}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 213
    .line 214
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 215
    .line 216
    .line 217
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 218
    .line 219
    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    .line 221
    .line 222
    :cond_7
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 223
    .line 224
    invoke-virtual {v0, v9, v10, v6, v7}, Lcom/facebook/cache/disk/d$b;->f(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    :cond_8
    iput-wide v2, v1, Lcom/facebook/cache/disk/d;->g:J

    .line 228
    .line 229
    return v17

    .line 230
    :catch_0
    move-exception v0

    .line 231
    iget-object v2, v1, Lcom/facebook/cache/disk/d;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 232
    .line 233
    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 234
    .line 235
    sget-object v4, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 236
    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v6, "calcFileCacheSize: "

    .line 243
    .line 244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    return v2
.end method

.method private v(Ljava/lang/String;Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/c$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resourceId",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/c;->insert(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/c$d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private w(D)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "trimRatio"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/facebook/cache/disk/d$b;->e()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->t()Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/facebook/cache/disk/d$b;->b()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    long-to-double v3, v1

    .line 19
    mul-double p1, p1, v3

    .line 20
    .line 21
    double-to-long p1, p1

    .line 22
    sub-long/2addr v1, p1

    .line 23
    sget-object p1, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CACHE_MANAGER_TRIMMED:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 24
    .line 25
    invoke-direct {p0, v1, v2, p1}, Lcom/facebook/cache/disk/d;->p(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    iget-object p2, p0, Lcom/facebook/cache/disk/d;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 33
    .line 34
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 35
    .line 36
    sget-object v2, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "trimBy: "

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {p2, v1, v2, v3, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1
.end method

.method private x()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->isExternal()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->EXTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/common/statfs/StatFsHelper;

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/facebook/cache/disk/d;->b:J

    .line 17
    .line 18
    iget-object v4, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/facebook/cache/disk/d$b;->b()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    sub-long/2addr v2, v4

    .line 25
    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/common/statfs/StatFsHelper;->l(Lcom/facebook/common/statfs/StatFsHelper$StorageType;J)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-wide v0, p0, Lcom/facebook/cache/disk/d;->a:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->d:J

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-wide v0, p0, Lcom/facebook/cache/disk/d;->b:J

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->d:J

    .line 39
    .line 40
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/cache/disk/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->a()Lcom/facebook/cache/disk/c$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b(Lcom/facebook/cache/common/c;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-ge v4, v5, :cond_1

    .line 16
    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 24
    .line 25
    invoke-interface {v1, v5, p1}, Lcom/facebook/cache/disk/c;->f(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 32
    .line 33
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    move-object v1, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    return v0

    .line 45
    :catchall_0
    move-exception v3

    .line 46
    move-object v5, v1

    .line 47
    move-object v1, v3

    .line 48
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 49
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    goto :goto_2

    .line 52
    :catchall_1
    move-exception v1

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception v2

    .line 55
    move-object v5, v1

    .line 56
    move-object v1, v2

    .line 57
    :goto_2
    invoke-static {}, Lcom/facebook/cache/disk/j;->f()Lcom/facebook/cache/disk/j;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, p1}, Lcom/facebook/cache/disk/j;->i(Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/j;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v5}, Lcom/facebook/cache/disk/j;->o(Ljava/lang/String;)Lcom/facebook/cache/disk/j;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v1}, Lcom/facebook/cache/disk/j;->m(Ljava/io/IOException;)Lcom/facebook/cache/disk/j;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 74
    .line 75
    invoke-interface {v1, p1}, Lcom/facebook/cache/common/CacheEventListener;->b(Lcom/facebook/cache/common/b;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/facebook/cache/disk/j;->g()V

    .line 79
    .line 80
    .line 81
    return v0
.end method

.method public c(Lcom/facebook/cache/common/c;)Ld3/a;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/cache/disk/j;->f()Lcom/facebook/cache/disk/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/j;->i(Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v5, v1

    .line 19
    move-object v6, v5

    .line 20
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-ge v4, v7, :cond_1

    .line 25
    .line 26
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lcom/facebook/cache/disk/j;->o(Ljava/lang/String;)Lcom/facebook/cache/disk/j;

    .line 33
    .line 34
    .line 35
    iget-object v6, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 36
    .line 37
    invoke-interface {v6, v5, p1}, Lcom/facebook/cache/disk/c;->g(Ljava/lang/String;Ljava/lang/Object;)Ld3/a;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 50
    .line 51
    invoke-interface {p1, v0}, Lcom/facebook/cache/common/CacheEventListener;->e(Lcom/facebook/cache/common/b;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 55
    .line 56
    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-static {v5}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 64
    .line 65
    invoke-interface {p1, v0}, Lcom/facebook/cache/common/CacheEventListener;->h(Lcom/facebook/cache/common/b;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 69
    .line 70
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-virtual {v0}, Lcom/facebook/cache/disk/j;->g()V

    .line 75
    .line 76
    .line 77
    return-object v6

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception p1

    .line 84
    :try_start_4
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 85
    .line 86
    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 87
    .line 88
    sget-object v4, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 89
    .line 90
    const-string v5, "getResource"

    .line 91
    .line 92
    invoke-interface {v2, v3, v4, v5, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/j;->m(Ljava/io/IOException;)Lcom/facebook/cache/disk/j;

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 99
    .line 100
    invoke-interface {p1, v0}, Lcom/facebook/cache/common/CacheEventListener;->b(Lcom/facebook/cache/common/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/facebook/cache/disk/j;->g()V

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :goto_3
    invoke-virtual {v0}, Lcom/facebook/cache/disk/j;->g()V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public clearAll()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/facebook/cache/disk/c;->clearAll()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/facebook/cache/common/CacheEventListener;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v1

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception v1

    .line 25
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 26
    .line 27
    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 28
    .line 29
    sget-object v4, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 30
    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v6, "clearAll: "

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v2, v3, v4, v5, v1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/facebook/cache/disk/d$b;->e()V

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw v1
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/cache/disk/d;->clearAll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e(Lcom/facebook/cache/common/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    monitor-exit v0

    .line 37
    return v1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->t()Z

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/facebook/cache/disk/d$b;->b()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget-wide v3, p0, Lcom/facebook/cache/disk/d;->h:J

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    cmp-long v7, v3, v5

    .line 18
    .line 19
    if-lez v7, :cond_2

    .line 20
    .line 21
    cmp-long v7, v1, v5

    .line 22
    .line 23
    if-lez v7, :cond_2

    .line 24
    .line 25
    cmp-long v5, v1, v3

    .line 26
    .line 27
    if-gez v5, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    long-to-double v3, v3

    .line 31
    long-to-double v1, v1

    .line 32
    div-double/2addr v3, v1

    .line 33
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 34
    .line 35
    sub-double/2addr v1, v3

    .line 36
    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    cmpl-double v5, v1, v3

    .line 42
    .line 43
    if-lez v5, :cond_1

    .line 44
    .line 45
    invoke-direct {p0, v1, v2}, Lcom/facebook/cache/disk/d;->w(D)V

    .line 46
    .line 47
    .line 48
    :cond_1
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :cond_2
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw v1
.end method

.method public g(Lcom/facebook/cache/common/c;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/d;->e(Lcom/facebook/cache/common/c;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-ge v4, v5, :cond_2

    .line 24
    .line 25
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v6, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 32
    .line 33
    invoke-interface {v6, v5, p1}, Lcom/facebook/cache/disk/c;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_2
    monitor-exit v0

    .line 45
    return v2

    .line 46
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    monitor-exit v0

    .line 50
    return v1

    .line 51
    :catch_0
    monitor-exit v0

    .line 52
    return v1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw p1
.end method

.method public getCount()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/cache/disk/d$b;->a()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/cache/disk/d$b;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public h(J)J
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheExpirationMs"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->o:Ll3/a;

    .line 7
    .line 8
    invoke-interface {v0}, Ll3/a;->now()J

    .line 9
    .line 10
    .line 11
    move-result-wide v5

    .line 12
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->getEntries()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v7, v1, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 19
    .line 20
    invoke-virtual {v7}, Lcom/facebook/cache/disk/d$b;->b()J

    .line 21
    .line 22
    .line 23
    move-result-wide v7

    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/4 v9, 0x0

    .line 29
    const-wide/16 v10, 0x0

    .line 30
    .line 31
    const-wide/16 v12, 0x0

    .line 32
    .line 33
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v14

    .line 37
    if-eqz v14, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    check-cast v14, Lcom/facebook/cache/disk/c$c;

    .line 44
    .line 45
    invoke-interface {v14}, Lcom/facebook/cache/disk/c$c;->getTimestamp()J

    .line 46
    .line 47
    .line 48
    move-result-wide v15

    .line 49
    sub-long v15, v5, v15

    .line 50
    .line 51
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    move-wide v15, v5

    .line 56
    const-wide/16 v5, 0x1

    .line 57
    .line 58
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    cmp-long v5, v3, p1

    .line 63
    .line 64
    if-ltz v5, :cond_0

    .line 65
    .line 66
    iget-object v3, v1, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 67
    .line 68
    invoke-interface {v3, v14}, Lcom/facebook/cache/disk/c;->b(Lcom/facebook/cache/disk/c$c;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    iget-object v5, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 73
    .line 74
    invoke-interface {v14}, Lcom/facebook/cache/disk/c$c;->getId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    const-wide/16 v5, 0x0

    .line 82
    .line 83
    cmp-long v17, v3, v5

    .line 84
    .line 85
    if-lez v17, :cond_1

    .line 86
    .line 87
    add-int/lit8 v9, v9, 0x1

    .line 88
    .line 89
    add-long/2addr v10, v3

    .line 90
    invoke-static {}, Lcom/facebook/cache/disk/j;->f()Lcom/facebook/cache/disk/j;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-interface {v14}, Lcom/facebook/cache/disk/c$c;->getId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v5, v6}, Lcom/facebook/cache/disk/j;->o(Ljava/lang/String;)Lcom/facebook/cache/disk/j;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    sget-object v6, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CONTENT_STALE:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Lcom/facebook/cache/disk/j;->l(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/j;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5, v3, v4}, Lcom/facebook/cache/disk/j;->n(J)Lcom/facebook/cache/disk/j;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    sub-long v4, v7, v10

    .line 113
    .line 114
    invoke-virtual {v3, v4, v5}, Lcom/facebook/cache/disk/j;->k(J)Lcom/facebook/cache/disk/j;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 119
    .line 120
    invoke-interface {v4, v3}, Lcom/facebook/cache/common/CacheEventListener;->d(Lcom/facebook/cache/common/b;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/facebook/cache/disk/j;->g()V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_0
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 128
    .line 129
    .line 130
    move-result-wide v12

    .line 131
    :cond_1
    :goto_1
    move-wide v5, v15

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 134
    .line 135
    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->e()V

    .line 136
    .line 137
    .line 138
    if-lez v9, :cond_3

    .line 139
    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/facebook/cache/disk/d;->t()Z

    .line 141
    .line 142
    .line 143
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 144
    .line 145
    neg-long v3, v10

    .line 146
    neg-int v5, v9

    .line 147
    int-to-long v5, v5

    .line 148
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/facebook/cache/disk/d$b;->c(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_0
    move-exception v0

    .line 153
    move-wide v3, v12

    .line 154
    goto :goto_2

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    goto :goto_4

    .line 157
    :catch_1
    move-exception v0

    .line 158
    const-wide/16 v3, 0x0

    .line 159
    .line 160
    :goto_2
    :try_start_2
    iget-object v5, v1, Lcom/facebook/cache/disk/d;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 161
    .line 162
    sget-object v6, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 163
    .line 164
    sget-object v7, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 165
    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v9, "clearOldEntries: "

    .line 172
    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-interface {v5, v6, v7, v8, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    move-wide v12, v3

    .line 191
    :cond_3
    :goto_3
    monitor-exit v2

    .line 192
    return-wide v12

    .line 193
    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    throw v0
.end method

.method public i(Lcom/facebook/cache/common/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 22
    .line 23
    invoke-interface {v3, v2}, Lcom/facebook/cache/disk/c;->remove(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    .line 27
    .line 28
    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    :try_start_1
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 38
    .line 39
    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->DELETE_FILE:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 40
    .line 41
    sget-object v3, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v5, "delete: "

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v1, v2, v3, v4, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1
.end method

.method public insert(Lcom/facebook/cache/common/c;Lcom/facebook/cache/common/k;)Ld3/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/cache/disk/j;->f()Lcom/facebook/cache/disk/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/j;->i(Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lcom/facebook/cache/common/CacheEventListener;->c(Lcom/facebook/cache/common/b;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->p:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/d;->a(Lcom/facebook/cache/common/c;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    invoke-virtual {v0, v2}, Lcom/facebook/cache/disk/j;->o(Ljava/lang/String;)Lcom/facebook/cache/disk/j;

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/facebook/cache/disk/d;->v(Ljava/lang/String;Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/c$d;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-interface {v1, p2, p1}, Lcom/facebook/cache/disk/c$d;->c(Lcom/facebook/cache/common/k;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1, p1, v2}, Lcom/facebook/cache/disk/d;->o(Lcom/facebook/cache/disk/c$d;Lcom/facebook/cache/common/c;Ljava/lang/String;)Ld3/a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ld3/a;->size()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {v0, v2, v3}, Lcom/facebook/cache/disk/j;->n(J)Lcom/facebook/cache/disk/j;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/cache/disk/d$b;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/facebook/cache/disk/d$b;->b()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-virtual {p2, v2, v3}, Lcom/facebook/cache/disk/j;->k(J)Lcom/facebook/cache/disk/j;

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 54
    .line 55
    invoke-interface {p2, v0}, Lcom/facebook/cache/common/CacheEventListener;->f(Lcom/facebook/cache/common/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_3
    invoke-interface {v1}, Lcom/facebook/cache/disk/c$d;->a()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_0

    .line 63
    .line 64
    sget-object p2, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 65
    .line 66
    const-string v1, "Failed to delete temp file"

    .line 67
    .line 68
    invoke-static {p2, v1}, Li3/a;->q(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/cache/disk/j;->g()V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    :try_start_4
    invoke-interface {v1}, Lcom/facebook/cache/disk/c$d;->a()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_1

    .line 81
    .line 82
    sget-object p2, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 83
    .line 84
    const-string v1, "Failed to delete temp file"

    .line 85
    .line 86
    invoke-static {p2, v1}, Li3/a;->q(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    :try_start_5
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/j;->m(Ljava/io/IOException;)Lcom/facebook/cache/disk/j;

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/facebook/cache/disk/d;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 97
    .line 98
    invoke-interface {p2, v0}, Lcom/facebook/cache/common/CacheEventListener;->g(Lcom/facebook/cache/common/b;)V

    .line 99
    .line 100
    .line 101
    sget-object p2, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 102
    .line 103
    const-string v1, "Failed inserting a file into the cache"

    .line 104
    .line 105
    invoke-static {p2, v1, p1}, Li3/a;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 109
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/cache/disk/j;->g()V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :catchall_2
    move-exception p1

    .line 114
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 115
    throw p1
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected n()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->c:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    sget-object v0, Lcom/facebook/cache/disk/d;->r:Ljava/lang/Class;

    .line 8
    .line 9
    const-string v1, "Memory Index is not ready yet. "

    .line 10
    .line 11
    invoke-static {v0, v1}, Li3/a;->q(Ljava/lang/Class;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/cache/disk/d;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/facebook/cache/disk/d;->m:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

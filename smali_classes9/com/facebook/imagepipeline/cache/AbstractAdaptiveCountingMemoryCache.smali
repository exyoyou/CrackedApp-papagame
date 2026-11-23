.class public abstract Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/i;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;,
        Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/i<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "AbstractArcCountingMemoryCache"

.field static final p:I = 0x1f4

.field static final q:I = 0x3e8

.field static final r:I = 0x64
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final s:I = 0x384

.field static final t:I = 0xa


# instance fields
.field final a:Lcom/facebook/imagepipeline/cache/h;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final b:Lcom/facebook/imagepipeline/cache/h;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final c:Lcom/facebook/imagepipeline/cache/h;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/cache/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/z<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/t$a;

.field private final f:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;"
        }
    .end annotation
.end field

.field g:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:I

.field final i:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final j:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache<",
            "TK;TV;>.c<TK;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final k:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final l:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected m:Lcom/facebook/imagepipeline/cache/u;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private n:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/l;Lcom/facebook/imagepipeline/cache/t$a;Lcom/facebook/imagepipeline/cache/z;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryCacheParamsSupplier",
            "cacheTrimStrategy",
            "valueDescriptor",
            "adaptiveRatePromil",
            "frequentlyUsedThreshold",
            "ghostListMaxSize",
            "lfuFractionPromil"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/t$a;",
            "Lcom/facebook/imagepipeline/cache/z<",
            "TV;>;IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AbstractArcCountingMemoryCache"

    .line 5
    .line 6
    const-string v1, "Create Adaptive Replacement Cache"

    .line 7
    .line 8
    invoke-static {v0, v1}, Li3/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->d:Lcom/facebook/imagepipeline/cache/z;

    .line 12
    .line 13
    new-instance v0, Lcom/facebook/imagepipeline/cache/h;

    .line 14
    .line 15
    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->S(Lcom/facebook/imagepipeline/cache/z;)Lcom/facebook/imagepipeline/cache/z;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/h;-><init>(Lcom/facebook/imagepipeline/cache/z;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 23
    .line 24
    new-instance v0, Lcom/facebook/imagepipeline/cache/h;

    .line 25
    .line 26
    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->S(Lcom/facebook/imagepipeline/cache/z;)Lcom/facebook/imagepipeline/cache/z;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/h;-><init>(Lcom/facebook/imagepipeline/cache/z;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 34
    .line 35
    new-instance v0, Lcom/facebook/imagepipeline/cache/h;

    .line 36
    .line 37
    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->S(Lcom/facebook/imagepipeline/cache/z;)Lcom/facebook/imagepipeline/cache/z;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-direct {v0, p3}, Lcom/facebook/imagepipeline/cache/h;-><init>(Lcom/facebook/imagepipeline/cache/z;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->e:Lcom/facebook/imagepipeline/cache/t$a;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->f:Lcom/facebook/common/internal/l;

    .line 49
    .line 50
    invoke-interface {p1}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "mMemoryCacheParamsSupplier returned null"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/facebook/common/internal/i;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/facebook/imagepipeline/cache/u;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m:Lcom/facebook/imagepipeline/cache/u;

    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide p1

    .line 68
    iput-wide p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->n:J

    .line 69
    .line 70
    iput p5, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->h:I

    .line 71
    .line 72
    iput p6, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->l:I

    .line 73
    .line 74
    new-instance p1, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;

    .line 75
    .line 76
    invoke-direct {p1, p0, p6}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;-><init>(Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;I)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->j:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;

    .line 80
    .line 81
    new-instance p1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    const/16 p1, 0x64

    .line 89
    .line 90
    if-lt p7, p1, :cond_1

    .line 91
    .line 92
    const/16 p1, 0x384

    .line 93
    .line 94
    if-le p7, p1, :cond_0

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    iput p7, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->g:I

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    const/16 p1, 0x1f4

    .line 101
    .line 102
    iput p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->g:I

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->z()V

    .line 105
    .line 106
    .line 107
    :goto_1
    if-lez p4, :cond_3

    .line 108
    .line 109
    const/16 p1, 0x3e8

    .line 110
    .line 111
    if-lt p4, p1, :cond_2

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    iput p4, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->i:I

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    :goto_2
    const/16 p1, 0xa

    .line 118
    .line 119
    iput p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->i:I

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->y()V

    .line 122
    .line 123
    .line 124
    :goto_3
    return-void
.end method

.method private declared-synchronized A(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method private declared-synchronized B(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->A(Lcom/facebook/imagepipeline/cache/i$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    .line 26
    throw p1

    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return-void
.end method

.method private declared-synchronized C(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldEntries1",
            "oldEntries2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->B(Ljava/util/ArrayList;)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->B(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method private declared-synchronized D(Lcom/facebook/imagepipeline/cache/i$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->f:I

    .line 11
    .line 12
    iget v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->h:I

    .line 13
    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/i$a;->a:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/h;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/i$a;->a:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/h;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :goto_0
    monitor-exit p0

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0

    .line 39
    throw p1
.end method

.method private E(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->O(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private F(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldEntries1",
            "oldEntries2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->E(Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->E(Ljava/util/ArrayList;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries1",
            "entries2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->K(Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->K(Ljava/util/ArrayList;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static H(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/i$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/i$a;->e:Lcom/facebook/imagepipeline/cache/i$b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/i$a;->a:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/i$b;->a(Ljava/lang/Object;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static I(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/i$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/i$a;->e:Lcom/facebook/imagepipeline/cache/i$b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/i$a;->a:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/i$b;->a(Ljava/lang/Object;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private J(Lcom/facebook/imagepipeline/cache/i$a;Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/cache/i$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/cache/i$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry1",
            "entry2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->I(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->I(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private K(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->I(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private declared-synchronized L(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->j:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;->b(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->g:I

    .line 11
    .line 12
    iget v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->i:I

    .line 13
    .line 14
    add-int v2, v0, v1

    .line 15
    .line 16
    const/16 v3, 0x384

    .line 17
    .line 18
    if-gt v2, v3, :cond_0

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->g:I

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->j:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;->d(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->g:I

    .line 30
    .line 31
    iget v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->i:I

    .line 32
    .line 33
    sub-int/2addr v0, v1

    .line 34
    const/16 v1, 0x64

    .line 35
    .line 36
    if-lt v0, v1, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->k:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->g:I

    .line 47
    .line 48
    iget v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->i:I

    .line 49
    .line 50
    sub-int/2addr p1, v0

    .line 51
    iput p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    :cond_2
    :goto_0
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1
.end method

.method private declared-synchronized M()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->n:J

    .line 3
    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m:Lcom/facebook/imagepipeline/cache/u;

    .line 5
    .line 6
    iget-wide v2, v2, Lcom/facebook/imagepipeline/cache/u;->f:J

    .line 7
    .line 8
    add-long/2addr v0, v2

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->n:J

    .line 24
    .line 25
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->f:Lcom/facebook/common/internal/l;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "mMemoryCacheParamsSupplier returned null"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/facebook/common/internal/i;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/facebook/imagepipeline/cache/u;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m:Lcom/facebook/imagepipeline/cache/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0

    .line 45
    throw v0
.end method

.method private declared-synchronized N(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->x(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->b:Lcom/facebook/common/references/CloseableReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$b;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$b;-><init>(Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->t(Ljava/lang/Object;Lcom/facebook/common/references/g;)Lcom/facebook/common/references/CloseableReference;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method private declared-synchronized O(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/i$a;->b:Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method private P(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->u(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->D(Lcom/facebook/imagepipeline/cache/i$a;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->O(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->H(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->M()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->l()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1
.end method

.method private declared-synchronized R(IILcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "size",
            "ExclusixeEntries",
            "evictionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/facebook/imagepipeline/cache/h<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;",
            "Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gt v0, p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-gt v0, p2, :cond_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-gt v1, p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 38
    .line 39
    .line 40
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-le v1, p2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    monitor-exit p0

    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/h;->e()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p3, v1}, Lcom/facebook/imagepipeline/cache/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/facebook/imagepipeline/cache/i$a;

    .line 63
    .line 64
    iget v2, v2, Lcom/facebook/imagepipeline/cache/i$a;->f:I

    .line 65
    .line 66
    invoke-direct {p0, v1, v2, p4}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->s(Ljava/lang/Object;ILcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0

    .line 84
    throw p1
.end method

.method private S(Lcom/facebook/imagepipeline/cache/z;)Lcom/facebook/imagepipeline/cache/z;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "evictableValueDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/z<",
            "TV;>;)",
            "Lcom/facebook/imagepipeline/cache/z<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$a;-><init>(Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;Lcom/facebook/imagepipeline/cache/z;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->P(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized s(Ljava/lang/Object;ILcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "accessCount",
            "evictionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->LFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->j:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;->a(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->l:I

    .line 23
    .line 24
    if-ne p2, p3, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->k:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :goto_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0

    .line 41
    throw p1
.end method

.method private declared-synchronized t(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->d:Lcom/facebook/imagepipeline/cache/z;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/z;->a(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m:Lcom/facebook/imagepipeline/cache/u;

    .line 9
    .line 10
    iget v0, v0, Lcom/facebook/imagepipeline/cache/u;->e:I

    .line 11
    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->v()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m:Lcom/facebook/imagepipeline/cache/u;

    .line 19
    .line 20
    iget v1, v1, Lcom/facebook/imagepipeline/cache/u;->b:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    sub-int/2addr v1, v2

    .line 24
    if-gt v0, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->k()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m:Lcom/facebook/imagepipeline/cache/u;

    .line 31
    .line 32
    iget v1, v1, Lcom/facebook/imagepipeline/cache/u;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    sub-int/2addr v1, p1

    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    monitor-exit p0

    .line 40
    return v2

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method private declared-synchronized u(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    iput v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method private declared-synchronized w(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->f:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    iput v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method private declared-synchronized x(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    iput v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->w(Lcom/facebook/imagepipeline/cache/i$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    .line 28
    throw p1
.end method


# virtual methods
.method public Q()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "CountingMemoryCache"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/common/internal/h;->f(Ljava/lang/String;)Lcom/facebook/common/internal/h$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "cached_entries_count:"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "exclusive_entries_count"

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/facebook/common/internal/h$b;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public declared-synchronized a()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 23
    .line 24
    :cond_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->w(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->D(Lcom/facebook/imagepipeline/cache/i$a;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public c(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->h(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/common/references/CloseableReference;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public clear()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->a()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->a()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/h;->a()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->B(Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->E(Ljava/util/ArrayList;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->M()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->b(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public d()Lcom/facebook/imagepipeline/cache/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized e()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    add-int/2addr v0, v1

    .line 15
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public f()Lcom/facebook/imagepipeline/cache/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m:Lcom/facebook/imagepipeline/cache/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/facebook/imagepipeline/cache/i$a;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/facebook/imagepipeline/cache/i$a;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->N(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->L(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->J(Lcom/facebook/imagepipeline/cache/i$a;Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->M()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->l()V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public h(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .param p3    # Lcom/facebook/imagepipeline/cache/i$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "TK;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->M()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/facebook/imagepipeline/cache/i$a;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 36
    :goto_1
    invoke-static {v3}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/facebook/imagepipeline/cache/i$a;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->A(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->O(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-object v3, v4

    .line 59
    :goto_2
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->t(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/i$a;->b(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/imagepipeline/cache/i$a;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->j:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;

    .line 74
    .line 75
    invoke-virtual {p3, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$c;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    if-eqz p3, :cond_3

    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :cond_3
    iput v2, p2, Lcom/facebook/imagepipeline/cache/i$a;->f:I

    .line 86
    .line 87
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 88
    .line 89
    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/h;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->N(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->J(Lcom/facebook/imagepipeline/cache/i$a;Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->l()V

    .line 104
    .line 105
    .line 106
    return-object v4

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p1
.end method

.method public i(Lcom/facebook/common/internal/j;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "TK;>;)I"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->m(Lcom/facebook/common/internal/j;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/h;->m(Lcom/facebook/common/internal/j;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/h;->m(Lcom/facebook/common/internal/j;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->B(Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->E(Ljava/util/ArrayList;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->M()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->l()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method

.method public j(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/facebook/imagepipeline/cache/i$a;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget v2, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_1
    invoke-static {v1}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/i$a;->b:Lcom/facebook/common/references/CloseableReference;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->I(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-object p1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p1
.end method

.method public declared-synchronized k()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public l()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m:Lcom/facebook/imagepipeline/cache/u;

    .line 3
    .line 4
    iget v1, v0, Lcom/facebook/imagepipeline/cache/u;->d:I

    .line 5
    .line 6
    iget v0, v0, Lcom/facebook/imagepipeline/cache/u;->b:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->v()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sub-int/2addr v0, v2

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->m:Lcom/facebook/imagepipeline/cache/u;

    .line 18
    .line 19
    iget v2, v1, Lcom/facebook/imagepipeline/cache/u;->c:I

    .line 20
    .line 21
    iget v1, v1, Lcom/facebook/imagepipeline/cache/u;->a:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->k()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v1, v3

    .line 28
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    int-to-long v2, v0

    .line 33
    iget v4, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->g:I

    .line 34
    .line 35
    int-to-long v5, v4

    .line 36
    mul-long v2, v2, v5

    .line 37
    .line 38
    const-wide/16 v5, 0x3e8

    .line 39
    .line 40
    div-long/2addr v2, v5

    .line 41
    long-to-int v3, v2

    .line 42
    int-to-long v7, v1

    .line 43
    int-to-long v9, v4

    .line 44
    mul-long v7, v7, v9

    .line 45
    .line 46
    div-long/2addr v7, v5

    .line 47
    long-to-int v2, v7

    .line 48
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 49
    .line 50
    sget-object v5, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->LFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    .line 51
    .line 52
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->R(IILcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sub-int/2addr v0, v3

    .line 57
    sub-int/2addr v1, v2

    .line 58
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 59
    .line 60
    sget-object v3, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->MFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    .line 61
    .line 62
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->R(IILcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v4, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 67
    .line 68
    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-direct {p0, v4, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->F(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v4, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw v0
.end method

.method public declared-synchronized m()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    add-int/2addr v0, v1

    .line 15
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public declared-synchronized p(Lcom/facebook/common/internal/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "TK;>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->g(Lcom/facebook/common/internal/j;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    xor-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public q(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->e:Lcom/facebook/imagepipeline/cache/t$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t$a;->a(Lcom/facebook/common/memory/MemoryTrimType;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-double v2, p1

    .line 15
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 16
    .line 17
    sub-double/2addr v4, v0

    .line 18
    mul-double v2, v2, v4

    .line 19
    .line 20
    double-to-int p1, v2

    .line 21
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->k()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-int/2addr p1, v0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-int v2, p1, v1

    .line 38
    .line 39
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-gt p1, v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move p1, v1

    .line 47
    move v0, v2

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 49
    .line 50
    sget-object v2, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->LFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    .line 51
    .line 52
    const v3, 0x7fffffff

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->R(IILcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 60
    .line 61
    sget-object v2, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->MFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    .line 62
    .line 63
    invoke-direct {p0, v3, p1, v1, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->R(IILcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->F(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->M()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->l()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw p1
.end method

.method public declared-synchronized v()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method protected abstract y()V
.end method

.method protected abstract z()V
.end method

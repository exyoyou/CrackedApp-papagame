.class public Lcom/facebook/imagepipeline/core/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final p:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/core/o;

.field private final b:Lj4/f;

.field private final c:Lj4/e;

.field private final d:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/cache/e;

.field private final h:Lcom/facebook/imagepipeline/cache/e;

.field private final i:Lcom/facebook/imagepipeline/cache/f;

.field private final j:Lcom/facebook/imagepipeline/producers/c1;

.field private final k:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/atomic/AtomicLong;

.field private final m:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Le3/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final o:Lcom/facebook/imagepipeline/core/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    const-string v1, "Prefetching is not enabled"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/facebook/imagepipeline/core/h;->p:Ljava/util/concurrent/CancellationException;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/o;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/l;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/c1;Lcom/facebook/common/internal/l;Lcom/facebook/common/internal/l;Le3/a;Lcom/facebook/imagepipeline/core/i;)V
    .locals 1
    .param p13    # Le3/a;
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "producerSequenceFactory",
            "requestListeners",
            "requestListener2s",
            "isPrefetchEnabledSupplier",
            "bitmapMemoryCache",
            "encodedMemoryCache",
            "mainBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory",
            "threadHandoffProducerQueue",
            "suppressBitmapPrefetchingSupplier",
            "lazyDataSource",
            "callerContextVerifier",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/core/o;",
            "Ljava/util/Set<",
            "Lj4/f;",
            ">;",
            "Ljava/util/Set<",
            "Lj4/e;",
            ">;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le3/a;",
            "Lcom/facebook/imagepipeline/core/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/h;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/o;

    .line 12
    .line 13
    new-instance p1, Lj4/d;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lj4/d;-><init>(Ljava/util/Set;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h;->b:Lj4/f;

    .line 19
    .line 20
    new-instance p1, Lj4/c;

    .line 21
    .line 22
    invoke-direct {p1, p3}, Lj4/c;-><init>(Ljava/util/Set;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h;->c:Lj4/e;

    .line 26
    .line 27
    iput-object p4, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/internal/l;

    .line 28
    .line 29
    iput-object p5, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 30
    .line 31
    iput-object p6, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/t;

    .line 32
    .line 33
    iput-object p7, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/e;

    .line 34
    .line 35
    iput-object p8, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/e;

    .line 36
    .line 37
    iput-object p9, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/f;

    .line 38
    .line 39
    iput-object p10, p0, Lcom/facebook/imagepipeline/core/h;->j:Lcom/facebook/imagepipeline/producers/c1;

    .line 40
    .line 41
    iput-object p11, p0, Lcom/facebook/imagepipeline/core/h;->k:Lcom/facebook/common/internal/l;

    .line 42
    .line 43
    iput-object p12, p0, Lcom/facebook/imagepipeline/core/h;->m:Lcom/facebook/common/internal/l;

    .line 44
    .line 45
    iput-object p13, p0, Lcom/facebook/imagepipeline/core/h;->n:Le3/a;

    .line 46
    .line 47
    iput-object p14, p0, Lcom/facebook/imagepipeline/core/h;->o:Lcom/facebook/imagepipeline/core/i;

    .line 48
    .line 49
    return-void
.end method

.method private R(Landroid/net/Uri;)Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/h$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/h$h;-><init>(Lcom/facebook/imagepipeline/core/h;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/core/h;)Lcom/facebook/imagepipeline/cache/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/e;

    .line 2
    .line 3
    return-object p0
.end method

.method private e0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lj4/f;Ljava/lang/String;)Lcom/facebook/datasource/c;
    .locals 14
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
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
            0x0
        }
        names = {
            "producerSequence",
            "imageRequest",
            "lowestPermittedRequestLevelOnSubmit",
            "callerContext",
            "requestListener",
            "uiComponentId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lj4/f;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "ImagePipeline#submitFetchRequest"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/y;

    .line 14
    .line 15
    move-object/from16 v3, p2

    .line 16
    .line 17
    move-object/from16 v2, p5

    .line 18
    .line 19
    invoke-virtual {p0, v3, v2}, Lcom/facebook/imagepipeline/core/h;->C(Lcom/facebook/imagepipeline/request/ImageRequest;Lj4/f;)Lj4/f;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v4, v1, Lcom/facebook/imagepipeline/core/h;->c:Lj4/e;

    .line 24
    .line 25
    invoke-direct {v0, v2, v4}, Lcom/facebook/imagepipeline/producers/y;-><init>(Lj4/f;Lj4/e;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lcom/facebook/imagepipeline/core/h;->n:Le3/a;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    move-object/from16 v7, p4

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {v2, v7, v4}, Le3/a;->a(Ljava/lang/Object;Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    move-object/from16 v5, p3

    .line 43
    .line 44
    invoke-static {v2, v5}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    new-instance v13, Lcom/facebook/imagepipeline/producers/y0;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h;->q()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/4 v9, 0x0

    .line 55
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->q()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/facebook/common/util/f;->n(Landroid/net/Uri;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v10, 0x0

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 75
    const/4 v10, 0x1

    .line 76
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/Priority;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    iget-object v12, v1, Lcom/facebook/imagepipeline/core/h;->o:Lcom/facebook/imagepipeline/core/i;

    .line 81
    .line 82
    move-object v2, v13

    .line 83
    move-object/from16 v3, p2

    .line 84
    .line 85
    move-object v4, v5

    .line 86
    move-object/from16 v5, p6

    .line 87
    .line 88
    move-object v6, v0

    .line 89
    move-object/from16 v7, p4

    .line 90
    .line 91
    invoke-direct/range {v2 .. v12}, Lcom/facebook/imagepipeline/producers/y0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/t0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/i;)V

    .line 92
    .line 93
    .line 94
    move-object v2, p1

    .line 95
    invoke-static {p1, v13, v0}, Lcom/facebook/imagepipeline/datasource/e;->F(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/y0;Lj4/e;)Lcom/facebook/datasource/c;

    .line 96
    .line 97
    .line 98
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_1
    invoke-static {v0}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 113
    .line 114
    .line 115
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 123
    .line 124
    .line 125
    :cond_5
    return-object v0

    .line 126
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 133
    .line 134
    .line 135
    :cond_6
    throw v0
.end method

.method private f0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 13
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lj4/f;
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
            0x0
        }
        names = {
            "producerSequence",
            "imageRequest",
            "lowestPermittedRequestLevelOnSubmit",
            "callerContext",
            "priority",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/y;

    .line 3
    .line 4
    move-object v3, p2

    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    invoke-virtual {p0, p2, v2}, Lcom/facebook/imagepipeline/core/h;->C(Lcom/facebook/imagepipeline/request/ImageRequest;Lj4/f;)Lj4/f;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v4, v1, Lcom/facebook/imagepipeline/core/h;->c:Lj4/e;

    .line 12
    .line 13
    invoke-direct {v0, v2, v4}, Lcom/facebook/imagepipeline/producers/y;-><init>(Lj4/f;Lj4/e;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v1, Lcom/facebook/imagepipeline/core/h;->n:Le3/a;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    move-object/from16 v6, p4

    .line 22
    .line 23
    invoke-interface {v2, v6, v4}, Le3/a;->a(Ljava/lang/Object;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object/from16 v6, p4

    .line 28
    .line 29
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object/from16 v4, p3

    .line 34
    .line 35
    invoke-static {v2, v4}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    new-instance v12, Lcom/facebook/imagepipeline/producers/y0;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h;->q()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v8, 0x1

    .line 46
    const/4 v9, 0x0

    .line 47
    iget-object v11, v1, Lcom/facebook/imagepipeline/core/h;->o:Lcom/facebook/imagepipeline/core/i;

    .line 48
    .line 49
    move-object v2, v12

    .line 50
    move-object v3, p2

    .line 51
    move-object v5, v0

    .line 52
    move-object/from16 v6, p4

    .line 53
    .line 54
    move-object/from16 v10, p5

    .line 55
    .line 56
    invoke-direct/range {v2 .. v11}, Lcom/facebook/imagepipeline/producers/y0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/t0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/i;)V

    .line 57
    .line 58
    .line 59
    move-object v2, p1

    .line 60
    invoke-static {p1, v12, v0}, Lcom/facebook/imagepipeline/datasource/g;->E(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/y0;Lj4/e;)Lcom/facebook/datasource/c;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method


# virtual methods
.method public A(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/common/internal/l;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/h$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/core/h$d;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public B()Lcom/facebook/imagepipeline/core/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public C(Lcom/facebook/imagepipeline/request/ImageRequest;Lj4/f;)Lj4/f;
    .locals 6
    .param p2    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "requestListener"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lj4/f;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h;->b:Lj4/f;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p2, Lj4/d;

    .line 16
    .line 17
    new-array v0, v0, [Lj4/f;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/h;->b:Lj4/f;

    .line 20
    .line 21
    aput-object v3, v0, v2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lj4/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    aput-object p1, v0, v1

    .line 28
    .line 29
    invoke-direct {p2, v0}, Lj4/d;-><init>([Lj4/f;)V

    .line 30
    .line 31
    .line 32
    return-object p2

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lj4/f;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    new-instance p1, Lj4/d;

    .line 40
    .line 41
    new-array v0, v0, [Lj4/f;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/h;->b:Lj4/f;

    .line 44
    .line 45
    aput-object v3, v0, v2

    .line 46
    .line 47
    aput-object p2, v0, v1

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lj4/d;-><init>([Lj4/f;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_2
    new-instance v3, Lj4/d;

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    new-array v4, v4, [Lj4/f;

    .line 57
    .line 58
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/h;->b:Lj4/f;

    .line 59
    .line 60
    aput-object v5, v4, v2

    .line 61
    .line 62
    aput-object p2, v4, v1

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lj4/f;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    aput-object p1, v4, v0

    .line 69
    .line 70
    invoke-direct {v3, v4}, Lj4/d;-><init>([Lj4/f;)V

    .line 71
    .line 72
    .line 73
    return-object v3
.end method

.method public D()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/e;->s()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/e;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/e;->s()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method public E(Lcom/facebook/cache/common/c;)Z
    .locals 1
    .param p1    # Lcom/facebook/cache/common/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public F(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/h;->R(Landroid/net/Uri;)Lcom/facebook/common/internal/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t;->p(Lcom/facebook/common/internal/j;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public G(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/f;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->p(Lcom/facebook/common/references/CloseableReference;)Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public H(Landroid/net/Uri;)Lcom/facebook/datasource/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->I(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public I(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/f;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {}, Lcom/facebook/datasource/i;->u()Lcom/facebook/datasource/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/e;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/e;->l(Lcom/facebook/cache/common/c;)Lbolts/h;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/facebook/imagepipeline/core/h$g;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1}, Lcom/facebook/imagepipeline/core/h$g;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/cache/common/c;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lbolts/h;->q(Lbolts/g;)Lbolts/h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Lcom/facebook/imagepipeline/core/h$f;

    .line 28
    .line 29
    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/core/h$f;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/datasource/i;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lbolts/h;->m(Lbolts/g;)Lbolts/h;

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public J(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/h;->K(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/h;->K(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public K(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "uri",
            "cacheChoice"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->A(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->L(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public L(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/f;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v1, Lcom/facebook/imagepipeline/core/h$i;->a:[I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    aget p1, v1, p1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq p1, v1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/e;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/cache/e;->o(Lcom/facebook/cache/common/c;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/e;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/cache/e;->o(Lcom/facebook/cache/common/c;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public M(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/h;->R(Landroid/net/Uri;)Lcom/facebook/common/internal/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/t;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t;->p(Lcom/facebook/common/internal/j;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public N(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/f;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/f;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/t;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->p(Lcom/facebook/common/references/CloseableReference;)Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public O()Lcom/facebook/common/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->m:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->j:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->j:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public S(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->T(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lj4/f;)Lcom/facebook/datasource/c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public T(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "ImagePipeline#prefetchToBitmapCache"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/internal/l;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-object p1, Lcom/facebook/imagepipeline/core/h;->p:Ljava/util/concurrent/CancellationException;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-object p1

    .line 42
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->E()Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->k:Lcom/facebook/common/internal/l;

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    :goto_0
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/o;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/o;->l(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/o;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/o;->h(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_1
    move-object v2, v0

    .line 86
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 87
    .line 88
    sget-object v6, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 89
    .line 90
    move-object v1, p0

    .line 91
    move-object v3, p1

    .line 92
    move-object v5, p2

    .line 93
    move-object v7, p3

    .line 94
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->f0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_6

    .line 103
    .line 104
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 105
    .line 106
    .line 107
    :cond_6
    return-object p1

    .line 108
    :catch_0
    move-exception p1

    .line 109
    :try_start_2
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 110
    .line 111
    .line 112
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_7

    .line 118
    .line 119
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 120
    .line 121
    .line 122
    :cond_7
    return-object p1

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_8

    .line 129
    .line 130
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 131
    .line 132
    .line 133
    :cond_8
    throw p1
.end method

.method public U(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->V(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public V(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "priority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/core/h;->W(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public W(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "priority",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/facebook/imagepipeline/core/h;->p:Ljava/util/concurrent/CancellationException;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/o;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/o;->l(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 29
    .line 30
    move-object v1, p0

    .line 31
    move-object v3, p1

    .line 32
    move-object v5, p2

    .line 33
    move-object v6, p3

    .line 34
    move-object v7, p4

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->f0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public X(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/h;->W(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public Y(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->Z(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public Z(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "priority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/core/h;->a0(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public a0(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "priority",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "ImagePipeline#prefetchToEncodedCache"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/internal/l;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-object p1, Lcom/facebook/imagepipeline/core/h;->p:Ljava/util/concurrent/CancellationException;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-object p1

    .line 42
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/o;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/o;->l(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 49
    .line 50
    move-object v1, p0

    .line 51
    move-object v3, p1

    .line 52
    move-object v5, p2

    .line 53
    move-object v6, p3

    .line 54
    move-object v7, p4

    .line 55
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->f0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-object p1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    :try_start_2
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 71
    .line 72
    .line 73
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-object p1

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 92
    .line 93
    .line 94
    :cond_5
    throw p1
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public b0(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/h;->a0(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lj4/f;)Lcom/facebook/datasource/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/e;->k()Lbolts/h;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/e;->k()Lbolts/h;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->j:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/h$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/h$e;-><init>(Lcom/facebook/imagepipeline/core/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/t;->i(Lcom/facebook/common/internal/j;)I

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/t;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/t;->i(Lcom/facebook/common/internal/j;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public d0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/y0;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "producerSequence",
            "settableProducerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/y0;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "ImagePipeline#submitFetchRequest"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/y;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h;->c:Lj4/e;

    .line 15
    .line 16
    invoke-direct {v0, p3, v1}, Lcom/facebook/imagepipeline/producers/y;-><init>(Lj4/f;Lj4/e;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2, v0}, Lcom/facebook/imagepipeline/datasource/e;->F(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/y0;Lj4/e;)Lcom/facebook/datasource/c;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    :try_start_1
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-object p1

    .line 50
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 57
    .line 58
    .line 59
    :cond_3
    throw p1
.end method

.method public e(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->h(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->f(Landroid/net/Uri;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public f(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->g(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/f;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/e;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/e;->w(Lcom/facebook/cache/common/c;)Lbolts/h;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/e;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/e;->w(Lcom/facebook/cache/common/c;)Lbolts/h;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public h(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/h;->R(Landroid/net/Uri;)Lcom/facebook/common/internal/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t;->i(Lcom/facebook/common/internal/j;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/t;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t;->i(Lcom/facebook/common/internal/j;)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "lowestPermittedRequestLevelOnSubmit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/core/h;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lj4/f;)Lcom/facebook/datasource/c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 6
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "lowestPermittedRequestLevelOnSubmit",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/h;->l(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lj4/f;Ljava/lang/String;)Lcom/facebook/datasource/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public l(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lj4/f;Ljava/lang/String;)Lcom/facebook/datasource/c;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "lowestPermittedRequestLevelOnSubmit",
            "requestListener",
            "uiComponentId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lj4/f;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/o;->j(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    move-object v1, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p2

    .line 11
    move-object v6, p4

    .line 12
    move-object v7, p5

    .line 13
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->e0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lj4/f;Ljava/lang/String;)Lcom/facebook/datasource/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public m(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/h;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lj4/f;)Lcom/facebook/datasource/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public n(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->o(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lj4/f;)Lcom/facebook/datasource/c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public o(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lj4/f;)Lcom/facebook/datasource/c;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/o;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/o;->m(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->L(Lcom/facebook/imagepipeline/common/e;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    move-object v3, p1

    .line 34
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v1, p0

    .line 38
    move-object v5, p2

    .line 39
    move-object v6, p3

    .line 40
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->e0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lj4/f;Ljava/lang/String;)Lcom/facebook/datasource/c;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object p1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public p(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public r()Lcom/facebook/imagepipeline/cache/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public s(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "ImagePipeline#getCacheKey"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/f;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/d;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/f;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 42
    .line 43
    .line 44
    :cond_3
    return-object p1
.end method

.method public t()Lcom/facebook/imagepipeline/cache/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public u(Lcom/facebook/cache/common/c;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .param p1    # Lcom/facebook/cache/common/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/facebook/imagepipeline/image/c;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/c;->b()Lcom/facebook/imagepipeline/image/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/facebook/imagepipeline/image/j;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_1
    return-object p1

    .line 36
    :cond_2
    :goto_0
    return-object v1
.end method

.method public v(Lj4/f;)Lj4/f;
    .locals 4
    .param p1    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h;->b:Lj4/f;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, Lj4/d;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [Lj4/f;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/h;->b:Lj4/f;

    .line 13
    .line 14
    aput-object v3, v1, v2

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    aput-object p1, v1, v2

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lj4/d;-><init>([Lj4/f;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public w()Lcom/facebook/imagepipeline/core/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->o:Lcom/facebook/imagepipeline/core/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/common/internal/l;
    .locals 1
    .param p2    # Ljava/lang/Object;
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
            "imageRequest",
            "callerContext",
            "requestLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/h$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/core/h$a;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public y(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lj4/f;)Lcom/facebook/common/internal/l;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestLevel",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lj4/f;",
            ")",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/core/h$b;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/h$b;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lj4/f;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public z(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lj4/f;Ljava/lang/String;)Lcom/facebook/common/internal/l;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lj4/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestLevel",
            "requestListener",
            "uiComponentId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lj4/f;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/facebook/imagepipeline/core/h$c;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/core/h$c;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lj4/f;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

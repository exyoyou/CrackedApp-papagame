.class public Lcom/facebook/imagepipeline/producers/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/q0<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "BitmapProbeProducer"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/cache/e;

.field private final c:Lcom/facebook/imagepipeline/cache/e;

.field private final d:Lcom/facebook/imagepipeline/cache/f;

.field private final e:Lcom/facebook/imagepipeline/producers/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/cache/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/cache/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/d;Lcom/facebook/imagepipeline/cache/d;Lcom/facebook/imagepipeline/producers/q0;)V
    .locals 0
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
            "encodedMemoryCache",
            "defaultBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory",
            "encodedMemoryCacheHistory",
            "diskCacheHistory",
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/j;->a:Lcom/facebook/imagepipeline/cache/t;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/j;->b:Lcom/facebook/imagepipeline/cache/e;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/j;->c:Lcom/facebook/imagepipeline/cache/e;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/j;->d:Lcom/facebook/imagepipeline/cache/f;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/j;->f:Lcom/facebook/imagepipeline/cache/d;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/j;->g:Lcom/facebook/imagepipeline/cache/d;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/j;->e:Lcom/facebook/imagepipeline/producers/q0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
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
    const-string v0, "BitmapProbeProducer#produceResults"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/j;->c()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/t0;->b(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/facebook/imagepipeline/producers/j$a;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/j;->a:Lcom/facebook/imagepipeline/cache/t;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/j;->b:Lcom/facebook/imagepipeline/cache/e;

    .line 28
    .line 29
    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/j;->c:Lcom/facebook/imagepipeline/cache/e;

    .line 30
    .line 31
    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/j;->d:Lcom/facebook/imagepipeline/cache/f;

    .line 32
    .line 33
    iget-object v9, p0, Lcom/facebook/imagepipeline/producers/j;->f:Lcom/facebook/imagepipeline/cache/d;

    .line 34
    .line 35
    iget-object v10, p0, Lcom/facebook/imagepipeline/producers/j;->g:Lcom/facebook/imagepipeline/cache/d;

    .line 36
    .line 37
    move-object v2, v1

    .line 38
    move-object v3, p1

    .line 39
    move-object v4, p2

    .line 40
    invoke-direct/range {v2 .. v10}, Lcom/facebook/imagepipeline/producers/j$a;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/d;Lcom/facebook/imagepipeline/cache/d;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "BitmapProbeProducer"

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-interface {v0, p2, p1, v2}, Lcom/facebook/imagepipeline/producers/t0;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const-string p1, "mInputProducer.produceResult"

    .line 56
    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/j;->e:Lcom/facebook/imagepipeline/producers/q0;

    .line 61
    .line 62
    invoke-interface {p1, v1, p2}, Lcom/facebook/imagepipeline/producers/q0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void

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
    if-eqz p2, :cond_4

    .line 90
    .line 91
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 92
    .line 93
    .line 94
    :cond_4
    throw p1
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BitmapProbeProducer"

    return-object v0
.end method

.class public Lcom/facebook/imagepipeline/producers/m;
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
        Lcom/facebook/imagepipeline/producers/m$b;,
        Lcom/facebook/imagepipeline/producers/m$a;,
        Lcom/facebook/imagepipeline/producers/m$c;
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
.field public static final m:Ljava/lang/String; = "DecodeProducer"

.field private static final n:I = 0x6400000

.field public static final o:Ljava/lang/String; = "bitmapSize"

.field public static final p:Ljava/lang/String; = "hasGoodQuality"

.field public static final q:Ljava/lang/String; = "isFinal"

.field public static final r:Ljava/lang/String; = "imageFormat"

.field public static final s:Ljava/lang/String; = "byteCount"

.field public static final t:Ljava/lang/String; = "encodedImageSize"

.field public static final u:Ljava/lang/String; = "requestedImageSize"

.field public static final v:Ljava/lang/String; = "sampleSize"


# instance fields
.field private final a:Lcom/facebook/common/memory/a;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/facebook/imagepipeline/decoder/b;

.field private final d:Lcom/facebook/imagepipeline/decoder/d;

.field private final e:Lcom/facebook/imagepipeline/producers/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private final j:Lcom/facebook/imagepipeline/core/a;

.field private final k:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final l:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/producers/q0;ILcom/facebook/imagepipeline/core/a;Ljava/lang/Runnable;Lcom/facebook/common/internal/l;)V
    .locals 0
    .param p11    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "byteArrayPool",
            "executor",
            "imageDecoder",
            "progressiveJpegConfig",
            "downsampleEnabled",
            "downsampleEnabledForNetwork",
            "decodeCancellationEnabled",
            "inputProducer",
            "maxBitmapSize",
            "closeableReferenceFactory",
            "reclaimMemoryRunnable",
            "recoverFromDecoderOOM"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;I",
            "Lcom/facebook/imagepipeline/core/a;",
            "Ljava/lang/Runnable;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/a;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m;->a:Lcom/facebook/common/memory/a;

    .line 3
    invoke-static {p2}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p3}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/b;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m;->c:Lcom/facebook/imagepipeline/decoder/b;

    .line 5
    invoke-static {p4}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/d;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m;->d:Lcom/facebook/imagepipeline/decoder/d;

    .line 6
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/m;->f:Z

    .line 7
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/producers/m;->g:Z

    .line 8
    invoke-static {p8}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/q0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m;->e:Lcom/facebook/imagepipeline/producers/q0;

    .line 9
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/producers/m;->h:Z

    .line 10
    iput p9, p0, Lcom/facebook/imagepipeline/producers/m;->i:I

    .line 11
    iput-object p10, p0, Lcom/facebook/imagepipeline/producers/m;->j:Lcom/facebook/imagepipeline/core/a;

    .line 12
    iput-object p11, p0, Lcom/facebook/imagepipeline/producers/m;->k:Ljava/lang/Runnable;

    .line 13
    iput-object p12, p0, Lcom/facebook/imagepipeline/producers/m;->l:Lcom/facebook/common/internal/l;

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/m;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/m;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/m;->c:Lcom/facebook/imagepipeline/decoder/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/producers/m;)Lcom/facebook/imagepipeline/core/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/m;->j:Lcom/facebook/imagepipeline/core/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/producers/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/m;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/producers/m;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/m;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/producers/m;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/m;->k:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/producers/m;)Lcom/facebook/common/internal/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/m;->l:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 9
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
    const-string v0, "DecodeProducer#produceResults"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/facebook/common/util/f;->n(Landroid/net/Uri;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lcom/facebook/imagepipeline/producers/m$a;

    .line 27
    .line 28
    iget-boolean v5, p0, Lcom/facebook/imagepipeline/producers/m;->h:Z

    .line 29
    .line 30
    iget v6, p0, Lcom/facebook/imagepipeline/producers/m;->i:I

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    move-object v2, p0

    .line 34
    move-object v3, p1

    .line 35
    move-object v4, p2

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/producers/m$a;-><init>(Lcom/facebook/imagepipeline/producers/m;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v4, Lcom/facebook/imagepipeline/decoder/e;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m;->a:Lcom/facebook/common/memory/a;

    .line 43
    .line 44
    invoke-direct {v4, v0}, Lcom/facebook/imagepipeline/decoder/e;-><init>(Lcom/facebook/common/memory/a;)V

    .line 45
    .line 46
    .line 47
    new-instance v8, Lcom/facebook/imagepipeline/producers/m$b;

    .line 48
    .line 49
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/m;->d:Lcom/facebook/imagepipeline/decoder/d;

    .line 50
    .line 51
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/producers/m;->h:Z

    .line 52
    .line 53
    iget v7, p0, Lcom/facebook/imagepipeline/producers/m;->i:I

    .line 54
    .line 55
    move-object v0, v8

    .line 56
    move-object v1, p0

    .line 57
    move-object v2, p1

    .line 58
    move-object v3, p2

    .line 59
    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/m$b;-><init>(Lcom/facebook/imagepipeline/producers/m;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/decoder/e;Lcom/facebook/imagepipeline/decoder/d;ZI)V

    .line 60
    .line 61
    .line 62
    move-object v0, v8

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/m;->e:Lcom/facebook/imagepipeline/producers/q0;

    .line 64
    .line 65
    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/q0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 86
    .line 87
    .line 88
    :cond_3
    throw p1
.end method

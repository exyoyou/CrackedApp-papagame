.class public Lcom/facebook/imagepipeline/core/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final z:I = 0x5


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:Landroid/content/res/Resources;

.field protected c:Landroid/content/res/AssetManager;

.field protected final d:Lcom/facebook/common/memory/a;

.field protected final e:Lcom/facebook/imagepipeline/decoder/b;

.field protected final f:Lcom/facebook/imagepipeline/decoder/d;

.field protected final g:Z

.field protected final h:Z

.field protected final i:Z

.field protected final j:Lcom/facebook/imagepipeline/core/f;

.field protected final k:Lcom/facebook/common/memory/g;

.field protected final l:Lcom/facebook/imagepipeline/cache/e;

.field protected final m:Lcom/facebook/imagepipeline/cache/e;

.field protected final n:Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final o:Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final p:Lcom/facebook/imagepipeline/cache/f;

.field protected final q:Lcom/facebook/imagepipeline/cache/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final r:Lcom/facebook/imagepipeline/cache/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final s:Lcom/facebook/imagepipeline/bitmaps/f;

.field protected final t:I

.field protected final u:I

.field protected v:Z

.field protected final w:Lcom/facebook/imagepipeline/core/a;

.field protected final x:I

.field protected final y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/core/f;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/bitmaps/f;IIZILcom/facebook/imagepipeline/core/a;ZI)V
    .locals 3
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
            "context",
            "byteArrayPool",
            "imageDecoder",
            "progressiveJpegConfig",
            "downsampleEnabled",
            "resizeAndRotateEnabledForNetwork",
            "decodeCancellationEnabled",
            "executorSupplier",
            "pooledByteBufferFactory",
            "bitmapMemoryCache",
            "encodedMemoryCache",
            "defaultBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory",
            "platformBitmapFactory",
            "bitmapPrepareToDrawMinSizeBytes",
            "bitmapPrepareToDrawMaxSizeBytes",
            "bitmapPrepareToDrawForPrefetch",
            "maxBitmapSize",
            "closeableReferenceFactory",
            "keepCancelledFetchAsLowPriority",
            "trackedKeysSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/common/memory/a;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/core/f;",
            "Lcom/facebook/common/memory/g;",
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
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "IIZI",
            "Lcom/facebook/imagepipeline/core/a;",
            "ZI)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p22

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->a:Landroid/content/ContentResolver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->b:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->c:Landroid/content/res/AssetManager;

    move-object v2, p2

    .line 5
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->d:Lcom/facebook/common/memory/a;

    move-object v2, p3

    .line 6
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->e:Lcom/facebook/imagepipeline/decoder/b;

    move-object v2, p4

    .line 7
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->f:Lcom/facebook/imagepipeline/decoder/d;

    move v2, p5

    .line 8
    iput-boolean v2, v0, Lcom/facebook/imagepipeline/core/n;->g:Z

    move v2, p6

    .line 9
    iput-boolean v2, v0, Lcom/facebook/imagepipeline/core/n;->h:Z

    move v2, p7

    .line 10
    iput-boolean v2, v0, Lcom/facebook/imagepipeline/core/n;->i:Z

    move-object v2, p8

    .line 11
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    move-object v2, p9

    .line 12
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    move-object v2, p10

    .line 13
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->o:Lcom/facebook/imagepipeline/cache/t;

    move-object v2, p11

    .line 14
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->n:Lcom/facebook/imagepipeline/cache/t;

    move-object v2, p12

    .line 15
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->l:Lcom/facebook/imagepipeline/cache/e;

    move-object/from16 v2, p13

    .line 16
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->m:Lcom/facebook/imagepipeline/cache/e;

    move-object/from16 v2, p14

    .line 17
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    move-object/from16 v2, p15

    .line 18
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->s:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 19
    new-instance v2, Lcom/facebook/imagepipeline/cache/d;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/cache/d;-><init>(I)V

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->q:Lcom/facebook/imagepipeline/cache/d;

    .line 20
    new-instance v2, Lcom/facebook/imagepipeline/cache/d;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/cache/d;-><init>(I)V

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/n;->r:Lcom/facebook/imagepipeline/cache/d;

    move/from16 v1, p16

    .line 21
    iput v1, v0, Lcom/facebook/imagepipeline/core/n;->t:I

    move/from16 v1, p17

    .line 22
    iput v1, v0, Lcom/facebook/imagepipeline/core/n;->u:I

    move/from16 v1, p18

    .line 23
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/n;->v:Z

    move/from16 v1, p19

    .line 24
    iput v1, v0, Lcom/facebook/imagepipeline/core/n;->x:I

    move-object/from16 v1, p20

    .line 25
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/n;->w:Lcom/facebook/imagepipeline/core/a;

    move/from16 v1, p21

    .line 26
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/n;->y:Z

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/a;-><init>(Lcom/facebook/imagepipeline/producers/q0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static h(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputProducer1",
            "inputProducer2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/k;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/k;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/k;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public A(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/n0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/n0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/n0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->o:Lcom/facebook/imagepipeline/cache/t;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/n0;-><init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public B(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/o0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/o0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/o0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->s:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/f;->b()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/o0;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/bitmaps/f;Ljava/util/concurrent/Executor;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public C()Lcom/facebook/imagepipeline/producers/v0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/v0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/v0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public D(Lcom/facebook/imagepipeline/producers/q0;ZLl4/d;)Lcom/facebook/imagepipeline/producers/x0;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "inputProducer",
            "isResizingEnabled",
            "imageTranscoderFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;Z",
            "Ll4/d;",
            ")",
            "Lcom/facebook/imagepipeline/producers/x0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/x0;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/f;->b()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v3, p1

    .line 13
    move v4, p2

    .line 14
    move-object v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/x0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/producers/q0;ZLl4/d;)V

    .line 16
    .line 17
    .line 18
    return-object v6
.end method

.method public E(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/a1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/producers/a1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/a1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/a1;-><init>(Lcom/facebook/imagepipeline/producers/q0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public F(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/e1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/producers/e1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/e1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->a()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-direct {v0, v2, v1, p1}, Lcom/facebook/imagepipeline/producers/e1;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public G([Lcom/facebook/imagepipeline/producers/g1;)Lcom/facebook/imagepipeline/producers/f1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailProducers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/producers/g1<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/f1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/f1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/f1;-><init>([Lcom/facebook/imagepipeline/producers/g1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public H(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/i1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/i1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/i1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->b()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/i1;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/c1;)Lcom/facebook/imagepipeline/producers/q0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputProducer",
            "inputThreadHandoffProducerQueue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/b1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/b1;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/f;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->o:Lcom/facebook/imagepipeline/cache/t;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/f;-><init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/g;-><init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/h;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->o:Lcom/facebook/imagepipeline/cache/t;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/h;-><init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public f(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/i;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/i;

    .line 2
    .line 3
    iget v1, p0, Lcom/facebook/imagepipeline/core/n;->t:I

    .line 4
    .line 5
    iget v2, p0, Lcom/facebook/imagepipeline/core/n;->u:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/core/n;->v:Z

    .line 8
    .line 9
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/i;-><init>(Lcom/facebook/imagepipeline/producers/q0;IIZ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public g(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/j;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/j;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/facebook/imagepipeline/producers/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->n:Lcom/facebook/imagepipeline/cache/t;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->l:Lcom/facebook/imagepipeline/cache/e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->m:Lcom/facebook/imagepipeline/cache/e;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/n;->q:Lcom/facebook/imagepipeline/cache/d;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/n;->r:Lcom/facebook/imagepipeline/cache/d;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p1

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/j;-><init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/d;Lcom/facebook/imagepipeline/cache/d;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public i()Lcom/facebook/imagepipeline/producers/l;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/l;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/l;-><init>(Lcom/facebook/common/memory/g;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public j(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/m;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/m;"
        }
    .end annotation

    .line 1
    new-instance v13, Lcom/facebook/imagepipeline/producers/m;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->d:Lcom/facebook/common/memory/a;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/f;->g()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->e:Lcom/facebook/imagepipeline/decoder/b;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/facebook/imagepipeline/core/n;->f:Lcom/facebook/imagepipeline/decoder/d;

    .line 14
    .line 15
    iget-boolean v5, p0, Lcom/facebook/imagepipeline/core/n;->g:Z

    .line 16
    .line 17
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/core/n;->h:Z

    .line 18
    .line 19
    iget-boolean v7, p0, Lcom/facebook/imagepipeline/core/n;->i:Z

    .line 20
    .line 21
    iget v9, p0, Lcom/facebook/imagepipeline/core/n;->x:I

    .line 22
    .line 23
    iget-object v10, p0, Lcom/facebook/imagepipeline/core/n;->w:Lcom/facebook/imagepipeline/core/a;

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    sget-object v12, Lcom/facebook/common/internal/m;->b:Lcom/facebook/common/internal/l;

    .line 27
    .line 28
    move-object v0, v13

    .line 29
    move-object v8, p1

    .line 30
    invoke-direct/range {v0 .. v12}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/common/memory/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/producers/q0;ILcom/facebook/imagepipeline/core/a;Ljava/lang/Runnable;Lcom/facebook/common/internal/l;)V

    .line 31
    .line 32
    .line 33
    return-object v13
.end method

.method public k(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/n;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/producers/n;-><init>(Lcom/facebook/imagepipeline/producers/q0;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public l(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/p;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/p;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->l:Lcom/facebook/imagepipeline/cache/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->m:Lcom/facebook/imagepipeline/cache/e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/q;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/q;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/q;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->l:Lcom/facebook/imagepipeline/cache/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->m:Lcom/facebook/imagepipeline/cache/e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/producers/q;-><init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public n(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/r;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/r;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/core/n;->y:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/r;-><init>(Lcom/facebook/imagepipeline/cache/f;ZLcom/facebook/imagepipeline/producers/q0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public o(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/s;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/s;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/s;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->n:Lcom/facebook/imagepipeline/cache/t;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/s;-><init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public p(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/t;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/t;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/facebook/imagepipeline/producers/t;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->l:Lcom/facebook/imagepipeline/cache/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->m:Lcom/facebook/imagepipeline/cache/e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/facebook/imagepipeline/core/n;->q:Lcom/facebook/imagepipeline/cache/d;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/n;->r:Lcom/facebook/imagepipeline/cache/d;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/t;-><init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/d;Lcom/facebook/imagepipeline/cache/d;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public q()Lcom/facebook/imagepipeline/producers/z;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/z;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->c:Landroid/content/res/AssetManager;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/z;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/res/AssetManager;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public r()Lcom/facebook/imagepipeline/producers/a0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/a0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/a0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public s()Lcom/facebook/imagepipeline/producers/b0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/b0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/b0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public t()Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->d()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public u()Lcom/facebook/imagepipeline/producers/e0;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/e0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/e0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public v()Lcom/facebook/imagepipeline/producers/f0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/f0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->b:Landroid/content/res/Resources;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/f0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/res/Resources;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public w()Lcom/facebook/imagepipeline/producers/h0;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/h0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->b()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->a:Landroid/content/ContentResolver;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/h0;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public x()Lcom/facebook/imagepipeline/producers/i0;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->j:Lcom/facebook/imagepipeline/core/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->a:Landroid/content/ContentResolver;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/i0;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public y(Lcom/facebook/imagepipeline/producers/l0;)Lcom/facebook/imagepipeline/producers/q0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkFetcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l0;",
            ")",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/k0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->d:Lcom/facebook/common/memory/a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/k0;-><init>(Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/producers/l0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public z(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/m0;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/m0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/m0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/n;->l:Lcom/facebook/imagepipeline/cache/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/n;->p:Lcom/facebook/imagepipeline/cache/f;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/n;->k:Lcom/facebook/common/memory/g;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/facebook/imagepipeline/core/n;->d:Lcom/facebook/common/memory/a;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/m0;-><init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/producers/q0;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

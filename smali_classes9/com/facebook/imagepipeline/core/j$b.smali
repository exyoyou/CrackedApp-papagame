.class public Lcom/facebook/imagepipeline/core/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field public F:Z

.field private final a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

.field private b:Z

.field private c:Lm3/b$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field private e:Lm3/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field public j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/facebook/imagepipeline/core/j$d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public o:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:J

.field private v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configBuilder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->d:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->f:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->g:Z

    .line 12
    .line 13
    iput v0, p0, Lcom/facebook/imagepipeline/core/j$b;->h:I

    .line 14
    .line 15
    iput v0, p0, Lcom/facebook/imagepipeline/core/j$b;->i:I

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->j:Z

    .line 18
    .line 19
    const/16 v1, 0x800

    .line 20
    .line 21
    iput v1, p0, Lcom/facebook/imagepipeline/core/j$b;->k:I

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->l:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->m:Z

    .line 26
    .line 27
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/facebook/common/internal/m;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/l;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/j$b;->s:Lcom/facebook/common/internal/l;

    .line 34
    .line 35
    const-wide/16 v1, 0x0

    .line 36
    .line 37
    iput-wide v1, p0, Lcom/facebook/imagepipeline/core/j$b;->u:J

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/j$b;->x:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/j$b;->y:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->z:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->A:Z

    .line 47
    .line 48
    const/16 v1, 0x14

    .line 49
    .line 50
    iput v1, p0, Lcom/facebook/imagepipeline/core/j$b;->B:I

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->C:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->D:Z

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->E:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->F:Z

    .line 59
    .line 60
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 61
    .line 62
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/core/j$b;)Lm3/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/j$b;->c:Lm3/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/core/j$b;)Lcom/facebook/imagepipeline/core/j$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/j$b;->n:Lcom/facebook/imagepipeline/core/j$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->z:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->A:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/core/j$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/j$b;->B:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->E:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lcom/facebook/imagepipeline/core/j$b;)Lm3/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/j$b;->e:Lm3/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic o(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/facebook/imagepipeline/core/j$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/j$b;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/core/j$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/j$b;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/core/j$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/j$b;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/core/j$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/j$b;->l:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public A(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedCacheEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->x:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public B(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ensureTranscoderLibraryLoaded"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->y:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public C(J)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "MemoryType"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/imagepipeline/core/j$b;->u:J

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public D(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "experimentalThreadHandoffQueueEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->t:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public E(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gingerbreadDecoderEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->p:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public F(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handOffOnUiThreadOnly"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->D:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public G(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldIgnoreCacheSizeMismatch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->F:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public H(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDiskCacheProbingEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->A:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public I(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEncodedMemoryCacheProbingEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->z:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public J(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keepCancelledFetchAsLowPriority"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->v:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public K(Lcom/facebook/common/internal/l;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lazyDataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->o:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public L(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBitmapSize"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/core/j$b;->k:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public M(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCodeDisabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->l:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public N(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialImageCachingEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->m:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public O(Lcom/facebook/imagepipeline/core/j$d;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerFactoryMethod"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->n:Lcom/facebook/imagepipeline/core/j$d;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public P(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downscaleFrameToDrawableDimensions"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->q:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public Q(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldStoreCacheEntrySize"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->E:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public R(Lcom/facebook/common/internal/l;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppressBitmapPrefetchingSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->s:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public S(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackedKeysSize"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/core/j$b;->B:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public T(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useDownsamplingRatioForResizing"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->f:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public U(Lm3/b;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webpBitmapFactory"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->e:Lm3/b;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public V(Lm3/b$a;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webpErrorLogger"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->c:Lm3/b$a;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public W(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webpSupportEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->b:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public t()Lcom/facebook/imagepipeline/core/j;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/j;-><init>(Lcom/facebook/imagepipeline/core/j$b;Lcom/facebook/imagepipeline/core/j$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j$b;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public v(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowDelay"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->C:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public w(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapCloseableRefType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/core/j$b;->r:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public x(ZIIZ)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "useBitmapPrepareToDraw",
            "minBitmapSizeBytes",
            "maxBitmapSizeBytes",
            "preparePrefetch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->g:Z

    .line 2
    .line 3
    iput p2, p0, Lcom/facebook/imagepipeline/core/j$b;->h:I

    .line 4
    .line 5
    iput p3, p0, Lcom/facebook/imagepipeline/core/j$b;->i:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/core/j$b;->j:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 10
    .line 11
    return-object p1
.end method

.method public y(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodeCancellationEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->d:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

.method public z(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downsampleIfLargeBitmap"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j$b;->w:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/j$b;->a:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 4
    .line 5
    return-object p1
.end method

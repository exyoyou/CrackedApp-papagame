.class public Lq3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private A:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private B:Lb4/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private C:Lb4/c$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/image/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:[Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:I

.field private q:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private r:Z

.field private s:I

.field private t:I

.field private u:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lq3/j;->i:J

    .line 7
    .line 8
    iput-wide v0, p0, Lq3/j;->j:J

    .line 9
    .line 10
    iput-wide v0, p0, Lq3/j;->k:J

    .line 11
    .line 12
    iput-wide v0, p0, Lq3/j;->l:J

    .line 13
    .line 14
    iput-wide v0, p0, Lq3/j;->m:J

    .line 15
    .line 16
    iput-wide v0, p0, Lq3/j;->n:J

    .line 17
    .line 18
    iput-wide v0, p0, Lq3/j;->o:J

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput v2, p0, Lq3/j;->p:I

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    iput v2, p0, Lq3/j;->s:I

    .line 25
    .line 26
    iput v2, p0, Lq3/j;->t:I

    .line 27
    .line 28
    iput v2, p0, Lq3/j;->v:I

    .line 29
    .line 30
    iput v2, p0, Lq3/j;->w:I

    .line 31
    .line 32
    iput-wide v0, p0, Lq3/j;->x:J

    .line 33
    .line 34
    iput-wide v0, p0, Lq3/j;->y:J

    .line 35
    .line 36
    iput-wide v0, p0, Lq3/j;->z:J

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScreenHeightPx"
        }
    .end annotation

    .line 1
    iput p1, p0, Lq3/j;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public B(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScreenWidthPx"
        }
    .end annotation

    .line 1
    iput p1, p0, Lq3/j;->s:I

    .line 2
    .line 3
    return-void
.end method

.method public C(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefetch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lq3/j;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ultimateProducerName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public F(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibilityEventTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->x:J

    .line 2
    .line 3
    return-void
.end method

.method public G(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x2

    .line 6
    :goto_0
    iput p1, p0, Lq3/j;->w:I

    .line 7
    .line 8
    return-void
.end method

.method public H()Lq3/f;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v40, Lq3/f;

    .line 4
    .line 5
    move-object/from16 v1, v40

    .line 6
    .line 7
    iget-object v2, v0, Lq3/j;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lq3/j;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v0, Lq3/j;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 12
    .line 13
    iget-object v5, v0, Lq3/j;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v6, v0, Lq3/j;->e:Lcom/facebook/imagepipeline/image/g;

    .line 16
    .line 17
    iget-object v7, v0, Lq3/j;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 18
    .line 19
    iget-object v8, v0, Lq3/j;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 20
    .line 21
    iget-object v9, v0, Lq3/j;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 22
    .line 23
    iget-wide v10, v0, Lq3/j;->i:J

    .line 24
    .line 25
    iget-wide v12, v0, Lq3/j;->j:J

    .line 26
    .line 27
    iget-wide v14, v0, Lq3/j;->k:J

    .line 28
    .line 29
    move-object/from16 v41, v1

    .line 30
    .line 31
    move-object/from16 v42, v2

    .line 32
    .line 33
    iget-wide v1, v0, Lq3/j;->l:J

    .line 34
    .line 35
    move-wide/from16 v16, v1

    .line 36
    .line 37
    iget-wide v1, v0, Lq3/j;->m:J

    .line 38
    .line 39
    move-wide/from16 v18, v1

    .line 40
    .line 41
    iget-wide v1, v0, Lq3/j;->n:J

    .line 42
    .line 43
    move-wide/from16 v20, v1

    .line 44
    .line 45
    iget-wide v1, v0, Lq3/j;->o:J

    .line 46
    .line 47
    move-wide/from16 v22, v1

    .line 48
    .line 49
    iget v1, v0, Lq3/j;->p:I

    .line 50
    .line 51
    move/from16 v24, v1

    .line 52
    .line 53
    iget-object v1, v0, Lq3/j;->q:Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v25, v1

    .line 56
    .line 57
    iget-boolean v1, v0, Lq3/j;->r:Z

    .line 58
    .line 59
    move/from16 v26, v1

    .line 60
    .line 61
    iget v1, v0, Lq3/j;->s:I

    .line 62
    .line 63
    move/from16 v27, v1

    .line 64
    .line 65
    iget v1, v0, Lq3/j;->t:I

    .line 66
    .line 67
    move/from16 v28, v1

    .line 68
    .line 69
    iget-object v1, v0, Lq3/j;->u:Ljava/lang/Throwable;

    .line 70
    .line 71
    move-object/from16 v29, v1

    .line 72
    .line 73
    iget v1, v0, Lq3/j;->w:I

    .line 74
    .line 75
    move/from16 v30, v1

    .line 76
    .line 77
    iget-wide v1, v0, Lq3/j;->x:J

    .line 78
    .line 79
    move-wide/from16 v31, v1

    .line 80
    .line 81
    iget-wide v1, v0, Lq3/j;->y:J

    .line 82
    .line 83
    move-wide/from16 v33, v1

    .line 84
    .line 85
    iget-object v1, v0, Lq3/j;->A:Ljava/lang/String;

    .line 86
    .line 87
    move-object/from16 v35, v1

    .line 88
    .line 89
    iget-wide v1, v0, Lq3/j;->z:J

    .line 90
    .line 91
    move-wide/from16 v36, v1

    .line 92
    .line 93
    iget-object v1, v0, Lq3/j;->B:Lb4/d;

    .line 94
    .line 95
    move-object/from16 v38, v1

    .line 96
    .line 97
    iget-object v1, v0, Lq3/j;->C:Lb4/c$a;

    .line 98
    .line 99
    move-object/from16 v39, v1

    .line 100
    .line 101
    move-object/from16 v1, v41

    .line 102
    .line 103
    move-object/from16 v2, v42

    .line 104
    .line 105
    invoke-direct/range {v1 .. v39}, Lq3/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/image/g;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest;[Lcom/facebook/imagepipeline/request/ImageRequest;JJJJJJJILjava/lang/String;ZIILjava/lang/Throwable;IJJLjava/lang/String;JLb4/d;Lb4/c$a;)V

    .line 106
    .line 107
    .line 108
    return-object v40
.end method

.method public a()Lb4/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/j;->B:Lb4/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/j;->C:Lb4/c$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/j;->z:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lq3/j;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lq3/j;->b:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lq3/j;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 5
    .line 6
    iput-object v0, p0, Lq3/j;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Lq3/j;->e:Lcom/facebook/imagepipeline/image/g;

    .line 9
    .line 10
    iput-object v0, p0, Lq3/j;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 11
    .line 12
    iput-object v0, p0, Lq3/j;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 13
    .line 14
    iput-object v0, p0, Lq3/j;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lq3/j;->p:I

    .line 18
    .line 19
    iput-object v0, p0, Lq3/j;->q:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lq3/j;->r:Z

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lq3/j;->s:I

    .line 26
    .line 27
    iput v1, p0, Lq3/j;->t:I

    .line 28
    .line 29
    iput-object v0, p0, Lq3/j;->u:Ljava/lang/Throwable;

    .line 30
    .line 31
    iput v1, p0, Lq3/j;->v:I

    .line 32
    .line 33
    iput v1, p0, Lq3/j;->w:I

    .line 34
    .line 35
    iput-object v0, p0, Lq3/j;->A:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lq3/j;->B:Lb4/d;

    .line 38
    .line 39
    iput-object v0, p0, Lq3/j;->C:Lb4/c$a;

    .line 40
    .line 41
    invoke-virtual {p0}, Lq3/j;->f()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lq3/j;->n:J

    .line 4
    .line 5
    iput-wide v0, p0, Lq3/j;->o:J

    .line 6
    .line 7
    iput-wide v0, p0, Lq3/j;->i:J

    .line 8
    .line 9
    iput-wide v0, p0, Lq3/j;->k:J

    .line 10
    .line 11
    iput-wide v0, p0, Lq3/j;->l:J

    .line 12
    .line 13
    iput-wide v0, p0, Lq3/j;->m:J

    .line 14
    .line 15
    iput-wide v0, p0, Lq3/j;->x:J

    .line 16
    .line 17
    iput-wide v0, p0, Lq3/j;->y:J

    .line 18
    .line 19
    iput-wide v0, p0, Lq3/j;->z:J

    .line 20
    .line 21
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callerContext"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentTag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public i(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerCancelTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public j(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerFailureTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->l:J

    .line 2
    .line 3
    return-void
.end method

.method public k(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerFinalImageSetTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->k:J

    .line 2
    .line 3
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public m(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest;[Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Lcom/facebook/imagepipeline/request/ImageRequest;
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
            "lowResImageRequest",
            "firstAvailableImageRequests"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lq3/j;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lq3/j;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 6
    .line 7
    return-void
.end method

.method public n(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerIntermediateImageSetTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->j:J

    .line 2
    .line 3
    return-void
.end method

.method public o(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerSubmitTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public p(Lb4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dimensionsInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->B:Lb4/d;

    .line 2
    .line 3
    return-void
.end method

.method public q(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorThrowable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->u:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public r(Lb4/c$a;)V
    .locals 0
    .param p1    # Lb4/c$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->C:Lb4/c$a;

    .line 2
    .line 3
    return-void
.end method

.method public s(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageDrawTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->z:J

    .line 2
    .line 3
    return-void
.end method

.method public t(Lcom/facebook/imagepipeline/image/g;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->e:Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    return-void
.end method

.method public u(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageLoadStatus"
        }
    .end annotation

    .line 1
    iput p1, p0, Lq3/j;->v:I

    .line 2
    .line 3
    return-void
.end method

.method public v(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOrigin"
        }
    .end annotation

    .line 1
    iput p1, p0, Lq3/j;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public w(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/j;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    return-void
.end method

.method public x(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageRequestEndTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->o:J

    .line 2
    .line 3
    return-void
.end method

.method public y(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageRequestStartTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public z(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invisibilityEventTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lq3/j;->y:J

    .line 2
    .line 3
    return-void
.end method

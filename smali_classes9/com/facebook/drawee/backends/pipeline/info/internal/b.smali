.class public Lcom/facebook/drawee/backends/pipeline/info/internal/b;
.super Lcom/facebook/drawee/controller/b;
.source "SourceFile"

# interfaces
.implements Lb4/h;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/b<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;",
        "Lb4/h<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ll3/c;

.field private final d:Lq3/j;

.field private final e:Lq3/h;


# direct methods
.method public constructor <init>(Ll3/c;Lq3/j;Lq3/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clock",
            "imagePerfState",
            "imagePerfMonitor"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Ll3/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->e:Lq3/h;

    .line 9
    .line 10
    return-void
.end method

.method private f(J)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lq3/j;->G(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lq3/j;->z(J)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->e:Lq3/h;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p1, p2, v0}, Lq3/h;->a(Lq3/j;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
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
            "id",
            "imageInfo",
            "animatable"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Ll3/c;

    .line 2
    .line 3
    invoke-interface {p3}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 8
    .line 9
    invoke-virtual {p3, v0, v1}, Lq3/j;->k(J)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 13
    .line 14
    invoke-virtual {p3, v0, v1}, Lq3/j;->x(J)V

    .line 15
    .line 16
    .line 17
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 18
    .line 19
    invoke-virtual {p3, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lq3/j;->t(Lcom/facebook/imagepipeline/image/g;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->e:Lq3/h;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 30
    .line 31
    const/4 p3, 0x3

    .line 32
    invoke-virtual {p1, p2, p3}, Lq3/h;->b(Lq3/j;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Lb4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "info",
            "dimensionsInfo"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Ll3/c;

    .line 4
    .line 5
    invoke-interface {p2}, Ll3/c;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p1, v0, v1}, Lq3/j;->s(J)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Lq3/j;->p(Lb4/d;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->e:Lq3/h;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 20
    .line 21
    const/4 p3, 0x6

    .line 22
    invoke-virtual {p1, p2, p3}, Lq3/h;->b(Lq3/j;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public d(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Lq3/j;->n(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lq3/j;->t(Lcom/facebook/imagepipeline/image/g;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->e:Lq3/h;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-virtual {p1, p2, v0}, Lq3/h;->b(Lq3/j;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public bridge synthetic e(Ljava/lang/String;Ljava/lang/Object;Lb4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "info",
            "dimensionsInfo"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Lb4/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(J)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "now"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lq3/j;->G(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lq3/j;->F(J)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->e:Lq3/h;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 15
    .line 16
    invoke-virtual {p1, p2, v1}, Lq3/h;->a(Lq3/j;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "throwable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Lq3/j;->j(J)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lq3/j;->q(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->e:Lq3/h;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    invoke-virtual {p1, p2, v2}, Lq3/h;->b(Lq3/j;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->f(J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo",
            "animatable"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->b(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRelease(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/b;->onRelease(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Ll3/c;

    .line 5
    .line 6
    invoke-interface {v0}, Ll3/c;->now()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 11
    .line 12
    invoke-virtual {v2}, Lq3/j;->d()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x3

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x5

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x6

    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 26
    .line 27
    invoke-virtual {v2, v0, v1}, Lq3/j;->i(J)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->e:Lq3/h;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    invoke-virtual {p1, v2, v3}, Lq3/h;->b(Lq3/j;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->f(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 8
    .line 9
    invoke-virtual {v2}, Lq3/j;->f()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lq3/j;->o(J)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lq3/j;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->e:Lq3/h;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lq3/j;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, p2, v2}, Lq3/h;->b(Lq3/j;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->g(J)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

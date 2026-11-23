.class public Lq3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/i;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lcom/facebook/drawee/backends/pipeline/d;

.field private final b:Ll3/c;

.field private final c:Lq3/j;

.field private final d:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lq3/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lq3/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/drawee/backends/pipeline/info/internal/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Lj4/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq3/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>(Ll3/c;Lcom/facebook/drawee/backends/pipeline/d;Lcom/facebook/common/internal/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "monotonicClock",
            "pipelineDraweeController",
            "asyncLogging"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c;",
            "Lcom/facebook/drawee/backends/pipeline/d;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq3/h;->b:Ll3/c;

    .line 5
    .line 6
    iput-object p2, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 7
    .line 8
    new-instance p1, Lq3/j;

    .line 9
    .line 10
    invoke-direct {p1}, Lq3/j;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lq3/h;->c:Lq3/j;

    .line 14
    .line 15
    iput-object p3, p0, Lq3/h;->d:Lcom/facebook/common/internal/l;

    .line 16
    .line 17
    return-void
.end method

.method private i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lq3/h;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    .line 6
    .line 7
    iget-object v2, p0, Lq3/h;->b:Ll3/c;

    .line 8
    .line 9
    iget-object v3, p0, Lq3/h;->c:Lq3/j;

    .line 10
    .line 11
    iget-object v5, p0, Lq3/h;->d:Lcom/facebook/common/internal/l;

    .line 12
    .line 13
    sget-object v6, Lcom/facebook/common/internal/m;->b:Lcom/facebook/common/internal/l;

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    move-object v4, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;-><init>(Ll3/c;Lq3/j;Lq3/i;Lcom/facebook/common/internal/l;Lcom/facebook/common/internal/l;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lq3/h;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lq3/h;->g:Lcom/facebook/drawee/backends/pipeline/info/internal/d;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;

    .line 27
    .line 28
    iget-object v1, p0, Lq3/h;->b:Ll3/c;

    .line 29
    .line 30
    iget-object v2, p0, Lq3/h;->c:Lq3/j;

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/internal/d;-><init>(Ll3/c;Lq3/j;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lq3/h;->g:Lcom/facebook/drawee/backends/pipeline/info/internal/d;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lq3/h;->f:Lq3/c;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;

    .line 42
    .line 43
    iget-object v1, p0, Lq3/h;->c:Lq3/j;

    .line 44
    .line 45
    invoke-direct {v0, v1, p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/c;-><init>(Lq3/j;Lq3/h;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lq3/h;->f:Lq3/c;

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lq3/h;->e:Lq3/d;

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    new-instance v0, Lq3/d;

    .line 55
    .line 56
    iget-object v1, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/facebook/drawee/controller/a;->w()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lq3/h;->f:Lq3/c;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2}, Lq3/d;-><init>(Ljava/lang/String;Lq3/c;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lq3/h;->e:Lq3/d;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object v1, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/facebook/drawee/controller/a;->w()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lq3/d;->l(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object v0, p0, Lq3/h;->i:Lj4/d;

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    new-instance v0, Lj4/d;

    .line 84
    .line 85
    const/4 v1, 0x2

    .line 86
    new-array v1, v1, [Lj4/f;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lq3/h;->g:Lcom/facebook/drawee/backends/pipeline/info/internal/d;

    .line 90
    .line 91
    aput-object v3, v1, v2

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    iget-object v3, p0, Lq3/h;->e:Lq3/d;

    .line 95
    .line 96
    aput-object v3, v1, v2

    .line 97
    .line 98
    invoke-direct {v0, v1}, Lj4/d;-><init>([Lj4/f;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lq3/h;->i:Lj4/d;

    .line 102
    .line 103
    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lq3/j;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "visibilityState"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq3/h;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lq3/h;->j:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lq3/j;->H()Lq3/f;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lq3/h;->j:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lq3/g;

    .line 37
    .line 38
    invoke-interface {v1, p1, p2}, Lq3/g;->a(Lq3/f;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    return-void
.end method

.method public b(Lq3/j;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "imageLoadStatus"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lq3/j;->u(I)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lq3/h;->k:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lq3/h;->j:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v0, 0x3

    .line 20
    if-ne p2, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lq3/h;->d()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Lq3/j;->H()Lq3/f;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lq3/h;->j:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lq3/g;

    .line 46
    .line 47
    invoke-interface {v1, p1, p2}, Lq3/g;->b(Lq3/f;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lq3/g;)V
    .locals 1
    .param p1    # Lq3/g;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePerfDataListener"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lq3/h;->j:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lq3/h;->j:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lq3/h;->j:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/a;->e()Ls3/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ls3/b;->b()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ls3/b;->b()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lq3/h;->c:Lq3/j;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Lq3/j;->B(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lq3/h;->c:Lq3/j;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {v1, v0}, Lq3/j;->A(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/h;->j:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public f(Lq3/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePerfDataListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/h;->j:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/h;->e()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lq3/h;->h(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lq3/h;->c:Lq3/j;

    .line 9
    .line 10
    invoke-virtual {v0}, Lq3/j;->e()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public h(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lq3/h;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-direct {p0}, Lq3/h;->i()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lq3/h;->f:Lq3/c;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->j0(Lq3/c;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lq3/h;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/a;->m(Lb4/c;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Lq3/h;->i:Lj4/d;

    .line 27
    .line 28
    if-eqz p1, :cond_5

    .line 29
    .line 30
    iget-object v0, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->k0(Lj4/f;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, p0, Lq3/h;->f:Lq3/c;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->B0(Lq3/c;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-object p1, p0, Lq3/h;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/a;->T(Lb4/c;)V

    .line 52
    .line 53
    .line 54
    :cond_4
    iget-object p1, p0, Lq3/h;->i:Lj4/d;

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    iget-object v0, p0, Lq3/h;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->C0(Lj4/f;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_0
    return-void
.end method

.method public j(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pipelineDraweeControllerBuilder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "Lcom/facebook/drawee/backends/pipeline/e;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/image/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/h;->c:Lq3/j;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->t()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->q()[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, [Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, p1}, Lq3/j;->m(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest;[Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

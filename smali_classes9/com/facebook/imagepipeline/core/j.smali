.class public Lcom/facebook/imagepipeline/core/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/j$c;,
        Lcom/facebook/imagepipeline/core/j$d;,
        Lcom/facebook/imagepipeline/core/j$b;
    }
.end annotation


# instance fields
.field private final A:I

.field private final B:Z

.field private final C:Z

.field private final D:Z

.field private final E:Z

.field private final a:Z

.field private final b:Lm3/b$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z

.field private final d:Lm3/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Z

.field private final f:Z

.field private final g:I

.field private final h:I

.field private i:Z

.field private final j:I

.field private final k:Z

.field private final l:Z

.field private final m:Lcom/facebook/imagepipeline/core/j$d;

.field private final n:Lcom/facebook/common/internal/l;
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

.field private final o:Z

.field private final p:Z

.field private final q:I

.field private final r:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Z

.field private final t:J

.field private u:Z

.field private v:Z

.field private w:Z

.field private final x:Z

.field private final y:Z

.field private final z:Z


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/core/j$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->a(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->a:Z

    .line 4
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->b(Lcom/facebook/imagepipeline/core/j$b;)Lm3/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lm3/b$a;

    .line 5
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->l(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->c:Z

    .line 6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->m(Lcom/facebook/imagepipeline/core/j$b;)Lm3/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->d:Lm3/b;

    .line 7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->n(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->e:Z

    .line 8
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->o(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->f:Z

    .line 9
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->p(Lcom/facebook/imagepipeline/core/j$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/j;->g:I

    .line 10
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->q(Lcom/facebook/imagepipeline/core/j$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/j;->h:I

    .line 11
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/j$b;->j:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->i:Z

    .line 12
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->r(Lcom/facebook/imagepipeline/core/j$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/j;->j:I

    .line 13
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->s(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->k:Z

    .line 14
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->c(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->l:Z

    .line 15
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->d(Lcom/facebook/imagepipeline/core/j$b;)Lcom/facebook/imagepipeline/core/j$d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/facebook/imagepipeline/core/j$c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/j$c;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->m:Lcom/facebook/imagepipeline/core/j$d;

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->d(Lcom/facebook/imagepipeline/core/j$b;)Lcom/facebook/imagepipeline/core/j$d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->m:Lcom/facebook/imagepipeline/core/j$d;

    .line 18
    :goto_0
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/j$b;->o:Lcom/facebook/common/internal/l;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->n:Lcom/facebook/common/internal/l;

    .line 19
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/j$b;->p:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->o:Z

    .line 20
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/j$b;->q:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->p:Z

    .line 21
    iget v0, p1, Lcom/facebook/imagepipeline/core/j$b;->r:I

    iput v0, p0, Lcom/facebook/imagepipeline/core/j;->q:I

    .line 22
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/j$b;->s:Lcom/facebook/common/internal/l;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->r:Lcom/facebook/common/internal/l;

    .line 23
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/j$b;->t:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->s:Z

    .line 24
    iget-wide v0, p1, Lcom/facebook/imagepipeline/core/j$b;->u:J

    iput-wide v0, p0, Lcom/facebook/imagepipeline/core/j;->t:J

    .line 25
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->e(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->u:Z

    .line 26
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/j$b;->w:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->v:Z

    .line 27
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/j$b;->x:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->w:Z

    .line 28
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/j$b;->y:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->x:Z

    .line 29
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->f(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->y:Z

    .line 30
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->g(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->z:Z

    .line 31
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->h(Lcom/facebook/imagepipeline/core/j$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/j;->A:I

    .line 32
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->i(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->B:Z

    .line 33
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->j(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->C:Z

    .line 34
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j$b;->k(Lcom/facebook/imagepipeline/core/j$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->D:Z

    .line 35
    iget-boolean p1, p1, Lcom/facebook/imagepipeline/core/j$b;->F:Z

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/j;->E:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/j$b;Lcom/facebook/imagepipeline/core/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/j;-><init>(Lcom/facebook/imagepipeline/core/j$b;)V

    return-void
.end method

.method public static A(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configBuilder"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/j$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/j$b;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->E:Z

    .line 2
    .line 3
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->D:Z

    .line 2
    .line 3
    return v0
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/j;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/j;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/j;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/j;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/core/j;->t:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public h()Lcom/facebook/imagepipeline/core/j$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->m:Lcom/facebook/imagepipeline/core/j$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/facebook/common/internal/l;
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
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->r:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/j;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()Lm3/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->d:Lm3/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lm3/b$a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lm3/b$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->C:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public w()Lcom/facebook/common/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->n:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/j;->a:Z

    .line 2
    .line 3
    return v0
.end method

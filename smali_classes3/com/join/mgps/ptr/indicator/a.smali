.class public Lcom/join/mgps/ptr/indicator/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:I


# instance fields
.field protected a:I

.field private b:Landroid/graphics/PointF;

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    .line 6
    .line 7
    new-instance v1, Landroid/graphics/PointF;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/join/mgps/ptr/indicator/a;->b:Landroid/graphics/PointF;

    .line 13
    .line 14
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 15
    .line 16
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 17
    .line 18
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->h:I

    .line 19
    .line 20
    const v1, 0x3f99999a    # 1.2f

    .line 21
    .line 22
    .line 23
    iput v1, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    .line 24
    .line 25
    const v1, 0x402ccccd    # 2.7f

    .line 26
    .line 27
    .line 28
    iput v1, p0, Lcom/join/mgps/ptr/indicator/a;->j:F

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/ptr/indicator/a;->k:Z

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/join/mgps/ptr/indicator/a;->l:I

    .line 34
    .line 35
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->m:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/indicator/a;->k:Z

    .line 3
    .line 4
    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->m:I

    .line 4
    .line 5
    return-void
.end method

.method protected C(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "last"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected D(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentX",
            "currentY",
            "offsetX",
            "offsetY"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/join/mgps/ptr/indicator/a;->j:F

    .line 2
    .line 3
    div-float/2addr p4, p1

    .line 4
    invoke-virtual {p0, p3, p4}, Lcom/join/mgps/ptr/indicator/a;->G(FF)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final E(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 4
    .line 5
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ptr/indicator/a;->C(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public F(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->L()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected G(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->c:F

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/ptr/indicator/a;->d:F

    .line 4
    .line 5
    return-void
.end method

.method public H(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public I(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    mul-float v0, v0, v1

    .line 7
    .line 8
    int-to-float v1, p1

    .line 9
    div-float/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    .line 11
    .line 12
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    .line 13
    .line 14
    return-void
.end method

.method public J(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    .line 2
    .line 3
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 4
    .line 5
    int-to-float v0, v0

    .line 6
    mul-float v0, v0, p1

    .line 7
    .line 8
    float-to-int p1, v0

    .line 9
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    .line 10
    .line 11
    return-void
.end method

.method public K(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resistance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->j:F

    .line 2
    .line 3
    return-void
.end method

.method protected L()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    mul-float v0, v0, v1

    .line 7
    .line 8
    float-to-int v0, v0

    .line 9
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    .line 10
    .line 11
    return-void
.end method

.method public M(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    .line 1
    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lcom/join/mgps/ptr/indicator/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptrSlider"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 4
    .line 5
    iget v0, p1, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 8
    .line 9
    iget p1, p1, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 10
    .line 11
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 12
    .line 13
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->i()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->i()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public c()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    mul-float v1, v1, v2

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    div-float v0, v1, v0

    .line 16
    .line 17
    :goto_0
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public f()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    mul-float v1, v1, v2

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    div-float v0, v1, v0

    .line 16
    .line 17
    :goto_0
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->l:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 7
    .line 8
    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public l()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->m:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->h:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public t(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public u()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public v()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->h()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public w()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->i()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ptr/indicator/a;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final y(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/indicator/a;->b:Landroid/graphics/PointF;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 4
    .line 5
    sub-float v1, p1, v1

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 8
    .line 9
    sub-float v0, p2, v0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/join/mgps/ptr/indicator/a;->D(FFFF)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/ptr/indicator/a;->b:Landroid/graphics/PointF;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public z(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/indicator/a;->k:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->h:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/ptr/indicator/a;->b:Landroid/graphics/PointF;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.class public Lcom/facebook/drawee/drawable/r;
.super Lcom/facebook/drawee/drawable/h;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field f:Lcom/facebook/drawee/drawable/s$c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field h:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field i:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field j:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field k:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private l:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "scaleType"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/facebook/drawee/drawable/r;->i:I

    .line 4
    iput p1, p0, Lcom/facebook/drawee/drawable/r;->j:I

    .line 5
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->l:Landroid/graphics/Matrix;

    .line 6
    iput-object p2, p0, Lcom/facebook/drawee/drawable/r;->f:Lcom/facebook/drawee/drawable/s$c;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;Landroid/graphics/PointF;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
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
            "drawable",
            "scaleType",
            "focusPoint"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/facebook/drawee/drawable/r;->i:I

    .line 10
    iput p1, p0, Lcom/facebook/drawee/drawable/r;->j:I

    .line 11
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->l:Landroid/graphics/Matrix;

    .line 12
    iput-object p2, p0, Lcom/facebook/drawee/drawable/r;->f:Lcom/facebook/drawee/drawable/s$c;

    .line 13
    iput-object p3, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    return-void
.end method

.method private B()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->f:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/facebook/drawee/drawable/s$o;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    check-cast v0, Lcom/facebook/drawee/drawable/s$o;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/facebook/drawee/drawable/s$o;->getState()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/facebook/drawee/drawable/r;->g:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 29
    :goto_1
    iput-object v0, p0, Lcom/facebook/drawee/drawable/r;->g:Ljava/lang/Object;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/4 v1, 0x0

    .line 33
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    iget v4, p0, Lcom/facebook/drawee/drawable/r;->i:I

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-ne v4, v5, :cond_5

    .line 47
    .line 48
    iget v4, p0, Lcom/facebook/drawee/drawable/r;->j:I

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eq v4, v0, :cond_4

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    const/4 v2, 0x0

    .line 58
    :cond_5
    :goto_3
    if-nez v2, :cond_6

    .line 59
    .line 60
    if-eqz v1, :cond_7

    .line 61
    .line 62
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->A()V

    .line 63
    .line 64
    .line 65
    :cond_7
    return-void
.end method


# virtual methods
.method A()V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lcom/facebook/drawee/drawable/r;->j:I

    .line 10
    .line 11
    iput v1, p0, Lcom/facebook/drawee/drawable/r;->i:I

    .line 12
    .line 13
    iput-object v2, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iput v6, p0, Lcom/facebook/drawee/drawable/r;->i:I

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    iput v7, p0, Lcom/facebook/drawee/drawable/r;->j:I

    .line 39
    .line 40
    if-lez v6, :cond_6

    .line 41
    .line 42
    if-gtz v7, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    if-ne v6, v3, :cond_2

    .line 46
    .line 47
    if-ne v7, v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/facebook/drawee/drawable/r;->f:Lcom/facebook/drawee/drawable/s$c;

    .line 56
    .line 57
    sget-object v4, Lcom/facebook/drawee/drawable/s$c;->a:Lcom/facebook/drawee/drawable/s$c;

    .line 58
    .line 59
    if-ne v3, v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-virtual {v0, v1, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/facebook/drawee/drawable/r;->f:Lcom/facebook/drawee/drawable/s$c;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/facebook/drawee/drawable/r;->l:Landroid/graphics/Matrix;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    .line 75
    .line 76
    const/high16 v1, 0x3f000000    # 0.5f

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 81
    .line 82
    move v8, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const/high16 v8, 0x3f000000    # 0.5f

    .line 85
    .line 86
    :goto_0
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 89
    .line 90
    move v9, v0

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    const/high16 v9, 0x3f000000    # 0.5f

    .line 93
    .line 94
    :goto_1
    invoke-interface/range {v3 .. v9}, Lcom/facebook/drawee/drawable/s$c;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->l:Landroid/graphics/Matrix;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 100
    .line 101
    return-void

    .line 102
    :cond_6
    :goto_2
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 103
    .line 104
    .line 105
    iput-object v2, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 106
    .line 107
    return-void
.end method

.method public C()Landroid/graphics/PointF;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Lcom/facebook/drawee/drawable/s$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->f:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public E(Landroid/graphics/PointF;)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusPoint"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/PointF;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->h:Landroid/graphics/PointF;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->A()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public F(Lcom/facebook/drawee/drawable/s$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->f:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->f:Lcom/facebook/drawee/drawable/s$c;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->g:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->A()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/r;->B()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->draw(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->draw(Landroid/graphics/Canvas;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public o(Landroid/graphics/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/drawable/h;->w(Landroid/graphics/Matrix;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/r;->B()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public y(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newDelegate"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->y(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->A()V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

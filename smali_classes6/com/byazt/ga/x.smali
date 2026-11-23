.class public Lcom/byazt/ga/x;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ga/x$tt;,
        Lcom/byazt/ga/x$c;
    }
.end annotation


# instance fields
.field public a:Z

.field public aw:Lcom/byazt/ga/LottieAnimationView;

.field public bx:Landroid/graphics/Matrix;

.field public c:Ljava/lang/String;

.field public cu:Landroid/graphics/Rect;

.field public d:Landroid/graphics/Rect;

.field public final da:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/ga/x$c;",
            ">;"
        }
    .end annotation
.end field

.field public eo:Landroid/graphics/RectF;

.field public gr:Z

.field public gt:Lcom/byazt/zk/uj;

.field public gu:Z

.field public h:Landroid/graphics/Canvas;

.field public i:Lcom/byazt/ga/x$tt;

.field public ic:Z

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public md:Landroid/graphics/Bitmap;

.field public my:Z

.field public final n:Lcom/byazt/kk/sp;

.field public nb:Landroid/graphics/RectF;

.field public nu:Z

.field public or:Landroid/graphics/Rect;

.field public final p:Landroid/graphics/Matrix;

.field public pf:Landroid/graphics/Matrix;

.field public qp:Landroid/graphics/RectF;

.field public qy:Z

.field public rh:Z

.field public rl:I

.field public final sl:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public sp:Z

.field public sv:Lcom/byazt/ga/rl;

.field public t:Lcom/byazt/pn/tt;

.field public tt:Lcom/byazt/ga/ve;

.field public u:Ljava/lang/String;

.field public uj:Lcom/byazt/ga/a;

.field public ve:Lcom/byazt/ga/gt;

.field public x:Z

.field public yp:Lcom/byazt/ga/uj;

.field public yv:Z

.field public z:Lcom/byazt/pn/c;

.field public zb:Landroid/graphics/Paint;

.field public zm:Lcom/byazt/ga/my;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/LottieAnimationView;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/kk/sp;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/kk/sp;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/byazt/ga/x;->a:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lcom/byazt/ga/x;->sp:Z

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/byazt/ga/x;->x:Z

    .line 18
    .line 19
    sget-object v3, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 20
    .line 21
    iput-object v3, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 22
    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v3, Lcom/byazt/ga/x$1;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lcom/byazt/ga/x$1;-><init>(Lcom/byazt/ga/x;)V

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lcom/byazt/ga/x;->sl:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/byazt/ga/x;->rh:Z

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/byazt/ga/x;->my:Z

    .line 40
    .line 41
    const/16 v1, 0xff

    .line 42
    .line 43
    iput v1, p0, Lcom/byazt/ga/x;->rl:I

    .line 44
    .line 45
    sget-object v1, Lcom/byazt/ga/my;->c:Lcom/byazt/ga/my;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/byazt/ga/x;->zm:Lcom/byazt/ga/my;

    .line 48
    .line 49
    iput-boolean v2, p0, Lcom/byazt/ga/x;->yv:Z

    .line 50
    .line 51
    new-instance v1, Landroid/graphics/Matrix;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/byazt/ga/x;->p:Landroid/graphics/Matrix;

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/byazt/ga/x;->ic:Z

    .line 59
    .line 60
    iput-object p1, p0, Lcom/byazt/ga/x;->aw:Lcom/byazt/ga/LottieAnimationView;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lcom/byazt/kk/c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ga/x;)Lcom/byazt/zk/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 7

    .line 35
    iget-object v4, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v4, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    if-eqz v0, :cond_1

    .line 37
    invoke-direct {p0, v0}, Lcom/byazt/ga/x;->c(Lcom/byazt/zk/uj;)V

    .line 38
    :cond_1
    new-instance v6, Lcom/byazt/zk/uj;

    .line 39
    invoke-static {v4}, Lcom/byazt/fs/qy;->c(Lcom/byazt/ga/a;)Lcom/byazt/zk/x;

    move-result-object v2

    invoke-virtual {v4}, Lcom/byazt/ga/a;->yp()Ljava/util/List;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/byazt/zk/uj;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Ljava/util/List;Lcom/byazt/ga/a;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    .line 40
    iget-boolean p1, p0, Lcom/byazt/ga/x;->gu:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 41
    invoke-virtual {v6, p1}, Lcom/byazt/zk/uj;->c(Z)V

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    iget-boolean v0, p0, Lcom/byazt/ga/x;->my:Z

    invoke-virtual {p1, v0}, Lcom/byazt/zk/uj;->tt(Z)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    .line 88
    iget-object v1, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/byazt/ga/x;->p:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 90
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/byazt/ga/a;->uj()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 93
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/byazt/ga/a;->uj()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    .line 94
    iget-object v1, p0, Lcom/byazt/ga/x;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 95
    iget-object v1, p0, Lcom/byazt/ga/x;->p:Landroid/graphics/Matrix;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/byazt/ga/x;->p:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/byazt/ga/x;->rl:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/zk/ve;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Landroid/graphics/Canvas;Lcom/byazt/zk/uj;)V
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ga/x;->nb()V

    .line 99
    iget-object v0, p0, Lcom/byazt/ga/x;->pf:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 100
    iget-object v0, p0, Lcom/byazt/ga/x;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 101
    iget-object v0, p0, Lcom/byazt/ga/x;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/byazt/ga/x;->eo:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/byazt/ga/x;->c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 102
    iget-object v0, p0, Lcom/byazt/ga/x;->pf:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/byazt/ga/x;->eo:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 103
    iget-object v0, p0, Lcom/byazt/ga/x;->eo:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/byazt/ga/x;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/byazt/ga/x;->c(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 104
    iget-boolean v0, p0, Lcom/byazt/ga/x;->my:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/byazt/ga/x;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/byazt/ga/x;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/byazt/zk/uj;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/byazt/ga/x;->pf:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 108
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/byazt/ga/x;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/byazt/ga/x;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 111
    iget-object v3, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v2, v0}, Lcom/byazt/ga/x;->c(Landroid/graphics/RectF;FF)V

    .line 112
    invoke-direct {p0}, Lcom/byazt/ga/x;->pf()Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/byazt/ga/x;->d:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 115
    iget-object v4, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    .line 116
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/byazt/ga/x;->tt(II)V

    .line 117
    iget-boolean v5, p0, Lcom/byazt/ga/x;->ic:Z

    if-eqz v5, :cond_4

    .line 118
    iget-object v5, p0, Lcom/byazt/ga/x;->p:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/byazt/ga/x;->pf:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 119
    iget-object v5, p0, Lcom/byazt/ga/x;->p:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 120
    iget-object v0, p0, Lcom/byazt/ga/x;->p:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 121
    iget-object v0, p0, Lcom/byazt/ga/x;->md:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 122
    iget-object v0, p0, Lcom/byazt/ga/x;->h:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/byazt/ga/x;->p:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/byazt/ga/x;->rl:I

    invoke-virtual {p2, v0, v2, v5}, Lcom/byazt/zk/ve;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 123
    iget-object p2, p0, Lcom/byazt/ga/x;->pf:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/byazt/ga/x;->bx:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 124
    iget-object p2, p0, Lcom/byazt/ga/x;->bx:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/byazt/ga/x;->qp:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 125
    iget-object p2, p0, Lcom/byazt/ga/x;->qp:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/byazt/ga/x;->cu:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/byazt/ga/x;->c(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 126
    :cond_4
    iget-object p2, p0, Lcom/byazt/ga/x;->or:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    iget-object p2, p0, Lcom/byazt/ga/x;->md:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/byazt/ga/x;->or:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/byazt/ga/x;->cu:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/byazt/ga/x;->zb:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 134
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private c(Landroid/graphics/RectF;FF)V
    .locals 3

    .line 135
    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float v0, v0, p2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    mul-float v1, v1, p3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    mul-float v2, v2, p2

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float p2, p2, p3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private c(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 5

    .line 128
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 130
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    .line 132
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 133
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private c(Lcom/byazt/zk/uj;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/byazt/zk/ve;->ve()V

    .line 44
    invoke-virtual {p1}, Lcom/byazt/zk/uj;->yp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/zk/ve;

    .line 46
    instance-of v1, v0, Lcom/byazt/zk/uj;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/byazt/zk/uj;

    invoke-direct {p0, v0}, Lcom/byazt/ga/x;->c(Lcom/byazt/zk/uj;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->ve()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cu()Lcom/byazt/pn/tt;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->t:Lcom/byazt/pn/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/ga/x;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/pn/tt;->c(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/byazt/ga/x;->t:Lcom/byazt/pn/tt;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/x;->t:Lcom/byazt/pn/tt;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/byazt/pn/tt;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/byazt/ga/x;->u:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/byazt/ga/x;->yp:Lcom/byazt/ga/uj;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/byazt/ga/a;->nu()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/pn/tt;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/byazt/ga/uj;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/byazt/ga/x;->t:Lcom/byazt/pn/tt;

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/byazt/ga/x;->t:Lcom/byazt/pn/tt;

    .line 44
    .line 45
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    return-object v1
.end method

.method private nb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->h:Landroid/graphics/Canvas;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/byazt/ga/x;->h:Landroid/graphics/Canvas;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/ga/x;->pf:Landroid/graphics/Matrix;

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/byazt/ga/x;->bx:Landroid/graphics/Matrix;

    .line 33
    .line 34
    new-instance v0, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/byazt/ga/x;->d:Landroid/graphics/Rect;

    .line 40
    .line 41
    new-instance v0, Landroid/graphics/RectF;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/byazt/ga/x;->eo:Landroid/graphics/RectF;

    .line 47
    .line 48
    new-instance v0, Lcom/byazt/xg/c;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/byazt/xg/c;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/byazt/ga/x;->zb:Landroid/graphics/Paint;

    .line 54
    .line 55
    new-instance v0, Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/byazt/ga/x;->or:Landroid/graphics/Rect;

    .line 61
    .line 62
    new-instance v0, Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/byazt/ga/x;->cu:Landroid/graphics/Rect;

    .line 68
    .line 69
    new-instance v0, Landroid/graphics/RectF;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/byazt/ga/x;->qp:Landroid/graphics/RectF;

    .line 75
    .line 76
    return-void
.end method

.method private or()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ga/x;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/ga/x;->sp:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method private pf()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1
    return v2
.end method

.method private qp()Lcom/byazt/pn/c;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/x;->z:Lcom/byazt/pn/c;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/byazt/pn/c;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/byazt/ga/x;->tt:Lcom/byazt/ga/ve;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/byazt/pn/c;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/byazt/ga/ve;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/ga/x;->z:Lcom/byazt/pn/c;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/ga/x;->c:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/pn/c;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/byazt/ga/x;->z:Lcom/byazt/pn/c;

    .line 34
    .line 35
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/ga/x;)Lcom/byazt/kk/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    return-object p0
.end method

.method private tt(II)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/byazt/ga/x;->md:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_3

    iget-object v0, p0, Lcom/byazt/ga/x;->md:Landroid/graphics/Bitmap;

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/x;->md:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/byazt/ga/x;->md:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/byazt/ga/x;->md:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ga/x;->md:Landroid/graphics/Bitmap;

    .line 22
    iget-object p2, p0, Lcom/byazt/ga/x;->h:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    iput-boolean v1, p0, Lcom/byazt/ga/x;->ic:Z

    :cond_2
    return-void

    .line 24
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ga/x;->md:Landroid/graphics/Bitmap;

    .line 25
    iget-object p2, p0, Lcom/byazt/ga/x;->h:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    iput-boolean v1, p0, Lcom/byazt/ga/x;->ic:Z

    return-void
.end method

.method private zb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/ga/x;->zm:Lcom/byazt/ga/my;

    .line 7
    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/ga/a;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v0}, Lcom/byazt/ga/a;->tt()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v1, v2, v3, v0}, Lcom/byazt/ga/my;->c(IZI)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/byazt/ga/x;->yv:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/byazt/ga/i;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ga/a;->nu()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ga/i;

    return-object p1
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/ga/x;->x:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ga/x;->rh:Z

    return v0
.end method

.method public c(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/byazt/ga/x;->cu()Lcom/byazt/pn/tt;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    .line 72
    invoke-static {p1}, Lcom/byazt/kk/a;->tt(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/byazt/pn/tt;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Lcom/byazt/ga/x;->invalidateSelf()V

    return-object p1
.end method

.method public c(Lcom/byazt/nb/ve;)Landroid/graphics/Typeface;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/byazt/ga/x;->m:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/byazt/nb/ve;->c()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/nb/ve;->tt()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/nb/ve;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/nb/ve;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/byazt/ga/x;->qp()Lcom/byazt/pn/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {v0, p1}, Lcom/byazt/pn/c;->c(Lcom/byazt/nb/ve;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Lcom/byazt/ga/rl;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/x;->sv:Lcom/byazt/ga/rl;

    return-object v0
.end method

.method public c(F)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$9;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/x$9;-><init>(Lcom/byazt/ga/x;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ga/a;->a()F

    move-result v0

    iget-object v1, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    invoke-virtual {v1}, Lcom/byazt/ga/a;->sp()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/byazt/kk/i;->c(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/byazt/ga/x;->c(I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$8;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/x$8;-><init>(Lcom/byazt/ga/x;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/kk/sp;->c(I)V

    return-void
.end method

.method public c(II)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/ga/x$3;-><init>(Lcom/byazt/ga/x;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/byazt/kk/sp;->c(FF)V

    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/kk/c;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public c(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/kk/c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public c(Lcom/byazt/ga/gt;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/byazt/ga/x;->ve:Lcom/byazt/ga/gt;

    return-void
.end method

.method public c(Lcom/byazt/ga/my;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/byazt/ga/x;->zm:Lcom/byazt/ga/my;

    .line 34
    invoke-direct {p0}, Lcom/byazt/ga/x;->zb()V

    return-void
.end method

.method public c(Lcom/byazt/ga/rl;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ga/x;->sv:Lcom/byazt/ga/rl;

    return-void
.end method

.method public c(Lcom/byazt/ga/uj;)V
    .locals 1

    .line 61
    iput-object p1, p0, Lcom/byazt/ga/x;->yp:Lcom/byazt/ga/uj;

    .line 62
    iget-object v0, p0, Lcom/byazt/ga/x;->t:Lcom/byazt/pn/tt;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcom/byazt/pn/tt;->c(Lcom/byazt/ga/uj;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ga/ve;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/byazt/ga/x;->tt:Lcom/byazt/ga/ve;

    .line 65
    iget-object v0, p0, Lcom/byazt/ga/x;->z:Lcom/byazt/pn/c;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/byazt/pn/c;->c(Lcom/byazt/ga/ve;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/ga/x;->a:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/byazt/ga/x;->u:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/byazt/ga/x;->m:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/byazt/ga/x;->m:Ljava/util/Map;

    .line 69
    invoke-virtual {p0}, Lcom/byazt/ga/x;->invalidateSelf()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/byazt/ga/x;->my:Z

    if-eq p1, v0, :cond_1

    .line 9
    iput-boolean p1, p0, Lcom/byazt/ga/x;->my:Z

    .line 10
    iget-object v0, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/zk/uj;->tt(Z)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ga/x;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public c(ZLandroid/content/Context;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/byazt/ga/x;->nu:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/ga/x;->nu:Z

    .line 6
    iget-object p1, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/ga/x;->c(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/ga/a;Landroid/content/Context;)Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/byazt/ga/x;->ic:Z

    .line 16
    invoke-virtual {p0}, Lcom/byazt/ga/x;->sl()V

    .line 17
    iput-object p1, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    .line 18
    invoke-direct {p0, p2}, Lcom/byazt/ga/x;->c(Landroid/content/Context;)V

    .line 19
    iget-object p2, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {p2, p1}, Lcom/byazt/kk/sp;->c(Lcom/byazt/ga/a;)V

    .line 20
    iget-object p2, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {p2}, Lcom/byazt/kk/sp;->getAnimatedFraction()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/byazt/ga/x;->uj(F)V

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 22
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ga/x$c;

    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v1, p1}, Lcom/byazt/ga/x$c;->c(Lcom/byazt/ga/a;)V

    .line 25
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 26
    :cond_2
    iget-object p2, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-boolean p2, p0, Lcom/byazt/ga/x;->qy:Z

    invoke-virtual {p1, p2}, Lcom/byazt/ga/a;->tt(Z)V

    .line 28
    invoke-direct {p0}, Lcom/byazt/ga/x;->zb()V

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 30
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    .line 31
    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ga/x;->gr:Z

    .line 2
    .line 3
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    const-string v0, "Drawable#draw"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/byazt/ga/x;->yv:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    .line 11
    .line 12
    invoke-direct {p0, p1, v1}, Lcom/byazt/ga/x;->c(Landroid/graphics/Canvas;Lcom/byazt/zk/uj;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/ga/x;->c(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    const-string v1, "Lottie crashed in draw!"

    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/byazt/kk/a;->tt(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/byazt/ga/x;->ic:Z

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public eo()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->nb:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ga/x;->rl:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ga/a;->uj()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ga/a;->uj()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public gr()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 15
    .line 16
    sget-object v1, Lcom/byazt/ga/x$tt;->tt:Lcom/byazt/ga/x$tt;

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    sget-object v1, Lcom/byazt/ga/x$tt;->ve:Lcom/byazt/ga/x$tt;

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public gt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->sp()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public gu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->isRunning()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->u()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public i()Lcom/byazt/ga/rh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ga/a;->ve()Lcom/byazt/ga/rh;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ga/x;->ic:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/byazt/ga/x;->ic:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ga/x;->gu()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->m()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public md()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->cancel()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public my()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kk/c;->removeAllListeners()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/byazt/ga/x;->cu()Lcom/byazt/pn/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/pn/tt;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->u:Ljava/lang/String;

    return-object v0
.end method

.method public n(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/ga/x;->gr:Z

    return-void
.end method

.method public nu()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->da()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public p()Lcom/byazt/ga/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public qy()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public rh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kk/c;->removeAllUpdateListeners()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/ga/x;->sl:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/kk/c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public rl()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/bytedance/component/sdk/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/byazt/ga/x;->rl:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/byazt/ga/x;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    const-string p1, "Use addColorFilter instead."

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/kk/a;->tt(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 14
    .line 15
    sget-object v0, Lcom/byazt/ga/x$tt;->tt:Lcom/byazt/ga/x$tt;

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/byazt/ga/x;->t()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/byazt/ga/x$tt;->ve:Lcom/byazt/ga/x$tt;

    .line 24
    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/byazt/ga/x;->yp()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/byazt/kk/sp;->isRunning()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/byazt/ga/x;->h()V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/byazt/ga/x$tt;->ve:Lcom/byazt/ga/x$tt;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    if-nez v0, :cond_3

    .line 48
    .line 49
    sget-object p1, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 52
    .line 53
    :cond_3
    :goto_0
    return p2
.end method

.method public sl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->cancel()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/byazt/ga/x;->c(Lcom/byazt/zk/uj;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iput-object v0, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/byazt/ga/x;->t:Lcom/byazt/pn/tt;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->x()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/byazt/ga/x;->invalidateSelf()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public sp()Lcom/byazt/ga/my;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ga/x;->yv:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/byazt/ga/my;->ve:Lcom/byazt/ga/my;

    return-object v0

    :cond_0
    sget-object v0, Lcom/byazt/ga/my;->tt:Lcom/byazt/ga/my;

    return-object v0
.end method

.method public sp(Ljava/lang/String;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/byazt/ga/x;->c:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/byazt/ga/x;->qp()Lcom/byazt/pn/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/pn/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sp(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/ga/x;->sp:Z

    return-void
.end method

.method public start()V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ga/x;->t()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ga/x;->u()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public t()V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/byazt/ga/x$6;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/byazt/ga/x$6;-><init>(Lcom/byazt/ga/x;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ga/x;->zb()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/byazt/ga/x;->or()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byazt/ga/x;->qy()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->sl()V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v0, Lcom/byazt/ga/x$tt;->tt:Lcom/byazt/ga/x$tt;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 50
    .line 51
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/byazt/ga/x;->or()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/byazt/ga/x;->nu()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x0

    .line 62
    cmpg-float v0, v0, v1

    .line 63
    .line 64
    if-gez v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/byazt/ga/x;->z()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/ga/x;->m()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :goto_1
    float-to-int v0, v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/byazt/ga/x;->ve(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->t()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    sget-object v0, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public tt()Lcom/byazt/ga/LottieAnimationView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/x;->aw:Lcom/byazt/ga/LottieAnimationView;

    return-object v0
.end method

.method public tt(F)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$11;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/x$11;-><init>(Lcom/byazt/ga/x;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0}, Lcom/byazt/ga/a;->a()F

    move-result v0

    iget-object v2, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    invoke-virtual {v2}, Lcom/byazt/ga/a;->sp()F

    move-result v2

    invoke-static {v0, v2, p1}, Lcom/byazt/kk/i;->c(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/byazt/kk/sp;->tt(F)V

    return-void
.end method

.method public tt(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$10;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/x$10;-><init>(Lcom/byazt/ga/x;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/byazt/kk/sp;->tt(F)V

    return-void
.end method

.method public tt(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/kk/c;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public tt(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/kk/c;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$12;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/x$12;-><init>(Lcom/byazt/ga/x;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/ga/a;->ve(Ljava/lang/String;)Lcom/byazt/nb/sp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget p1, v0, Lcom/byazt/nb/sp;->c:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/byazt/ga/x;->c(I)V

    return-void

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tt(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ga/x;->rh:Z

    return-void
.end method

.method public u()V
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->t()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public uj(F)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$5;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/x$5;-><init>(Lcom/byazt/ga/x;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    .line 14
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    iget-object v2, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    invoke-virtual {v2, p1}, Lcom/byazt/ga/a;->c(F)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/byazt/kk/sp;->c(F)V

    .line 16
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void
.end method

.method public uj(I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/kk/sp;->setRepeatMode(I)V

    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/x$2;-><init>(Lcom/byazt/ga/x;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/ga/a;->ve(Ljava/lang/String;)Lcom/byazt/nb/sp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget p1, v0, Lcom/byazt/nb/sp;->c:F

    float-to-int p1, p1

    .line 10
    iget v0, v0, Lcom/byazt/nb/sp;->tt:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/byazt/ga/x;->c(II)V

    return-void

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uj(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/ga/x;->gu:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/ga/x;->gu:Z

    .line 4
    iget-object v0, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/zk/uj;->c(Z)V

    :cond_1
    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ga/x;->my:Z

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public ve()Lcom/byazt/zk/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    return-object v0
.end method

.method public ve(F)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/kk/sp;->ve(F)V

    return-void
.end method

.method public ve(I)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$4;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/x$4;-><init>(Lcom/byazt/ga/x;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/byazt/kk/sp;->c(F)V

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    new-instance v1, Lcom/byazt/ga/x$13;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/x$13;-><init>(Lcom/byazt/ga/x;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/ga/a;->ve(Ljava/lang/String;)Lcom/byazt/nb/sp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget p1, v0, Lcom/byazt/nb/sp;->c:F

    iget v0, v0, Lcom/byazt/nb/sp;->tt:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/byazt/ga/x;->tt(I)V

    return-void

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ve(Z)V
    .locals 1

    .line 2
    iput-boolean p1, p0, Lcom/byazt/ga/x;->qy:Z

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/byazt/ga/a;->tt(Z)V

    :cond_0
    return-void
.end method

.method public x(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/kk/sp;->ve(Z)V

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ga/x;->yv:Z

    return v0
.end method

.method public yp()V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->gt:Lcom/byazt/zk/uj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ga/x;->da:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/byazt/ga/x$7;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/byazt/ga/x$7;-><init>(Lcom/byazt/ga/x;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ga/x;->zb()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/byazt/ga/x;->or()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byazt/ga/x;->qy()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->yp()V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v0, Lcom/byazt/ga/x$tt;->ve:Lcom/byazt/ga/x$tt;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 50
    .line 51
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/byazt/ga/x;->or()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/byazt/ga/x;->nu()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x0

    .line 62
    cmpg-float v0, v0, v1

    .line 63
    .line 64
    if-gez v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/byazt/ga/x;->z()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/ga/x;->m()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :goto_1
    float-to-int v0, v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/byazt/ga/x;->ve(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->t()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    sget-object v0, Lcom/byazt/ga/x$tt;->c:Lcom/byazt/ga/x$tt;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/byazt/ga/x;->i:Lcom/byazt/ga/x$tt;

    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public yv()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->m:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ga/x;->ve:Lcom/byazt/ga/gt;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ga/x;->uj:Lcom/byazt/ga/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ga/a;->z()Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public z()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->n:Lcom/byazt/kk/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kk/sp;->z()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public zm()Lcom/byazt/ga/gt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/x;->ve:Lcom/byazt/ga/gt;

    .line 2
    .line 3
    return-object v0
.end method

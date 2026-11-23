.class public Lcom/byazt/xd/tt;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x208,
        0xd
    }
.end annotation


# instance fields
.field public final a:[F

.field public final c:Landroid/graphics/drawable/Drawable;

.field public cu:F

.field public d:Landroid/graphics/LinearGradient;

.field public final da:Z

.field public eo:Landroid/graphics/LinearGradient;

.field public gr:F

.field public final gt:Landroid/graphics/Matrix;

.field public gu:Landroid/graphics/LinearGradient;

.field public h:Landroid/graphics/PorterDuffXfermode;

.field public final i:I

.field public final m:Landroid/graphics/RectF;

.field public md:Landroid/graphics/Paint;

.field public final my:Landroid/graphics/Path;

.field public final n:[I

.field public nb:Z

.field public final nu:Landroid/graphics/Path;

.field public or:Landroid/graphics/LinearGradient;

.field public p:Landroid/graphics/Paint;

.field public qp:Landroid/graphics/Bitmap;

.field public qy:Landroid/graphics/LinearGradient;

.field public final rh:Landroid/graphics/RectF;

.field public final rl:Landroid/graphics/Paint;

.field public final sl:F

.field public final sp:Z

.field public final t:F

.field public final tt:F

.field public final u:I

.field public final uj:Z

.field public final ve:[F

.field public final x:I

.field public final yp:[I

.field public yv:Z

.field public final z:[F

.field public zb:Landroid/graphics/LinearGradient;

.field public zm:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;[I[FF[FZIIZFFI[I[F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/xd/tt;->nb:Z

    .line 3
    iput-object p1, p0, Lcom/byazt/xd/tt;->c:Landroid/graphics/drawable/Drawable;

    .line 4
    iput p4, p0, Lcom/byazt/xd/tt;->tt:F

    .line 5
    iput-object p5, p0, Lcom/byazt/xd/tt;->ve:[F

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/byazt/xd/tt;->uj:Z

    .line 7
    iput-object p2, p0, Lcom/byazt/xd/tt;->n:[I

    .line 8
    iput-object p3, p0, Lcom/byazt/xd/tt;->a:[F

    .line 9
    iput-boolean p6, p0, Lcom/byazt/xd/tt;->sp:Z

    if-lez p7, :cond_1

    goto :goto_1

    :cond_1
    const/16 p7, 0x898

    .line 10
    :goto_1
    iput p7, p0, Lcom/byazt/xd/tt;->x:I

    .line 11
    iput p8, p0, Lcom/byazt/xd/tt;->i:I

    .line 12
    iput-boolean p9, p0, Lcom/byazt/xd/tt;->da:Z

    .line 13
    iput p10, p0, Lcom/byazt/xd/tt;->sl:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    invoke-static {p1, p11}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/byazt/xd/tt;->t:F

    const/16 p1, 0x32

    .line 15
    invoke-static {p12, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/byazt/xd/tt;->u:I

    .line 16
    iput-object p13, p0, Lcom/byazt/xd/tt;->yp:[I

    .line 17
    iput-object p14, p0, Lcom/byazt/xd/tt;->z:[F

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/byazt/xd/tt;->m:Landroid/graphics/RectF;

    .line 19
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/byazt/xd/tt;->nu:Landroid/graphics/Path;

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/byazt/xd/tt;->rh:Landroid/graphics/RectF;

    .line 21
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/byazt/xd/tt;->my:Landroid/graphics/Path;

    .line 22
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/byazt/xd/tt;->gt:Landroid/graphics/Matrix;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/byazt/xd/tt;->rl:Landroid/graphics/Paint;

    .line 24
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p9, :cond_2

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    .line 27
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/byazt/xd/tt;->md:Landroid/graphics/Paint;

    .line 29
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/byazt/xd/tt;->h:Landroid/graphics/PorterDuffXfermode;

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/byazt/xd/tt;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xd/tt;->gt:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/byazt/xd/tt;->rh:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    .line 3
    iget v9, v0, Landroid/graphics/RectF;->top:F

    .line 4
    iget v10, v0, Landroid/graphics/RectF;->right:F

    .line 5
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 6
    iget v7, p0, Lcom/byazt/xd/tt;->cu:F

    sub-float v1, v10, v8

    float-to-int v1, v1

    sub-float v2, v0, v9

    float-to-int v2, v2

    if-lez v1, :cond_5

    if-gtz v2, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-boolean v3, p0, Lcom/byazt/xd/tt;->sp:Z

    const/high16 v11, 0x437f0000    # 255.0f

    const/4 v12, 0x0

    if-nez v3, :cond_4

    .line 8
    iget-boolean v3, p0, Lcom/byazt/xd/tt;->nb:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/byazt/xd/tt;->qp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v3, v1, :cond_1

    iget-object v3, p0, Lcom/byazt/xd/tt;->qp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v3, v2, :cond_3

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/byazt/xd/tt;->qp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/xd/tt;->qp:Landroid/graphics/Bitmap;

    .line 13
    new-instance v13, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/byazt/xd/tt;->qp:Landroid/graphics/Bitmap;

    invoke-direct {v13, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-float v1, v8

    neg-float v2, v9

    .line 14
    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 16
    iget-object v1, p0, Lcom/byazt/xd/tt;->my:Landroid/graphics/Path;

    invoke-virtual {v13, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v6, 0x0

    move-object v1, v13

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v0

    .line 17
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-object v1, p0

    move-object v2, v13

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v0

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/byazt/xd/tt;->c(Landroid/graphics/Canvas;FFFFF)V

    .line 19
    iget-object v1, p0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/byazt/xd/tt;->t:F

    mul-float v2, v2, v11

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    iget-object v1, p0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/byazt/xd/tt;->h:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    iget-object v6, p0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    move-object v1, v13

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 22
    iget-object v0, p0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 23
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 24
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/byazt/xd/tt;->nb:Z

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/byazt/xd/tt;->qp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 27
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    iget-object v1, p0, Lcom/byazt/xd/tt;->my:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v6, 0x0

    move-object v1, p1

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v0

    .line 29
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-object v1, p0

    move-object v2, p1

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v0

    .line 30
    invoke-direct/range {v1 .. v7}, Lcom/byazt/xd/tt;->c(Landroid/graphics/Canvas;FFFFF)V

    .line 31
    iget-object v1, p0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/byazt/xd/tt;->t:F

    mul-float v2, v2, v11

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    iget-object v1, p0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/byazt/xd/tt;->h:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33
    iget-object v6, p0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 34
    iget-object v0, p0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_0
    return-void
.end method

.method private c(Landroid/graphics/Canvas;FFFFF)V
    .locals 8

    .line 37
    iget-object v0, p0, Lcom/byazt/xd/tt;->md:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/byazt/xd/tt;->d:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    add-float v6, p3, p6

    .line 38
    iget-object v7, p0, Lcom/byazt/xd/tt;->md:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 39
    iget-object v0, p0, Lcom/byazt/xd/tt;->md:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/byazt/xd/tt;->eo:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sub-float v4, p5, p6

    .line 40
    iget-object v7, p0, Lcom/byazt/xd/tt;->md:Landroid/graphics/Paint;

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 41
    iget-object v0, p0, Lcom/byazt/xd/tt;->md:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/byazt/xd/tt;->zb:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    add-float v5, p2, p6

    .line 42
    iget-object v7, p0, Lcom/byazt/xd/tt;->md:Landroid/graphics/Paint;

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 43
    iget-object p2, p0, Lcom/byazt/xd/tt;->md:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/byazt/xd/tt;->or:Landroid/graphics/LinearGradient;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sub-float v2, p4, p6

    .line 44
    iget-object v6, p0, Lcom/byazt/xd/tt;->md:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private n()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/byazt/xd/tt;->tt()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/xd/tt;->yv:Z

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [F

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput v2, v1, v0

    .line 12
    .line 13
    iget v2, p0, Lcom/byazt/xd/tt;->gr:F

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aput v2, v1, v3

    .line 17
    .line 18
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/byazt/xd/tt;->zm:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    iget v2, p0, Lcom/byazt/xd/tt;->x:I

    .line 25
    .line 26
    int-to-long v4, v2

    .line 27
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/xd/tt;->zm:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 33
    .line 34
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/byazt/xd/tt;->i:I

    .line 41
    .line 42
    const/4 v2, -0x1

    .line 43
    if-ne v1, v2, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/xd/tt;->zm:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/byazt/xd/tt;->zm:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    sub-int/2addr v1, v3

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/byazt/xd/tt;->zm:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/xd/tt;->zm:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    new-instance v1, Lcom/byazt/xd/tt$1;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/byazt/xd/tt$1;-><init>(Lcom/byazt/xd/tt;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/byazt/xd/tt;->zm:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/xd/tt;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xd/tt;->qy:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method private uj()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/xd/tt;->rh:Landroid/graphics/RectF;

    .line 4
    .line 5
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    iget v6, v1, Landroid/graphics/RectF;->top:F

    .line 8
    .line 9
    iget v12, v1, Landroid/graphics/RectF;->right:F

    .line 10
    .line 11
    iget v15, v1, Landroid/graphics/RectF;->bottom:F

    .line 12
    .line 13
    iget v2, v0, Lcom/byazt/xd/tt;->sl:F

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v4, v0, Lcom/byazt/xd/tt;->rh:Landroid/graphics/RectF;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/high16 v4, 0x40000000    # 2.0f

    .line 30
    .line 31
    div-float/2addr v1, v4

    .line 32
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/byazt/xd/tt;->cu:F

    .line 37
    .line 38
    iget v1, v0, Lcom/byazt/xd/tt;->u:I

    .line 39
    .line 40
    new-array v2, v1, [I

    .line 41
    .line 42
    new-array v1, v1, [F

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    iget v5, v0, Lcom/byazt/xd/tt;->u:I

    .line 46
    .line 47
    if-ge v4, v5, :cond_1

    .line 48
    .line 49
    int-to-float v7, v4

    .line 50
    add-int/lit8 v8, v5, -0x1

    .line 51
    .line 52
    int-to-float v8, v8

    .line 53
    div-float/2addr v7, v8

    .line 54
    aput v7, v1, v4

    .line 55
    .line 56
    add-int/lit8 v5, v5, -0x1

    .line 57
    .line 58
    const v8, 0xffffff

    .line 59
    .line 60
    .line 61
    if-ne v4, v5, :cond_0

    .line 62
    .line 63
    aput v8, v2, v4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    float-to-double v9, v7

    .line 67
    const-wide/high16 v13, -0x3ff0000000000000L    # -4.0

    .line 68
    .line 69
    mul-double v13, v13, v9

    .line 70
    .line 71
    mul-double v13, v13, v9

    .line 72
    .line 73
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    const-wide v13, 0x406fe00000000000L    # 255.0

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    mul-double v9, v9, v13

    .line 83
    .line 84
    double-to-int v5, v9

    .line 85
    shl-int/lit8 v5, v5, 0x18

    .line 86
    .line 87
    or-int/2addr v5, v8

    .line 88
    aput v5, v2, v4

    .line 89
    .line 90
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance v13, Landroid/graphics/LinearGradient;

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    iget v4, v0, Lcom/byazt/xd/tt;->cu:F

    .line 98
    .line 99
    add-float v8, v6, v4

    .line 100
    .line 101
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 102
    .line 103
    move-object v4, v13

    .line 104
    move-object v9, v2

    .line 105
    move-object v10, v1

    .line 106
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 107
    .line 108
    .line 109
    iput-object v13, v0, Lcom/byazt/xd/tt;->d:Landroid/graphics/LinearGradient;

    .line 110
    .line 111
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 112
    .line 113
    const/4 v14, 0x0

    .line 114
    const/16 v16, 0x0

    .line 115
    .line 116
    iget v5, v0, Lcom/byazt/xd/tt;->cu:F

    .line 117
    .line 118
    sub-float v17, v15, v5

    .line 119
    .line 120
    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 121
    .line 122
    move-object v13, v4

    .line 123
    move-object/from16 v18, v2

    .line 124
    .line 125
    move-object/from16 v19, v1

    .line 126
    .line 127
    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 128
    .line 129
    .line 130
    iput-object v4, v0, Lcom/byazt/xd/tt;->eo:Landroid/graphics/LinearGradient;

    .line 131
    .line 132
    new-instance v10, Landroid/graphics/LinearGradient;

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    iget v5, v0, Lcom/byazt/xd/tt;->cu:F

    .line 136
    .line 137
    add-float/2addr v5, v3

    .line 138
    const/4 v6, 0x0

    .line 139
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 140
    .line 141
    move-object v13, v2

    .line 142
    move-object v2, v10

    .line 143
    move-object v7, v13

    .line 144
    move-object v8, v1

    .line 145
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 146
    .line 147
    .line 148
    iput-object v10, v0, Lcom/byazt/xd/tt;->zb:Landroid/graphics/LinearGradient;

    .line 149
    .line 150
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 151
    .line 152
    const/4 v9, 0x0

    .line 153
    iget v3, v0, Lcom/byazt/xd/tt;->cu:F

    .line 154
    .line 155
    sub-float v10, v12, v3

    .line 156
    .line 157
    const/4 v11, 0x0

    .line 158
    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 159
    .line 160
    move-object v7, v2

    .line 161
    move v8, v12

    .line 162
    move-object v12, v13

    .line 163
    move-object v13, v1

    .line 164
    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 165
    .line 166
    .line 167
    iput-object v2, v0, Lcom/byazt/xd/tt;->or:Landroid/graphics/LinearGradient;

    .line 168
    .line 169
    iget-object v1, v0, Lcom/byazt/xd/tt;->p:Landroid/graphics/Paint;

    .line 170
    .line 171
    iget-object v2, v0, Lcom/byazt/xd/tt;->gu:Landroid/graphics/LinearGradient;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/xd/tt;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xd/tt;->gu:Landroid/graphics/LinearGradient;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/byazt/xd/tt;->sp:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/byazt/xd/tt;->yv:Z

    .line 47
    iget v0, p0, Lcom/byazt/xd/tt;->gr:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/byazt/xd/tt;->qy:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/xd/tt;->gu:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_2

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/byazt/xd/tt;->n()V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xd/tt;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/byazt/xd/tt;->da:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/xd/tt;->gu:Landroid/graphics/LinearGradient;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/byazt/xd/tt;->c(Landroid/graphics/Canvas;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/xd/tt;->uj:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/xd/tt;->qy:Landroid/graphics/LinearGradient;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/xd/tt;->nu:Landroid/graphics/Path;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/xd/tt;->rl:Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/xd/tt;->c:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/byazt/xd/tt;->tt:F

    .line 10
    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/byazt/xd/tt;->m:Landroid/graphics/RectF;

    .line 15
    .line 16
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    add-float/2addr v2, v0

    .line 20
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    add-float/2addr v3, v0

    .line 24
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    int-to-float v4, v4

    .line 27
    sub-float/2addr v4, v0

    .line 28
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    int-to-float v5, v5

    .line 31
    sub-float/2addr v5, v0

    .line 32
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/xd/tt;->nu:Landroid/graphics/Path;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/xd/tt;->ve:[F

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/xd/tt;->nu:Landroid/graphics/Path;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/byazt/xd/tt;->m:Landroid/graphics/RectF;

    .line 47
    .line 48
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 49
    .line 50
    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/byazt/xd/tt;->nu:Landroid/graphics/Path;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/byazt/xd/tt;->m:Landroid/graphics/RectF;

    .line 57
    .line 58
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v0, p0, Lcom/byazt/xd/tt;->rh:Landroid/graphics/RectF;

    .line 64
    .line 65
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    int-to-float v1, v1

    .line 68
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    int-to-float v2, v2

    .line 71
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 72
    .line 73
    int-to-float v3, v3

    .line 74
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 75
    .line 76
    int-to-float p1, p1

    .line 77
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/byazt/xd/tt;->my:Landroid/graphics/Path;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/byazt/xd/tt;->ve:[F

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/byazt/xd/tt;->my:Landroid/graphics/Path;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/byazt/xd/tt;->rh:Landroid/graphics/RectF;

    .line 92
    .line 93
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 94
    .line 95
    invoke-virtual {v0, v1, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/byazt/xd/tt;->my:Landroid/graphics/Path;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/byazt/xd/tt;->rh:Landroid/graphics/RectF;

    .line 102
    .line 103
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    iget-object p1, p0, Lcom/byazt/xd/tt;->m:Landroid/graphics/RectF;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput p1, p0, Lcom/byazt/xd/tt;->gr:F

    .line 115
    .line 116
    iget-boolean p1, p0, Lcom/byazt/xd/tt;->uj:Z

    .line 117
    .line 118
    if-eqz p1, :cond_2

    .line 119
    .line 120
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    const/4 v2, 0x0

    .line 124
    iget v3, p0, Lcom/byazt/xd/tt;->gr:F

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    iget-object v5, p0, Lcom/byazt/xd/tt;->n:[I

    .line 128
    .line 129
    iget-object v6, p0, Lcom/byazt/xd/tt;->a:[F

    .line 130
    .line 131
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 132
    .line 133
    move-object v0, p1

    .line 134
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/byazt/xd/tt;->qy:Landroid/graphics/LinearGradient;

    .line 138
    .line 139
    iget-object p1, p0, Lcom/byazt/xd/tt;->gt:Landroid/graphics/Matrix;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/byazt/xd/tt;->rl:Landroid/graphics/Paint;

    .line 145
    .line 146
    iget-object v0, p0, Lcom/byazt/xd/tt;->qy:Landroid/graphics/LinearGradient;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 149
    .line 150
    .line 151
    :cond_2
    iget-boolean p1, p0, Lcom/byazt/xd/tt;->da:Z

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    const/4 v2, 0x0

    .line 159
    iget v3, p0, Lcom/byazt/xd/tt;->gr:F

    .line 160
    .line 161
    const/4 v4, 0x0

    .line 162
    iget-object v5, p0, Lcom/byazt/xd/tt;->yp:[I

    .line 163
    .line 164
    iget-object v6, p0, Lcom/byazt/xd/tt;->z:[F

    .line 165
    .line 166
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 167
    .line 168
    move-object v0, p1

    .line 169
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 170
    .line 171
    .line 172
    iput-object p1, p0, Lcom/byazt/xd/tt;->gu:Landroid/graphics/LinearGradient;

    .line 173
    .line 174
    invoke-direct {p0}, Lcom/byazt/xd/tt;->uj()V

    .line 175
    .line 176
    .line 177
    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/byazt/xd/tt;->nb:Z

    .line 179
    .line 180
    :cond_3
    iget-boolean p1, p0, Lcom/byazt/xd/tt;->yv:Z

    .line 181
    .line 182
    if-eqz p1, :cond_4

    .line 183
    .line 184
    invoke-direct {p0}, Lcom/byazt/xd/tt;->n()V

    .line 185
    .line 186
    .line 187
    :cond_4
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xd/tt;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/xd/tt;->rl:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xd/tt;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tt()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/xd/tt;->yv:Z

    .line 3
    iget-object v0, p0, Lcom/byazt/xd/tt;->zm:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/xd/tt;->zm:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/xd/tt;->sp:Z

    return v0
.end method

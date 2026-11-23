.class public Lcom/sigmob/sdk/base/views/af;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:F

.field private i:Landroid/graphics/PointF;

.field private j:Landroid/graphics/Path;

.field private k:Landroid/graphics/Paint;

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:Landroid/graphics/PointF;

.field private r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/base/views/af;->e:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/base/views/af;->e:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/base/views/af;->e:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/af;->a:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sigmob/sdk/base/views/af;->l:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v6, v6, v0

    div-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v5, v5, v6

    mul-float v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/af;->b:Landroid/graphics/Paint;

    const-string v4, "#B7B7B7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/af;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->g:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x42b80000    # 92.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iget v4, p0, Lcom/sigmob/sdk/base/views/af;->l:I

    int-to-float v5, v4

    mul-float v5, v5, v3

    int-to-float v0, v0

    div-float/2addr v5, v0

    iput v5, p0, Lcom/sigmob/sdk/base/views/af;->r:F

    int-to-float v0, v4

    const v3, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v3

    iput v0, p0, Lcom/sigmob/sdk/base/views/af;->h:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/af;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/af;->d:Landroid/graphics/RectF;

    iget v0, p0, Lcom/sigmob/sdk/base/views/af;->l:I

    int-to-float v0, v0

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v3

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/sigmob/sdk/base/views/af;->i:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget v6, p0, Lcom/sigmob/sdk/base/views/af;->h:F

    add-float/2addr v0, v6

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/sigmob/sdk/base/views/af;->q:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/af;->j:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/af;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/af;->l:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/sigmob/sdk/base/views/af;->n:F

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/sigmob/sdk/base/views/af;->o:F

    iget v0, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    mul-float v0, v0, v5

    iput v0, p0, Lcom/sigmob/sdk/base/views/af;->p:F

    return-void
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/PointF;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "point"
        }
    .end annotation

    .line 3
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/af;->h:F

    float-to-double v2, v2

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/sigmob/sdk/base/views/af;->h:F

    add-float/2addr v1, v2

    iget v3, p2, Landroid/graphics/PointF;->x:F

    float-to-double v6, v3

    float-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v6, v2

    double-to-float v2, v6

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sigmob/sdk/base/views/af;->h:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/sigmob/sdk/base/views/af;->h:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/base/views/af$1;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/views/af$1;-><init>(Lcom/sigmob/sdk/base/views/af;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "absoluteZ"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->k:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/af;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/af;->e:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v0, v0, v3

    aput v0, v1, v2

    const/4 v0, 0x1

    mul-float p1, p1, v3

    aput p1, v1, v0

    const-string p1, "rotationX"

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/af;->k:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/sigmob/sdk/base/views/af;->e:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/af;->i:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/views/af;->a(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/af;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/af;->q:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/views/af;->a(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/af;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/af;->l:I

    int-to-float v1, v0

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/af;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/af;->o:F

    sub-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    int-to-float v0, v0

    iget v5, p0, Lcom/sigmob/sdk/base/views/af;->n:F

    sub-float/2addr v0, v5

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/af;->c:Landroid/graphics/RectF;

    iget v6, p0, Lcom/sigmob/sdk/base/views/af;->p:F

    add-float v7, v2, v6

    add-float/2addr v3, v2

    sub-float/2addr v3, v6

    add-float/2addr v5, v0

    iget v6, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    add-float/2addr v5, v6

    invoke-virtual {v1, v7, v0, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/af;->c:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sigmob/sdk/base/views/af;->p:F

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/af;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/sigmob/sdk/base/views/af;->e:F

    const v3, 0x3f7ae148    # 0.98f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    iget v1, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    iget v1, p0, Lcom/sigmob/sdk/base/views/af;->n:F

    mul-float v3, v3, v1

    iget v1, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    add-float/2addr v1, v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDraw: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-float/2addr v1, v0

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/af;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    sub-float v6, v3, v5

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_2

    sub-float v1, v3, v5

    :cond_2
    iget-object v6, p0, Lcom/sigmob/sdk/base/views/af;->d:Landroid/graphics/RectF;

    iget v7, p0, Lcom/sigmob/sdk/base/views/af;->p:F

    add-float/2addr v7, v2

    iget v8, p0, Lcom/sigmob/sdk/base/views/af;->o:F

    add-float/2addr v2, v8

    mul-float v5, v5, v4

    sub-float/2addr v2, v5

    invoke-virtual {v6, v7, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/af;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/af;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/sigmob/sdk/base/views/af;->r:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3, v2}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    mul-float v2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/sigmob/sdk/base/views/af;->o:F

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/sigmob/sdk/base/views/af;->f:F

    mul-float v2, v2, v3

    :goto_1
    iget v3, p0, Lcom/sigmob/sdk/base/views/af;->m:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float v6, v3, v4

    iget v3, p0, Lcom/sigmob/sdk/base/views/af;->n:F

    add-float/2addr v0, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float v7, v0, v3

    add-float v8, v6, v2

    add-float v9, v7, v1

    iget-object v10, p0, Lcom/sigmob/sdk/base/views/af;->g:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/sigmob/sdk/base/views/af;->l:I

    iput p1, p0, Lcom/sigmob/sdk/base/views/af;->m:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/af;->a()V

    return-void
.end method

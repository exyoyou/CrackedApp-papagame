.class public Lcom/sigmob/sdk/base/views/ac;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:F

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Path;

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/animation/ValueAnimator;

.field private r:Landroid/animation/ValueAnimator;

.field private title:Ljava/lang/String;


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

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sigmob/sdk/base/views/ac;->l:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->a()V

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

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sigmob/sdk/base/views/ac;->l:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->a()V

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

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sigmob/sdk/base/views/ac;->l:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->a()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/ac;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/base/views/ac;->l:F

    return p1
.end method

.method private a(IF)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "alpha"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/ac;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/sigmob/sdk/base/views/ac;->i:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 4
    const/high16 v0, -0x10000

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->h:Landroid/graphics/Path;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ac;->c:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/ac;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->d()V

    return-void
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/sigmob/sdk/base/views/ac;->k:I

    neg-int v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/ac;->m:I

    iget v2, p0, Lcom/sigmob/sdk/base/views/ac;->n:I

    add-int/2addr v1, v2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sigmob/sdk/base/views/ac$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/ac$1;-><init>(Lcom/sigmob/sdk/base/views/ac;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->q:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->q:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/base/views/ac;->r:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/sigmob/sdk/base/views/ac$2;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/base/views/ac$2;-><init>(Lcom/sigmob/sdk/base/views/ac;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ac;->r:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ac;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ac;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data
.end method

.method private c()V
    .locals 9

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->g:Landroid/graphics/Paint;

    iget v0, p0, Lcom/sigmob/sdk/base/views/ac;->n:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/ac;->j:I

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ac;->k:I

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    iget v1, p0, Lcom/sigmob/sdk/base/views/ac;->j:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sigmob/sdk/base/views/ac;->k:I

    int-to-float v4, v1

    const/4 v5, 0x0

    const/4 v1, -0x1

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v1, v6}, Lcom/sigmob/sdk/base/views/ac;->a(IF)I

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {p0, v1, v8}, Lcom/sigmob/sdk/base/views/ac;->a(IF)I

    move-result v8

    invoke-direct {p0, v1, v6}, Lcom/sigmob/sdk/base/views/ac;->a(IF)I

    move-result v1

    filled-new-array {v7, v8, v1}, [I

    move-result-object v6

    const/4 v1, 0x3

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ac;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ac;->k:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/ac;->i:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ac;->k:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/ac;->i:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ac;->k:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/ac;->i:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/ac;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ac;->i:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sigmob/sdk/base/views/ac;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "desc"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ac;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/ac;->d:Ljava/lang/String;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    const/16 v4, 0xcc

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    iget v4, v0, Lcom/sigmob/sdk/base/views/ac;->c:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/graphics/RectF;

    iget v4, v0, Lcom/sigmob/sdk/base/views/ac;->c:F

    iget v5, v0, Lcom/sigmob/sdk/base/views/ac;->m:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v4, v6

    sub-float/2addr v5, v7

    iget v7, v0, Lcom/sigmob/sdk/base/views/ac;->n:I

    int-to-float v7, v7

    mul-float v8, v4, v6

    sub-float/2addr v7, v8

    invoke-virtual {v2, v4, v4, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->h:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/graphics/RectF;

    iget v5, v0, Lcom/sigmob/sdk/base/views/ac;->p:I

    int-to-float v7, v5

    int-to-float v5, v5

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v7, v5, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->h:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    const/16 v5, 0x4c

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->h:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    iget-object v8, v0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->h:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v2, v0, Lcom/sigmob/sdk/base/views/ac;->n:I

    int-to-float v5, v2

    const v7, 0x3e99999a    # 0.3f

    mul-float v5, v5, v7

    iget v8, v0, Lcom/sigmob/sdk/base/views/ac;->l:F

    mul-float v5, v5, v8

    iget v8, v0, Lcom/sigmob/sdk/base/views/ac;->m:I

    int-to-float v8, v8

    int-to-float v2, v2

    mul-float v2, v2, v7

    mul-float v2, v2, v6

    sub-float/2addr v8, v2

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, v0, Lcom/sigmob/sdk/base/views/ac;->n:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v7, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    iget v4, v0, Lcom/sigmob/sdk/base/views/ac;->l:F

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v4, v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v10, v4, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    const-string v4, "GO"

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v9, 0x3fc00000    # 1.5f

    div-float/2addr v2, v9

    sub-float/2addr v8, v2

    iget v2, v0, Lcom/sigmob/sdk/base/views/ac;->n:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v11, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v12, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v11, v12

    div-float/2addr v11, v6

    add-float/2addr v2, v11

    iget-object v11, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v11

    iget-object v11, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8, v2, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const v11, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v11

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    iget-object v12, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    add-float/2addr v12, v8

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v2, v13

    add-float/2addr v12, v13

    iget v14, v0, Lcom/sigmob/sdk/base/views/ac;->n:I

    int-to-float v14, v14

    div-float/2addr v14, v6

    div-float v15, v2, v6

    sub-float/2addr v14, v15

    invoke-virtual {v11, v12, v14}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v12, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    add-float/2addr v12, v8

    add-float/2addr v12, v2

    iget v2, v0, Lcom/sigmob/sdk/base/views/ac;->n:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v11, v12, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v8, v2

    add-float/2addr v8, v13

    iget v2, v0, Lcom/sigmob/sdk/base/views/ac;->n:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v2, v15

    invoke-virtual {v11, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "..."

    const/4 v8, 0x0

    const/4 v11, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v10, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->title:Ljava/lang/String;

    iget-object v12, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v12, v13

    mul-float v12, v12, v9

    const/4 v13, 0x5

    :goto_0
    iget-object v14, v0, Lcom/sigmob/sdk/base/views/ac;->title:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_1

    iget-object v14, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/sigmob/sdk/base/views/ac;->title:Ljava/lang/String;

    invoke-virtual {v14, v15, v8, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v14

    add-float/2addr v14, v12

    iget-object v15, v0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/graphics/RectF;

    iget v4, v15, Landroid/graphics/RectF;->right:F

    iget v15, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v15

    sub-float/2addr v4, v12

    sub-float/2addr v4, v5

    cmpl-float v4, v14, v4

    if-lez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/ac;->title:Ljava/lang/String;

    sub-int/2addr v13, v10

    invoke-virtual {v4, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v4, v0, Lcom/sigmob/sdk/base/views/ac;->n:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v14, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v13, v14

    sub-float/2addr v4, v13

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v13

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v4, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v10, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    cmpl-float v2, v12, v11

    if-lez v2, :cond_3

    move v2, v12

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v4

    mul-float v2, v2, v9

    :goto_3
    iget-object v4, v0, Lcom/sigmob/sdk/base/views/ac;->d:Ljava/lang/String;

    const/4 v7, 0x5

    :goto_4
    iget-object v9, v0, Lcom/sigmob/sdk/base/views/ac;->d:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_5

    iget-object v9, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/sigmob/sdk/base/views/ac;->d:Ljava/lang/String;

    invoke-virtual {v9, v11, v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    add-float/2addr v9, v12

    iget-object v11, v0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/graphics/RectF;

    iget v13, v11, Landroid/graphics/RectF;->right:F

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v11

    sub-float/2addr v13, v12

    sub-float/2addr v13, v5

    cmpl-float v9, v9, v13

    if-lez v9, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/sigmob/sdk/base/views/ac;->d:Ljava/lang/String;

    sub-int/2addr v7, v10

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget v3, v0, Lcom/sigmob/sdk/base/views/ac;->n:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v5, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v6, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v6

    add-float/2addr v3, v5

    iget-object v5, v0, Lcom/sigmob/sdk/base/views/ac;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->h:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ac;->f:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/sigmob/sdk/base/views/ac;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

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

    iput p1, p0, Lcom/sigmob/sdk/base/views/ac;->m:I

    int-to-float p3, p2

    const p4, 0x3f4ccccd    # 0.8f

    mul-float p3, p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/sigmob/sdk/base/views/ac;->n:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sigmob/sdk/base/views/ac;->o:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sigmob/sdk/base/views/ac;->p:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->c()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->b()V

    return-void
.end method

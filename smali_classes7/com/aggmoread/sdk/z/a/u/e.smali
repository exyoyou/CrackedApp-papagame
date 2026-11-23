.class public Lcom/aggmoread/sdk/z/a/u/e;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/LinearGradient;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Path;

.field private k:I

.field private l:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aggmoread/sdk/z/a/u/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aggmoread/sdk/z/a/u/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x5a

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/e;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, p3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result p1

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/e;->d:I

    const-string p1, "#88000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/aggmoread/sdk/z/a/u/e;->e:I

    const-string p2, "#ffffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/e;->f:I

    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/e;->i:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/e;->j:Landroid/graphics/Path;

    iput p2, p0, Lcom/aggmoread/sdk/z/a/u/e;->k:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/e;->g:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/e;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/e;->l:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->l:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v2

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->l:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/aggmoread/sdk/z/a/u/e$a;

    invoke-direct {v2, p0, v1}, Lcom/aggmoread/sdk/z/a/u/e$a;-><init>(Lcom/aggmoread/sdk/z/a/u/e;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/aggmoread/sdk/z/a/u/e$b;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/u/e$b;-><init>(Lcom/aggmoread/sdk/z/a/u/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->l:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->l:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->l:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/e;->a()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/e;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->k:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->i:Landroid/graphics/Rect;

    iget v5, p0, Lcom/aggmoread/sdk/z/a/u/e;->a:I

    iget v6, p0, Lcom/aggmoread/sdk/z/a/u/e;->b:I

    iget v7, p0, Lcom/aggmoread/sdk/z/a/u/e;->c:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/e;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->j:Landroid/graphics/Path;

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/e;->b:I

    iget v5, p0, Lcom/aggmoread/sdk/z/a/u/e;->c:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->j:Landroid/graphics/Path;

    iget v2, p0, Lcom/aggmoread/sdk/z/a/u/e;->a:I

    shr-int/lit8 v3, v2, 0x1

    int-to-float v3, v3

    iget v5, p0, Lcom/aggmoread/sdk/z/a/u/e;->b:I

    int-to-float v6, v5

    int-to-float v2, v2

    iget v7, p0, Lcom/aggmoread/sdk/z/a/u/e;->c:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v0, v3, v6, v2, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->j:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/e;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    :goto_0
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/aggmoread/sdk/z/a/u/e;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/e;->j:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->i:Landroid/graphics/Rect;

    iget v5, p0, Lcom/aggmoread/sdk/z/a/u/e;->c:I

    iget v6, p0, Lcom/aggmoread/sdk/z/a/u/e;->a:I

    iget v7, p0, Lcom/aggmoread/sdk/z/a/u/e;->b:I

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/e;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->j:Landroid/graphics/Path;

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/e;->c:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->j:Landroid/graphics/Path;

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/e;->a:I

    shr-int/lit8 v5, v3, 0x1

    int-to-float v5, v5

    int-to-float v3, v3

    iget v6, p0, Lcom/aggmoread/sdk/z/a/u/e;->c:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v2, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->j:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/e;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/e;->a:I

    :cond_0
    if-ne p2, v2, :cond_1

    iput v1, p0, Lcom/aggmoread/sdk/z/a/u/e;->b:I

    :cond_1
    iget p1, p0, Lcom/aggmoread/sdk/z/a/u/e;->a:I

    iget p2, p0, Lcom/aggmoread/sdk/z/a/u/e;->b:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float v3, p2

    iget v5, p0, Lcom/aggmoread/sdk/z/a/u/e;->e:I

    iget v6, p0, Lcom/aggmoread/sdk/z/a/u/e;->f:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/e;->h:Landroid/graphics/LinearGradient;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/u/e;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

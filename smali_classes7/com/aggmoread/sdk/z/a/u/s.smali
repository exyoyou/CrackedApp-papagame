.class public Lcom/aggmoread/sdk/z/a/u/s;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/RectF;

.field private e:F

.field private f:Z

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/s;->h:Z

    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/s;->a:F

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float p2, p2, p1

    const v0, 0x3d888889

    mul-float v0, v0, p1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/s;->b:F

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    sub-float v0, p1, p2

    add-float/2addr p1, p2

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0, v0, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/u/s;->d:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a(IIIIF)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/s;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/aggmoread/sdk/z/a/u/s;->g:J

    sub-long p3, p1, p3

    const-wide/16 v0, 0x28

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    return-void

    :cond_1
    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p4, p5, p3

    if-ltz p4, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, p0, Lcom/aggmoread/sdk/z/a/u/s;->h:Z

    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/s;->g:J

    if-eqz p4, :cond_3

    sub-float/2addr p5, p3

    :cond_3
    const/high16 p1, 0x42700000    # 60.0f

    mul-float p5, p5, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p5, p5, p1

    iget p1, p0, Lcom/aggmoread/sdk/z/a/u/s;->e:F

    sub-float/2addr p1, p5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-gez p1, :cond_4

    iget-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/s;->h:Z

    if-eqz p1, :cond_5

    :cond_4
    iput p5, p0, Lcom/aggmoread/sdk/z/a/u/s;->e:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public a(IIIIJ)V
    .locals 0

    .line 2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/s;->f:Z

    const/high16 p1, 0x42700000    # 60.0f

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/s;->e:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/s;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v6, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object v2, p1

    move v5, v6

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/aggmoread/sdk/z/a/u/s;->b:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    const v2, 0x3fffffff    # 1.9999999f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/u/s;->d:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    const/high16 v6, -0x3cea0000    # -150.0f

    const/high16 v7, 0x42f00000    # 120.0f

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/aggmoread/sdk/z/a/u/s;->b:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->h:Z

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/s;->d:Landroid/graphics/RectF;

    iget v5, p0, Lcom/aggmoread/sdk/z/a/u/s;->e:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    sub-float v4, v1, v5

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/u/s;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/s;->e:F

    const/high16 v2, 0x42700000    # 60.0f

    add-float v11, v1, v2

    iget-object v13, p0, Lcom/aggmoread/sdk/z/a/u/s;->c:Landroid/graphics/Paint;

    const/high16 v10, -0x3cea0000    # -150.0f

    const/4 v12, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

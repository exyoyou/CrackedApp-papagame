.class public Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final LAND_DIRECTION:I = 0x0

.field public static final PORTRAIT_DIRECTION:I = 0x1


# instance fields
.field private mAlignPaint:Landroid/graphics/Paint;

.field private mDirection:I

.field private mLandY:I

.field private mPortraitX:I

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mAlignPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mAlignPaint:Landroid/graphics/Paint;

    const v0, 0xa8ffe4

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mAlignPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mAlignPaint:Landroid/graphics/Paint;

    const/16 v0, 0x99

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mAlignPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 9
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mAlignPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mScreenWidth:I

    .line 11
    iput p3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mScreenHeight:I

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method private drawLandLine(Landroid/graphics/Canvas;I)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    int-to-float v4, p2

    .line 3
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mScreenWidth:I

    .line 4
    .line 5
    int-to-float v3, p2

    .line 6
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mAlignPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    move v2, v4

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private drawPortraitLine(Landroid/graphics/Canvas;I)V
    .locals 6

    .line 1
    int-to-float v3, p2

    .line 2
    const/4 v2, 0x0

    .line 3
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mScreenHeight:I

    .line 4
    .line 5
    int-to-float v4, p2

    .line 6
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mAlignPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    move v1, v3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mDirection:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mLandY:I

    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->drawLandLine(Landroid/graphics/Canvas;I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mPortraitX:I

    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->drawPortraitLine(Landroid/graphics/Canvas;I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mDirection:I

    .line 2
    .line 3
    return-void
.end method

.method public setLandY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mLandY:I

    .line 2
    .line 3
    return-void
.end method

.method public setPortraitX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->mPortraitX:I

    .line 2
    .line 3
    return-void
.end method

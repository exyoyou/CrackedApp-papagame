.class public Lcom/kongzue/dialogx/util/views/RoundView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private b:F

.field private c:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kongzue/dialogx/util/views/RoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/kongzue/dialogx/util/views/RoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/kongzue/dialogx/util/views/RoundView;->b:F

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/RoundView;->c:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 p1, 0x42480000    # 50.0f

    .line 7
    iput p1, p0, Lcom/kongzue/dialogx/util/views/RoundView;->b:F

    return-void
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Path;
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/RoundView;->getRadius()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-instance v2, Landroid/graphics/RectF;

    .line 11
    .line 12
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    int-to-float v3, v3

    .line 15
    const/4 v4, 0x0

    .line 16
    add-float/2addr v3, v4

    .line 17
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    int-to-float v5, v5

    .line 20
    add-float/2addr v5, v4

    .line 21
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    int-to-float v6, v6

    .line 24
    sub-float/2addr v6, v4

    .line 25
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    int-to-float p1, p1

    .line 28
    sub-float/2addr p1, v4

    .line 29
    invoke-direct {v2, v3, v5, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1, v1, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/RoundView;->a(Landroid/graphics/Rect;)Landroid/graphics/Path;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/RoundView;->c:Landroid/graphics/Path;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/RoundView;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public setRadius(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/RoundView;->b:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/kongzue/dialogx/util/views/RoundView;->b:F

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

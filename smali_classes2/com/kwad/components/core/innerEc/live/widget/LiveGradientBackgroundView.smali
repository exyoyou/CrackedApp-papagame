.class public Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final ZN:[F


# instance fields
.field private ZO:Landroid/graphics/Path;

.field private ZP:Landroid/graphics/LinearGradient;

.field private ZQ:[I

.field private ZR:[F

.field private ZS:Landroid/graphics/Paint;

.field private ZU:F

.field private ZV:Landroid/graphics/LinearGradient;

.field private ZW:[I

.field private ZX:[F

.field private ZY:F

.field private ZZ:Lcom/kwad/sdk/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/g/b<",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZN:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZU:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 5
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZY:F

    .line 6
    new-instance p1, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView$1;

    invoke-direct {p1, p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView$1;-><init>(Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;)V

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZZ:Lcom/kwad/sdk/g/b;

    .line 7
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZS:Landroid/graphics/Paint;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZS:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    const v0, 0x665200fd

    .line 27
    .line 28
    .line 29
    const v1, 0x333c00fd

    .line 30
    .line 31
    .line 32
    filled-new-array {v0, v1}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZQ:[I

    .line 37
    .line 38
    sget-object v0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZN:[F

    .line 39
    .line 40
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZR:[F

    .line 41
    .line 42
    return-void
.end method

.method private te()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZO:Landroid/graphics/Path;

    .line 3
    .line 4
    const-wide/16 v0, 0x14

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private tf()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v0, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v0, v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v1, v2

    .line 29
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZO:Landroid/graphics/Path;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Landroid/graphics/RectF;

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x0

    .line 36
    .line 37
    int-to-float v0, v0

    .line 38
    add-int/lit8 v1, v1, 0x0

    .line 39
    .line 40
    int-to-float v1, v1

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Landroid/graphics/Path;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZO:Landroid/graphics/Path;

    .line 51
    .line 52
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZY:F

    .line 53
    .line 54
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZZ:Lcom/kwad/sdk/g/b;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/kwad/sdk/g/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/graphics/RectF;

    .line 66
    .line 67
    new-instance v9, Landroid/graphics/LinearGradient;

    .line 68
    .line 69
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 70
    .line 71
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 72
    .line 73
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 74
    .line 75
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 76
    .line 77
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZQ:[I

    .line 78
    .line 79
    iget-object v7, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZR:[F

    .line 80
    .line 81
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 82
    .line 83
    move-object v1, v9

    .line 84
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 85
    .line 86
    .line 87
    iput-object v9, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZP:Landroid/graphics/LinearGradient;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZW:[I

    .line 90
    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZX:[F

    .line 94
    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 98
    .line 99
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 100
    .line 101
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 102
    .line 103
    iget v5, v0, Landroid/graphics/RectF;->right:F

    .line 104
    .line 105
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 106
    .line 107
    iget-object v7, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZW:[I

    .line 108
    .line 109
    iget-object v8, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZX:[F

    .line 110
    .line 111
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 112
    .line 113
    move-object v2, v1

    .line 114
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZV:Landroid/graphics/LinearGradient;

    .line 118
    .line 119
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZV:Landroid/graphics/LinearGradient;

    .line 122
    .line 123
    :cond_1
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
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZO:Landroid/graphics/Path;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->tf()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZP:Landroid/graphics/LinearGradient;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZO:Landroid/graphics/Path;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZO:Landroid/graphics/Path;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZV:Landroid/graphics/LinearGradient;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZS:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZS:Landroid/graphics/Paint;

    .line 50
    .line 51
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZS:Landroid/graphics/Paint;

    .line 57
    .line 58
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZU:F

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZO:Landroid/graphics/Path;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZS:Landroid/graphics/Paint;

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->te()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setBackgroundCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZY:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->te()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZU:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->te()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGradientRectFMapper(Lcom/kwad/sdk/g/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/g/b<",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->ZZ:Lcom/kwad/sdk/g/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveGradientBackgroundView;->te()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

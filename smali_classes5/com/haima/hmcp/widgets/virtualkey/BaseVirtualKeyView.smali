.class public abstract Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final DEFAULT_KEY_HEIGHT:I

.field protected final DEFAULT_KEY_WIDTH:I

.field protected buttonPaint:Landroid/graphics/Paint;

.field protected context:Landroid/content/Context;

.field protected surfaceHeight:F

.field protected surfaceWidth:F

.field protected textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x36

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->DEFAULT_KEY_WIDTH:I

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->DEFAULT_KEY_HEIGHT:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->context:Landroid/content/Context;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->buttonPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->buttonPaint:Landroid/graphics/Paint;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->buttonPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    const-string v2, "#3B4A59"

    .line 33
    .line 34
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->buttonPaint:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->buttonPaint:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    const/4 v2, -0x1

    .line 59
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v0, 0x2

    .line 71
    const/high16 v2, 0x41a00000    # 20.0f

    .line 72
    .line 73
    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 83
    .line 84
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 107
    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public abstract drawVirtualKey(Landroid/graphics/Canvas;Lcom/haima/hmcp/beans/PointCoord;FF)V
.end method

.method public setSurfaceSize(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->surfaceWidth:F

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->surfaceHeight:F

    .line 4
    .line 5
    return-void
.end method

.method protected abstract setupPaint()V
.end method

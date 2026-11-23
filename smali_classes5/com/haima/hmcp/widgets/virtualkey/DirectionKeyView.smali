.class public Lcom/haima/hmcp/widgets/virtualkey/DirectionKeyView;
.super Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;
.source "SourceFile"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget v0, Lcom/haima/hmcp/R$mipmap;->haima_orientation_key_bg:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/haima/hmcp/widgets/virtualkey/DirectionKeyView;->background:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    return-void
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    float-to-int p1, p1

    .line 19
    return p1
.end method


# virtual methods
.method public drawVirtualKey(Landroid/graphics/Canvas;Lcom/haima/hmcp/beans/PointCoord;FF)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/virtualkey/DirectionKeyView;->setupPaint()V

    .line 2
    .line 3
    .line 4
    iget v0, p2, Lcom/haima/hmcp/beans/PointCoord;->w:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p2, Lcom/haima/hmcp/beans/PointCoord;->h:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->context:Landroid/content/Context;

    .line 13
    .line 14
    const/high16 v1, 0x430a0000    # 138.0f

    .line 15
    .line 16
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/widgets/virtualkey/DirectionKeyView;->dp2px(Landroid/content/Context;F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p2, Lcom/haima/hmcp/beans/PointCoord;->w:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/widgets/virtualkey/DirectionKeyView;->dp2px(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p2, Lcom/haima/hmcp/beans/PointCoord;->h:I

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/DirectionKeyView;->background:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget v1, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 35
    .line 36
    iget v2, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->surfaceWidth:F

    .line 37
    .line 38
    mul-float v3, v1, v2

    .line 39
    .line 40
    mul-float v3, v3, p3

    .line 41
    .line 42
    iget v4, p2, Lcom/haima/hmcp/beans/PointCoord;->w:I

    .line 43
    .line 44
    int-to-float v5, v4

    .line 45
    mul-float v5, v5, p3

    .line 46
    .line 47
    const/high16 v6, 0x40000000    # 2.0f

    .line 48
    .line 49
    div-float/2addr v5, v6

    .line 50
    sub-float/2addr v3, v5

    .line 51
    float-to-int v3, v3

    .line 52
    iget v5, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 53
    .line 54
    iget v7, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->surfaceHeight:F

    .line 55
    .line 56
    mul-float v8, v5, v7

    .line 57
    .line 58
    mul-float v8, v8, p4

    .line 59
    .line 60
    iget p2, p2, Lcom/haima/hmcp/beans/PointCoord;->h:I

    .line 61
    .line 62
    int-to-float v9, p2

    .line 63
    mul-float v9, v9, p4

    .line 64
    .line 65
    div-float/2addr v9, v6

    .line 66
    sub-float/2addr v8, v9

    .line 67
    float-to-int v8, v8

    .line 68
    mul-float v1, v1, v2

    .line 69
    .line 70
    mul-float v1, v1, p3

    .line 71
    .line 72
    int-to-float v2, v4

    .line 73
    mul-float v2, v2, p3

    .line 74
    .line 75
    div-float/2addr v2, v6

    .line 76
    add-float/2addr v1, v2

    .line 77
    float-to-int p3, v1

    .line 78
    mul-float v5, v5, v7

    .line 79
    .line 80
    mul-float v5, v5, p4

    .line 81
    .line 82
    int-to-float p2, p2

    .line 83
    mul-float p2, p2, p4

    .line 84
    .line 85
    div-float/2addr p2, v6

    .line 86
    add-float/2addr v5, p2

    .line 87
    float-to-int p2, v5

    .line 88
    invoke-virtual {v0, v3, v8, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/haima/hmcp/widgets/virtualkey/DirectionKeyView;->background:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method protected setupPaint()V
    .locals 0

    return-void
.end method

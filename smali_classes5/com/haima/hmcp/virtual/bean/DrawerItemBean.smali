.class public Lcom/haima/hmcp/virtual/bean/DrawerItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ANIM_DURATION_MOVE:J = 0x190L

.field protected static final ANIM_DURATION_ROTATE:J = 0x190L

.field protected static final MAX_ANGLE:F = 4.5f

.field private static final TAG:Ljava/lang/String; = "DrawerItemBean"


# instance fields
.field protected final ROCKER_CENTER_BITMAP_SCALE:I

.field protected centerIconMatrix:Landroid/graphics/Matrix;

.field public centerX:I

.field public centerY:I

.field protected currentAngle:F

.field protected currentX:F

.field protected currentY:F

.field public endOffset:F

.field public height:I

.field public itemCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field public itemCurrentBitmap:Landroid/graphics/Bitmap;

.field public itemDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field public itemOffset:F

.field public itemUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field protected mCanvas:Landroid/graphics/Canvas;

.field public mRawTextPaint:Landroid/graphics/Paint;

.field public mTextPaint:Landroid/graphics/Paint;

.field protected matrix:Landroid/graphics/Matrix;

.field protected moveAnim:Landroid/animation/ValueAnimator;

.field public name:Ljava/lang/String;

.field public needShowRawKey:Z

.field protected final radius:F

.field protected random:Ljava/util/Random;

.field public rawName:Ljava/lang/String;

.field public relativeOffset:F

.field public rockerCenterTextPaint:Landroid/graphics/Paint;

.field protected rotateAnim:Landroid/animation/ValueAnimator;

.field public source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

.field public startOffset:F

.field public textShowRawOffsetY:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 10
    .line 11
    new-instance v0, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 17
    .line 18
    new-instance v0, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemOffset:F

    .line 27
    .line 28
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->startOffset:F

    .line 29
    .line 30
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->endOffset:F

    .line 31
    .line 32
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->relativeOffset:F

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    iput v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->ROCKER_CENTER_BITMAP_SCALE:I

    .line 36
    .line 37
    new-instance v1, Landroid/graphics/Matrix;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->matrix:Landroid/graphics/Matrix;

    .line 43
    .line 44
    new-instance v1, Landroid/graphics/Matrix;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerIconMatrix:Landroid/graphics/Matrix;

    .line 50
    .line 51
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentAngle:F

    .line 52
    .line 53
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentX:F

    .line 54
    .line 55
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentY:F

    .line 56
    .line 57
    const/high16 v0, 0x40400000    # 3.0f

    .line 58
    .line 59
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->radius:F

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 67
    .line 68
    const/4 v1, -0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 79
    .line 80
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mRawTextPaint:Landroid/graphics/Paint;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mRawTextPaint:Landroid/graphics/Paint;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mRawTextPaint:Landroid/graphics/Paint;

    .line 101
    .line 102
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->lambda$startShake$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->lambda$startShake$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private checkTextSize(Ljava/lang/String;FLandroid/graphics/Paint;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->needTextScale(Ljava/lang/String;FLandroid/graphics/Paint;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->calculateTextSize(Ljava/lang/String;FLandroid/graphics/Paint;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private drawTextWithAlpha(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-nez p5, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p5}, Landroid/graphics/Paint;->getAlpha()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v1, v0

    .line 13
    mul-float v1, v1, p6

    .line 14
    .line 15
    float-to-int v1, v1

    .line 16
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 28
    .line 29
    const/4 p4, 0x2

    .line 30
    new-array p4, p4, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 p5, 0x0

    .line 33
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object p6

    .line 37
    aput-object p6, p4, p5

    .line 38
    .line 39
    const/4 p5, 0x1

    .line 40
    aput-object p2, p4, p5

    .line 41
    .line 42
    const-string p2, "Drawing text with alpha: %.2f, text: %s"

    .line 43
    .line 44
    invoke-static {p3, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$startShake$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentAngle:F

    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$startShake$1(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    float-to-double v2, p1

    .line 17
    mul-double v2, v2, v0

    .line 18
    .line 19
    double-to-float p1, v2

    .line 20
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 24
    .line 25
    int-to-float v1, v1

    .line 26
    const/high16 v2, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v1, v2

    .line 29
    add-float/2addr v0, v1

    .line 30
    float-to-double v3, p1

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    double-to-float p1, v5

    .line 36
    const/high16 v1, 0x40400000    # 3.0f

    .line 37
    .line 38
    mul-float p1, p1, v1

    .line 39
    .line 40
    add-float/2addr v0, p1

    .line 41
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentX:F

    .line 42
    .line 43
    iget p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->y:I

    .line 44
    .line 45
    int-to-float p1, p1

    .line 46
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    div-float/2addr v0, v2

    .line 50
    add-float/2addr p1, v0

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    double-to-float v0, v2

    .line 56
    mul-float v0, v0, v1

    .line 57
    .line 58
    add-float/2addr p1, v0

    .line 59
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentY:F

    .line 60
    .line 61
    return-void
.end method

.method private needTextScale(Ljava/lang/String;FLandroid/graphics/Paint;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    cmpl-float p1, p1, p2

    .line 16
    .line 17
    if-lez p1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public calcName()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->name:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "+"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x1

    .line 54
    if-lez v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    sub-int/2addr v1, v2

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rawName:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->name:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->needShowRawKey:Z

    .line 84
    .line 85
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rawName:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->name:Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-le v0, v2, :cond_3

    .line 109
    .line 110
    iput-boolean v2, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->needShowRawKey:Z

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-ne v0, v2, :cond_4

    .line 132
    .line 133
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->name:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_4

    .line 156
    .line 157
    iput-boolean v2, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->needShowRawKey:Z

    .line 158
    .line 159
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v1, "needShowDraw="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->needShowRawKey:Z

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ";"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v1, "DrawerItemBean"

    .line 193
    .line 194
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method protected calculateTextSize(Ljava/lang/String;FLandroid/graphics/Paint;)F
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    cmpl-float v1, v1, p2

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    div-float v1, p2, v0

    .line 14
    .line 15
    mul-float v0, v0, v1

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    cmpl-float v1, p1, p2

    .line 25
    .line 26
    if-lez v1, :cond_0

    .line 27
    .line 28
    div-float/2addr p2, p1

    .line 29
    mul-float v0, v0, p2

    .line 30
    .line 31
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return v0
.end method

.method public drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Paint;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-nez p5, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    int-to-float v0, p3

    .line 9
    int-to-float v1, p4

    .line 10
    invoke-virtual {p1, p2, v0, v1, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget v2, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 30
    .line 31
    sub-int/2addr v2, v0

    .line 32
    const/4 v3, 0x2

    .line 33
    div-int/2addr v2, v3

    .line 34
    add-int/2addr p3, v2

    .line 35
    iget v2, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 36
    .line 37
    sub-int/2addr v2, v1

    .line 38
    div-int/2addr v2, v3

    .line 39
    add-int/2addr p4, v2

    .line 40
    int-to-float v2, p3

    .line 41
    int-to-float v4, p4

    .line 42
    invoke-virtual {p1, p2, v2, v4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 48
    .line 49
    const/4 p5, 0x6

    .line 50
    new-array p5, p5, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    aput-object v0, p5, v2

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    aput-object v1, p5, v0

    .line 65
    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    aput-object p3, p5, v3

    .line 71
    .line 72
    const/4 p3, 0x3

    .line 73
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    aput-object p4, p5, p3

    .line 78
    .line 79
    iget p3, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 80
    .line 81
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    const/4 p4, 0x4

    .line 86
    aput-object p3, p5, p4

    .line 87
    .line 88
    iget p3, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 89
    .line 90
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    const/4 p4, 0x5

    .line 95
    aput-object p3, p5, p4

    .line 96
    .line 97
    const-string p3, "draw center pic bitmapWidth = %d, bitmapHeight = %d, centerX = %d, centerY = %d, width = %d, height = %d"

    .line 98
    .line 99
    invoke-static {p2, p3, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method public drawBitmapAnim(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->matrix:Landroid/graphics/Matrix;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->matrix:Landroid/graphics/Matrix;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    .line 33
    div-float/2addr v1, v2

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    div-float/2addr v3, v2

    .line 40
    iget-object v4, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->matrix:Landroid/graphics/Matrix;

    .line 41
    .line 42
    iget v5, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentAngle:F

    .line 43
    .line 44
    invoke-virtual {v4, v5, v1, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->matrix:Landroid/graphics/Matrix;

    .line 48
    .line 49
    iget v5, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentX:F

    .line 50
    .line 51
    sub-float/2addr v5, v1

    .line 52
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentY:F

    .line 53
    .line 54
    sub-float/2addr v1, v3

    .line 55
    invoke-virtual {v4, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->matrix:Landroid/graphics/Matrix;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerIconMatrix:Landroid/graphics/Matrix;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    int-to-float v1, v1

    .line 81
    div-float/2addr v1, v2

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    int-to-float v3, v3

    .line 87
    div-float/2addr v3, v2

    .line 88
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerIconMatrix:Landroid/graphics/Matrix;

    .line 89
    .line 90
    iget v4, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentAngle:F

    .line 91
    .line 92
    invoke-virtual {v2, v4, v1, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerIconMatrix:Landroid/graphics/Matrix;

    .line 96
    .line 97
    iget v4, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentX:F

    .line 98
    .line 99
    sub-float/2addr v4, v1

    .line 100
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentY:F

    .line 101
    .line 102
    sub-float/2addr v1, v3

    .line 103
    invoke-virtual {v2, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerIconMatrix:Landroid/graphics/Matrix;

    .line 107
    .line 108
    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_0
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;IIFZ)V
    .locals 14

    .line 1
    move-object v8, p0

    .line 2
    move/from16 v9, p2

    .line 3
    .line 4
    move/from16 v10, p3

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getHideText()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v11

    .line 16
    if-eqz v11, :cond_3

    .line 17
    .line 18
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-object v0, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-float/2addr v0, v1

    .line 37
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/high16 v12, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v0, v12

    .line 44
    float-to-int v0, v0

    .line 45
    iget v1, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 46
    .line 47
    div-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    add-int/2addr v1, v10

    .line 50
    add-int/2addr v1, v0

    .line 51
    iget-boolean v0, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->needShowRawKey:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showRawKey:Z

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget v0, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->textShowRawOffsetY:I

    .line 60
    .line 61
    sub-int v13, v1, v0

    .line 62
    .line 63
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 64
    .line 65
    const/high16 v1, 0x41000000    # 8.0f

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    if-nez p5, :cond_0

    .line 74
    .line 75
    iget-object v2, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rawName:Ljava/lang/String;

    .line 76
    .line 77
    int-to-float v0, v9

    .line 78
    iget v3, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 79
    .line 80
    int-to-float v3, v3

    .line 81
    div-float/2addr v3, v12

    .line 82
    add-float/2addr v3, v0

    .line 83
    int-to-float v0, v13

    .line 84
    iget-object v4, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    div-float/2addr v4, v12

    .line 91
    add-float/2addr v0, v4

    .line 92
    iget v4, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 93
    .line 94
    int-to-float v4, v4

    .line 95
    div-float/2addr v4, v1

    .line 96
    add-float/2addr v4, v0

    .line 97
    iget-object v5, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 98
    .line 99
    iget-object v6, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mRawTextPaint:Landroid/graphics/Paint;

    .line 100
    .line 101
    const/4 v7, 0x1

    .line 102
    move-object v0, p0

    .line 103
    move-object v1, p1

    .line 104
    invoke-virtual/range {v0 .. v7}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->drawTextAnim(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    iget-object v2, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rawName:Ljava/lang/String;

    .line 109
    .line 110
    int-to-float v0, v9

    .line 111
    iget v3, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 112
    .line 113
    int-to-float v3, v3

    .line 114
    div-float/2addr v3, v12

    .line 115
    add-float/2addr v3, v0

    .line 116
    int-to-float v0, v13

    .line 117
    iget-object v4, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    div-float/2addr v4, v12

    .line 124
    add-float/2addr v0, v4

    .line 125
    iget v4, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 126
    .line 127
    int-to-float v4, v4

    .line 128
    div-float/2addr v4, v1

    .line 129
    add-float/2addr v4, v0

    .line 130
    iget-object v5, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mRawTextPaint:Landroid/graphics/Paint;

    .line 131
    .line 132
    move-object v0, p0

    .line 133
    move-object v1, p1

    .line 134
    move/from16 v6, p4

    .line 135
    .line 136
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->drawTextWithAlpha(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 137
    .line 138
    .line 139
    :goto_0
    move v1, v13

    .line 140
    :cond_1
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 141
    .line 142
    if-eqz v0, :cond_2

    .line 143
    .line 144
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 145
    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    if-nez p5, :cond_2

    .line 149
    .line 150
    iget-object v2, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->name:Ljava/lang/String;

    .line 151
    .line 152
    int-to-float v0, v9

    .line 153
    int-to-float v3, v10

    .line 154
    div-float/2addr v3, v12

    .line 155
    add-float/2addr v3, v0

    .line 156
    int-to-float v4, v1

    .line 157
    iget-object v6, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 158
    .line 159
    const/4 v7, 0x0

    .line 160
    move-object v0, p0

    .line 161
    move-object v1, p1

    .line 162
    move-object v5, v6

    .line 163
    invoke-virtual/range {v0 .. v7}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->drawTextAnim(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_2
    iget v0, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 168
    .line 169
    div-int/lit8 v0, v0, 0x2

    .line 170
    .line 171
    add-int/2addr v0, v9

    .line 172
    int-to-float v3, v0

    .line 173
    int-to-float v4, v1

    .line 174
    iget-object v5, v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 175
    .line 176
    move-object v0, p0

    .line 177
    move-object v1, p1

    .line 178
    move-object v2, v11

    .line 179
    move/from16 v6, p4

    .line 180
    .line 181
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->drawTextWithAlpha(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 182
    .line 183
    .line 184
    :cond_3
    :goto_1
    return-void
.end method

.method public drawTextAnim(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    if-eqz p5, :cond_3

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->matrix:Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 21
    .line 22
    .line 23
    iget-object p3, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCurrentBitmap:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    int-to-float p3, p3

    .line 30
    const/high16 p4, 0x40000000    # 2.0f

    .line 31
    .line 32
    div-float/2addr p3, p4

    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-float/2addr v0, v1

    .line 46
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    div-float/2addr v0, p4

    .line 51
    float-to-int v0, v0

    .line 52
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 53
    .line 54
    div-int/lit8 v1, v1, 0x2

    .line 55
    .line 56
    add-int/2addr v1, v0

    .line 57
    if-eqz p7, :cond_1

    .line 58
    .line 59
    iget-boolean p7, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->needShowRawKey:Z

    .line 60
    .line 61
    if-eqz p7, :cond_1

    .line 62
    .line 63
    sget-boolean p7, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showRawKey:Z

    .line 64
    .line 65
    if-eqz p7, :cond_1

    .line 66
    .line 67
    iget p5, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->textShowRawOffsetY:I

    .line 68
    .line 69
    sub-int/2addr v1, p5

    .line 70
    int-to-float p5, v1

    .line 71
    iget-object p7, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {p7}, Landroid/graphics/Paint;->getTextSize()F

    .line 74
    .line 75
    .line 76
    move-result p7

    .line 77
    div-float/2addr p7, p4

    .line 78
    add-float/2addr p5, p7

    .line 79
    iget p4, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 80
    .line 81
    int-to-float p4, p4

    .line 82
    const/high16 p7, 0x41000000    # 8.0f

    .line 83
    .line 84
    div-float/2addr p4, p7

    .line 85
    add-float/2addr p5, p4

    .line 86
    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-boolean p4, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->needShowRawKey:Z

    .line 91
    .line 92
    if-eqz p4, :cond_2

    .line 93
    .line 94
    sget-boolean p4, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showRawKey:Z

    .line 95
    .line 96
    if-eqz p4, :cond_2

    .line 97
    .line 98
    iget p4, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->textShowRawOffsetY:I

    .line 99
    .line 100
    sub-int/2addr v1, p4

    .line 101
    :cond_2
    int-to-float p4, v1

    .line 102
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_1
    return-void
.end method

.method protected getAvailableWidth()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const v1, 0x3f666666    # 0.9f

    .line 5
    .line 6
    .line 7
    mul-float v0, v0, v1

    .line 8
    .line 9
    return v0
.end method

.method public getCenterX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerX:I

    .line 2
    .line 3
    return v0
.end method

.method public getCenterY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerY:I

    .line 2
    .line 3
    return v0
.end method

.method public getEndOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->endOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getHideText()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getHideText()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCurrentBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemDownBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getItemUpBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSource()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->startOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public getY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public setCenterX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerX:I

    .line 2
    .line 3
    return-void
.end method

.method public setCenterY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerY:I

    .line 2
    .line 3
    return-void
.end method

.method public setEndOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->endOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public setItemCurrentBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCurrentBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public setItemDownBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public setItemUpBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSource(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    return-void
.end method

.method public setStartOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->startOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public setTransparency(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/high16 v1, 0x437f0000    # 255.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    mul-float v2, p1, v1

    .line 8
    .line 9
    float-to-int v2, v2

    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mRawTextPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    mul-float p1, p1, v1

    .line 18
    .line 19
    const v1, 0x3f4ccccd    # 0.8f

    .line 20
    .line 21
    .line 22
    mul-float p1, p1, v1

    .line 23
    .line 24
    float-to-int p1, p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->y:I

    .line 2
    .line 3
    return-void
.end method

.method public startShake(FF)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    const-wide/16 v1, 0x190

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 27
    .line 28
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v4, 0x10

    .line 35
    .line 36
    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->setFrameDelay(J)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    new-instance v4, Lcom/haima/hmcp/virtual/bean/a;

    .line 42
    .line 43
    invoke-direct {v4, p0}, Lcom/haima/hmcp/virtual/bean/a;-><init>(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    .line 53
    .line 54
    const/high16 v0, 0x43c80000    # 400.0f

    .line 55
    .line 56
    mul-float p1, p1, v0

    .line 57
    .line 58
    float-to-long v4, p1

    .line 59
    iget-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    new-instance v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean$1;

    .line 67
    .line 68
    invoke-direct {v4, p0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean$1;-><init>(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x2

    .line 80
    new-array p1, p1, [F

    .line 81
    .line 82
    fill-array-data p1, :array_1

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->moveAnim:Landroid/animation/ValueAnimator;

    .line 90
    .line 91
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->moveAnim:Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->moveAnim:Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 102
    .line 103
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->moveAnim:Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    new-instance v1, Lcom/haima/hmcp/virtual/bean/b;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/bean/b;-><init>(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 117
    .line 118
    .line 119
    mul-float p2, p2, v0

    .line 120
    .line 121
    float-to-long p1, p2

    .line 122
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->moveAnim:Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->moveAnim:Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    new-instance p2, Lcom/haima/hmcp/virtual/bean/DrawerItemBean$2;

    .line 130
    .line 131
    invoke-direct {p2, p0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean$2;-><init>(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->moveAnim:Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :array_0
    .array-data 4
        -0x3f700000    # -4.5f
        0x40900000    # 4.5f
        -0x3f700000    # -4.5f
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopShake()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentAngle:F

    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 5
    .line 6
    int-to-float v0, v0

    .line 7
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v1, v2

    .line 13
    add-float/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentX:F

    .line 15
    .line 16
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->y:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    div-float/2addr v1, v2

    .line 23
    add-float/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->currentY:F

    .line 25
    .line 26
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->moveAnim:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public updateTextSize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mRawTextPaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->name:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x4

    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    mul-float v1, v1, v2

    .line 29
    .line 30
    const/high16 v3, 0x40800000    # 4.0f

    .line 31
    .line 32
    div-float/2addr v1, v3

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 40
    .line 41
    int-to-float v1, v1

    .line 42
    mul-float v1, v1, v2

    .line 43
    .line 44
    const v3, 0x4099999a    # 4.8f

    .line 45
    .line 46
    .line 47
    div-float/2addr v1, v3

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->name:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getAvailableWidth()F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v3, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mTextPaint:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-direct {p0, v0, v1, v3}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->checkTextSize(Ljava/lang/String;FLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 63
    .line 64
    int-to-float v1, v0

    .line 65
    mul-float v1, v1, v2

    .line 66
    .line 67
    const/high16 v3, 0x41200000    # 10.0f

    .line 68
    .line 69
    div-float/2addr v1, v3

    .line 70
    float-to-int v1, v1

    .line 71
    iput v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->textShowRawOffsetY:I

    .line 72
    .line 73
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mRawTextPaint:Landroid/graphics/Paint;

    .line 74
    .line 75
    int-to-float v0, v0

    .line 76
    mul-float v0, v0, v2

    .line 77
    .line 78
    const/high16 v3, 0x40c00000    # 6.0f

    .line 79
    .line 80
    div-float/2addr v0, v3

    .line 81
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rawName:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getAvailableWidth()F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v3, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->mRawTextPaint:Landroid/graphics/Paint;

    .line 91
    .line 92
    invoke-direct {p0, v0, v1, v3}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->checkTextSize(Ljava/lang/String;FLandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->rockerCenterTextPaint:Landroid/graphics/Paint;

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 100
    .line 101
    int-to-float v1, v1

    .line 102
    mul-float v1, v1, v2

    .line 103
    .line 104
    const/high16 v2, 0x40a00000    # 5.0f

    .line 105
    .line 106
    div-float/2addr v1, v2

    .line 107
    const/high16 v2, 0x40000000    # 2.0f

    .line 108
    .line 109
    div-float/2addr v1, v2

    .line 110
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_1
    return-void
.end method

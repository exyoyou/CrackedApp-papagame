.class public Lcom/haima/hmcp/virtual/views/HmVirtualDirection;
.super Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;
.source "SourceFile"


# instance fields
.field private angle:I

.field private circleCenterX:I

.field private circleCenterY:I

.field private lastDirection:I

.field private mBitmapArrowDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mBitmapArrowUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mBitmapDirectionOuterRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mLoadedCount:I

.field private mPendingArrowDownBitmap:Landroid/graphics/Bitmap;

.field private mPendingArrowUpBitmap:Landroid/graphics/Bitmap;

.field private mPendingOuterBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 10
    .line 11
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 17
    .line 18
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapDirectionOuterRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowDownBitmap:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowUpBitmap:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingOuterBitmap:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mLoadedCount:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string p2, " HmVirtualDirection init"

    .line 40
    .line 41
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->initWH()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/views/HmVirtualDirection;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->onNetworkBitmapLoaded(ILandroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private calcAngle(FF)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterX:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterY:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    invoke-static {p1, p2, v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getAngle(FFFF)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    double-to-int p1, p1

    .line 12
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->angle:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->calcEightDirection()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-boolean p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, -0x1

    .line 34
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget v6, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    move v5, p1

    .line 45
    invoke-interface/range {v0 .. v8}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onRockerTouchEvent(ILjava/util/List;IIIIFF)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 49
    .line 50
    return-void
.end method

.method private drawArrow(Landroid/graphics/Canvas;IIFZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    if-eqz p5, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v0, v1

    .line 22
    :goto_0
    new-instance p5, Landroid/graphics/Matrix;

    .line 23
    .line 24
    invoke-direct {p5}, Landroid/graphics/Matrix;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    neg-int v1, v1

    .line 32
    int-to-float v1, v1

    .line 33
    const/high16 v2, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float/2addr v1, v2

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    neg-int v3, v3

    .line 41
    int-to-float v3, v3

    .line 42
    div-float/2addr v3, v2

    .line 43
    invoke-virtual {p5, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 44
    .line 45
    .line 46
    sget-boolean v1, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    int-to-float p2, p2

    .line 55
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->offsetAnim:F

    .line 56
    .line 57
    add-float v2, p2, v1

    .line 58
    .line 59
    int-to-float p3, p3

    .line 60
    add-float/2addr v1, p3

    .line 61
    invoke-virtual {p5, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentAngle:F

    .line 65
    .line 66
    add-float/2addr p4, v1

    .line 67
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->offsetAnim:F

    .line 68
    .line 69
    add-float/2addr p2, v1

    .line 70
    add-float/2addr p3, v1

    .line 71
    invoke-virtual {p5, p4, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    int-to-float p2, p2

    .line 76
    int-to-float p3, p3

    .line 77
    invoke-virtual {p5, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p5, p4, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 81
    .line 82
    .line 83
    :goto_1
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 84
    .line 85
    invoke-virtual {p1, v0, p5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_2
    return-void
.end method

.method private drawDirectionBitmap(Landroid/graphics/Canvas;Z)V
    .locals 12

    .line 1
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterX:I

    .line 2
    .line 3
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterY:I

    .line 4
    .line 5
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 6
    .line 7
    div-int/lit8 v1, v1, 0x4

    .line 8
    .line 9
    sub-int v3, v0, v1

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/16 v6, 0xc8

    .line 13
    .line 14
    const/16 v7, 0x190

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 21
    .line 22
    const/16 v1, 0x12c

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    if-eq v0, v7, :cond_0

    .line 27
    .line 28
    if-ne v0, v6, :cond_1

    .line 29
    .line 30
    :cond_0
    const/4 v5, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v5, 0x0

    .line 33
    :goto_0
    move-object v0, p0

    .line 34
    move-object v1, p1

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->drawArrow(Landroid/graphics/Canvas;IIFZ)V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterX:I

    .line 39
    .line 40
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterY:I

    .line 41
    .line 42
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 43
    .line 44
    div-int/lit8 v1, v1, 0x4

    .line 45
    .line 46
    add-int v3, v0, v1

    .line 47
    .line 48
    const/high16 v4, 0x43340000    # 180.0f

    .line 49
    .line 50
    const/16 v10, 0x320

    .line 51
    .line 52
    const/16 v11, 0x258

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 57
    .line 58
    const/16 v1, 0x2bc

    .line 59
    .line 60
    if-eq v0, v1, :cond_2

    .line 61
    .line 62
    if-eq v0, v11, :cond_2

    .line 63
    .line 64
    if-ne v0, v10, :cond_3

    .line 65
    .line 66
    :cond_2
    const/4 v5, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v5, 0x0

    .line 69
    :goto_1
    move-object v0, p0

    .line 70
    move-object v1, p1

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->drawArrow(Landroid/graphics/Canvas;IIFZ)V

    .line 72
    .line 73
    .line 74
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterX:I

    .line 75
    .line 76
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 77
    .line 78
    div-int/lit8 v1, v1, 0x4

    .line 79
    .line 80
    sub-int v2, v0, v1

    .line 81
    .line 82
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterY:I

    .line 83
    .line 84
    const/high16 v4, 0x43870000    # 270.0f

    .line 85
    .line 86
    if-eqz p2, :cond_5

    .line 87
    .line 88
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 89
    .line 90
    const/16 v1, 0x1f4

    .line 91
    .line 92
    if-eq v0, v1, :cond_4

    .line 93
    .line 94
    if-eq v0, v7, :cond_4

    .line 95
    .line 96
    if-ne v0, v11, :cond_5

    .line 97
    .line 98
    :cond_4
    const/4 v5, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_5
    const/4 v5, 0x0

    .line 101
    :goto_2
    move-object v0, p0

    .line 102
    move-object v1, p1

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->drawArrow(Landroid/graphics/Canvas;IIFZ)V

    .line 104
    .line 105
    .line 106
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterX:I

    .line 107
    .line 108
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 109
    .line 110
    div-int/lit8 v1, v1, 0x4

    .line 111
    .line 112
    add-int v2, v0, v1

    .line 113
    .line 114
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterY:I

    .line 115
    .line 116
    const/high16 v4, 0x42b40000    # 90.0f

    .line 117
    .line 118
    if-eqz p2, :cond_7

    .line 119
    .line 120
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 121
    .line 122
    const/16 v1, 0x64

    .line 123
    .line 124
    if-eq v0, v1, :cond_6

    .line 125
    .line 126
    if-eq v0, v6, :cond_6

    .line 127
    .line 128
    if-ne v0, v10, :cond_7

    .line 129
    .line 130
    :cond_6
    const/4 v5, 0x1

    .line 131
    goto :goto_3

    .line 132
    :cond_7
    const/4 v5, 0x0

    .line 133
    :goto_3
    move-object v0, p0

    .line 134
    move-object v1, p1

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->drawArrow(Landroid/graphics/Canvas;IIFZ)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->drawOuter(Landroid/graphics/Canvas;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method private drawOuter(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapDirectionOuterRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    neg-int v2, v2

    .line 20
    int-to-float v2, v2

    .line 21
    const/high16 v3, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr v2, v3

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    neg-int v4, v4

    .line 29
    int-to-float v4, v4

    .line 30
    div-float/2addr v4, v3

    .line 31
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterX:I

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterY:I

    .line 38
    .line 39
    int-to-float v3, v3

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 44
    .line 45
    const/16 v3, 0xc8

    .line 46
    .line 47
    if-eq v2, v3, :cond_4

    .line 48
    .line 49
    const/16 v3, 0x190

    .line 50
    .line 51
    if-eq v2, v3, :cond_3

    .line 52
    .line 53
    const/16 v3, 0x258

    .line 54
    .line 55
    if-eq v2, v3, :cond_2

    .line 56
    .line 57
    const/16 v3, 0x320

    .line 58
    .line 59
    if-eq v2, v3, :cond_1

    .line 60
    .line 61
    const/4 v2, -0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/16 v2, 0xb4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/16 v2, 0x10e

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v2, 0x0

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/16 v2, 0x5a

    .line 72
    .line 73
    :goto_0
    if-ltz v2, :cond_5

    .line 74
    .line 75
    int-to-float v2, v2

    .line 76
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterX:I

    .line 77
    .line 78
    int-to-float v3, v3

    .line 79
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterY:I

    .line 80
    .line 81
    int-to-float v4, v4

    .line 82
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    return-void
.end method

.method private initWH()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, " handle error width != height  give width to height"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 15
    .line 16
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->checkPosition()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedMD5()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget v3, Lcom/haima/hmcp/R$mipmap;->hm_vir_direction_arrow_pressed:I

    .line 37
    .line 38
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 39
    .line 40
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 41
    .line 42
    div-int/lit8 v5, v5, 0x2

    .line 43
    .line 44
    invoke-static {v2, v0, v3, v4, v5}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedMD5()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget v3, Lcom/haima/hmcp/R$mipmap;->hm_vir_direction_arrow_unpressed:I

    .line 62
    .line 63
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 64
    .line 65
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 66
    .line 67
    div-int/lit8 v5, v5, 0x2

    .line 68
    .line 69
    invoke-static {v1, v2, v3, v4, v5}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapDirectionOuterRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getCrossPicRockerDirectionMD5()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    sget v3, Lcom/haima/hmcp/R$mipmap;->hm_vir_direction_arrow_outer:I

    .line 87
    .line 88
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 89
    .line 90
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 91
    .line 92
    invoke-static {v1, v2, v3, v4, v5}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedUrl()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getCrossPicRockerDirectionUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const/4 v2, 0x0

    .line 122
    if-nez v1, :cond_1

    .line 123
    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_1

    .line 129
    .line 130
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_1

    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x0

    .line 139
    :goto_0
    if-eqz v1, :cond_3

    .line 140
    .line 141
    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowDownBitmap:Landroid/graphics/Bitmap;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowUpBitmap:Landroid/graphics/Bitmap;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingOuterBitmap:Landroid/graphics/Bitmap;

    .line 147
    .line 148
    iput v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mLoadedCount:I

    .line 149
    .line 150
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 155
    .line 156
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 157
    .line 158
    div-int/lit8 v4, v4, 0x2

    .line 159
    .line 160
    invoke-virtual {v1, v3, v2, v4}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 169
    .line 170
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 171
    .line 172
    div-int/lit8 v5, v5, 0x2

    .line 173
    .line 174
    invoke-virtual {v2, v0, v4, v5}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 183
    .line 184
    iget v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 185
    .line 186
    invoke-virtual {v4, v10, v5, v6}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    if-eqz v1, :cond_2

    .line 191
    .line 192
    if-eqz v2, :cond_2

    .line 193
    .line 194
    if-eqz v4, :cond_2

    .line 195
    .line 196
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapDirectionOuterRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 212
    .line 213
    const-string v1, "initWH: all three network bitmaps cached, applied directly"

    .line 214
    .line 215
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_2
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 224
    .line 225
    new-instance v4, Lcom/haima/hmcp/virtual/views/HmVirtualDirection$1;

    .line 226
    .line 227
    invoke-direct {v4, p0, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection$1;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDirection;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 231
    .line 232
    iget v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 233
    .line 234
    div-int/lit8 v6, v6, 0x2

    .line 235
    .line 236
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->addDownloadListener(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;II)V

    .line 237
    .line 238
    .line 239
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 244
    .line 245
    new-instance v7, Lcom/haima/hmcp/virtual/views/HmVirtualDirection$2;

    .line 246
    .line 247
    invoke-direct {v7, p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection$2;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDirection;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 251
    .line 252
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 253
    .line 254
    div-int/lit8 v9, v1, 0x2

    .line 255
    .line 256
    move-object v6, v0

    .line 257
    invoke-virtual/range {v4 .. v9}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->addDownloadListener(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;II)V

    .line 258
    .line 259
    .line 260
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 265
    .line 266
    new-instance v7, Lcom/haima/hmcp/virtual/views/HmVirtualDirection$3;

    .line 267
    .line 268
    invoke-direct {v7, p0, v10}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection$3;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDirection;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 272
    .line 273
    iget v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 274
    .line 275
    move-object v6, v10

    .line 276
    invoke-virtual/range {v4 .. v9}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->addDownloadListener(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;II)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 280
    .line 281
    const-string v1, "initWH: registered listeners for three bitmaps, waiting for preload"

    .line 282
    .line 283
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->updateCirclePosition()V

    .line 287
    .line 288
    .line 289
    return-void
.end method

.method private declared-synchronized onNetworkBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Network bitmap loaded but is null, index: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    if-eq p1, v0, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    if-eq p1, v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :try_start_1
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingOuterBitmap:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowUpBitmap:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowDownBitmap:Landroid/graphics/Bitmap;

    .line 47
    .line 48
    :goto_0
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mLoadedCount:I

    .line 49
    .line 50
    add-int/2addr p2, v0

    .line 51
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mLoadedCount:I

    .line 52
    .line 53
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "Network bitmap loaded, index: "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, ", progress: "

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mLoadedCount:I

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, "/3"

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mLoadedCount:I

    .line 91
    .line 92
    const/4 p2, 0x3

    .line 93
    if-ne p1, p2, :cond_4

    .line 94
    .line 95
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowDownBitmap:Landroid/graphics/Bitmap;

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowUpBitmap:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingOuterBitmap:Landroid/graphics/Bitmap;

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    const-string p2, "All three network bitmaps loaded successfully, applying to UI"

    .line 110
    .line 111
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 115
    .line 116
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowDownBitmap:Landroid/graphics/Bitmap;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/BitmapRef;->setNetwork(Landroid/graphics/Bitmap;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapArrowUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 122
    .line 123
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowUpBitmap:Landroid/graphics/Bitmap;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/BitmapRef;->setNetwork(Landroid/graphics/Bitmap;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapDirectionOuterRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 129
    .line 130
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingOuterBitmap:Landroid/graphics/Bitmap;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/BitmapRef;->setNetwork(Landroid/graphics/Bitmap;)V

    .line 133
    .line 134
    .line 135
    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowDownBitmap:Landroid/graphics/Bitmap;

    .line 137
    .line 138
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingArrowUpBitmap:Landroid/graphics/Bitmap;

    .line 139
    .line 140
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mPendingOuterBitmap:Landroid/graphics/Bitmap;

    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mLoadedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    :cond_4
    monitor-exit p0

    .line 146
    return-void

    .line 147
    :goto_1
    monitor-exit p0

    .line 148
    throw p1
.end method

.method private updateCirclePosition()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 4
    .line 5
    div-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterX:I

    .line 9
    .line 10
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 11
    .line 12
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 13
    .line 14
    div-int/lit8 v1, v1, 0x2

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->circleCenterY:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public calcEightDirection()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->angle:I

    .line 2
    .line 3
    const/16 v1, 0x152

    .line 4
    .line 5
    if-ge v0, v1, :cond_7

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v1, 0x44

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v0, 0xc8

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/16 v1, 0x71

    .line 20
    .line 21
    if-ge v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x12c

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/16 v1, 0x9e

    .line 27
    .line 28
    if-ge v0, v1, :cond_3

    .line 29
    .line 30
    const/16 v0, 0x190

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const/16 v1, 0xcb

    .line 34
    .line 35
    if-ge v0, v1, :cond_4

    .line 36
    .line 37
    const/16 v0, 0x1f4

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    const/16 v1, 0xf8

    .line 41
    .line 42
    if-ge v0, v1, :cond_5

    .line 43
    .line 44
    const/16 v0, 0x258

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_5
    const/16 v1, 0x125

    .line 48
    .line 49
    if-ge v0, v1, :cond_6

    .line 50
    .line 51
    const/16 v0, 0x2bc

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_6
    const/16 v0, 0x320

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_7
    :goto_0
    const/16 v0, 0x64

    .line 58
    .line 59
    :goto_1
    return v0
.end method

.method public changeScale(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeScale(F)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->initWH()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->draw(Landroid/graphics/Canvas;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    :try_start_0
    sget-boolean v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->drawDirectionBitmap(Landroid/graphics/Canvas;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->drawAlignLines(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->drawDirectionBitmap(Landroid/graphics/Canvas;Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->drawDirectionBitmap(Landroid/graphics/Canvas;Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->drawDirectionBitmap(Landroid/graphics/Canvas;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "drawHandleError : "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_0
    return v0
.end method

.method protected getCurrentDisplayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->mBitmapDirectionOuterRef:Lcom/haima/hmcp/virtual/BitmapRef;

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

.method public isPointInView(FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPointInInscribedCircle(FF)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public notifyBaseScale()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->notifyBaseScale()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->initWH()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_a

    .line 15
    .line 16
    const/high16 v3, 0x41200000    # 10.0f

    .line 17
    .line 18
    if-eq v0, v2, :cond_6

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v0, v4, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v0, v4, :cond_6

    .line 25
    .line 26
    const/4 v4, 0x5

    .line 27
    if-eq v0, v4, :cond_a

    .line 28
    .line 29
    const/4 v4, 0x6

    .line 30
    if-eq v0, v4, :cond_6

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onViewEdit()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 50
    .line 51
    sub-float/2addr v0, v4

    .line 52
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    cmpl-float v0, v0, v3

    .line 57
    .line 58
    if-gtz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 65
    .line 66
    sub-float/2addr v0, v4

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    cmpl-float v0, v0, v3

    .line 72
    .line 73
    if-lez v0, :cond_3

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 76
    .line 77
    invoke-interface {v0, p0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onBtnMoveEvent(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 81
    .line 82
    if-eqz v0, :cond_d

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-ge v0, v3, :cond_d

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 96
    .line 97
    if-ne v3, v4, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-direct {p0, v1, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->calcAngle(FF)V

    .line 108
    .line 109
    .line 110
    sget-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 111
    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 119
    .line 120
    sub-float/2addr v1, v3

    .line 121
    float-to-int v1, v1

    .line 122
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 129
    .line 130
    sub-float/2addr v1, v3

    .line 131
    float-to-int v1, v1

    .line 132
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 150
    .line 151
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 152
    .line 153
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 154
    .line 155
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 156
    .line 157
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->updateAlignLinesView(IIII)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 163
    .line 164
    iput-boolean v2, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 165
    .line 166
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->updateCirclePosition()V

    .line 167
    .line 168
    .line 169
    :cond_4
    return v2

    .line 170
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 174
    .line 175
    iput-boolean v1, v0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 176
    .line 177
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 178
    .line 179
    if-eqz v0, :cond_d

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 190
    .line 191
    if-ne v0, v4, :cond_d

    .line 192
    .line 193
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 212
    .line 213
    if-eqz v4, :cond_8

    .line 214
    .line 215
    sget-boolean v5, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 216
    .line 217
    if-nez v5, :cond_7

    .line 218
    .line 219
    const/4 v5, 0x1

    .line 220
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    const/4 v7, -0x1

    .line 227
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    iget v9, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 234
    .line 235
    const/4 v10, -0x1

    .line 236
    const/4 v11, 0x0

    .line 237
    const/4 v12, 0x0

    .line 238
    invoke-interface/range {v4 .. v12}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onRockerTouchEvent(ILjava/util/List;IIIIFF)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 243
    .line 244
    .line 245
    move-result-wide v4

    .line 246
    iget-wide v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downTime:J

    .line 247
    .line 248
    sub-long/2addr v4, v6

    .line 249
    iget v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->INTERVAL:I

    .line 250
    .line 251
    int-to-long v6, v6

    .line 252
    cmp-long v8, v4, v6

    .line 253
    .line 254
    if-gez v8, :cond_8

    .line 255
    .line 256
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downX:F

    .line 257
    .line 258
    sub-float/2addr v0, v4

    .line 259
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    cmpg-float v0, v0, v3

    .line 264
    .line 265
    if-gez v0, :cond_8

    .line 266
    .line 267
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downY:F

    .line 268
    .line 269
    sub-float/2addr p1, v0

    .line 270
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    cmpg-float p1, p1, v3

    .line 275
    .line 276
    if-gez p1, :cond_8

    .line 277
    .line 278
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 279
    .line 280
    invoke-interface {p1, p0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onClickListener(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 281
    .line 282
    .line 283
    :cond_8
    :goto_1
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->lastDirection:I

    .line 284
    .line 285
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 290
    .line 291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->removePointID(Ljava/lang/Integer;)V

    .line 296
    .line 297
    .line 298
    const/4 p1, -0x1

    .line 299
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 300
    .line 301
    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 302
    .line 303
    if-eqz p1, :cond_9

    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->checkPosition()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 309
    .line 310
    .line 311
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->updateCirclePosition()V

    .line 312
    .line 313
    .line 314
    :cond_9
    return v2

    .line 315
    :cond_a
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 316
    .line 317
    if-nez v0, :cond_d

    .line 318
    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    invoke-virtual {p0, v0, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->isPointInView(FF)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_d

    .line 340
    .line 341
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->ableVibrator:Z

    .line 342
    .line 343
    if-eqz v0, :cond_b

    .line 344
    .line 345
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 346
    .line 347
    invoke-static {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->vibrator(Landroid/content/Context;)V

    .line 348
    .line 349
    .line 350
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 351
    .line 352
    .line 353
    move-result-wide v0

    .line 354
    iput-wide v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downTime:J

    .line 355
    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downX:F

    .line 365
    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downY:F

    .line 375
    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 385
    .line 386
    iput-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 387
    .line 388
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 393
    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->addPointID(Ljava/lang/Integer;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;->calcAngle(FF)V

    .line 418
    .line 419
    .line 420
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 421
    .line 422
    if-eqz v0, :cond_c

    .line 423
    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 433
    .line 434
    int-to-float v1, v1

    .line 435
    sub-float/2addr v0, v1

    .line 436
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 437
    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 447
    .line 448
    int-to-float v1, v1

    .line 449
    sub-float/2addr v0, v1

    .line 450
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 451
    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 461
    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 467
    .line 468
    .line 469
    move-result p1

    .line 470
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 471
    .line 472
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 473
    .line 474
    iput-boolean v2, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 475
    .line 476
    :cond_c
    return v2

    .line 477
    :cond_d
    :goto_2
    return v1
.end method

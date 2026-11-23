.class public Lcom/haima/hmcp/virtual/views/HmVirtualHandle;
.super Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;
.source "SourceFile"


# static fields
.field public static final BOTTOM:I = 0x2bc

.field public static final DEFAULT:I = 0x0

.field public static final LEFT:I = 0x1f4

.field public static final LEFT_BOTTOM:I = 0x258

.field public static final LEFT_TOP:I = 0x190

.field public static final RIGHT:I = 0x64

.field public static final RIGHT_BOTTOM:I = 0x320

.field public static final RIGHT_TOP:I = 0xc8

.field public static final TOP:I = 0x12c


# instance fields
.field private final CENTER_TO_BOUNDARY_SCALE:F

.field private angle:I

.field private centerToBoundaryScale:F

.field private circleCenterX:I

.field private circleCenterY:I

.field private circleR:I

.field private isKeyBoardRocker:Z

.field private lastDirection:I

.field private mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mInitX:I

.field private mInitY:I

.field private mInnerBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mOuterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private smallCircleCenterX:I

.field private smallCircleCenterY:I

.field private smallCircleR:I


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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mOuterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 10
    .line 11
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInnerBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 17
    .line 18
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 24
    .line 25
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->lastDirection:I

    .line 34
    .line 35
    const p1, 0x3dcccccd    # 0.1f

    .line 36
    .line 37
    .line 38
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->CENTER_TO_BOUNDARY_SCALE:F

    .line 39
    .line 40
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->centerToBoundaryScale:F

    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->initWH()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private calcAngle(FF)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterX:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterY:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    invoke-static {p1, p2, v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getAngle(FFFF)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    double-to-int v0, v0

    .line 12
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->angle:I

    .line 13
    .line 14
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleR:I

    .line 15
    .line 16
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleR:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    int-to-float v0, v0

    .line 20
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 21
    .line 22
    int-to-float v1, v1

    .line 23
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->centerToBoundaryScale:F

    .line 24
    .line 25
    mul-float v1, v1, v2

    .line 26
    .line 27
    sub-float/2addr v0, v1

    .line 28
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterX:I

    .line 29
    .line 30
    int-to-float v1, v1

    .line 31
    sub-float v1, p1, v1

    .line 32
    .line 33
    float-to-double v1, v1

    .line 34
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 35
    .line 36
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterY:I

    .line 41
    .line 42
    int-to-float v5, v5

    .line 43
    sub-float v5, p2, v5

    .line 44
    .line 45
    float-to-double v5, v5

    .line 46
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    add-double/2addr v1, v5

    .line 51
    float-to-double v5, v0

    .line 52
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    cmpl-double v7, v1, v3

    .line 57
    .line 58
    if-lez v7, :cond_0

    .line 59
    .line 60
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterX:I

    .line 61
    .line 62
    int-to-double p1, p1

    .line 63
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->angle:I

    .line 64
    .line 65
    int-to-double v1, v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    mul-double v1, v1, v5

    .line 75
    .line 76
    add-double/2addr p1, v1

    .line 77
    double-to-float p1, p1

    .line 78
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterY:I

    .line 79
    .line 80
    int-to-double v1, p2

    .line 81
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->angle:I

    .line 82
    .line 83
    int-to-double v3, p2

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    mul-double v5, v5, v3

    .line 93
    .line 94
    sub-double/2addr v1, v5

    .line 95
    double-to-float p2, v1

    .line 96
    :cond_0
    float-to-int v1, p1

    .line 97
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterX:I

    .line 98
    .line 99
    float-to-int v1, p2

    .line 100
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterY:I

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->calcEightDirection()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterX:I

    .line 107
    .line 108
    int-to-float v2, v2

    .line 109
    sub-float/2addr p1, v2

    .line 110
    div-float/2addr p1, v0

    .line 111
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterY:I

    .line 112
    .line 113
    int-to-float v2, v2

    .line 114
    sub-float/2addr p2, v2

    .line 115
    neg-float p2, p2

    .line 116
    div-float/2addr p2, v0

    .line 117
    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    .line 119
    const/high16 v2, -0x40800000    # -1.0f

    .line 120
    .line 121
    cmpg-float v3, p1, v2

    .line 122
    .line 123
    if-gez v3, :cond_1

    .line 124
    .line 125
    const/high16 v9, -0x40800000    # -1.0f

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    cmpl-float v3, p1, v0

    .line 129
    .line 130
    if-lez v3, :cond_2

    .line 131
    .line 132
    const/high16 v9, 0x3f800000    # 1.0f

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    move v9, p1

    .line 136
    :goto_0
    cmpg-float p1, p2, v2

    .line 137
    .line 138
    if-gez p1, :cond_3

    .line 139
    .line 140
    const/high16 v10, -0x40800000    # -1.0f

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    cmpl-float p1, p2, v0

    .line 144
    .line 145
    if-lez p1, :cond_4

    .line 146
    .line 147
    const/high16 v10, 0x3f800000    # 1.0f

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    move v10, p2

    .line 151
    :goto_1
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 152
    .line 153
    if-eqz v2, :cond_6

    .line 154
    .line 155
    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 156
    .line 157
    if-nez p1, :cond_6

    .line 158
    .line 159
    iget-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->isKeyBoardRocker:Z

    .line 160
    .line 161
    if-eqz p1, :cond_5

    .line 162
    .line 163
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->lastDirection:I

    .line 164
    .line 165
    if-eq v1, p1, :cond_6

    .line 166
    .line 167
    :cond_5
    const/4 v3, 0x0

    .line 168
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->sourceType:I

    .line 175
    .line 176
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    iget v8, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->lastDirection:I

    .line 183
    .line 184
    move v7, v1

    .line 185
    invoke-interface/range {v2 .. v10}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onRockerTouchEvent(ILjava/util/List;IIIIFF)V

    .line 186
    .line 187
    .line 188
    :cond_6
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->lastDirection:I

    .line 189
    .line 190
    return-void
.end method

.method private drawRockerCenterText(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getTextRocketCenter()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "drawRockerCenterText failed : data is empty"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    if-nez p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "drawRockerCenterText failed : canvas is null"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInnerBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterX:I

    .line 46
    .line 47
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleR:I

    .line 48
    .line 49
    sub-int/2addr v2, v3

    .line 50
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterY:I

    .line 51
    .line 52
    sub-int/2addr v4, v3

    .line 53
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rockerCenterTextPaint:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rockerCenterTextPaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    add-float/2addr v3, v5

    .line 66
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/high16 v5, 0x40000000    # 2.0f

    .line 71
    .line 72
    div-float/2addr v3, v5

    .line 73
    float-to-int v3, v3

    .line 74
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    div-int/lit8 v5, v5, 0x2

    .line 79
    .line 80
    add-int/2addr v4, v5

    .line 81
    add-int/2addr v4, v3

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    div-int/lit8 v1, v1, 0x2

    .line 87
    .line 88
    add-int/2addr v2, v1

    .line 89
    int-to-float v1, v2

    .line 90
    int-to-float v2, v4

    .line 91
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rockerCenterTextPaint:Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private getXobJoystickCenterResetValue()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getXbox_joystick_center_reset()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method private initWH()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, " initWH failed"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 14
    .line 15
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, " handle error width != height  give width to height"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 27
    .line 28
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->checkPosition()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_rocker_center_MD5()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_rocker_direction_MD5()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_rocker_center_url()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_rocker_direction_url()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getCenterToBoundaryScale()F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v6, 0x0

    .line 74
    cmpl-float v6, v0, v6

    .line 75
    .line 76
    if-lez v6, :cond_3

    .line 77
    .line 78
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->centerToBoundaryScale:F

    .line 79
    .line 80
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v8, " centerToBoundaryScale value is "

    .line 88
    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v6, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    move-object v2, v1

    .line 104
    move-object v3, v2

    .line 105
    move-object v4, v3

    .line 106
    move-object v5, v4

    .line 107
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedMD5()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedMD5()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    iget-object v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 120
    .line 121
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedUrl()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    iget-object v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 126
    .line 127
    invoke-virtual {v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedUrl()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    const/4 v10, 0x5

    .line 136
    if-nez v9, :cond_4

    .line 137
    .line 138
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    iget v11, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 143
    .line 144
    div-int/2addr v11, v10

    .line 145
    iget v12, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 146
    .line 147
    div-int/2addr v12, v10

    .line 148
    invoke-virtual {v9, v4, v11, v12}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    goto :goto_1

    .line 153
    :cond_4
    move-object v9, v1

    .line 154
    :goto_1
    if-eqz v9, :cond_5

    .line 155
    .line 156
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInnerBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 157
    .line 158
    invoke-virtual {v2, v9}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 162
    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v11, "initRockerBitmap: use cached network bitmap for INNER, url="

    .line 169
    .line 170
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    iget-object v9, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInnerBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 185
    .line 186
    iget-object v11, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 187
    .line 188
    sget v12, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_inner:I

    .line 189
    .line 190
    iget v13, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 191
    .line 192
    div-int/2addr v13, v10

    .line 193
    iget v14, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 194
    .line 195
    div-int/2addr v14, v10

    .line 196
    invoke-static {v11, v2, v12, v13, v14}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v9, v2}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_6

    .line 208
    .line 209
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 210
    .line 211
    div-int/2addr v2, v10

    .line 212
    iget v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 213
    .line 214
    div-int/2addr v9, v10

    .line 215
    iget-object v11, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInnerBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 216
    .line 217
    invoke-virtual {p0, v4, v2, v9, v11}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 218
    .line 219
    .line 220
    :cond_6
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_7

    .line 225
    .line 226
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 231
    .line 232
    iget v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 233
    .line 234
    invoke-virtual {v2, v5, v4, v9}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    goto :goto_3

    .line 239
    :cond_7
    move-object v2, v1

    .line 240
    :goto_3
    if-eqz v2, :cond_8

    .line 241
    .line 242
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mOuterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 243
    .line 244
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 248
    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v4, "initRockerBitmap: use cached network bitmap for OUTER, url="

    .line 255
    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_8
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mOuterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 271
    .line 272
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 273
    .line 274
    sget v9, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_outer_direction:I

    .line 275
    .line 276
    iget v11, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 277
    .line 278
    iget v12, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 279
    .line 280
    invoke-static {v4, v3, v9, v11, v12}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 285
    .line 286
    .line 287
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-nez v2, :cond_9

    .line 292
    .line 293
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 294
    .line 295
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 296
    .line 297
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mOuterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 298
    .line 299
    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 300
    .line 301
    .line 302
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    const/4 v3, 0x3

    .line 309
    if-eq v2, v3, :cond_1c

    .line 310
    .line 311
    const/4 v3, 0x4

    .line 312
    if-eq v2, v3, :cond_16

    .line 313
    .line 314
    if-eq v2, v10, :cond_10

    .line 315
    .line 316
    const/4 v3, 0x6

    .line 317
    if-eq v2, v3, :cond_a

    .line 318
    .line 319
    const/4 v3, 0x7

    .line 320
    if-eq v2, v3, :cond_a

    .line 321
    .line 322
    goto/16 :goto_b

    .line 323
    .line 324
    :cond_a
    const/4 v2, 0x1

    .line 325
    iput-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->isKeyBoardRocker:Z

    .line 326
    .line 327
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-nez v2, :cond_b

    .line 332
    .line 333
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 338
    .line 339
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 340
    .line 341
    invoke-virtual {v2, v7, v3, v4}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    goto :goto_5

    .line 346
    :cond_b
    move-object v2, v1

    .line 347
    :goto_5
    if-eqz v2, :cond_c

    .line 348
    .line 349
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 355
    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string v3, "initRockerBitmap: use cached network bitmap for KEYBOARD_ROCKER DOWN, url="

    .line 362
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_c
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 378
    .line 379
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 380
    .line 381
    sget v4, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_down:I

    .line 382
    .line 383
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 384
    .line 385
    iget v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 386
    .line 387
    invoke-static {v3, v0, v4, v5, v9}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v2, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-nez v0, :cond_d

    .line 399
    .line 400
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 401
    .line 402
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 403
    .line 404
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 405
    .line 406
    invoke-virtual {p0, v7, v0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 407
    .line 408
    .line 409
    :cond_d
    :goto_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-nez v0, :cond_e

    .line 414
    .line 415
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 420
    .line 421
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 422
    .line 423
    invoke-virtual {v0, v8, v1, v2}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    :cond_e
    if-eqz v1, :cond_f

    .line 428
    .line 429
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 432
    .line 433
    .line 434
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 435
    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    const-string v2, "initRockerBitmap: use cached network bitmap for KEYBOARD_ROCKER UP, url="

    .line 442
    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    goto/16 :goto_b

    .line 457
    .line 458
    :cond_f
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 459
    .line 460
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 461
    .line 462
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_up:I

    .line 463
    .line 464
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 465
    .line 466
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 467
    .line 468
    invoke-static {v1, v6, v2, v3, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 473
    .line 474
    .line 475
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-nez v0, :cond_1d

    .line 480
    .line 481
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 482
    .line 483
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 484
    .line 485
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 486
    .line 487
    invoke-virtual {p0, v8, v0, v1, v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_b

    .line 491
    .line 492
    :cond_10
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    if-nez v2, :cond_11

    .line 497
    .line 498
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 503
    .line 504
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 505
    .line 506
    invoke-virtual {v2, v7, v3, v4}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    goto :goto_7

    .line 511
    :cond_11
    move-object v2, v1

    .line 512
    :goto_7
    if-eqz v2, :cond_12

    .line 513
    .line 514
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 515
    .line 516
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 520
    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    const-string v3, "initRockerBitmap: use cached network bitmap for ROCKER_R DOWN, url="

    .line 527
    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    goto :goto_8

    .line 542
    :cond_12
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 543
    .line 544
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 545
    .line 546
    sget v4, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_down:I

    .line 547
    .line 548
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 549
    .line 550
    iget v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 551
    .line 552
    invoke-static {v3, v0, v4, v5, v9}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {v2, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 557
    .line 558
    .line 559
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-nez v0, :cond_13

    .line 564
    .line 565
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 566
    .line 567
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 568
    .line 569
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 570
    .line 571
    invoke-virtual {p0, v7, v0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 572
    .line 573
    .line 574
    :cond_13
    :goto_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-nez v0, :cond_14

    .line 579
    .line 580
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 585
    .line 586
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 587
    .line 588
    invoke-virtual {v0, v8, v1, v2}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    :cond_14
    if-eqz v1, :cond_15

    .line 593
    .line 594
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 597
    .line 598
    .line 599
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 600
    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .line 605
    .line 606
    const-string v2, "initRockerBitmap: use cached network bitmap for ROCKER_R UP, url="

    .line 607
    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    goto/16 :goto_b

    .line 622
    .line 623
    :cond_15
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 624
    .line 625
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 626
    .line 627
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_r_up:I

    .line 628
    .line 629
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 630
    .line 631
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 632
    .line 633
    invoke-static {v1, v6, v2, v3, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 638
    .line 639
    .line 640
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    if-nez v0, :cond_1d

    .line 645
    .line 646
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 647
    .line 648
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 649
    .line 650
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 651
    .line 652
    invoke-virtual {p0, v8, v0, v1, v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 653
    .line 654
    .line 655
    goto/16 :goto_b

    .line 656
    .line 657
    :cond_16
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    if-nez v2, :cond_17

    .line 662
    .line 663
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 668
    .line 669
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 670
    .line 671
    invoke-virtual {v2, v7, v3, v4}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    goto :goto_9

    .line 676
    :cond_17
    move-object v2, v1

    .line 677
    :goto_9
    if-eqz v2, :cond_18

    .line 678
    .line 679
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 680
    .line 681
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 682
    .line 683
    .line 684
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 685
    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    const-string v3, "initRockerBitmap: use cached network bitmap for ROCKER_L DOWN, url="

    .line 692
    .line 693
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    goto :goto_a

    .line 707
    :cond_18
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 708
    .line 709
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 710
    .line 711
    sget v4, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_down:I

    .line 712
    .line 713
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 714
    .line 715
    iget v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 716
    .line 717
    invoke-static {v3, v0, v4, v5, v9}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    invoke-virtual {v2, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 722
    .line 723
    .line 724
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    if-nez v0, :cond_19

    .line 729
    .line 730
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 731
    .line 732
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 733
    .line 734
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 735
    .line 736
    invoke-virtual {p0, v7, v0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 737
    .line 738
    .line 739
    :cond_19
    :goto_a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-nez v0, :cond_1a

    .line 744
    .line 745
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 750
    .line 751
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 752
    .line 753
    invoke-virtual {v0, v8, v1, v2}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    :cond_1a
    if-eqz v1, :cond_1b

    .line 758
    .line 759
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 760
    .line 761
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 762
    .line 763
    .line 764
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 765
    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    .line 767
    .line 768
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .line 770
    .line 771
    const-string v2, "initRockerBitmap: use cached network bitmap for ROCKER_L UP, url="

    .line 772
    .line 773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    goto :goto_b

    .line 787
    :cond_1b
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 788
    .line 789
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 790
    .line 791
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_l_up:I

    .line 792
    .line 793
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 794
    .line 795
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 796
    .line 797
    invoke-static {v1, v6, v2, v3, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 802
    .line 803
    .line 804
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    if-nez v0, :cond_1d

    .line 809
    .line 810
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 811
    .line 812
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 813
    .line 814
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 815
    .line 816
    invoke-virtual {p0, v8, v0, v1, v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 817
    .line 818
    .line 819
    goto :goto_b

    .line 820
    :cond_1c
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 821
    .line 822
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 823
    .line 824
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_direction_down:I

    .line 825
    .line 826
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 827
    .line 828
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 829
    .line 830
    invoke-static {v1, v2, v3, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmapByImgID(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 835
    .line 836
    .line 837
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 838
    .line 839
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 840
    .line 841
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_direction_up:I

    .line 842
    .line 843
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 844
    .line 845
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 846
    .line 847
    invoke-static {v1, v2, v3, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmapByImgID(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 852
    .line 853
    .line 854
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInnerBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 855
    .line 856
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 857
    .line 858
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_inner:I

    .line 859
    .line 860
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 861
    .line 862
    div-int/2addr v3, v10

    .line 863
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 864
    .line 865
    div-int/2addr v4, v10

    .line 866
    invoke-static {v1, v2, v3, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmapByImgID(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 871
    .line 872
    .line 873
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mOuterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 874
    .line 875
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 876
    .line 877
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_rocker_outer_direction:I

    .line 878
    .line 879
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 880
    .line 881
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 882
    .line 883
    invoke-static {v1, v2, v3, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmapByImgID(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 888
    .line 889
    .line 890
    :cond_1d
    :goto_b
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->updateCirclePosition()V

    .line 891
    .line 892
    .line 893
    return-void
.end method

.method private needCenterReset()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->getXobJoystickCenterResetValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    and-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    :goto_0
    and-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_1
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 25
    .line 26
    if-eqz v4, :cond_5

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    if-eq v4, v2, :cond_4

    .line 36
    .line 37
    :cond_3
    if-eqz v0, :cond_5

    .line 38
    .line 39
    const/4 v0, 0x5

    .line 40
    if-ne v4, v0, :cond_5

    .line 41
    .line 42
    :cond_4
    const/4 v1, 0x1

    .line 43
    :cond_5
    return v1
.end method

.method private resetPosition()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInitX:I

    .line 2
    .line 3
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 4
    .line 5
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInitY:I

    .line 6
    .line 7
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 8
    .line 9
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 10
    .line 11
    div-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    add-int/2addr v0, v2

    .line 14
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterX:I

    .line 15
    .line 16
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 17
    .line 18
    div-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterY:I

    .line 22
    .line 23
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterX:I

    .line 24
    .line 25
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterY:I

    .line 26
    .line 27
    return-void
.end method

.method private updateCirclePosition()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleR:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInnerBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    div-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleR:I

    .line 22
    .line 23
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 24
    .line 25
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 26
    .line 27
    div-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    add-int/2addr v1, v0

    .line 30
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterX:I

    .line 31
    .line 32
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 33
    .line 34
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 35
    .line 36
    div-int/lit8 v3, v3, 0x2

    .line 37
    .line 38
    add-int/2addr v3, v2

    .line 39
    iput v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterY:I

    .line 40
    .line 41
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterX:I

    .line 42
    .line 43
    iput v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterY:I

    .line 44
    .line 45
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInitX:I

    .line 46
    .line 47
    iput v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInitY:I

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public calcEightDirection()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->angle:I

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

.method public calcFourDirection()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->angle:I

    .line 2
    .line 3
    const/16 v1, 0x13b

    .line 4
    .line 5
    if-ge v0, v1, :cond_3

    .line 6
    .line 7
    const/16 v1, 0x2e

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v1, 0x88

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x12c

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/16 v1, 0xe2

    .line 20
    .line 21
    if-ge v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x1f4

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/16 v0, 0x2bc

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    :goto_0
    const/16 v0, 0x64

    .line 30
    .line 31
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
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->initWH()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 6

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
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mInnerBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mOuterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v0, :cond_6

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    sget-boolean v1, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    iput-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->drawBitmapAnim(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 58
    .line 59
    int-to-float v1, v1

    .line 60
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 61
    .line 62
    int-to-float v3, v3

    .line 63
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->drawAlignLines(Landroid/graphics/Canvas;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 78
    .line 79
    int-to-float v1, v1

    .line 80
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 81
    .line 82
    int-to-float v2, v2

    .line 83
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move-object v0, v2

    .line 95
    :goto_1
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 96
    .line 97
    int-to-float v1, v1

    .line 98
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 99
    .line 100
    int-to-float v2, v2

    .line 101
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 102
    .line 103
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    .line 105
    .line 106
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterX:I

    .line 111
    .line 112
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleR:I

    .line 113
    .line 114
    sub-int/2addr v0, v1

    .line 115
    int-to-float v0, v0

    .line 116
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterY:I

    .line 117
    .line 118
    sub-int/2addr v2, v1

    .line 119
    int-to-float v1, v2

    .line 120
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->drawRockerCenterText(Landroid/graphics/Canvas;)V

    .line 126
    .line 127
    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    new-instance v0, Landroid/graphics/Matrix;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->angle:I

    .line 136
    .line 137
    rsub-int v1, v1, 0x168

    .line 138
    .line 139
    int-to-float v1, v1

    .line 140
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    int-to-float v2, v2

    .line 145
    const/high16 v3, 0x40000000    # 2.0f

    .line 146
    .line 147
    div-float/2addr v2, v3

    .line 148
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    int-to-float v5, v5

    .line 153
    div-float/2addr v5, v3

    .line 154
    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 155
    .line 156
    .line 157
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 158
    .line 159
    int-to-float v1, v1

    .line 160
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 161
    .line 162
    int-to-float v2, v2

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 167
    .line 168
    invoke-virtual {p1, v4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catch_0
    move-exception p1

    .line 173
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v2, "drawHandleError : "

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 200
    return p1

    .line 201
    :cond_6
    :goto_3
    return v1
.end method

.method protected getCurrentDisplayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapDownRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->mBitmapUpRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
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
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->initWH()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

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
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_b

    .line 16
    .line 17
    const/high16 v4, 0x41200000    # 10.0f

    .line 18
    .line 19
    if-eq v0, v3, :cond_6

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    if-eq v0, v5, :cond_6

    .line 25
    .line 26
    const/4 v5, 0x5

    .line 27
    if-eq v0, v5, :cond_b

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    if-eq v0, v2, :cond_6

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
    iget-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 39
    .line 40
    if-eqz v2, :cond_3

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
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 50
    .line 51
    sub-float/2addr v0, v2

    .line 52
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    cmpl-float v0, v0, v4

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
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 65
    .line 66
    sub-float/2addr v0, v2

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    cmpl-float v0, v0, v4

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
    if-eqz v0, :cond_f

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ge v0, v2, :cond_f

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 96
    .line 97
    if-ne v2, v4, :cond_5

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
    move-result v2

    .line 107
    invoke-direct {p0, v1, v2}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->calcAngle(FF)V

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
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 119
    .line 120
    sub-float/2addr v1, v2

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
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 129
    .line 130
    sub-float/2addr v1, v2

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
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 156
    .line 157
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->updateAlignLinesView(IIII)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 163
    .line 164
    iput-boolean v3, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 165
    .line 166
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->updateCirclePosition()V

    .line 167
    .line 168
    .line 169
    :cond_4
    return v3

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
    if-eqz v0, :cond_f

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
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 190
    .line 191
    if-ne v0, v2, :cond_f

    .line 192
    .line 193
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 194
    .line 195
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterY:I

    .line 196
    .line 197
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterY:I

    .line 198
    .line 199
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterX:I

    .line 200
    .line 201
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->smallCircleCenterX:I

    .line 202
    .line 203
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->needCenterReset()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->resetPosition()V

    .line 210
    .line 211
    .line 212
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 229
    .line 230
    if-eqz v5, :cond_9

    .line 231
    .line 232
    sget-boolean v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 233
    .line 234
    if-nez v2, :cond_8

    .line 235
    .line 236
    const/4 v6, 0x1

    .line 237
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    iget v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->sourceType:I

    .line 244
    .line 245
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    iget v10, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->lastDirection:I

    .line 252
    .line 253
    const/4 v11, 0x0

    .line 254
    const/4 v12, 0x0

    .line 255
    const/4 v13, 0x0

    .line 256
    invoke-interface/range {v5 .. v13}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onRockerTouchEvent(ILjava/util/List;IIIIFF)V

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 261
    .line 262
    .line 263
    move-result-wide v5

    .line 264
    iget-wide v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downTime:J

    .line 265
    .line 266
    sub-long/2addr v5, v7

    .line 267
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->INTERVAL:I

    .line 268
    .line 269
    int-to-long v7, v2

    .line 270
    cmp-long v2, v5, v7

    .line 271
    .line 272
    if-gez v2, :cond_9

    .line 273
    .line 274
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downX:F

    .line 275
    .line 276
    sub-float/2addr v0, v2

    .line 277
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    cmpg-float v0, v0, v4

    .line 282
    .line 283
    if-gez v0, :cond_9

    .line 284
    .line 285
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downY:F

    .line 286
    .line 287
    sub-float/2addr p1, v0

    .line 288
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    cmpg-float p1, p1, v4

    .line 293
    .line 294
    if-gez p1, :cond_9

    .line 295
    .line 296
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 297
    .line 298
    invoke-interface {p1, p0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onClickListener(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 299
    .line 300
    .line 301
    :cond_9
    :goto_1
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->lastDirection:I

    .line 302
    .line 303
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 308
    .line 309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->removePointID(Ljava/lang/Integer;)V

    .line 314
    .line 315
    .line 316
    const/4 p1, -0x1

    .line 317
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 318
    .line 319
    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 320
    .line 321
    if-eqz p1, :cond_a

    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->checkPosition()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 327
    .line 328
    .line 329
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->updateCirclePosition()V

    .line 330
    .line 331
    .line 332
    :cond_a
    return v3

    .line 333
    :cond_b
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 334
    .line 335
    if-nez v0, :cond_f

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    invoke-virtual {p0, v0, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->isPointInView(FF)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_f

    .line 358
    .line 359
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->ableVibrator:Z

    .line 360
    .line 361
    if-eqz v0, :cond_c

    .line 362
    .line 363
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 364
    .line 365
    invoke-static {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->vibrator(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 369
    .line 370
    .line 371
    move-result-wide v0

    .line 372
    iput-wide v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downTime:J

    .line 373
    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downX:F

    .line 383
    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downY:F

    .line 393
    .line 394
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->needCenterReset()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_d

    .line 399
    .line 400
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downX:F

    .line 401
    .line 402
    float-to-int v0, v0

    .line 403
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterX:I

    .line 404
    .line 405
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downY:F

    .line 406
    .line 407
    float-to-int v1, v1

    .line 408
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->circleCenterY:I

    .line 409
    .line 410
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 411
    .line 412
    div-int/2addr v4, v2

    .line 413
    sub-int/2addr v0, v4

    .line 414
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 415
    .line 416
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 417
    .line 418
    div-int/2addr v0, v2

    .line 419
    sub-int/2addr v1, v0

    .line 420
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 421
    .line 422
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 431
    .line 432
    iput-boolean v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 433
    .line 434
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 439
    .line 440
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->addPointID(Ljava/lang/Integer;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;->calcAngle(FF)V

    .line 464
    .line 465
    .line 466
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 467
    .line 468
    if-eqz v0, :cond_e

    .line 469
    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 479
    .line 480
    int-to-float v1, v1

    .line 481
    sub-float/2addr v0, v1

    .line 482
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 483
    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 493
    .line 494
    int-to-float v1, v1

    .line 495
    sub-float/2addr v0, v1

    .line 496
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 497
    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 507
    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 513
    .line 514
    .line 515
    move-result p1

    .line 516
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 517
    .line 518
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 519
    .line 520
    iput-boolean v3, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 521
    .line 522
    :cond_e
    return v3

    .line 523
    :cond_f
    :goto_2
    return v1
.end method

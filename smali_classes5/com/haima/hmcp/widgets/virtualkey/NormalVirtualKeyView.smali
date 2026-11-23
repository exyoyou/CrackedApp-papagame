.class public Lcom/haima/hmcp/widgets/virtualkey/NormalVirtualKeyView;
.super Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public drawVirtualKey(Landroid/graphics/Canvas;Lcom/haima/hmcp/beans/PointCoord;FF)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/virtualkey/NormalVirtualKeyView;->setupPaint()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    iget v0, p2, Lcom/haima/hmcp/beans/PointCoord;->w:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p2, Lcom/haima/hmcp/beans/PointCoord;->h:I

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/16 v0, 0x36

    .line 16
    .line 17
    iput v0, p2, Lcom/haima/hmcp/beans/PointCoord;->w:I

    .line 18
    .line 19
    iput v0, p2, Lcom/haima/hmcp/beans/PointCoord;->h:I

    .line 20
    .line 21
    :cond_1
    iget v0, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 22
    .line 23
    iget v1, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->surfaceWidth:F

    .line 24
    .line 25
    mul-float v2, v0, v1

    .line 26
    .line 27
    mul-float v2, v2, p3

    .line 28
    .line 29
    iget v3, p2, Lcom/haima/hmcp/beans/PointCoord;->w:I

    .line 30
    .line 31
    int-to-float v4, v3

    .line 32
    mul-float v4, v4, p3

    .line 33
    .line 34
    const/high16 v5, 0x40000000    # 2.0f

    .line 35
    .line 36
    div-float/2addr v4, v5

    .line 37
    sub-float/2addr v2, v4

    .line 38
    iget v4, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 39
    .line 40
    iget v6, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->surfaceHeight:F

    .line 41
    .line 42
    mul-float v7, v4, v6

    .line 43
    .line 44
    mul-float v7, v7, p4

    .line 45
    .line 46
    iget v8, p2, Lcom/haima/hmcp/beans/PointCoord;->h:I

    .line 47
    .line 48
    int-to-float v9, v8

    .line 49
    mul-float v9, v9, p4

    .line 50
    .line 51
    div-float/2addr v9, v5

    .line 52
    sub-float/2addr v7, v9

    .line 53
    int-to-float v3, v3

    .line 54
    mul-float v3, v3, p3

    .line 55
    .line 56
    add-float/2addr v3, v2

    .line 57
    int-to-float v8, v8

    .line 58
    mul-float v8, v8, p4

    .line 59
    .line 60
    add-float/2addr v8, v7

    .line 61
    mul-float v0, v0, v1

    .line 62
    .line 63
    mul-float v0, v0, p3

    .line 64
    .line 65
    mul-float v4, v4, v6

    .line 66
    .line 67
    mul-float v4, v4, p4

    .line 68
    .line 69
    sub-float/2addr v3, v2

    .line 70
    div-float p3, v3, v5

    .line 71
    .line 72
    sub-float/2addr v8, v7

    .line 73
    div-float/2addr v8, v5

    .line 74
    invoke-static {p3, v8}, Ljava/lang/Math;->min(FF)F

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    iget-object p4, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->buttonPaint:Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v4, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    iget-object p3, p2, Lcom/haima/hmcp/beans/PointCoord;->buttonName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-nez p3, :cond_3

    .line 90
    .line 91
    const p3, 0x3f4ccccd    # 0.8f

    .line 92
    .line 93
    .line 94
    mul-float v3, v3, p3

    .line 95
    .line 96
    iget-object p3, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    iget-object p4, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 103
    .line 104
    iget-object v1, p2, Lcom/haima/hmcp/beans/PointCoord;->buttonName:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 107
    .line 108
    .line 109
    move-result p4

    .line 110
    cmpl-float v1, p4, v3

    .line 111
    .line 112
    if-lez v1, :cond_2

    .line 113
    .line 114
    div-float/2addr v3, p4

    .line 115
    mul-float p3, p3, v3

    .line 116
    .line 117
    iget-object p4, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    .line 121
    .line 122
    :cond_2
    iget-object p3, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 123
    .line 124
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    iget p4, p3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 129
    .line 130
    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 131
    .line 132
    sub-float p3, p4, p3

    .line 133
    .line 134
    div-float/2addr p3, v5

    .line 135
    add-float/2addr v4, p3

    .line 136
    sub-float/2addr v4, p4

    .line 137
    iget-object p2, p2, Lcom/haima/hmcp/beans/PointCoord;->buttonName:Ljava/lang/String;

    .line 138
    .line 139
    iget-object p3, p0, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->textPaint:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {p1, p2, v0, v4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method protected setupPaint()V
    .locals 0

    return-void
.end method

.class public Lcom/papa91/view/indicators/PacmanIndicator;
.super Lcom/papa91/view/Indicator;
.source "SourceFile"


# instance fields
.field private alpha:I

.field private degrees1:F

.field private degrees2:F

.field private translateX:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/view/Indicator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$002(Lcom/papa91/view/indicators/PacmanIndicator;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/indicators/PacmanIndicator;->translateX:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/papa91/view/indicators/PacmanIndicator;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/indicators/PacmanIndicator;->alpha:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/papa91/view/indicators/PacmanIndicator;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/indicators/PacmanIndicator;->degrees1:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$302(Lcom/papa91/view/indicators/PacmanIndicator;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/indicators/PacmanIndicator;->degrees2:F

    .line 2
    .line 3
    return p1
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/view/Indicator;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0xb

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    iget v1, p0, Lcom/papa91/view/indicators/PacmanIndicator;->alpha:I

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/papa91/view/indicators/PacmanIndicator;->translateX:F

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/papa91/view/Indicator;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    div-int/lit8 v2, v2, 0x2

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private drawPacman(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/papa91/view/Indicator;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/papa91/view/Indicator;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    div-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/papa91/view/indicators/PacmanIndicator;->degrees1:F

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0xff

    .line 27
    .line 28
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Landroid/graphics/RectF;

    .line 32
    .line 33
    neg-float v3, v0

    .line 34
    const v5, 0x3fd9999a    # 1.7f

    .line 35
    .line 36
    .line 37
    div-float v9, v3, v5

    .line 38
    .line 39
    neg-float v3, v1

    .line 40
    div-float v10, v3, v5

    .line 41
    .line 42
    div-float v11, v0, v5

    .line 43
    .line 44
    div-float v12, v1, v5

    .line 45
    .line 46
    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    const/high16 v6, 0x43870000    # 270.0f

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    move-object v3, p1

    .line 54
    move-object v8, p2

    .line 55
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    .line 66
    .line 67
    iget v0, p0, Lcom/papa91/view/indicators/PacmanIndicator;->degrees2:F

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    .line 74
    .line 75
    new-instance v4, Landroid/graphics/RectF;

    .line 76
    .line 77
    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    .line 79
    .line 80
    const/high16 v5, 0x42b40000    # 90.0f

    .line 81
    .line 82
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 86
    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/view/indicators/PacmanIndicator;->drawPacman(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/papa91/view/indicators/PacmanIndicator;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa91/view/Indicator;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    div-int/lit8 v1, v1, 0xb

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v3, v2, [F

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/view/Indicator;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    int-to-float v4, v4

    .line 21
    sub-float/2addr v4, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    aput v4, v3, v1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa91/view/Indicator;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    div-int/2addr v1, v2

    .line 30
    int-to-float v1, v1

    .line 31
    const/4 v2, 0x1

    .line 32
    aput v1, v3, v2

    .line 33
    .line 34
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-wide/16 v2, 0x28a

    .line 39
    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    .line 43
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 44
    .line 45
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    .line 50
    .line 51
    const/4 v4, -0x1

    .line 52
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 53
    .line 54
    .line 55
    new-instance v5, Lcom/papa91/view/indicators/PacmanIndicator$1;

    .line 56
    .line 57
    invoke-direct {v5, p0}, Lcom/papa91/view/indicators/PacmanIndicator$1;-><init>(Lcom/papa91/view/indicators/PacmanIndicator;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1, v5}, Lcom/papa91/view/Indicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    .line 62
    .line 63
    const/16 v5, 0xff

    .line 64
    .line 65
    const/16 v6, 0x7a

    .line 66
    .line 67
    filled-new-array {v5, v6}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 79
    .line 80
    .line 81
    new-instance v6, Lcom/papa91/view/indicators/PacmanIndicator$2;

    .line 82
    .line 83
    invoke-direct {v6, p0}, Lcom/papa91/view/indicators/PacmanIndicator$2;-><init>(Lcom/papa91/view/indicators/PacmanIndicator;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v5, v6}, Lcom/papa91/view/Indicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    .line 88
    .line 89
    const/4 v6, 0x3

    .line 90
    new-array v7, v6, [F

    .line 91
    .line 92
    fill-array-data v7, :array_0

    .line 93
    .line 94
    .line 95
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 103
    .line 104
    .line 105
    new-instance v8, Lcom/papa91/view/indicators/PacmanIndicator$3;

    .line 106
    .line 107
    invoke-direct {v8, p0}, Lcom/papa91/view/indicators/PacmanIndicator$3;-><init>(Lcom/papa91/view/indicators/PacmanIndicator;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v7, v8}, Lcom/papa91/view/Indicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    .line 112
    .line 113
    new-array v6, v6, [F

    .line 114
    .line 115
    fill-array-data v6, :array_1

    .line 116
    .line 117
    .line 118
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v6, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lcom/papa91/view/indicators/PacmanIndicator$4;

    .line 129
    .line 130
    invoke-direct {v2, p0}, Lcom/papa91/view/indicators/PacmanIndicator$4;-><init>(Lcom/papa91/view/indicators/PacmanIndicator;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v6, v2}, Lcom/papa91/view/Indicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :array_0
    .array-data 4
        0x0
        0x42340000    # 45.0f
        0x0
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_1
    .array-data 4
        0x0
        -0x3dcc0000    # -45.0f
        0x0
    .end array-data
.end method

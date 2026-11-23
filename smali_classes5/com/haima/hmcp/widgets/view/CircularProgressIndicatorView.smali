.class public Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularProgressIndicatorView"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private maxProgress:I

.field private progress:F

.field private progressPaint:Landroid/graphics/Paint;

.field private progressWidth:I

.field private showProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progress:F

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressWidth:I

    const/16 p1, 0x64

    .line 4
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->maxProgress:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->showProgress:Z

    .line 6
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progress:F

    const/4 p1, 0x5

    .line 9
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressWidth:I

    const/16 p1, 0x64

    .line 10
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->maxProgress:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->showProgress:Z

    .line 12
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progress:F

    const/4 p1, 0x5

    .line 15
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressWidth:I

    const/16 p1, 0x64

    .line 16
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->maxProgress:I

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->showProgress:Z

    .line 18
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->init()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private init()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->backgroundPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/high16 v2, 0x4d000000    # 1.3421773E8f

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->backgroundPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->backgroundPaint:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==touchModeSlide===animation.cancelAnimation()="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->animator:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->setProgress(F)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->showProgress:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    div-int/lit8 v2, v0, 0x14

    .line 17
    .line 18
    iput v2, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressWidth:I

    .line 19
    .line 20
    sget-object v2, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "==touchModeSlide===progressWidth="

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v4, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressWidth:I

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-float v3, v3

    .line 49
    const/high16 v4, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v3, v4

    .line 52
    iget v5, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressWidth:I

    .line 53
    .line 54
    int-to-float v5, v5

    .line 55
    sub-float/2addr v3, v5

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    int-to-float v5, v5

    .line 61
    div-float/2addr v5, v4

    .line 62
    int-to-float v0, v0

    .line 63
    div-float/2addr v0, v4

    .line 64
    int-to-float v1, v1

    .line 65
    div-float/2addr v1, v4

    .line 66
    new-instance v7, Landroid/graphics/RectF;

    .line 67
    .line 68
    sub-float v4, v0, v3

    .line 69
    .line 70
    sub-float v6, v1, v3

    .line 71
    .line 72
    add-float v8, v0, v3

    .line 73
    .line 74
    add-float/2addr v3, v1

    .line 75
    invoke-direct {v7, v4, v6, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Landroid/graphics/RectF;

    .line 79
    .line 80
    sub-float v4, v0, v5

    .line 81
    .line 82
    sub-float v6, v1, v5

    .line 83
    .line 84
    add-float/2addr v0, v5

    .line 85
    add-float/2addr v1, v5

    .line 86
    invoke-direct {v3, v4, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->backgroundPaint:Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    iget v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progress:F

    .line 95
    .line 96
    const/high16 v1, 0x42c80000    # 100.0f

    .line 97
    .line 98
    div-float/2addr v0, v1

    .line 99
    const/high16 v1, 0x43b40000    # 360.0f

    .line 100
    .line 101
    mul-float v9, v0, v1

    .line 102
    .line 103
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressPaint:Landroid/graphics/Paint;

    .line 104
    .line 105
    iget v1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressWidth:I

    .line 106
    .line 107
    int-to-float v1, v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v1, "==touchModeSlide===sweepAngle="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, " progress="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget v1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progress:F

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/high16 v8, -0x3cf90000    # -135.0f

    .line 142
    .line 143
    const/4 v10, 0x0

    .line 144
    iget-object v11, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progressPaint:Landroid/graphics/Paint;

    .line 145
    .line 146
    move-object v6, p1

    .line 147
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 148
    .line 149
    .line 150
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->progress:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowProgress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->showProgress:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startAnimation(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->animator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iget v1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->maxProgress:I

    .line 10
    .line 11
    filled-new-array {v0, v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->animator:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->animator:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    new-instance p2, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView$1;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView$1;-><init>(Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->animator:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    new-instance p2, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView$2;

    .line 37
    .line 38
    invoke-direct {p2, p0}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView$2;-><init>(Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->animator:Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

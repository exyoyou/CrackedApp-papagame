.class public Lcom/papa91/view/CountDownView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/CountDownView$OnCountDownListener;,
        Lcom/papa91/view/CountDownView$StatusEnum;
    }
.end annotation


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field private circleAnimator:Landroid/animation/ValueAnimator;

.field private circleValue:F

.field private curAngle:I

.field handler:Landroid/os/Handler;

.field private loadSuccessColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPathCircle:Landroid/graphics/Path;

.field private mPathCircleDst:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private mStatus:Lcom/papa91/view/CountDownView$StatusEnum;

.field private minAngle:I

.field onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

.field private pointerPath:Landroid/graphics/Path;

.field private progressColor:I

.field private progressRadius:F

.field private progressWidth:F

.field private startAngle:I

.field private successPath:Landroid/graphics/Path;

.field private successValue:F

.field private sweepAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/papa91/view/CountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/papa91/view/CountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, -0x5a

    .line 4
    iput p1, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    .line 5
    iput p1, p0, Lcom/papa91/view/CountDownView;->minAngle:I

    const/16 p1, 0x78

    .line 6
    iput p1, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/papa91/view/CountDownView;->curAngle:I

    .line 8
    new-instance p1, Lcom/papa91/view/CountDownView$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/CountDownView$1;-><init>(Lcom/papa91/view/CountDownView;)V

    iput-object p1, p0, Lcom/papa91/view/CountDownView;->handler:Landroid/os/Handler;

    const-string p1, "#ffffff"

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/papa91/view/CountDownView;->progressColor:I

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa91/view/CountDownView;->loadSuccessColor:I

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/papa91/view/CountDownView;->dip2px(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    .line 12
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->initPaint()V

    .line 13
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->initPath()V

    .line 14
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->initAnim()V

    return-void
.end method

.method static synthetic access$002(Lcom/papa91/view/CountDownView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/CountDownView;->circleValue:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/papa91/view/CountDownView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/CountDownView;->successValue:F

    .line 2
    .line 3
    return p1
.end method

.method private initAnim()V
    .locals 2

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
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/papa91/view/CountDownView;->circleAnimator:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    new-instance v1, Lcom/papa91/view/CountDownView$2;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/papa91/view/CountDownView$2;-><init>(Lcom/papa91/view/CountDownView;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initPaint()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget v1, p0, Lcom/papa91/view/CountDownView;->progressColor:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    iget v1, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private initPath()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircle:Landroid/graphics/Path;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/Path;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    .line 28
    .line 29
    new-instance v0, Landroid/graphics/Path;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    .line 35
    .line 36
    return-void
.end method

.method private loadLoading()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/view/CountDownView$StatusEnum;->Loading:Lcom/papa91/view/CountDownView$StatusEnum;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/papa91/view/CountDownView;->setStatus(Lcom/papa91/view/CountDownView$StatusEnum;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private loadSuccess()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->resetPath()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/view/CountDownView$StatusEnum;->LoadSuccess:Lcom/papa91/view/CountDownView$StatusEnum;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/papa91/view/CountDownView;->setStatus(Lcom/papa91/view/CountDownView$StatusEnum;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->startSuccessAnim()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private resetPath()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/view/CountDownView;->successValue:F

    .line 3
    .line 4
    iput v0, p0, Lcom/papa91/view/CountDownView;->circleValue:F

    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircle:Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private setStatus(Lcom/papa91/view/CountDownView$StatusEnum;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/CountDownView;->mStatus:Lcom/papa91/view/CountDownView$StatusEnum;

    .line 2
    .line 3
    return-void
.end method

.method private startSuccessAnim()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->circleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const-wide/16 v1, 0x1388

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [F

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-wide/16 v1, 0x1f4

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/papa91/view/CountDownView$3;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/papa91/view/CountDownView$3;-><init>(Lcom/papa91/view/CountDownView;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/papa91/view/CountDownView;->circleAnimator:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method dip2px(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    float-to-int p1, p1

    .line 16
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mStatus:Lcom/papa91/view/CountDownView$StatusEnum;

    .line 18
    .line 19
    sget-object v1, Lcom/papa91/view/CountDownView$StatusEnum;->Loading:Lcom/papa91/view/CountDownView$StatusEnum;

    .line 20
    .line 21
    const/high16 v2, 0x40000000    # 2.0f

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-ne v0, v1, :cond_4

    .line 25
    .line 26
    iget v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    .line 27
    .line 28
    iget v1, p0, Lcom/papa91/view/CountDownView;->minAngle:I

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    iget v4, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    .line 33
    .line 34
    add-int/lit8 v4, v4, 0x6

    .line 35
    .line 36
    iput v4, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    .line 37
    .line 38
    :cond_0
    iget v4, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    .line 39
    .line 40
    const/16 v5, 0x14

    .line 41
    .line 42
    const/16 v6, 0x12c

    .line 43
    .line 44
    if-ge v4, v6, :cond_1

    .line 45
    .line 46
    if-le v0, v1, :cond_2

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x6

    .line 49
    .line 50
    iput v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    .line 51
    .line 52
    if-le v4, v5, :cond_2

    .line 53
    .line 54
    add-int/lit8 v4, v4, -0x6

    .line 55
    .line 56
    iput v4, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    .line 57
    .line 58
    :cond_2
    iget v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    .line 59
    .line 60
    add-int/2addr v1, v6

    .line 61
    if-le v0, v1, :cond_3

    .line 62
    .line 63
    rem-int/lit16 v0, v0, 0x168

    .line 64
    .line 65
    iput v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    .line 66
    .line 67
    iput v0, p0, Lcom/papa91/view/CountDownView;->minAngle:I

    .line 68
    .line 69
    iput v5, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    .line 70
    .line 71
    :cond_3
    iget v0, p0, Lcom/papa91/view/CountDownView;->curAngle:I

    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x4

    .line 74
    .line 75
    iput v0, p0, Lcom/papa91/view/CountDownView;->curAngle:I

    .line 76
    .line 77
    int-to-float v0, v0

    .line 78
    iget v1, p0, Lcom/papa91/view/CountDownView;->progressRadius:F

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 81
    .line 82
    .line 83
    new-instance v5, Landroid/graphics/RectF;

    .line 84
    .line 85
    iget v0, p0, Lcom/papa91/view/CountDownView;->progressRadius:F

    .line 86
    .line 87
    mul-float v1, v0, v2

    .line 88
    .line 89
    mul-float v0, v0, v2

    .line 90
    .line 91
    invoke-direct {v5, v3, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 92
    .line 93
    .line 94
    iget v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    .line 95
    .line 96
    int-to-float v6, v0

    .line 97
    iget v0, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    .line 98
    .line 99
    int-to-float v7, v0

    .line 100
    const/4 v8, 0x0

    .line 101
    iget-object v9, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 102
    .line 103
    move-object v4, p1

    .line 104
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_4
    sget-object v1, Lcom/papa91/view/CountDownView$StatusEnum;->LoadSuccess:Lcom/papa91/view/CountDownView$StatusEnum;

    .line 113
    .line 114
    if-ne v0, v1, :cond_6

    .line 115
    .line 116
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 117
    .line 118
    iget v1, p0, Lcom/papa91/view/CountDownView;->loadSuccessColor:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircle:Landroid/graphics/Path;

    .line 124
    .line 125
    new-instance v1, Landroid/graphics/RectF;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    int-to-float v4, v4

    .line 132
    iget v5, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    .line 133
    .line 134
    mul-float v5, v5, v2

    .line 135
    .line 136
    sub-float/2addr v4, v5

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    int-to-float v5, v5

    .line 142
    iget v6, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    .line 143
    .line 144
    mul-float v6, v6, v2

    .line 145
    .line 146
    sub-float/2addr v5, v6

    .line 147
    invoke-direct {v1, v3, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 148
    .line 149
    .line 150
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 151
    .line 152
    const/high16 v4, 0x43b40000    # 360.0f

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/papa91/view/CountDownView;->mPathCircle:Landroid/graphics/Path;

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 166
    .line 167
    iget v1, p0, Lcom/papa91/view/CountDownView;->circleValue:F

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    mul-float v1, v1, v4

    .line 174
    .line 175
    iget-object v4, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    .line 176
    .line 177
    const/4 v5, 0x1

    .line 178
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 184
    .line 185
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 186
    .line 187
    .line 188
    iget v0, p0, Lcom/papa91/view/CountDownView;->circleValue:F

    .line 189
    .line 190
    const/high16 v1, 0x3f800000    # 1.0f

    .line 191
    .line 192
    cmpl-float v0, v0, v1

    .line 193
    .line 194
    if-nez v0, :cond_5

    .line 195
    .line 196
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    div-int/lit8 v4, v4, 0x8

    .line 203
    .line 204
    mul-int/lit8 v4, v4, 0x3

    .line 205
    .line 206
    int-to-float v4, v4

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    div-int/lit8 v6, v6, 0x2

    .line 212
    .line 213
    int-to-float v6, v6

    .line 214
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    div-int/lit8 v4, v4, 0x2

    .line 224
    .line 225
    int-to-float v4, v4

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    div-int/lit8 v6, v6, 0x5

    .line 231
    .line 232
    mul-int/lit8 v6, v6, 0x3

    .line 233
    .line 234
    int-to-float v6, v6

    .line 235
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    div-int/lit8 v4, v4, 0x3

    .line 245
    .line 246
    mul-int/lit8 v4, v4, 0x2

    .line 247
    .line 248
    int-to-float v4, v4

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    div-int/lit8 v6, v6, 0x5

    .line 254
    .line 255
    mul-int/lit8 v6, v6, 0x2

    .line 256
    .line 257
    int-to-float v6, v6

    .line 258
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 262
    .line 263
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 267
    .line 268
    iget-object v4, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    .line 269
    .line 270
    invoke-virtual {v0, v4, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 274
    .line 275
    iget v2, p0, Lcom/papa91/view/CountDownView;->successValue:F

    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    mul-float v2, v2, v4

    .line 282
    .line 283
    iget-object v4, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    .line 284
    .line 285
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    .line 289
    .line 290
    iget-object v2, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 291
    .line 292
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 293
    .line 294
    .line 295
    iget p1, p0, Lcom/papa91/view/CountDownView;->successValue:F

    .line 296
    .line 297
    cmpl-float p1, p1, v1

    .line 298
    .line 299
    if-nez p1, :cond_6

    .line 300
    .line 301
    iget-object p1, p0, Lcom/papa91/view/CountDownView;->onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

    .line 302
    .line 303
    if-eqz p1, :cond_6

    .line 304
    .line 305
    invoke-interface {p1}, Lcom/papa91/view/CountDownView$OnCountDownListener;->onSuccessFinish()V

    .line 306
    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    .line 310
    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    div-int/lit8 v1, v1, 0x2

    .line 316
    .line 317
    int-to-float v1, v1

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    div-int/lit8 v2, v2, 0x4

    .line 323
    .line 324
    int-to-float v2, v2

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    .line 329
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    div-int/lit8 v1, v1, 0x2

    .line 335
    .line 336
    int-to-float v1, v1

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    div-int/lit8 v2, v2, 0x2

    .line 342
    .line 343
    int-to-float v2, v2

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    .line 348
    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    mul-int/lit8 v1, v1, 0x3

    .line 354
    .line 355
    div-int/lit8 v1, v1, 0x4

    .line 356
    .line 357
    int-to-float v1, v1

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    div-int/lit8 v2, v2, 0x2

    .line 363
    .line 364
    int-to-float v2, v2

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    .line 369
    .line 370
    iget-object v1, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 371
    .line 372
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 373
    .line 374
    .line 375
    :cond_6
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    const/high16 v2, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p1, p0, Lcom/papa91/view/CountDownView;->progressRadius:F

    .line 17
    .line 18
    mul-float p1, p1, v1

    .line 19
    .line 20
    iget v0, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    .line 21
    .line 22
    add-float/2addr p1, v0

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    add-float/2addr p1, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    add-float/2addr p1, v0

    .line 35
    float-to-int p1, p1

    .line 36
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-ne v0, v2, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget p2, p0, Lcom/papa91/view/CountDownView;->progressRadius:F

    .line 48
    .line 49
    mul-float p2, p2, v1

    .line 50
    .line 51
    iget v0, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    .line 52
    .line 53
    add-float/2addr p2, v0

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-float v0, v0

    .line 59
    add-float/2addr p2, v0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    int-to-float v0, v0

    .line 65
    add-float/2addr p2, v0

    .line 66
    float-to-int p2, p2

    .line 67
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/view/CountDownView;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setOnCountDownListener(Lcom/papa91/view/CountDownView$OnCountDownListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/CountDownView;->onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->resetPath()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/view/CountDownView$StatusEnum;->LoadSuccess:Lcom/papa91/view/CountDownView$StatusEnum;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/papa91/view/CountDownView;->setStatus(Lcom/papa91/view/CountDownView$StatusEnum;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->startSuccessAnim()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

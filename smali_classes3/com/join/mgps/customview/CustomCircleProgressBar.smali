.class public Lcom/join/mgps/customview/CustomCircleProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
    }
.end annotation


# instance fields
.field private b:I

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:I

.field private i:F

.field private j:I

.field private k:Landroid/graphics/Paint;

.field private l:Ljava/lang/String;

.field private m:Landroid/graphics/Rect;

.field private n:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/CustomCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/CustomCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->CustomCircleProgressBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0600c0

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p2, v2}, Lcom/join/mgps/customview/CustomCircleProgressBar;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f0601a4

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->d:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 p3, 0x6

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->e:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41600000    # 14.0f

    invoke-static {p2, p3}, Lcom/join/mgps/customview/CustomCircleProgressBar;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, Lcom/join/mgps/customview/CustomCircleProgressBar;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/16 p3, 0x8

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:F

    const/4 p2, 0x5

    const/high16 p3, 0x42480000    # 50.0f

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->i:F

    const/4 p2, 0x2

    const/16 p3, 0x64

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:I

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:I

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CustomCircleProgressBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->i:F

    .line 2
    .line 3
    return p1
.end method

.method public static b(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dp"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p1, p1, p0

    .line 12
    .line 13
    const/high16 p0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, p0

    .line 16
    float-to-int p0, p1

    .line 17
    return p0
.end method

.method private c(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startProgress"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aput p1, v0, v1

    .line 10
    .line 11
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->n:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/customview/CustomCircleProgressBar$a;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/CustomCircleProgressBar$a;-><init>(Lcom/join/mgps/customview/CustomCircleProgressBar;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->n:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    const-wide/16 v0, 0x1f4

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->n:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    const-wide/16 v0, 0x7d0

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->n:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->n:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->i:F

    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:I

    .line 9
    .line 10
    int-to-float v2, v2

    .line 11
    div-float/2addr v1, v2

    .line 12
    const/high16 v2, 0x42c80000    # 100.0f

    .line 13
    .line 14
    mul-float v1, v1, v2

    .line 15
    .line 16
    float-to-int v1, v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "%"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method


# virtual methods
.method public getInsideColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized getMaxProgress()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public getOutsideColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutsideRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized getProgress()F
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->i:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public getProgressTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public getProgressWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:F

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 11
    .line 12
    iget v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->d:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 18
    .line 19
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 25
    .line 26
    iget v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:F

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    .line 36
    .line 37
    int-to-float v0, v0

    .line 38
    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:F

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 46
    .line 47
    iget v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Landroid/graphics/RectF;

    .line 53
    .line 54
    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:F

    .line 55
    .line 56
    sub-float v2, v0, v1

    .line 57
    .line 58
    sub-float v3, v0, v1

    .line 59
    .line 60
    add-float v5, v0, v1

    .line 61
    .line 62
    add-float/2addr v0, v1

    .line 63
    invoke-direct {v4, v2, v3, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:I

    .line 67
    .line 68
    invoke-static {v0}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->getDegree(I)F

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->i:F

    .line 73
    .line 74
    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:I

    .line 75
    .line 76
    int-to-float v1, v1

    .line 77
    div-float/2addr v0, v1

    .line 78
    const/high16 v1, 0x43b40000    # 360.0f

    .line 79
    .line 80
    mul-float v6, v0, v1

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    iget-object v8, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 84
    .line 85
    move-object v3, p1

    .line 86
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Landroid/graphics/Rect;

    .line 90
    .line 91
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->m:Landroid/graphics/Rect;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 97
    .line 98
    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->e:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 104
    .line 105
    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomCircleProgressBar;->getProgressText()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->l:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iget-object v3, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->m:Landroid/graphics/Rect;

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 145
    .line 146
    sub-int/2addr v1, v2

    .line 147
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 148
    .line 149
    add-int/2addr v1, v0

    .line 150
    div-int/lit8 v1, v1, 0x2

    .line 151
    .line 152
    sub-int/2addr v1, v0

    .line 153
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->l:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    div-int/lit8 v2, v2, 0x2

    .line 160
    .line 161
    iget-object v3, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->m:Landroid/graphics/Rect;

    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    div-int/lit8 v3, v3, 0x2

    .line 168
    .line 169
    sub-int/2addr v2, v3

    .line 170
    int-to-float v2, v2

    .line 171
    int-to-float v1, v1

    .line 172
    iget-object v3, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Landroid/graphics/Paint;

    .line 173
    .line 174
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

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
    if-ne p1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:F

    .line 17
    .line 18
    mul-float p1, p1, v1

    .line 19
    .line 20
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:F

    .line 21
    .line 22
    add-float/2addr p1, v0

    .line 23
    float-to-int v0, p1

    .line 24
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-ne p2, v2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:F

    .line 36
    .line 37
    mul-float p1, p1, v1

    .line 38
    .line 39
    iget p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:F

    .line 40
    .line 41
    add-float/2addr p1, p2

    .line 42
    float-to-int p1, p1

    .line 43
    :goto_1
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setInsideColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insideColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setMaxProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxProgress"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "maxProgress should not be less than 0"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public setOutsideColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outsideColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setOutsideRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outsideRadius"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:F

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:I

    .line 5
    .line 6
    if-le p1, v0, :cond_0

    .line 7
    .line 8
    move p1, v0

    .line 9
    :cond_0
    int-to-float p1, p1

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->i:F

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "progress should not be less than 0"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public setProgressTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressTextColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressTextSize"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    .line 2
    .line 3
    return-void
.end method

.method public setProgressWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressWidth"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:F

    .line 2
    .line 3
    return-void
.end method

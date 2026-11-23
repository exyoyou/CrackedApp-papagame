.class public Lcom/join/mgps/customview/LightningView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private b:Landroid/graphics/Shader;

.field private c:Landroid/graphics/Matrix;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:Z

.field private j:Landroid/graphics/Rect;

.field private k:Landroid/animation/ValueAnimator;

.field private l:Z


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

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->e:I

    iput p1, p0, Lcom/join/mgps/customview/LightningView;->f:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/LightningView;->g:F

    iput v0, p0, Lcom/join/mgps/customview/LightningView;->h:F

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->i:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->l:Z

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/LightningView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->e:I

    iput p1, p0, Lcom/join/mgps/customview/LightningView;->f:I

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/join/mgps/customview/LightningView;->g:F

    iput p2, p0, Lcom/join/mgps/customview/LightningView;->h:F

    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->i:Z

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->l:Z

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/LightningView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->e:I

    iput p1, p0, Lcom/join/mgps/customview/LightningView;->f:I

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/LightningView;->g:F

    iput p2, p0, Lcom/join/mgps/customview/LightningView;->h:F

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->i:Z

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->l:Z

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/customview/LightningView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/LightningView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LightningView;->g:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/LightningView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->g:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/LightningView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LightningView;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/LightningView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LightningView;->h:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/LightningView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->h:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/LightningView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LightningView;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LightningView;->c:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Shader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LightningView;->b:Landroid/graphics/Shader;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/customview/LightningView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->i:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/join/mgps/customview/LightningView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LightningView;->k:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method private k()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/graphics/Rect;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/LightningView;->d:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/join/mgps/customview/LightningView;->l()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private l()V
    .locals 3

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
    iput-object v0, p0, Lcom/join/mgps/customview/LightningView;->k:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    const-wide/16 v1, 0x7d0

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->k:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->k:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-instance v1, Lcom/join/mgps/customview/LightningView$a;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/LightningView$a;-><init>(Lcom/join/mgps/customview/LightningView;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/join/mgps/customview/LightningView;->l:Z

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->k:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    const/4 v1, -0x1

    .line 45
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/join/mgps/customview/LightningView$b;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/LightningView$b;-><init>(Lcom/join/mgps/customview/LightningView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/LightningView;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->k:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/customview/LightningView;->i:Z

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/LightningView;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->k:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/customview/LightningView;->i:Z

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
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
    iget-boolean v0, p0, Lcom/join/mgps/customview/LightningView;->i:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->c:Landroid/graphics/Matrix;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    div-int/lit8 v1, v1, 0x2

    .line 24
    .line 25
    int-to-float v1, v1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    div-int/lit8 v2, v2, 0x2

    .line 31
    .line 32
    int-to-float v2, v2

    .line 33
    iget-object v3, p0, Lcom/join/mgps/customview/LightningView;->d:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget p3, p0, Lcom/join/mgps/customview/LightningView;->e:I

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    iput p3, p0, Lcom/join/mgps/customview/LightningView;->e:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iput p3, p0, Lcom/join/mgps/customview/LightningView;->f:I

    .line 19
    .line 20
    iget p3, p0, Lcom/join/mgps/customview/LightningView;->e:I

    .line 21
    .line 22
    if-lez p3, :cond_0

    .line 23
    .line 24
    new-instance p3, Landroid/graphics/LinearGradient;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    iget p4, p0, Lcom/join/mgps/customview/LightningView;->e:I

    .line 29
    .line 30
    int-to-float v3, p4

    .line 31
    iget p4, p0, Lcom/join/mgps/customview/LightningView;->f:I

    .line 32
    .line 33
    div-int/lit8 p4, p4, 0x3

    .line 34
    .line 35
    int-to-float v4, p4

    .line 36
    const/4 p4, 0x6

    .line 37
    new-array v5, p4, [I

    .line 38
    .line 39
    fill-array-data v5, :array_0

    .line 40
    .line 41
    .line 42
    new-array v6, p4, [F

    .line 43
    .line 44
    fill-array-data v6, :array_1

    .line 45
    .line 46
    .line 47
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 48
    .line 49
    move-object v0, p3

    .line 50
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 51
    .line 52
    .line 53
    iput-object p3, p0, Lcom/join/mgps/customview/LightningView;->b:Landroid/graphics/Shader;

    .line 54
    .line 55
    iget-object p4, p0, Lcom/join/mgps/customview/LightningView;->d:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    .line 59
    .line 60
    iget-object p3, p0, Lcom/join/mgps/customview/LightningView;->d:Landroid/graphics/Paint;

    .line 61
    .line 62
    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    .line 63
    .line 64
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    .line 65
    .line 66
    invoke-direct {p4, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    .line 71
    .line 72
    new-instance p3, Landroid/graphics/Matrix;

    .line 73
    .line 74
    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p3, p0, Lcom/join/mgps/customview/LightningView;->c:Landroid/graphics/Matrix;

    .line 78
    .line 79
    iget p4, p0, Lcom/join/mgps/customview/LightningView;->e:I

    .line 80
    .line 81
    mul-int/lit8 p4, p4, -0x2

    .line 82
    .line 83
    int-to-float p4, p4

    .line 84
    iget v0, p0, Lcom/join/mgps/customview/LightningView;->f:I

    .line 85
    .line 86
    int-to-float v0, v0

    .line 87
    invoke-virtual {p3, p4, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 88
    .line 89
    .line 90
    iget-object p3, p0, Lcom/join/mgps/customview/LightningView;->b:Landroid/graphics/Shader;

    .line 91
    .line 92
    iget-object p4, p0, Lcom/join/mgps/customview/LightningView;->c:Landroid/graphics/Matrix;

    .line 93
    .line 94
    invoke-virtual {p3, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 95
    .line 96
    .line 97
    iget-object p3, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/graphics/Rect;

    .line 98
    .line 99
    const/4 p4, 0x0

    .line 100
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    .line 102
    .line 103
    :cond_0
    return-void

    .line 104
    nop

    .line 105
    :array_0
    .array-data 4
        0xffffff
        0x40ffffff    # 7.9999995f
        0xffffff
        0x40ffffff    # 7.9999995f
        0xffffff
        0xffffff
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3eeb851f    # 0.46f
        0x3f400000    # 0.75f
        0x3f428f5c    # 0.76f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAutoRun(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoRun"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->l:Z

    .line 2
    .line 3
    return-void
.end method

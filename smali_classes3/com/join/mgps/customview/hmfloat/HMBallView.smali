.class public Lcom/join/mgps/customview/hmfloat/HMBallView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;
    }
.end annotation


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

.field private e:F

.field private f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

.field private g:F

.field private h:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
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

    .line 2
    new-instance p1, Lcom/join/mgps/customview/hmfloat/HMBallView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$a;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Lcom/join/mgps/customview/hmfloat/HMBallView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$b;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 4
    sget-object p1, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->CIRCLE:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->e:F

    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    const/high16 p1, 0x40c00000    # 6.0f

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 8
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/join/mgps/customview/hmfloat/HMBallView$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$c;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/join/mgps/customview/hmfloat/HMBallView$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$d;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/HMBallView;->l()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Lcom/join/mgps/customview/hmfloat/HMBallView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$a;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Lcom/join/mgps/customview/hmfloat/HMBallView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$b;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 18
    sget-object p1, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->CIRCLE:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->e:F

    .line 20
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    const/high16 p1, 0x40c00000    # 6.0f

    .line 21
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 22
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 23
    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/join/mgps/customview/hmfloat/HMBallView$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$c;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/join/mgps/customview/hmfloat/HMBallView$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$d;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/HMBallView;->l()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p1, Lcom/join/mgps/customview/hmfloat/HMBallView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$a;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 31
    new-instance p1, Lcom/join/mgps/customview/hmfloat/HMBallView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$b;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 32
    sget-object p1, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->CIRCLE:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->e:F

    .line 34
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    const/high16 p1, 0x40c00000    # 6.0f

    .line 35
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 36
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 37
    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/join/mgps/customview/hmfloat/HMBallView$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$c;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/join/mgps/customview/hmfloat/HMBallView$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/hmfloat/HMBallView$d;-><init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/HMBallView;->l()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/join/mgps/customview/hmfloat/HMBallView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/hmfloat/HMBallView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->e:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/hmfloat/HMBallView;Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;)Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lcom/join/mgps/customview/hmfloat/HMBallView;)Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 2
    .line 3
    return-object p0
.end method

.method private f(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p1, p1, v0

    .line 12
    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method

.method private g(Landroid/graphics/Canvas;FFF)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "width",
            "height",
            "radius"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p2

    .line 3
    .line 4
    move/from16 v2, p3

    .line 5
    .line 6
    iget v3, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->e:F

    .line 7
    .line 8
    const/high16 v4, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float v5, v1, v4

    .line 11
    .line 12
    mul-float v5, v5, v3

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move-object/from16 v12, p1

    .line 16
    .line 17
    invoke-virtual {v12, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    .line 19
    .line 20
    new-instance v7, Landroid/graphics/RectF;

    .line 21
    .line 22
    sub-float v13, v1, v5

    .line 23
    .line 24
    invoke-direct {v7, v5, v3, v13, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 25
    .line 26
    .line 27
    const/high16 v8, 0x43870000    # 270.0f

    .line 28
    .line 29
    const/high16 v9, 0x43340000    # 180.0f

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    iget-object v11, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 33
    .line 34
    move-object/from16 v6, p1

    .line 35
    .line 36
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    iget v6, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 40
    .line 41
    div-float v4, v6, v4

    .line 42
    .line 43
    new-instance v7, Landroid/graphics/RectF;

    .line 44
    .line 45
    add-float/2addr v5, v4

    .line 46
    sub-float/2addr v13, v4

    .line 47
    sub-float v14, v2, v4

    .line 48
    .line 49
    invoke-direct {v7, v5, v4, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 50
    .line 51
    .line 52
    iget-object v11, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 53
    .line 54
    move-object/from16 v6, p1

    .line 55
    .line 56
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 57
    .line 58
    .line 59
    new-instance v7, Landroid/graphics/RectF;

    .line 60
    .line 61
    invoke-direct {v7, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    .line 63
    .line 64
    const/high16 v8, 0x42b40000    # 90.0f

    .line 65
    .line 66
    iget-object v11, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 69
    .line 70
    .line 71
    new-instance v7, Landroid/graphics/RectF;

    .line 72
    .line 73
    sub-float/2addr v1, v4

    .line 74
    invoke-direct {v7, v4, v4, v1, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    .line 76
    .line 77
    iget-object v11, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private h(Landroid/graphics/Canvas;FFF)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "width",
            "height",
            "radius"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p2

    .line 3
    .line 4
    move/from16 v2, p3

    .line 5
    .line 6
    iget v3, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->e:F

    .line 7
    .line 8
    neg-float v4, v1

    .line 9
    const/high16 v5, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v4, v5

    .line 12
    mul-float v4, v4, v3

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    move-object/from16 v13, p1

    .line 16
    .line 17
    invoke-virtual {v13, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    .line 19
    .line 20
    new-instance v8, Landroid/graphics/RectF;

    .line 21
    .line 22
    div-float v4, v1, v5

    .line 23
    .line 24
    mul-float v4, v4, v3

    .line 25
    .line 26
    sub-float v3, v1, v4

    .line 27
    .line 28
    invoke-direct {v8, v4, v6, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 29
    .line 30
    .line 31
    const/high16 v9, 0x42b40000    # 90.0f

    .line 32
    .line 33
    const/high16 v10, 0x43340000    # 180.0f

    .line 34
    .line 35
    const/4 v11, 0x0

    .line 36
    iget-object v12, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 37
    .line 38
    move-object/from16 v7, p1

    .line 39
    .line 40
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    iget v7, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 44
    .line 45
    div-float v5, v7, v5

    .line 46
    .line 47
    new-instance v8, Landroid/graphics/RectF;

    .line 48
    .line 49
    add-float/2addr v4, v5

    .line 50
    sub-float/2addr v3, v5

    .line 51
    sub-float v14, v2, v5

    .line 52
    .line 53
    invoke-direct {v8, v4, v5, v3, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    .line 55
    .line 56
    iget-object v12, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 57
    .line 58
    move-object/from16 v7, p1

    .line 59
    .line 60
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    new-instance v8, Landroid/graphics/RectF;

    .line 64
    .line 65
    invoke-direct {v8, v6, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    .line 67
    .line 68
    const/high16 v9, 0x43870000    # 270.0f

    .line 69
    .line 70
    iget-object v12, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 73
    .line 74
    .line 75
    new-instance v8, Landroid/graphics/RectF;

    .line 76
    .line 77
    sub-float/2addr v1, v5

    .line 78
    invoke-direct {v8, v5, v5, v1, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    .line 80
    .line 81
    iget-object v12, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private i(Landroid/graphics/Canvas;FFF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "width",
            "height",
            "radius"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    .line 4
    .line 5
    new-instance v2, Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-direct {v2, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    .line 9
    .line 10
    const/high16 v3, 0x42b40000    # 90.0f

    .line 11
    .line 12
    const/high16 v4, 0x43340000    # 180.0f

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    iget-object v6, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    iget p4, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 22
    .line 23
    const/high16 v0, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float/2addr p4, v0

    .line 26
    new-instance v1, Landroid/graphics/RectF;

    .line 27
    .line 28
    sub-float/2addr p2, p4

    .line 29
    sub-float/2addr p3, p4

    .line 30
    invoke-direct {v1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 31
    .line 32
    .line 33
    const/high16 v2, 0x42b40000    # 90.0f

    .line 34
    .line 35
    const/high16 v3, 0x43340000    # 180.0f

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    iget-object v5, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 39
    .line 40
    move-object v0, p1

    .line 41
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private j(Landroid/graphics/Canvas;FFF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "width",
            "height",
            "radius"
        }
    .end annotation

    .line 1
    neg-float p4, p4

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    .line 5
    .line 6
    new-instance v2, Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-direct {v2, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9
    .line 10
    .line 11
    const/high16 v3, 0x43870000    # 270.0f

    .line 12
    .line 13
    const/high16 v4, 0x43340000    # 180.0f

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    iget-object v6, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 17
    .line 18
    move-object v1, p1

    .line 19
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    iget p4, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 23
    .line 24
    const/high16 v0, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr p4, v0

    .line 27
    new-instance v1, Landroid/graphics/RectF;

    .line 28
    .line 29
    sub-float/2addr p2, p4

    .line 30
    sub-float/2addr p3, p4

    .line 31
    invoke-direct {v1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 32
    .line 33
    .line 34
    const/high16 v2, 0x43870000    # 270.0f

    .line 35
    .line 36
    const/high16 v3, 0x43340000    # 180.0f

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    iget-object v5, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private k(Landroid/graphics/Canvas;FFF)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "width",
            "height",
            "radius"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move/from16 v8, p2

    .line 5
    .line 6
    move/from16 v9, p3

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    iget v2, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->e:F

    .line 11
    .line 12
    sub-float/2addr v1, v2

    .line 13
    iget-object v2, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 14
    .line 15
    sget-object v3, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->SEMICIRCLE_RIGHT:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 16
    .line 17
    const/high16 v10, 0x40000000    # 2.0f

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    neg-float v2, v8

    .line 23
    div-float/2addr v2, v10

    .line 24
    mul-float v2, v2, v1

    .line 25
    .line 26
    invoke-virtual {v7, v2, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/graphics/RectF;

    .line 30
    .line 31
    div-float v3, v8, v10

    .line 32
    .line 33
    mul-float v12, v3, v1

    .line 34
    .line 35
    sub-float v13, v8, v12

    .line 36
    .line 37
    invoke-direct {v2, v12, v11, v13, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 38
    .line 39
    .line 40
    const/high16 v3, 0x42b40000    # 90.0f

    .line 41
    .line 42
    const/high16 v4, 0x43340000    # 180.0f

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    iget-object v6, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 46
    .line 47
    move-object/from16 v1, p1

    .line 48
    .line 49
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 50
    .line 51
    .line 52
    iget v1, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 53
    .line 54
    div-float v10, v1, v10

    .line 55
    .line 56
    new-instance v2, Landroid/graphics/RectF;

    .line 57
    .line 58
    add-float/2addr v12, v10

    .line 59
    sub-float/2addr v13, v10

    .line 60
    sub-float v14, v9, v10

    .line 61
    .line 62
    invoke-direct {v2, v12, v10, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 63
    .line 64
    .line 65
    iget-object v6, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 66
    .line 67
    move-object/from16 v1, p1

    .line 68
    .line 69
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Landroid/graphics/RectF;

    .line 73
    .line 74
    invoke-direct {v2, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    .line 76
    .line 77
    const/high16 v3, 0x43870000    # 270.0f

    .line 78
    .line 79
    iget-object v6, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Landroid/graphics/RectF;

    .line 85
    .line 86
    sub-float v1, v8, v10

    .line 87
    .line 88
    invoke-direct {v2, v10, v10, v1, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    .line 90
    .line 91
    iget-object v6, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 92
    .line 93
    move-object/from16 v1, p1

    .line 94
    .line 95
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    div-float v2, v8, v10

    .line 100
    .line 101
    mul-float v12, v2, v1

    .line 102
    .line 103
    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    .line 105
    .line 106
    new-instance v2, Landroid/graphics/RectF;

    .line 107
    .line 108
    sub-float v13, v8, v12

    .line 109
    .line 110
    invoke-direct {v2, v12, v11, v13, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 111
    .line 112
    .line 113
    const/high16 v3, 0x43870000    # 270.0f

    .line 114
    .line 115
    const/high16 v4, 0x43340000    # 180.0f

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    iget-object v6, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 119
    .line 120
    move-object/from16 v1, p1

    .line 121
    .line 122
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    iget v1, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 126
    .line 127
    div-float v10, v1, v10

    .line 128
    .line 129
    new-instance v2, Landroid/graphics/RectF;

    .line 130
    .line 131
    add-float/2addr v12, v10

    .line 132
    sub-float/2addr v13, v10

    .line 133
    sub-float v14, v9, v10

    .line 134
    .line 135
    invoke-direct {v2, v12, v10, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 136
    .line 137
    .line 138
    iget-object v6, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 139
    .line 140
    move-object/from16 v1, p1

    .line 141
    .line 142
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 143
    .line 144
    .line 145
    new-instance v2, Landroid/graphics/RectF;

    .line 146
    .line 147
    invoke-direct {v2, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 148
    .line 149
    .line 150
    const/high16 v3, 0x42b40000    # 90.0f

    .line 151
    .line 152
    iget-object v6, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 153
    .line 154
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Landroid/graphics/RectF;

    .line 158
    .line 159
    sub-float v1, v8, v10

    .line 160
    .line 161
    invoke-direct {v2, v10, v10, v1, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 162
    .line 163
    .line 164
    iget-object v6, v0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 165
    .line 166
    move-object/from16 v1, p1

    .line 167
    .line 168
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 169
    .line 170
    .line 171
    :goto_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/hmfloat/HMBallView;->f(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public e(Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 18
    .line 19
    :goto_0
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->h:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
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
    int-to-float v0, v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/high16 v3, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v2, v3

    .line 21
    iget v4, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->g:F

    .line 22
    .line 23
    div-float/2addr v4, v3

    .line 24
    sub-float/2addr v2, v4

    .line 25
    iget-object v4, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->d:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 26
    .line 27
    sget-object v5, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->CIRCLE:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 28
    .line 29
    if-ne v4, v5, :cond_0

    .line 30
    .line 31
    iget-object v6, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 32
    .line 33
    sget-object v7, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->SEMICIRCLE_RIGHT:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 34
    .line 35
    if-ne v6, v7, :cond_0

    .line 36
    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/mgps/customview/hmfloat/HMBallView;->h(Landroid/graphics/Canvas;FFF)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-ne v4, v5, :cond_1

    .line 42
    .line 43
    iget-object v6, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 44
    .line 45
    sget-object v7, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->SEMICIRCLE_LEFT:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 46
    .line 47
    if-ne v6, v7, :cond_1

    .line 48
    .line 49
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/mgps/customview/hmfloat/HMBallView;->g(Landroid/graphics/Canvas;FFF)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget-object v6, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->SEMICIRCLE_LEFT:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 54
    .line 55
    if-eq v4, v6, :cond_2

    .line 56
    .line 57
    sget-object v7, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->SEMICIRCLE_RIGHT:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 58
    .line 59
    if-ne v4, v7, :cond_3

    .line 60
    .line 61
    :cond_2
    iget-object v7, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->f:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 62
    .line 63
    if-ne v7, v5, :cond_3

    .line 64
    .line 65
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/mgps/customview/hmfloat/HMBallView;->k(Landroid/graphics/Canvas;FFF)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    if-ne v4, v5, :cond_4

    .line 70
    .line 71
    div-float/2addr v0, v3

    .line 72
    div-float/2addr v1, v3

    .line 73
    iget-object v3, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->b:Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/join/mgps/customview/hmfloat/HMBallView;->c:Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    sget-object v3, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->SEMICIRCLE_RIGHT:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 85
    .line 86
    if-ne v4, v3, :cond_5

    .line 87
    .line 88
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/mgps/customview/hmfloat/HMBallView;->j(Landroid/graphics/Canvas;FFF)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    if-ne v4, v6, :cond_6

    .line 93
    .line 94
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/mgps/customview/hmfloat/HMBallView;->i(Landroid/graphics/Canvas;FFF)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    .line 100
    .line 101
    :cond_6
    :goto_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

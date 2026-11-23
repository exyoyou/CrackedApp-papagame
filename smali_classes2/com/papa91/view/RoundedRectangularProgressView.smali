.class public Lcom/papa91/view/RoundedRectangularProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;
    }
.end annotation


# instance fields
.field animator:Landroid/animation/ValueAnimator;

.field private color:I

.field private dashColor:I

.field private dashWidth:F

.field private height:I

.field private interval:J

.field intervals:[F

.field mHandler:Landroid/os/Handler;

.field mOnProgressListener:Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private playTime:J

.field private progress:F

.field private solidColor:I

.field private startTime:J

.field private strokeWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 3
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    const v0, 0x1a4e90

    .line 4
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    const v0, 0x21ddff

    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    const v0, 0x41221f

    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 6
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v0, v1, p1

    const/4 p1, 0x1

    aput v0, v1, p1

    .line 7
    iput-object v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    const-wide/32 v0, 0xea60

    .line 8
    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    .line 9
    new-instance p1, Lcom/papa91/view/RoundedRectangularProgressView$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/RoundedRectangularProgressView$1;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 12
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    const v1, 0x1a4e90

    .line 13
    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    const v1, 0x21ddff

    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    const v1, 0x41221f

    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    const/4 v1, 0x5

    .line 14
    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    const/high16 v1, 0x41200000    # 10.0f

    .line 15
    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 16
    iput-object v2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    const-wide/32 v0, 0xea60

    .line 17
    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    .line 18
    new-instance v0, Lcom/papa91/view/RoundedRectangularProgressView$1;

    invoke-direct {v0, p0}, Lcom/papa91/view/RoundedRectangularProgressView$1;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    iput-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/papa91/view/RoundedRectangularProgressView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 22
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    const p2, 0x1a4e90

    .line 23
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    const p2, 0x21ddff

    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    const p2, 0x41221f

    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    const/4 p2, 0x5

    .line 24
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 25
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    const/4 p3, 0x2

    new-array p3, p3, [F

    aput p2, p3, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 26
    iput-object p3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    const-wide/32 p1, 0xea60

    .line 27
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    .line 28
    new-instance p1, Lcom/papa91/view/RoundedRectangularProgressView$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/RoundedRectangularProgressView$1;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/RoundedRectangularProgressView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/papa91/view/RoundedRectangularProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/papa91/view/RoundedRectangularProgressView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$200(Lcom/papa91/view/RoundedRectangularProgressView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$202(Lcom/papa91/view/RoundedRectangularProgressView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

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

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/view/RoundedRectangularProgressView;->getDimension(I)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    .line 7
    .line 8
    const/4 p2, 0x5

    .line 9
    invoke-virtual {p0, p2}, Lcom/papa91/view/RoundedRectangularProgressView;->getDimension(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    int-to-float p2, p2

    .line 14
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    .line 15
    .line 16
    new-array p1, p1, [F

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    aput p2, p1, v0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput p2, p1, v0

    .line 23
    .line 24
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    .line 25
    .line 26
    new-instance p1, Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    new-instance p1, Landroid/graphics/Path;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    .line 39
    .line 40
    const-string p1, "#AD7C35"

    .line 41
    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    .line 47
    .line 48
    const-string p1, "#F8CE67"

    .line 49
    .line 50
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    .line 55
    .line 56
    const-string p1, "#1F2241"

    .line 57
    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    .line 63
    .line 64
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 65
    .line 66
    iget p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 72
    .line 73
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 89
    .line 90
    iget p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    .line 91
    .line 92
    int-to-float p2, p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method createAnimator()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator(FF)V

    return-void
.end method

.method createAnimator(FF)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 2
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 3
    iget-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    iget-wide v2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/papa91/view/RoundedRectangularProgressView$2;

    invoke-direct {p2, p0}, Lcom/papa91/view/RoundedRectangularProgressView$2;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/papa91/view/RoundedRectangularProgressView$3;

    invoke-direct {p2, p0}, Lcom/papa91/view/RoundedRectangularProgressView$3;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getCoordinate()[F
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [F

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 17
    .line 18
    mul-float v2, v2, v3

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method getDimension(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    int-to-float p1, p1

    .line 6
    invoke-static {v0, p1}, Lcom/papa91/view/RoundedRectangularProgressView;->dip2px(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public getOnProgressListener()Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mOnProgressListener:Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 2
    .line 3
    return v0
.end method

.method initPath()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Path;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 6
    .line 7
    .line 8
    int-to-float v2, v0

    .line 9
    iget v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 10
    .line 11
    div-int/lit8 v3, v3, 0x2

    .line 12
    .line 13
    sub-int/2addr v3, v0

    .line 14
    int-to-float v3, v3

    .line 15
    new-instance v4, Landroid/graphics/RectF;

    .line 16
    .line 17
    const/high16 v5, 0x40000000    # 2.0f

    .line 18
    .line 19
    mul-float v5, v5, v3

    .line 20
    .line 21
    add-float/2addr v5, v2

    .line 22
    invoke-direct {v4, v2, v2, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 23
    .line 24
    .line 25
    add-float v5, v2, v3

    .line 26
    .line 27
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 28
    .line 29
    .line 30
    const/high16 v6, 0x43340000    # 180.0f

    .line 31
    .line 32
    invoke-virtual {v1, v4, v6, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 33
    .line 34
    .line 35
    iget v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 36
    .line 37
    sub-int/2addr v4, v0

    .line 38
    int-to-float v4, v4

    .line 39
    iget v7, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    .line 40
    .line 41
    sub-int/2addr v7, v0

    .line 42
    int-to-float v7, v7

    .line 43
    sub-float/2addr v7, v3

    .line 44
    invoke-virtual {v1, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    .line 46
    .line 47
    new-instance v8, Landroid/graphics/RectF;

    .line 48
    .line 49
    sub-float/2addr v7, v3

    .line 50
    iget v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    .line 51
    .line 52
    sub-int/2addr v3, v0

    .line 53
    int-to-float v0, v3

    .line 54
    invoke-direct {v8, v2, v7, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {v1, v8, v0, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v3, v1, [F

    .line 14
    .line 15
    new-array v4, v1, [F

    .line 16
    .line 17
    new-array v1, v1, [F

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-virtual {v0, v6, v3, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v5, v4, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroid/graphics/Path;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 42
    .line 43
    iget v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 61
    .line 62
    iget v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 80
    .line 81
    .line 82
    new-instance v3, Landroid/graphics/DashPathEffect;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    .line 85
    .line 86
    iget v8, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    .line 87
    .line 88
    invoke-direct {v3, v4, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 97
    .line 98
    iget v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 104
    .line 105
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    .line 109
    .line 110
    iget v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 111
    .line 112
    mul-float v5, v5, v3

    .line 113
    .line 114
    invoke-virtual {v0, v6, v5, v1, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 123
    .line 124
    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 5
    .line 6
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa91/view/RoundedRectangularProgressView;->initPath()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator(FF)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setInterval(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p1, v0

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const-wide/32 p1, 0xea60

    .line 10
    .line 11
    .line 12
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setOnProgressListener(Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mOnProgressListener:Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "progress not between 0.0f and 1.0f"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public start()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.class public Lcom/byazt/but/TTCountdownViewForCircle;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/but/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a0,
        0x601
    }
.end annotation


# instance fields
.field public a:F

.field public c:I

.field public da:F

.field public gr:Landroid/animation/AnimatorSet;

.field public gt:F

.field public gu:Lcom/byazt/but/c;

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public i:Z

.field public m:Landroid/graphics/Paint;

.field public md:Z

.field public my:Landroid/graphics/Paint;

.field public n:F

.field public nu:Landroid/graphics/Paint;

.field public p:Landroid/animation/ValueAnimator;

.field public qy:Landroid/graphics/RectF;

.field public rh:Landroid/graphics/Paint;

.field public rl:F

.field public sl:F

.field public sp:F

.field public t:F

.field public tt:I

.field public u:Ljava/lang/String;

.field public uj:I

.field public ve:I

.field public x:I

.field public yp:Z

.field public yv:Landroid/animation/ValueAnimator;

.field public z:Z

.field public zm:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/byazt/but/TTCountdownViewForCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/but/TTCountdownViewForCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#fce8b6"

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->c:I

    const-string p1, "#f0f0f0"

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->tt:I

    const-string p1, "#ffffff"

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->ve:I

    const-string p1, "#7c7c7c"

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->uj:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 8
    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->n:F

    const/high16 p2, 0x41400000    # 12.0f

    .line 9
    iput p2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->a:F

    const/high16 p3, 0x41900000    # 18.0f

    .line 10
    iput p3, p0, Lcom/byazt/but/TTCountdownViewForCircle;->sp:F

    const/16 v0, 0x10e

    .line 11
    iput v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->x:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->i:Z

    const/high16 v1, 0x40a00000    # 5.0f

    .line 13
    iput v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->da:F

    .line 14
    iput v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->sl:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 15
    iput v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->t:F

    const-string v1, "\u8df3\u8fc7"

    .line 16
    iput-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->u:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->yp:Z

    .line 18
    iput-boolean v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->z:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iput v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gt:F

    .line 20
    iput v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rl:F

    .line 21
    iput-boolean v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->md:Z

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    invoke-direct {p0, p1}, Lcom/byazt/but/TTCountdownViewForCircle;->c(F)F

    move-result p1

    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->n:F

    .line 24
    invoke-direct {p0, p3}, Lcom/byazt/but/TTCountdownViewForCircle;->c(F)F

    move-result p1

    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->sp:F

    .line 25
    invoke-direct {p0, p2}, Lcom/byazt/but/TTCountdownViewForCircle;->tt(F)F

    move-result p1

    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->a:F

    .line 26
    iget p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->x:I

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->x:I

    .line 27
    invoke-direct {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->uj()V

    .line 28
    invoke-direct {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->n()V

    return-void
.end method

.method private a()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->n:F

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    div-float/2addr v0, v1

    .line 6
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->sp:F

    .line 7
    .line 8
    add-float/2addr v0, v2

    .line 9
    mul-float v0, v0, v1

    .line 10
    .line 11
    const/high16 v1, 0x40800000    # 4.0f

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/byazt/but/TTCountdownViewForCircle;->c(F)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-float/2addr v0, v1

    .line 18
    float-to-int v0, v0

    .line 19
    return v0
.end method

.method private c(F)F
    .locals 2

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 31
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public static synthetic c(Lcom/byazt/but/TTCountdownViewForCircle;F)F
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rl:F

    return p1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->my:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->ej()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->u:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u8df3\u8fc7"

    .line 10
    iput-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->u:Ljava/lang/String;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->u:Ljava/lang/String;

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    const/4 v0, 0x0

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/byazt/but/TTCountdownViewForCircle;->my:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/but/TTCountdownViewForCircle;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->md:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/but/TTCountdownViewForCircle;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->md:Z

    return p1
.end method

.method private getArcAnim()Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->yv:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->yv:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gt:F

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    aput v2, v0, v1

    .line 22
    .line 23
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->yv:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->yv:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    iget v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gt:F

    .line 40
    .line 41
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->da:F

    .line 42
    .line 43
    invoke-virtual {p0, v1, v2}, Lcom/byazt/but/TTCountdownViewForCircle;->c(FF)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 48
    .line 49
    mul-float v1, v1, v2

    .line 50
    .line 51
    float-to-long v1, v1

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->yv:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    new-instance v1, Lcom/byazt/but/TTCountdownViewForCircle$3;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/byazt/but/TTCountdownViewForCircle$3;-><init>(Lcom/byazt/but/TTCountdownViewForCircle;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->yv:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    return-object v0
.end method

.method private getNumAnim()Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->zm:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->zm:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rl:F

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    aput v2, v0, v1

    .line 22
    .line 23
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->zm:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->zm:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    iget v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rl:F

    .line 40
    .line 41
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->sl:F

    .line 42
    .line 43
    invoke-virtual {p0, v1, v2}, Lcom/byazt/but/TTCountdownViewForCircle;->c(FF)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 48
    .line 49
    mul-float v1, v1, v2

    .line 50
    .line 51
    float-to-long v1, v1

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->zm:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    new-instance v1, Lcom/byazt/but/TTCountdownViewForCircle$2;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/byazt/but/TTCountdownViewForCircle$2;-><init>(Lcom/byazt/but/TTCountdownViewForCircle;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->zm:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    return-object v0
.end method

.method private n()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->sp:F

    .line 4
    .line 5
    neg-float v2, v1

    .line 6
    neg-float v3, v1

    .line 7
    invoke-direct {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->qy:Landroid/graphics/RectF;

    .line 11
    .line 12
    return-void
.end method

.method private sp()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->p:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->p:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->zm:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->zm:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->yv:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->yv:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    .line 40
    iput v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gt:F

    .line 41
    .line 42
    iput v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rl:F

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    return-void
.end method

.method private tt(F)F
    .locals 2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 13
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/but/TTCountdownViewForCircle;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gt:F

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/but/TTCountdownViewForCircle;)Lcom/byazt/but/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gu:Lcom/byazt/but/c;

    return-object p0
.end method

.method private tt(Landroid/graphics/Canvas;)V
    .locals 8

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gt:F

    const/16 v1, 0x168

    invoke-virtual {p0, v0, v1}, Lcom/byazt/but/TTCountdownViewForCircle;->c(FI)F

    move-result v5

    .line 5
    iget-boolean v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->i:Z

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v5

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->x:I

    int-to-float v0, v0

    :goto_0
    move v4, v0

    .line 8
    iget v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->sp:F

    iget-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->nu:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 9
    iget v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->sp:F

    iget-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rh:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 10
    iget-object v3, p0, Lcom/byazt/but/TTCountdownViewForCircle;->qy:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/byazt/but/TTCountdownViewForCircle;->m:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private uj()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->m:Landroid/graphics/Paint;

    .line 8
    .line 9
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->m:Landroid/graphics/Paint;

    .line 15
    .line 16
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->n:F

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->m:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->m:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->nu:Landroid/graphics/Paint;

    .line 39
    .line 40
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->ve:I

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->nu:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->nu:Landroid/graphics/Paint;

    .line 51
    .line 52
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->n:F

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->nu:Landroid/graphics/Paint;

    .line 58
    .line 59
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rh:Landroid/graphics/Paint;

    .line 70
    .line 71
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->tt:I

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rh:Landroid/graphics/Paint;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rh:Landroid/graphics/Paint;

    .line 82
    .line 83
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->n:F

    .line 84
    .line 85
    const/high16 v3, 0x40000000    # 2.0f

    .line 86
    .line 87
    div-float/2addr v2, v3

    .line 88
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rh:Landroid/graphics/Paint;

    .line 92
    .line 93
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->my:Landroid/graphics/Paint;

    .line 104
    .line 105
    iget v2, p0, Lcom/byazt/but/TTCountdownViewForCircle;->uj:I

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->rh:Landroid/graphics/Paint;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->my:Landroid/graphics/Paint;

    .line 116
    .line 117
    iget v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->a:F

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->my:Landroid/graphics/Paint;

    .line 123
    .line 124
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public c(FF)F
    .locals 0

    .line 1
    mul-float p1, p1, p2

    return p1
.end method

.method public c(FI)F
    .locals 0

    .line 2
    int-to-float p2, p2

    mul-float p2, p2, p1

    return p2
.end method

.method public c()V
    .locals 5

    .line 13
    iget-boolean v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->z:Z

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 16
    iput-object v1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    .line 17
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->getNumAnim()Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->getArcAnim()Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 19
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/byazt/but/TTCountdownViewForCircle$1;

    invoke-direct {v2, p0}, Lcom/byazt/but/TTCountdownViewForCircle$1;-><init>(Lcom/byazt/but/TTCountdownViewForCircle;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    :try_start_0
    const-class v0, Landroid/animation/ValueAnimator;

    const-string v2, "sDurationScale"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 24
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 25
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 26
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 27
    invoke-virtual {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->tt()V

    :cond_3
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->z:Z

    if-eqz p1, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->sp()V

    :cond_0
    return-void
.end method

.method public getCountdownListener()Lcom/byazt/but/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gu:Lcom/byazt/but/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->sp()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    div-float/2addr v2, v1

    .line 18
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/byazt/but/TTCountdownViewForCircle;->tt(Landroid/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/byazt/but/TTCountdownViewForCircle;->c(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/high16 v2, 0x40000000    # 2.0f

    .line 21
    .line 22
    if-eq p1, v2, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->a()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :cond_0
    if-eq p2, v2, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->a()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->z:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->tt()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->ve()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setCountDownTime(I)V
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->sl:F

    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->da:F

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/byazt/but/TTCountdownViewForCircle;->sp()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCountdownListener(Lcom/byazt/but/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gu:Lcom/byazt/but/c;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/but/TTCountdownViewForCircle;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public tt()V
    .locals 1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/but/TTCountdownViewForCircle;->gr:Landroid/animation/AnimatorSet;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    :cond_1
    return-void
.end method

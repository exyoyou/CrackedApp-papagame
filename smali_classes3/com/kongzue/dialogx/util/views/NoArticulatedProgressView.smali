.class public Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/b0;


# static fields
.field public static final C:I = 0x0

.field public static final D:I = 0x1

.field public static final E:I = 0x2

.field public static final F:I = 0x3

.field public static final G:I = 0x4


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/animation/ValueAnimator;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field l:Landroid/graphics/Paint;

.field private m:Z

.field private n:F

.field private o:F

.field private p:F

.field private q:Landroid/graphics/RectF;

.field protected r:F

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/animation/TimeInterpolator;

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l(F)I

    move-result v0

    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->d:I

    const/high16 v0, 0x43340000    # 180.0f

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->i:F

    const/high16 v0, 0x42a00000    # 80.0f

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->j:F

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 8
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->m:Z

    const/high16 v0, 0x42c80000    # 100.0f

    .line 9
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->p:F

    .line 10
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->s:I

    .line 11
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 12
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 13
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 14
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 15
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 19
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l(F)I

    move-result v0

    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c:I

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->d:I

    const/high16 v0, 0x43340000    # 180.0f

    .line 21
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->i:F

    const/high16 v0, 0x42a00000    # 80.0f

    .line 22
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->j:F

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 24
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->m:Z

    const/high16 v0, 0x42c80000    # 100.0f

    .line 25
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->p:F

    .line 26
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->s:I

    .line 27
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 28
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 29
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 30
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 31
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 32
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    const/high16 p3, 0x40000000    # 2.0f

    .line 35
    invoke-direct {p0, p3}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l(F)I

    move-result p3

    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c:I

    const/4 p3, -0x1

    .line 36
    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->d:I

    const/high16 p3, 0x43340000    # 180.0f

    .line 37
    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->i:F

    const/high16 p3, 0x42a00000    # 80.0f

    .line 38
    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->j:F

    .line 39
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 40
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->m:Z

    const/high16 p3, 0x42c80000    # 100.0f

    .line 41
    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->p:F

    .line 42
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->s:I

    .line 43
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 44
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 45
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 46
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 47
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 48
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    const/high16 p3, 0x40000000    # 2.0f

    .line 51
    invoke-direct {p0, p3}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l(F)I

    move-result p3

    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c:I

    const/4 p3, -0x1

    .line 52
    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->d:I

    const/high16 p3, 0x43340000    # 180.0f

    .line 53
    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->i:F

    const/high16 p3, 0x42a00000    # 80.0f

    .line 54
    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->j:F

    .line 55
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 56
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->m:Z

    const/high16 p3, 0x42c80000    # 100.0f

    .line 57
    iput p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->p:F

    .line 58
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->s:I

    .line 59
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 60
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 61
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 62
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 63
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 64
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic f(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->g:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->h:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->s:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->y:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic k(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 2
    .line 3
    return p1
.end method

.method private l(F)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

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

.method private m(ILandroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->y:Landroid/animation/TimeInterpolator;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->A:Ljava/lang/Runnable;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 21
    .line 22
    .line 23
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->G:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->A:Ljava/lang/Runnable;

    .line 33
    .line 34
    :cond_2
    const/4 v0, 0x1

    .line 35
    if-eq p1, v0, :cond_5

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    if-eq p1, v0, :cond_4

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    if-eq p1, v0, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->q(Landroid/graphics/Canvas;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->s(Landroid/graphics/Canvas;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->r(Landroid/graphics/Canvas;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method private n(Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    const-class v0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->m:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->m:Z

    .line 12
    .line 13
    const/high16 v2, 0x40000000    # 2.0f

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Lcom/kongzue/dialogx/R$styleable;->ProgressView:[I

    .line 22
    .line 23
    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget v3, Lcom/kongzue/dialogx/R$styleable;->ProgressView_progressStrokeWidth:I

    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l(F)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iput v3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c:I

    .line 38
    .line 39
    sget v3, Lcom/kongzue/dialogx/R$styleable;->ProgressView_progressStrokeColor:I

    .line 40
    .line 41
    iget v4, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->d:I

    .line 42
    .line 43
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iput v3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->d:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 58
    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 65
    .line 66
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c:I

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 73
    .line 74
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 80
    .line 81
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->d:I

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    iget p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->i:F

    .line 93
    .line 94
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->j:F

    .line 95
    .line 96
    sub-float/2addr p1, v1

    .line 97
    div-float/2addr p1, v2

    .line 98
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->k:F

    .line 99
    .line 100
    const/4 p1, 0x2

    .line 101
    new-array v1, p1, [F

    .line 102
    .line 103
    fill-array-data v1, :array_0

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 111
    .line 112
    const-wide/16 v2, 0x3e8

    .line 113
    .line 114
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 118
    .line 119
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 120
    .line 121
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    const/4 v2, -0x1

    .line 130
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 134
    .line 135
    new-instance v3, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$a;

    .line 136
    .line 137
    invoke-direct {v3, p0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$a;-><init>(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    .line 142
    .line 143
    new-array p1, p1, [F

    .line 144
    .line 145
    fill-array-data p1, :array_1

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->f:Landroid/animation/ValueAnimator;

    .line 153
    .line 154
    const-wide/16 v3, 0x5dc

    .line 155
    .line 156
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->f:Landroid/animation/ValueAnimator;

    .line 160
    .line 161
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 162
    .line 163
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->f:Landroid/animation/ValueAnimator;

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->f:Landroid/animation/ValueAnimator;

    .line 175
    .line 176
    new-instance v1, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$b;

    .line 177
    .line 178
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$b;-><init>(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->f:Landroid/animation/ValueAnimator;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 192
    .line 193
    .line 194
    :cond_2
    monitor-exit v0

    .line 195
    return-void

    .line 196
    :catchall_0
    move-exception p1

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    throw p1

    .line 199
    :array_0
    .array-data 4
        0x0
        0x43b68000    # 365.0f
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_1
    .array-data 4
        0x0
        0x43b68000    # 365.0f
    .end array-data
.end method

.method private q(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n:F

    .line 2
    .line 3
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->p:F

    .line 4
    .line 5
    const/high16 v2, 0x40800000    # 4.0f

    .line 6
    .line 7
    mul-float v3, v1, v2

    .line 8
    .line 9
    const/high16 v4, 0x41200000    # 10.0f

    .line 10
    .line 11
    div-float/2addr v3, v4

    .line 12
    sub-float v3, v0, v3

    .line 13
    .line 14
    float-to-int v3, v3

    .line 15
    mul-float v5, v1, v2

    .line 16
    .line 17
    div-float/2addr v5, v4

    .line 18
    add-float/2addr v0, v5

    .line 19
    float-to-int v0, v0

    .line 20
    iget v5, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->o:F

    .line 21
    .line 22
    mul-float v1, v1, v2

    .line 23
    .line 24
    div-float/2addr v1, v4

    .line 25
    sub-float/2addr v5, v1

    .line 26
    float-to-int v1, v5

    .line 27
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-eq v2, v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 36
    .line 37
    add-int v4, v3, v2

    .line 38
    .line 39
    if-ge v4, v0, :cond_1

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x4

    .line 42
    .line 43
    iput v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 44
    .line 45
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x4

    .line 48
    .line 49
    iput v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 50
    .line 51
    :cond_1
    int-to-float v5, v3

    .line 52
    int-to-float v6, v1

    .line 53
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 54
    .line 55
    add-int/2addr v3, v2

    .line 56
    int-to-float v7, v3

    .line 57
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 58
    .line 59
    add-int/2addr v2, v1

    .line 60
    int-to-float v8, v2

    .line 61
    iget-object v9, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 62
    .line 63
    move-object v4, p1

    .line 64
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 69
    .line 70
    sub-int v5, v0, v2

    .line 71
    .line 72
    if-le v5, v3, :cond_3

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x4

    .line 75
    .line 76
    iput v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 77
    .line 78
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x4

    .line 81
    .line 82
    iput v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 83
    .line 84
    :goto_0
    int-to-float v4, v0

    .line 85
    int-to-float v5, v1

    .line 86
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 87
    .line 88
    sub-int/2addr v0, v2

    .line 89
    int-to-float v6, v0

    .line 90
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 91
    .line 92
    add-int/2addr v1, v0

    .line 93
    int-to-float v7, v1

    .line 94
    iget-object v8, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 95
    .line 96
    move-object v3, p1

    .line 97
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    .line 99
    .line 100
    const-wide/16 v0, 0x1

    .line 101
    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    iput v4, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 107
    .line 108
    int-to-float v3, v0

    .line 109
    int-to-float v4, v1

    .line 110
    sub-int/2addr v0, v2

    .line 111
    int-to-float v5, v0

    .line 112
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 113
    .line 114
    add-int/2addr v1, v0

    .line 115
    int-to-float v6, v1

    .line 116
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 117
    .line 118
    move-object v2, p1

    .line 119
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 120
    .line 121
    .line 122
    const-wide/16 v0, 0x96

    .line 123
    .line 124
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method private r(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n:F

    .line 2
    .line 3
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->p:F

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    mul-float v2, v2, v1

    .line 8
    .line 9
    const/high16 v3, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v2, v3

    .line 12
    sub-float v2, v0, v2

    .line 13
    .line 14
    float-to-int v2, v2

    .line 15
    const/high16 v3, 0x41200000    # 10.0f

    .line 16
    .line 17
    div-float v3, v1, v3

    .line 18
    .line 19
    sub-float/2addr v0, v3

    .line 20
    float-to-int v0, v0

    .line 21
    const v3, 0x3f7d70a4    # 0.99f

    .line 22
    .line 23
    .line 24
    mul-float v1, v1, v3

    .line 25
    .line 26
    float-to-int v1, v1

    .line 27
    iget v3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    if-eq v3, v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 36
    .line 37
    if-ge v0, v1, :cond_3

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x4

    .line 40
    .line 41
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 42
    .line 43
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 44
    .line 45
    add-int/lit8 v0, v0, -0x5

    .line 46
    .line 47
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 51
    .line 52
    add-int v3, v2, v1

    .line 53
    .line 54
    if-ge v3, v0, :cond_2

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x2

    .line 57
    .line 58
    iput v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 59
    .line 60
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x2

    .line 63
    .line 64
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iput v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 68
    .line 69
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 70
    .line 71
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 72
    .line 73
    iput v4, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 74
    .line 75
    :cond_3
    :goto_0
    int-to-float v6, v2

    .line 76
    iget v7, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->o:F

    .line 77
    .line 78
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 79
    .line 80
    add-int/2addr v0, v2

    .line 81
    int-to-float v8, v0

    .line 82
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 83
    .line 84
    int-to-float v0, v0

    .line 85
    add-float v9, v7, v0

    .line 86
    .line 87
    iget-object v10, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 88
    .line 89
    move-object v5, p1

    .line 90
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    .line 92
    .line 93
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 94
    .line 95
    add-int/2addr v0, v2

    .line 96
    int-to-float v4, v0

    .line 97
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->o:F

    .line 98
    .line 99
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 100
    .line 101
    int-to-float v1, v1

    .line 102
    add-float v5, v0, v1

    .line 103
    .line 104
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 105
    .line 106
    add-int/2addr v2, v1

    .line 107
    int-to-float v6, v2

    .line 108
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 109
    .line 110
    int-to-float v1, v1

    .line 111
    add-float v7, v0, v1

    .line 112
    .line 113
    iget-object v8, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 114
    .line 115
    move-object v3, p1

    .line 116
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 117
    .line 118
    .line 119
    const-wide/16 v0, 0x1

    .line 120
    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method private s(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->o:F

    .line 5
    .line 6
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->p:F

    .line 7
    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    mul-float v4, v2, v3

    .line 11
    .line 12
    const/high16 v5, 0x40000000    # 2.0f

    .line 13
    .line 14
    div-float/2addr v4, v5

    .line 15
    sub-float v4, v1, v4

    .line 16
    .line 17
    float-to-int v4, v4

    .line 18
    mul-float v3, v3, v2

    .line 19
    .line 20
    const/high16 v5, 0x41000000    # 8.0f

    .line 21
    .line 22
    div-float/2addr v3, v5

    .line 23
    add-float/2addr v3, v1

    .line 24
    float-to-int v3, v3

    .line 25
    const/high16 v5, 0x40400000    # 3.0f

    .line 26
    .line 27
    mul-float v2, v2, v5

    .line 28
    .line 29
    const/high16 v5, 0x40e00000    # 7.0f

    .line 30
    .line 31
    div-float/2addr v2, v5

    .line 32
    add-float/2addr v1, v2

    .line 33
    float-to-int v1, v1

    .line 34
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    if-eq v2, v5, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 43
    .line 44
    if-eq v2, v1, :cond_3

    .line 45
    .line 46
    int-to-float v9, v0

    .line 47
    int-to-float v8, v1

    .line 48
    add-int/2addr v1, v5

    .line 49
    int-to-float v10, v1

    .line 50
    iget-object v11, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 51
    .line 52
    move-object v6, p1

    .line 53
    move v7, v9

    .line 54
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 59
    .line 60
    sub-int/2addr v3, v4

    .line 61
    if-ge v1, v3, :cond_2

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x4

    .line 64
    .line 65
    iput v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iput v3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 69
    .line 70
    iput v5, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 71
    .line 72
    :cond_3
    :goto_0
    int-to-float v9, v0

    .line 73
    int-to-float v8, v4

    .line 74
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 75
    .line 76
    add-int/2addr v4, v0

    .line 77
    int-to-float v10, v4

    .line 78
    iget-object v11, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 79
    .line 80
    move-object v6, p1

    .line 81
    move v7, v9

    .line 82
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    iget p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 86
    .line 87
    if-ne p1, v5, :cond_4

    .line 88
    .line 89
    const-wide/16 v0, 0x64

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const-wide/16 v0, 0x1

    .line 93
    .line 94
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 95
    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->B:Z

    .line 3
    .line 4
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c(F)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$d;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$d;-><init>(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->z:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 21
    .line 22
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 23
    .line 24
    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->y:Landroid/animation/TimeInterpolator;

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public c(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->f:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->g:F

    .line 22
    .line 23
    :cond_2
    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [F

    .line 25
    .line 26
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->g:F

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput v2, v0, v3

    .line 30
    .line 31
    const v2, 0x43b68000    # 365.0f

    .line 32
    .line 33
    .line 34
    mul-float p1, p1, v2

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    aput p1, v0, v2

    .line 38
    .line 39
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    const-wide/16 v4, 0x3e8

    .line 46
    .line 47
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 53
    .line 54
    const/high16 v2, 0x40000000    # 2.0f

    .line 55
    .line 56
    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    new-instance v0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$f;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$f;-><init>(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    .line 81
    .line 82
    iput v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 83
    .line 84
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Runnable;)Lcom/kongzue/dialogx/interfaces/b0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t(Ljava/lang/Runnable;)Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(I)Lcom/kongzue/dialogx/interfaces/b0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->o(I)Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public error()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c(F)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$e;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$e;-><init>(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->z:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 21
    .line 22
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 23
    .line 24
    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->y:Landroid/animation/TimeInterpolator;

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public loading()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->B:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->r:F

    .line 6
    .line 7
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->s:I

    .line 8
    .line 9
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->t:I

    .line 10
    .line 11
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->u:I

    .line 12
    .line 13
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->v:I

    .line 14
    .line 15
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->w:I

    .line 16
    .line 17
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->f:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->m:Z

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n(Landroid/util/AttributeSet;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public o(I)Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->d:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->e:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->f:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->q:Landroid/graphics/RectF;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const v4, 0x43b68000    # 365.0f

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    iget-object v6, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->B:Z

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->q:Landroid/graphics/RectF;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const v5, 0x43b68000    # 365.0f

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 34
    .line 35
    move-object v2, p1

    .line 36
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    iput v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->s:I

    .line 40
    .line 41
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 42
    .line 43
    invoke-direct {p0, v0, p1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->m(ILandroid/graphics/Canvas;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->k:F

    .line 48
    .line 49
    float-to-double v2, v0

    .line 50
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->h:F

    .line 51
    .line 52
    float-to-double v4, v0

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    mul-double v2, v2, v4

    .line 62
    .line 63
    double-to-float v0, v2

    .line 64
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->k:F

    .line 65
    .line 66
    add-float/2addr v0, v2

    .line 67
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->j:F

    .line 68
    .line 69
    const/high16 v3, 0x40000000    # 2.0f

    .line 70
    .line 71
    div-float/2addr v2, v3

    .line 72
    add-float/2addr v0, v2

    .line 73
    iget v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    if-eq v2, v0, :cond_3

    .line 79
    .line 80
    if-eq v2, v1, :cond_3

    .line 81
    .line 82
    const/4 v0, 0x3

    .line 83
    if-eq v2, v0, :cond_3

    .line 84
    .line 85
    const/4 v0, 0x4

    .line 86
    if-eq v2, v0, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->q:Landroid/graphics/RectF;

    .line 90
    .line 91
    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 92
    .line 93
    iget v6, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->g:F

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    iget-object v8, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 97
    .line 98
    move-object v3, p1

    .line 99
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->z:Ljava/lang/Runnable;

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->z:Ljava/lang/Runnable;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->q:Landroid/graphics/RectF;

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    const/high16 v3, 0x43b40000    # 360.0f

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    iget-object v5, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 120
    .line 121
    move-object v0, p1

    .line 122
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 126
    .line 127
    invoke-direct {p0, v0, p1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->m(ILandroid/graphics/Canvas;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->q:Landroid/graphics/RectF;

    .line 132
    .line 133
    iget v3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->g:F

    .line 134
    .line 135
    neg-float v4, v0

    .line 136
    const/4 v5, 0x0

    .line 137
    iget-object v6, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 138
    .line 139
    move-object v1, p1

    .line 140
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    .line 7
    mul-float p1, p1, p3

    .line 8
    .line 9
    const/high16 p4, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr p1, p4

    .line 12
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n:F

    .line 13
    .line 14
    int-to-float p1, p2

    .line 15
    mul-float p1, p1, p3

    .line 16
    .line 17
    div-float/2addr p1, p4

    .line 18
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->o:F

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    div-int/lit8 p1, p1, 0x2

    .line 33
    .line 34
    iget p2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c:I

    .line 35
    .line 36
    div-int/lit8 p2, p2, 0x2

    .line 37
    .line 38
    sub-int/2addr p1, p2

    .line 39
    int-to-float p1, p1

    .line 40
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->p:F

    .line 41
    .line 42
    new-instance p1, Landroid/graphics/RectF;

    .line 43
    .line 44
    iget p2, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->n:F

    .line 45
    .line 46
    iget p3, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->p:F

    .line 47
    .line 48
    sub-float p4, p2, p3

    .line 49
    .line 50
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->o:F

    .line 51
    .line 52
    sub-float v1, v0, p3

    .line 53
    .line 54
    add-float/2addr p2, p3

    .line 55
    add-float/2addr v0, p3

    .line 56
    invoke-direct {p1, p4, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->q:Landroid/graphics/RectF;

    .line 60
    .line 61
    return-void
.end method

.method public p(I)Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->l:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public success()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->c(F)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$c;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$c;-><init>(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->z:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->x:I

    .line 21
    .line 22
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->y:Landroid/animation/TimeInterpolator;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->b:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public t(Ljava/lang/Runnable;)Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->A:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

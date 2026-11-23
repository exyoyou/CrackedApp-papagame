.class public Lcom/kongzue/dialogx/util/views/ProgressView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/b0;


# static fields
.field public static F:J = 0x12cL

.field public static G:J = 0x3e8L

.field public static final H:I = 0x0

.field public static final I:I = 0x1

.field public static final J:I = 0x2

.field public static final K:I = 0x3

.field public static final L:I = 0x4


# instance fields
.field private A:F

.field private B:Landroid/view/animation/Interpolator;

.field C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private E:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/kongzue/dialogx/util/f;

.field private f:Lcom/kongzue/dialogx/util/f;

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

.field private r:I

.field private s:F

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->m(F)I

    move-result v0

    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->c:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->d:I

    const/high16 v0, 0x43340000    # 180.0f

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->i:F

    const/high16 v0, 0x42a00000    # 80.0f

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->j:F

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 8
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->m:Z

    const/high16 v0, 0x42c80000    # 100.0f

    .line 9
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->p:F

    .line 10
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 11
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->v:I

    .line 12
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->w:I

    .line 13
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->x:I

    .line 14
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->y:I

    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;->p(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 18
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->m(F)I

    move-result v0

    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->c:I

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->d:I

    const/high16 v0, 0x43340000    # 180.0f

    .line 20
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->i:F

    const/high16 v0, 0x42a00000    # 80.0f

    .line 21
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->j:F

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 23
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->m:Z

    const/high16 v0, 0x42c80000    # 100.0f

    .line 24
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->p:F

    .line 25
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 26
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->v:I

    .line 27
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->w:I

    .line 28
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->x:I

    .line 29
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->y:I

    .line 30
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/ProgressView;->p(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    const/high16 p3, 0x40000000    # 2.0f

    .line 33
    invoke-direct {p0, p3}, Lcom/kongzue/dialogx/util/views/ProgressView;->m(F)I

    move-result p3

    iput p3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->c:I

    const/4 p3, -0x1

    .line 34
    iput p3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->d:I

    const/high16 p3, 0x43340000    # 180.0f

    .line 35
    iput p3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->i:F

    const/high16 p3, 0x42a00000    # 80.0f

    .line 36
    iput p3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->j:F

    .line 37
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 38
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->m:Z

    const/high16 p3, 0x42c80000    # 100.0f

    .line 39
    iput p3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->p:F

    .line 40
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 41
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->v:I

    .line 42
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->w:I

    .line 43
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->x:I

    .line 44
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->y:I

    .line 45
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/ProgressView;->p(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic f(Lcom/kongzue/dialogx/util/views/ProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->g:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/kongzue/dialogx/util/views/ProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->h:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lcom/kongzue/dialogx/util/views/ProgressView;ILandroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/util/views/ProgressView;->q(ILandroid/view/animation/Interpolator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/kongzue/dialogx/util/views/ProgressView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/kongzue/dialogx/util/views/ProgressView;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->B:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/kongzue/dialogx/util/views/ProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->A:F

    .line 2
    .line 3
    return p1
.end method

.method private l(Landroid/content/Context;)J
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;->o(Landroid/content/Context;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    cmpl-float v0, p1, v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    float-to-double v2, p1

    .line 16
    div-double/2addr v0, v2

    .line 17
    double-to-long v0, v0

    .line 18
    return-wide v0

    .line 19
    :cond_0
    const-wide/16 v0, 0x10

    .line 20
    .line 21
    return-wide v0
.end method

.method private m(F)I
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

.method private n(ILandroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/f;->v()Landroid/view/animation/Interpolator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->B:Landroid/view/animation/Interpolator;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/f;->H(Landroid/view/animation/Interpolator;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->D:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x3

    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->D:Ljava/lang/Runnable;

    .line 28
    .line 29
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->G:Z

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    if-eq p1, v2, :cond_3

    .line 34
    .line 35
    if-eq p1, v1, :cond_2

    .line 36
    .line 37
    if-eq p1, v3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/os/Handler;

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lcom/kongzue/dialogx/util/views/ProgressView$e;

    .line 53
    .line 54
    invoke-direct {v4, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$e;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 55
    .line 56
    .line 57
    sget-wide v5, Lcom/kongzue/dialogx/util/views/ProgressView;->F:J

    .line 58
    .line 59
    long-to-float v5, v5

    .line 60
    const/high16 v6, 0x3f000000    # 0.5f

    .line 61
    .line 62
    mul-float v5, v5, v6

    .line 63
    .line 64
    float-to-long v5, v5

    .line 65
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Landroid/os/Handler;

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Lcom/kongzue/dialogx/util/views/ProgressView$d;

    .line 79
    .line 80
    invoke-direct {v4, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$d;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 81
    .line 82
    .line 83
    sget-wide v5, Lcom/kongzue/dialogx/util/views/ProgressView;->F:J

    .line 84
    .line 85
    long-to-float v5, v5

    .line 86
    const v6, 0x3f4ccccd    # 0.8f

    .line 87
    .line 88
    .line 89
    mul-float v5, v5, v6

    .line 90
    .line 91
    float-to-long v5, v5

    .line 92
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_0
    if-eq p1, v2, :cond_7

    .line 100
    .line 101
    if-eq p1, v1, :cond_6

    .line 102
    .line 103
    if-eq p1, v3, :cond_5

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/ProgressView;->t(Landroid/graphics/Canvas;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/ProgressView;->v(Landroid/graphics/Canvas;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_7
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/ProgressView;->u(Landroid/graphics/Canvas;)V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void
.end method

.method private o(Landroid/content/Context;)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const-class v0, Landroid/view/WindowManager;

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroidx/core/content/pm/z0;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/WindowManager;

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/kongzue/dialogx/util/views/e;->a(Landroid/view/Display;)Landroid/view/Display$Mode;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/kongzue/dialogx/util/views/f;->a(Landroid/view/Display$Mode;)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v1, 0x17

    .line 29
    .line 30
    if-lt v0, v1, :cond_1

    .line 31
    .line 32
    const-string v0, "window"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/view/WindowManager;

    .line 39
    .line 40
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/high16 p1, 0x42700000    # 60.0f

    .line 50
    .line 51
    :goto_0
    return p1
.end method

.method private p(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    const-class v0, Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->m:Z

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
    iput-boolean v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->m:Z

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
    invoke-direct {p0, v2}, Lcom/kongzue/dialogx/util/views/ProgressView;->m(F)I

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
    iput v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->c:I

    .line 38
    .line 39
    sget v3, Lcom/kongzue/dialogx/R$styleable;->ProgressView_progressStrokeColor:I

    .line 40
    .line 41
    iget v4, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->d:I

    .line 42
    .line 43
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iput v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->d:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 58
    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 65
    .line 66
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->c:I

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 73
    .line 74
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 80
    .line 81
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->d:I

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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;->l(Landroid/content/Context;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    long-to-int p1, v3

    .line 101
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->i:F

    .line 102
    .line 103
    iget v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->j:F

    .line 104
    .line 105
    sub-float/2addr v1, v3

    .line 106
    div-float/2addr v1, v2

    .line 107
    iput v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->k:F

    .line 108
    .line 109
    const v1, 0x43b68000    # 365.0f

    .line 110
    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-static {v2, v1}, Lcom/kongzue/dialogx/util/f;->C(FF)Lcom/kongzue/dialogx/util/f;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 118
    .line 119
    const-wide/16 v4, 0x3e8

    .line 120
    .line 121
    invoke-virtual {v3, v4, v5}, Lcom/kongzue/dialogx/util/f;->E(J)Lcom/kongzue/dialogx/util/f;

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 125
    .line 126
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 127
    .line 128
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v4}, Lcom/kongzue/dialogx/util/f;->H(Landroid/view/animation/Interpolator;)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 135
    .line 136
    const/4 v4, -0x1

    .line 137
    invoke-virtual {v3, v4}, Lcom/kongzue/dialogx/util/f;->K(I)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 141
    .line 142
    invoke-virtual {v3, p1}, Lcom/kongzue/dialogx/util/f;->J(I)Lcom/kongzue/dialogx/util/f;

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 146
    .line 147
    new-instance v5, Lcom/kongzue/dialogx/util/views/ProgressView$b;

    .line 148
    .line 149
    invoke-direct {v5, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$b;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v5}, Lcom/kongzue/dialogx/util/f;->p(Lcom/kongzue/dialogx/util/f$b;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v2, v1}, Lcom/kongzue/dialogx/util/f;->C(FF)Lcom/kongzue/dialogx/util/f;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->f:Lcom/kongzue/dialogx/util/f;

    .line 160
    .line 161
    const-wide/16 v2, 0x5dc

    .line 162
    .line 163
    invoke-virtual {v1, v2, v3}, Lcom/kongzue/dialogx/util/f;->E(J)Lcom/kongzue/dialogx/util/f;

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->f:Lcom/kongzue/dialogx/util/f;

    .line 167
    .line 168
    invoke-virtual {v1, p1}, Lcom/kongzue/dialogx/util/f;->J(I)Lcom/kongzue/dialogx/util/f;

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->f:Lcom/kongzue/dialogx/util/f;

    .line 172
    .line 173
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 174
    .line 175
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v1}, Lcom/kongzue/dialogx/util/f;->H(Landroid/view/animation/Interpolator;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->f:Lcom/kongzue/dialogx/util/f;

    .line 182
    .line 183
    invoke-virtual {p1, v4}, Lcom/kongzue/dialogx/util/f;->K(I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->f:Lcom/kongzue/dialogx/util/f;

    .line 187
    .line 188
    new-instance v1, Lcom/kongzue/dialogx/util/views/ProgressView$c;

    .line 189
    .line 190
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$c;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v1}, Lcom/kongzue/dialogx/util/f;->p(Lcom/kongzue/dialogx/util/f$b;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->f:Lcom/kongzue/dialogx/util/f;

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/f;->N()V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/f;->N()V

    .line 204
    .line 205
    .line 206
    :cond_2
    monitor-exit v0

    .line 207
    return-void

    .line 208
    :catchall_0
    move-exception p1

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    throw p1
.end method

.method private q(ILandroid/view/animation/Interpolator;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->B:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 4
    .line 5
    iget p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/kongzue/dialogx/util/views/ProgressView$i;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$i;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->C:Ljava/lang/Runnable;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->z:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->z:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->A:F

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    new-array p1, p1, [F

    .line 32
    .line 33
    fill-array-data p1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->z:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    sget-wide v0, Lcom/kongzue/dialogx/util/views/ProgressView;->F:J

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->z:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    new-instance p2, Lcom/kongzue/dialogx/util/views/ProgressView$j;

    .line 50
    .line 51
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$j;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->z:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private t(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->o:F

    .line 4
    .line 5
    iget v2, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->p:F

    .line 6
    .line 7
    const/high16 v3, 0x40800000    # 4.0f

    .line 8
    .line 9
    mul-float v4, v2, v3

    .line 10
    .line 11
    const/high16 v5, 0x41200000    # 10.0f

    .line 12
    .line 13
    div-float/2addr v4, v5

    .line 14
    sub-float/2addr v1, v4

    .line 15
    float-to-int v1, v1

    .line 16
    iget v4, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->n:F

    .line 17
    .line 18
    mul-float v2, v2, v3

    .line 19
    .line 20
    div-float/2addr v2, v5

    .line 21
    add-float/2addr v4, v2

    .line 22
    float-to-int v2, v4

    .line 23
    iget v3, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->A:F

    .line 24
    .line 25
    const/high16 v4, 0x40000000    # 2.0f

    .line 26
    .line 27
    const/high16 v5, 0x3f000000    # 0.5f

    .line 28
    .line 29
    cmpg-float v6, v3, v5

    .line 30
    .line 31
    if-gez v6, :cond_0

    .line 32
    .line 33
    int-to-float v9, v1

    .line 34
    mul-float v5, v3, v4

    .line 35
    .line 36
    sub-int/2addr v2, v1

    .line 37
    int-to-float v1, v2

    .line 38
    mul-float v5, v5, v1

    .line 39
    .line 40
    add-float/2addr v5, v9

    .line 41
    float-to-int v2, v5

    .line 42
    iput v2, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->v:I

    .line 43
    .line 44
    mul-float v3, v3, v4

    .line 45
    .line 46
    mul-float v3, v3, v1

    .line 47
    .line 48
    add-float/2addr v3, v9

    .line 49
    float-to-int v1, v3

    .line 50
    iput v1, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->w:I

    .line 51
    .line 52
    int-to-float v10, v2

    .line 53
    int-to-float v11, v1

    .line 54
    iget-object v12, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 55
    .line 56
    move-object/from16 v7, p1

    .line 57
    .line 58
    move v8, v9

    .line 59
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    int-to-float v6, v1

    .line 64
    mul-float v7, v3, v4

    .line 65
    .line 66
    sub-int v1, v2, v1

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    mul-float v7, v7, v1

    .line 70
    .line 71
    add-float/2addr v7, v6

    .line 72
    float-to-int v7, v7

    .line 73
    iput v7, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->v:I

    .line 74
    .line 75
    mul-float v3, v3, v4

    .line 76
    .line 77
    mul-float v3, v3, v1

    .line 78
    .line 79
    add-float/2addr v3, v6

    .line 80
    float-to-int v3, v3

    .line 81
    iput v3, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->w:I

    .line 82
    .line 83
    int-to-float v2, v2

    .line 84
    iget-object v3, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 85
    .line 86
    move-object/from16 v13, p1

    .line 87
    .line 88
    move v14, v6

    .line 89
    move v15, v6

    .line 90
    move/from16 v16, v2

    .line 91
    .line 92
    move/from16 v17, v2

    .line 93
    .line 94
    move-object/from16 v18, v3

    .line 95
    .line 96
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    iget v3, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->A:F

    .line 100
    .line 101
    sub-float v7, v3, v5

    .line 102
    .line 103
    mul-float v7, v7, v4

    .line 104
    .line 105
    mul-float v7, v7, v1

    .line 106
    .line 107
    sub-float v7, v2, v7

    .line 108
    .line 109
    float-to-int v7, v7

    .line 110
    iput v7, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->x:I

    .line 111
    .line 112
    sub-float/2addr v3, v5

    .line 113
    mul-float v3, v3, v4

    .line 114
    .line 115
    mul-float v3, v3, v1

    .line 116
    .line 117
    add-float/2addr v3, v6

    .line 118
    float-to-int v1, v3

    .line 119
    iput v1, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->y:I

    .line 120
    .line 121
    int-to-float v4, v7

    .line 122
    int-to-float v5, v1

    .line 123
    iget-object v7, v0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 124
    .line 125
    move-object/from16 v1, p1

    .line 126
    .line 127
    move v3, v6

    .line 128
    move-object v6, v7

    .line 129
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    .line 131
    .line 132
    :goto_0
    return-void
.end method

.method private u(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->p:F

    .line 2
    .line 3
    const/high16 v1, 0x41a00000    # 20.0f

    .line 4
    .line 5
    div-float v1, v0, v1

    .line 6
    .line 7
    float-to-int v1, v1

    .line 8
    iget v2, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->n:F

    .line 9
    .line 10
    const/high16 v3, 0x41200000    # 10.0f

    .line 11
    .line 12
    div-float v3, v0, v3

    .line 13
    .line 14
    sub-float v3, v2, v3

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    sub-float/2addr v3, v1

    .line 18
    float-to-int v3, v3

    .line 19
    const/high16 v4, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float v5, v0, v4

    .line 22
    .line 23
    sub-float v5, v2, v5

    .line 24
    .line 25
    float-to-int v5, v5

    .line 26
    iget v6, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->o:F

    .line 27
    .line 28
    add-float/2addr v6, v1

    .line 29
    float-to-int v1, v6

    .line 30
    div-float/2addr v0, v4

    .line 31
    add-float/2addr v2, v0

    .line 32
    float-to-int v0, v2

    .line 33
    int-to-float v2, v5

    .line 34
    sub-int/2addr v0, v5

    .line 35
    int-to-float v0, v0

    .line 36
    iget v4, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->A:F

    .line 37
    .line 38
    mul-float v0, v0, v4

    .line 39
    .line 40
    add-float/2addr v0, v2

    .line 41
    float-to-int v0, v0

    .line 42
    new-instance v4, Landroid/graphics/Path;

    .line 43
    .line 44
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 45
    .line 46
    .line 47
    int-to-float v6, v1

    .line 48
    invoke-virtual {v4, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    .line 50
    .line 51
    if-ge v0, v3, :cond_0

    .line 52
    .line 53
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->v:I

    .line 54
    .line 55
    sub-int v2, v0, v5

    .line 56
    .line 57
    add-int/2addr v1, v2

    .line 58
    iput v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->w:I

    .line 59
    .line 60
    int-to-float v0, v0

    .line 61
    int-to-float v1, v1

    .line 62
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iput v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->v:I

    .line 67
    .line 68
    sub-int v2, v3, v5

    .line 69
    .line 70
    add-int/2addr v1, v2

    .line 71
    iput v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->w:I

    .line 72
    .line 73
    int-to-float v2, v3

    .line 74
    int-to-float v1, v1

    .line 75
    invoke-virtual {v4, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    .line 77
    .line 78
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->x:I

    .line 79
    .line 80
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->w:I

    .line 81
    .line 82
    iget v2, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->v:I

    .line 83
    .line 84
    sub-int v2, v0, v2

    .line 85
    .line 86
    sub-int/2addr v1, v2

    .line 87
    iput v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->y:I

    .line 88
    .line 89
    int-to-float v0, v0

    .line 90
    int-to-float v1, v1

    .line 91
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private v(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->n:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->o:F

    .line 5
    .line 6
    iget v2, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->p:F

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
    iget v2, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->A:F

    .line 35
    .line 36
    const v5, 0x3f666666    # 0.9f

    .line 37
    .line 38
    .line 39
    cmpg-float v5, v2, v5

    .line 40
    .line 41
    if-gez v5, :cond_0

    .line 42
    .line 43
    int-to-float v9, v0

    .line 44
    int-to-float v8, v4

    .line 45
    sub-int/2addr v3, v4

    .line 46
    int-to-float v0, v3

    .line 47
    mul-float v0, v0, v2

    .line 48
    .line 49
    add-float v10, v8, v0

    .line 50
    .line 51
    iget-object v11, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 52
    .line 53
    move-object v6, p1

    .line 54
    move v7, v9

    .line 55
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    int-to-float v8, v0

    .line 60
    int-to-float v4, v4

    .line 61
    int-to-float v6, v3

    .line 62
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 63
    .line 64
    move-object v2, p1

    .line 65
    move v3, v8

    .line 66
    move v5, v8

    .line 67
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    int-to-float v2, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    int-to-float v4, v1

    .line 74
    iget-object v5, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 75
    .line 76
    move-object v0, p1

    .line 77
    move v1, v8

    .line 78
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->E:Z

    .line 3
    .line 4
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

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
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->c(F)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/kongzue/dialogx/util/views/ProgressView$g;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$g;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->C:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 20
    .line 21
    const/high16 v1, 0x40000000    # 2.0f

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-direct {p0, v1, v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->q(ILandroid/view/animation/Interpolator;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public c(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/f;->q()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->f:Lcom/kongzue/dialogx/util/f;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/f;->q()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->g:F

    .line 22
    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->E:Z

    .line 25
    .line 26
    iput v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 27
    .line 28
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->g:F

    .line 29
    .line 30
    const v2, 0x43b68000    # 365.0f

    .line 31
    .line 32
    .line 33
    mul-float p1, p1, v2

    .line 34
    .line 35
    invoke-static {v1, p1}, Lcom/kongzue/dialogx/util/f;->C(FF)Lcom/kongzue/dialogx/util/f;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 40
    .line 41
    sget-wide v1, Lcom/kongzue/dialogx/util/views/ProgressView;->G:J

    .line 42
    .line 43
    invoke-virtual {p1, v1, v2}, Lcom/kongzue/dialogx/util/f;->E(J)Lcom/kongzue/dialogx/util/f;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 47
    .line 48
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 49
    .line 50
    const/high16 v2, 0x40000000    # 2.0f

    .line 51
    .line 52
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lcom/kongzue/dialogx/util/f;->H(Landroid/view/animation/Interpolator;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/util/f;->K(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 64
    .line 65
    new-instance v0, Lcom/kongzue/dialogx/util/views/ProgressView$a;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$a;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/util/f;->p(Lcom/kongzue/dialogx/util/f$b;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/f;->N()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Runnable;)Lcom/kongzue/dialogx/interfaces/b0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;->w(Ljava/lang/Runnable;)Lcom/kongzue/dialogx/util/views/ProgressView;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;->r(I)Lcom/kongzue/dialogx/util/views/ProgressView;

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
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

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
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->c(F)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/kongzue/dialogx/util/views/ProgressView$h;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$h;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->C:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 20
    .line 21
    const/high16 v1, 0x40000000    # 2.0f

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-direct {p0, v1, v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->q(ILandroid/view/animation/Interpolator;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public loading()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->E:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 5
    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->v:I

    .line 7
    .line 8
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->w:I

    .line 9
    .line 10
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->x:I

    .line 11
    .line 12
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->y:I

    .line 13
    .line 14
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/f;->q()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->f:Lcom/kongzue/dialogx/util/f;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/f;->q()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->m:Z

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->p(Landroid/util/AttributeSet;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->e:Lcom/kongzue/dialogx/util/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/f;->q()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->f:Lcom/kongzue/dialogx/util/f;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/f;->q()V

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
    .locals 11

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
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->q:Landroid/graphics/RectF;

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
    iget-object v6, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

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
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->E:Z

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->q:Landroid/graphics/RectF;

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
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 34
    .line 35
    move-object v2, p1

    .line 36
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    iput v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 40
    .line 41
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 42
    .line 43
    invoke-direct {p0, v0, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;->n(ILandroid/graphics/Canvas;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 48
    .line 49
    const/high16 v2, 0x43b40000    # 360.0f

    .line 50
    .line 51
    if-eqz v0, :cond_8

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x1

    .line 55
    if-eq v0, v4, :cond_5

    .line 56
    .line 57
    if-eq v0, v1, :cond_5

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    if-eq v0, v1, :cond_5

    .line 61
    .line 62
    const/4 v1, 0x4

    .line 63
    if-eq v0, v1, :cond_2

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_2
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    if-eq v0, v4, :cond_3

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_3
    iget-object v6, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->q:Landroid/graphics/RectF;

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    const/high16 v8, 0x43b40000    # 360.0f

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    iget-object v10, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 82
    .line 83
    move-object v5, p1

    .line 84
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 88
    .line 89
    invoke-direct {p0, v0, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;->n(ILandroid/graphics/Canvas;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_4
    iget-object v6, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->q:Landroid/graphics/RectF;

    .line 95
    .line 96
    const/high16 v7, -0x3d4c0000    # -90.0f

    .line 97
    .line 98
    iget v8, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->g:F

    .line 99
    .line 100
    const/4 v9, 0x0

    .line 101
    iget-object v10, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 102
    .line 103
    move-object v5, p1

    .line 104
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    iget p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->g:F

    .line 108
    .line 109
    const v0, 0x43b68000    # 365.0f

    .line 110
    .line 111
    .line 112
    cmpl-float p1, p1, v0

    .line 113
    .line 114
    if-nez p1, :cond_b

    .line 115
    .line 116
    iput v4, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 117
    .line 118
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->C:Ljava/lang/Runnable;

    .line 119
    .line 120
    if-eqz p1, :cond_b

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 123
    .line 124
    .line 125
    iput-object v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->C:Ljava/lang/Runnable;

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_5
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 130
    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    if-eq v0, v4, :cond_6

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :cond_6
    iget-object v6, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->q:Landroid/graphics/RectF;

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    const/high16 v8, 0x43b40000    # 360.0f

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    iget-object v10, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 144
    .line 145
    move-object v5, p1

    .line 146
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 147
    .line 148
    .line 149
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

    .line 150
    .line 151
    invoke-direct {p0, v0, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;->n(ILandroid/graphics/Canvas;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->t:F

    .line 156
    .line 157
    const/high16 v1, 0x40a00000    # 5.0f

    .line 158
    .line 159
    add-float v8, v0, v1

    .line 160
    .line 161
    iput v8, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->t:F

    .line 162
    .line 163
    iget-object v6, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->q:Landroid/graphics/RectF;

    .line 164
    .line 165
    iget v7, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->s:F

    .line 166
    .line 167
    const/4 v9, 0x0

    .line 168
    iget-object v10, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 169
    .line 170
    move-object v5, p1

    .line 171
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    .line 173
    .line 174
    iget p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->t:F

    .line 175
    .line 176
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->u:F

    .line 177
    .line 178
    sub-float/2addr v2, v0

    .line 179
    sub-float/2addr p1, v2

    .line 180
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->s:F

    .line 181
    .line 182
    cmpl-float p1, p1, v0

    .line 183
    .line 184
    if-ltz p1, :cond_b

    .line 185
    .line 186
    iput v4, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->r:I

    .line 187
    .line 188
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->C:Ljava/lang/Runnable;

    .line 189
    .line 190
    if-eqz p1, :cond_b

    .line 191
    .line 192
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 193
    .line 194
    .line 195
    iput-object v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->C:Ljava/lang/Runnable;

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_8
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->k:F

    .line 199
    .line 200
    float-to-double v0, v0

    .line 201
    iget v3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->h:F

    .line 202
    .line 203
    float-to-double v3, v3

    .line 204
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 205
    .line 206
    .line 207
    move-result-wide v3

    .line 208
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v3

    .line 212
    mul-double v0, v0, v3

    .line 213
    .line 214
    double-to-float v0, v0

    .line 215
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->k:F

    .line 216
    .line 217
    add-float/2addr v0, v1

    .line 218
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->j:F

    .line 219
    .line 220
    const/high16 v3, 0x40000000    # 2.0f

    .line 221
    .line 222
    div-float/2addr v1, v3

    .line 223
    add-float/2addr v0, v1

    .line 224
    iget v5, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->g:F

    .line 225
    .line 226
    sub-float v1, v5, v0

    .line 227
    .line 228
    iput v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->s:F

    .line 229
    .line 230
    const/4 v3, 0x0

    .line 231
    cmpg-float v4, v1, v3

    .line 232
    .line 233
    if-gez v4, :cond_9

    .line 234
    .line 235
    add-float/2addr v1, v2

    .line 236
    iput v1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->s:F

    .line 237
    .line 238
    :cond_9
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->t:F

    .line 239
    .line 240
    cmpg-float v1, v0, v3

    .line 241
    .line 242
    if-gez v1, :cond_a

    .line 243
    .line 244
    sub-float/2addr v2, v0

    .line 245
    goto :goto_0

    .line 246
    :cond_a
    move v2, v0

    .line 247
    :goto_0
    iput v2, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->u:F

    .line 248
    .line 249
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->q:Landroid/graphics/RectF;

    .line 250
    .line 251
    neg-float v6, v0

    .line 252
    const/4 v7, 0x0

    .line 253
    iget-object v8, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

    .line 254
    .line 255
    move-object v3, p1

    .line 256
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 257
    .line 258
    .line 259
    :cond_b
    :goto_1
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
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->n:F

    .line 13
    .line 14
    int-to-float p1, p2

    .line 15
    mul-float p1, p1, p3

    .line 16
    .line 17
    div-float/2addr p1, p4

    .line 18
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->o:F

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
    iget p2, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->c:I

    .line 35
    .line 36
    div-int/lit8 p2, p2, 0x2

    .line 37
    .line 38
    sub-int/2addr p1, p2

    .line 39
    int-to-float p1, p1

    .line 40
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->p:F

    .line 41
    .line 42
    new-instance p1, Landroid/graphics/RectF;

    .line 43
    .line 44
    iget p2, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->n:F

    .line 45
    .line 46
    iget p3, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->p:F

    .line 47
    .line 48
    sub-float p4, p2, p3

    .line 49
    .line 50
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->o:F

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
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->q:Landroid/graphics/RectF;

    .line 60
    .line 61
    return-void
.end method

.method public r(I)Lcom/kongzue/dialogx/util/views/ProgressView;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->d:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

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

.method public s(I)Lcom/kongzue/dialogx/util/views/ProgressView;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->c:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->l:Landroid/graphics/Paint;

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
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->b:I

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
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->c(F)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/kongzue/dialogx/util/views/ProgressView$f;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/ProgressView$f;-><init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->C:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0, v1, v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->q(ILandroid/view/animation/Interpolator;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public w(Ljava/lang/Runnable;)Lcom/kongzue/dialogx/util/views/ProgressView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView;->D:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

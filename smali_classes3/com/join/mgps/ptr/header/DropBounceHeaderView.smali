.class public Lcom/join/mgps/ptr/header/DropBounceHeaderView;
.super Lcom/join/mgps/ptr/PtrUIHeader;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/join/mgps/ptr/PtrFrameLayout;

.field private d:Lcom/join/mgps/ptr/indicator/b;

.field private e:Landroid/graphics/drawable/AnimationDrawable;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Paint;

.field h:F

.field i:F

.field private j:F

.field private k:Landroid/graphics/RectF;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:Z

.field private r:Landroid/animation/ValueAnimator;

.field private s:Landroid/animation/ValueAnimator;

.field private t:Landroid/animation/ValueAnimator;

.field private u:Landroid/animation/ValueAnimator;

.field private v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;)V

    const-string p1, "DropBounceHeaderView"

    .line 2
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->b:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    const p1, 0x3f4ccccd    # 0.8f

    .line 4
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 5
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:F

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:I

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Z

    .line 9
    new-instance p1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "DropBounceHeaderView"

    .line 12
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->b:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    const p1, 0x3f4ccccd    # 0.8f

    .line 14
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 15
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:F

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:I

    .line 18
    iput-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Z

    .line 19
    new-instance p1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i()V

    return-void
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

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "DropBounceHeaderView"

    .line 22
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->b:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    const p1, 0x3f4ccccd    # 0.8f

    .line 24
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 25
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:F

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:I

    .line 28
    iput-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Z

    .line 29
    new-instance p1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 30
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i()V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/join/mgps/ptr/header/DropBounceHeaderView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p:F

    .line 2
    .line 3
    return p1
.end method

.method private h(Landroid/animation/ValueAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->k:Landroid/graphics/RectF;

    .line 11
    .line 12
    const v1, 0x7f080c77

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    iget v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    .line 34
    .line 35
    mul-float v0, v0, v1

    .line 36
    .line 37
    const/high16 v1, 0x40000000    # 2.0f

    .line 38
    .line 39
    div-float/2addr v0, v1

    .line 40
    iput v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:F

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->m()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n()V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->k()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private j()V
    .locals 0

    .line 1
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h(Landroid/animation/ValueAnimator;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h(Landroid/animation/ValueAnimator;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h(Landroid/animation/ValueAnimator;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h(Landroid/animation/ValueAnimator;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    new-array v1, v0, [F

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    new-array v1, v0, [F

    .line 34
    .line 35
    fill-array-data v1, :array_1

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    new-array v1, v0, [F

    .line 45
    .line 46
    fill-array-data v1, :array_2

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    .line 57
    .line 58
    new-array v0, v0, [F

    .line 59
    .line 60
    fill-array-data v0, :array_3

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    const-wide/16 v1, 0x1

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private l()V
    .locals 0

    .line 1
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/high16 v1, 0x41b00000    # 22.0f

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:Landroid/graphics/Paint;

    .line 14
    .line 15
    iget v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Path;

    .line 7
    .line 8
    return-void
.end method

.method private o()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:I

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    const-wide/16 v2, 0x1f4

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-instance v4, Lcom/join/mgps/ptr/header/DropBounceInterpolator;

    .line 31
    .line 32
    invoke-direct {v4}, Lcom/join/mgps/ptr/header/DropBounceInterpolator;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    const-wide/16 v4, 0xb4

    .line 41
    .line 42
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    .line 49
    .line 50
    new-array v0, v0, [F

    .line 51
    .line 52
    fill-array-data v0, :array_1

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    new-instance v1, Lcom/join/mgps/ptr/header/DropBounceInterpolator;

    .line 74
    .line 75
    invoke-direct {v1}, Lcom/join/mgps/ptr/header/DropBounceInterpolator;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    long-to-double v4, v4

    .line 84
    long-to-double v1, v2

    .line 85
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 86
    .line 87
    mul-double v1, v1, v6

    .line 88
    .line 89
    add-double/2addr v4, v1

    .line 90
    double-to-long v1, v4

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private p()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Z

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [F

    .line 9
    .line 10
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    aput v3, v2, v4

    .line 24
    .line 25
    const v3, 0x3eaaaaab

    .line 26
    .line 27
    .line 28
    aput v3, v2, v0

    .line 29
    .line 30
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    const-wide/16 v5, 0xc8

    .line 37
    .line 38
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 44
    .line 45
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    new-instance v3, Lcom/join/mgps/ptr/header/DropBounceHeaderView$b;

    .line 54
    .line 55
    invoke-direct {v3, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$b;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    .line 65
    .line 66
    new-array v2, v1, [F

    .line 67
    .line 68
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/Float;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    aput v3, v2, v4

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    aput v3, v2, v0

    .line 84
    .line 85
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iput-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 90
    .line 91
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 97
    .line 98
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    .line 108
    .line 109
    iget v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    new-array v1, v1, [F

    .line 124
    .line 125
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 126
    .line 127
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljava/lang/Float;

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    aput v3, v1, v4

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    int-to-float v3, v3

    .line 144
    const/high16 v4, 0x3f800000    # 1.0f

    .line 145
    .line 146
    iget v7, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:F

    .line 147
    .line 148
    mul-float v7, v7, v4

    .line 149
    .line 150
    const/high16 v4, 0x40400000    # 3.0f

    .line 151
    .line 152
    div-float/2addr v7, v4

    .line 153
    sub-float/2addr v3, v7

    .line 154
    iget v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    .line 155
    .line 156
    div-float/2addr v2, v4

    .line 157
    sub-float/2addr v3, v2

    .line 158
    aput v3, v1, v0

    .line 159
    .line 160
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 165
    .line 166
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 170
    .line 171
    new-instance v1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$c;

    .line 172
    .line 173
    invoke-direct {v1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$c;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 180
    .line 181
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 182
    .line 183
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method private q()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    new-array v1, v0, [F

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    const-wide/16 v2, 0xc8

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    .line 34
    .line 35
    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x1

    .line 57
    invoke-static {v5, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    new-array v0, v0, [F

    .line 62
    .line 63
    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/Float;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const/4 v6, 0x0

    .line 76
    aput v4, v0, v6

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    int-to-float v4, v4

    .line 83
    iget v6, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:F

    .line 84
    .line 85
    sub-float/2addr v4, v6

    .line 86
    iget v6, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    .line 87
    .line 88
    div-float/2addr v1, v6

    .line 89
    sub-float/2addr v4, v1

    .line 90
    aput v4, v0, v5

    .line 91
    .line 92
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 102
    .line 103
    new-instance v1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$d;

    .line 104
    .line 105
    invoke-direct {v1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$d;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 114
    .line 115
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    nop

    .line 131
    :array_0
    .array-data 4
        0x3eaaaaab
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    const-string p1, "DropBounceHeaderView"

    .line 2
    .line 3
    const-string v0, "onUIRefreshComplete method called."

    .line 4
    .line 5
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    const-string p1, "DropBounceHeaderView"

    .line 2
    .line 3
    const-string v0, "onUIRefreshPrepare method called."

    .line 4
    .line 5
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "isUnderTouch",
            "status",
            "ptrIndicator"
        }
    .end annotation

    .line 1
    const-string p1, "DropBounceHeaderView"

    .line 2
    .line 3
    const-string p2, "onUIPositionChange method called."

    .line 4
    .line 5
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object p2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p2, p2

    .line 30
    iget-object p3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Ljava/lang/Float;

    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    check-cast p3, Ljava/lang/Float;

    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    iget-object p3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Ljava/lang/Float;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 61
    .line 62
    .line 63
    const/4 p3, 0x0

    .line 64
    const p4, 0x3eaaaaab

    .line 65
    .line 66
    .line 67
    const/high16 v0, 0x40000000    # 2.0f

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    cmpl-float v2, p1, p3

    .line 71
    .line 72
    if-lez v2, :cond_1

    .line 73
    .line 74
    cmpg-float v2, p1, p4

    .line 75
    .line 76
    if-gez v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    int-to-float p4, p4

    .line 83
    div-float/2addr p2, v0

    .line 84
    sub-float/2addr p4, p2

    .line 85
    iput v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const p3, 0x3f2aaaab

    .line 89
    .line 90
    .line 91
    cmpg-float v2, p1, p3

    .line 92
    .line 93
    if-gez v2, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    int-to-float p3, p3

    .line 100
    div-float/2addr p2, v0

    .line 101
    sub-float p2, p3, p2

    .line 102
    .line 103
    sub-float p3, p1, p4

    .line 104
    .line 105
    mul-float p3, p3, v0

    .line 106
    .line 107
    iput v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:I

    .line 108
    .line 109
    move p4, p2

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 112
    .line 113
    cmpg-float v3, p1, v2

    .line 114
    .line 115
    if-gez v3, :cond_3

    .line 116
    .line 117
    mul-float v3, p1, v0

    .line 118
    .line 119
    sub-float/2addr v3, p3

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    int-to-float p3, p3

    .line 125
    mul-float p2, p2, v2

    .line 126
    .line 127
    const/high16 v2, 0x40400000    # 3.0f

    .line 128
    .line 129
    div-float/2addr p2, v2

    .line 130
    div-float/2addr p2, p1

    .line 131
    sub-float p1, p3, p2

    .line 132
    .line 133
    sub-float p2, v3, p4

    .line 134
    .line 135
    mul-float p3, p2, v0

    .line 136
    .line 137
    iput v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:I

    .line 138
    .line 139
    move p4, p1

    .line 140
    move p1, v3

    .line 141
    :goto_0
    const/4 p2, 0x2

    .line 142
    new-array v0, p2, [F

    .line 143
    .line 144
    aput p1, v0, v1

    .line 145
    .line 146
    const/4 v2, 0x1

    .line 147
    aput p1, v0, v2

    .line 148
    .line 149
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 154
    .line 155
    new-array p1, p2, [F

    .line 156
    .line 157
    aput p4, p1, v1

    .line 158
    .line 159
    aput p4, p1, v2

    .line 160
    .line 161
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 166
    .line 167
    new-array p1, p2, [F

    .line 168
    .line 169
    aput p3, p1, v1

    .line 170
    .line 171
    aput p3, p1, v2

    .line 172
    .line 173
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 178
    .line 179
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p()V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public d(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    const-string p1, "DropBounceHeaderView"

    .line 2
    .line 3
    const-string v0, "onUIReset method called."

    .line 4
    .line 5
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->k()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Z

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public e(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    const-string p1, "DropBounceHeaderView"

    .line 2
    .line 3
    const-string v0, "onUIRefreshBegin method called."

    .line 4
    .line 5
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->k:Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p:F

    .line 24
    .line 25
    iget v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->m:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    const/high16 v2, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float/2addr v1, v2

    .line 31
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Float;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/Float;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget-object v5, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Ljava/lang/Float;

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iget v6, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:I

    .line 68
    .line 69
    int-to-float v6, v6

    .line 70
    iget v7, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:F

    .line 71
    .line 72
    mul-float v8, v4, v6

    .line 73
    .line 74
    const/high16 v9, 0x3f800000    # 1.0f

    .line 75
    .line 76
    add-float/2addr v8, v9

    .line 77
    mul-float v10, v7, v8

    .line 78
    .line 79
    mul-float v10, v10, v3

    .line 80
    .line 81
    sub-float v10, v1, v10

    .line 82
    .line 83
    mul-float v11, v7, v5

    .line 84
    .line 85
    div-float/2addr v11, v2

    .line 86
    add-float/2addr v10, v11

    .line 87
    mul-float v6, v6, v5

    .line 88
    .line 89
    add-float/2addr v6, v9

    .line 90
    mul-float v9, v7, v6

    .line 91
    .line 92
    mul-float v9, v9, v3

    .line 93
    .line 94
    add-float/2addr v9, v0

    .line 95
    mul-float v11, v7, v4

    .line 96
    .line 97
    div-float/2addr v11, v2

    .line 98
    sub-float/2addr v9, v11

    .line 99
    mul-float v8, v8, v7

    .line 100
    .line 101
    mul-float v8, v8, v3

    .line 102
    .line 103
    add-float/2addr v1, v8

    .line 104
    mul-float v5, v5, v7

    .line 105
    .line 106
    div-float/2addr v5, v2

    .line 107
    sub-float/2addr v1, v5

    .line 108
    mul-float v6, v6, v7

    .line 109
    .line 110
    mul-float v6, v6, v3

    .line 111
    .line 112
    sub-float/2addr v0, v6

    .line 113
    mul-float v7, v7, v4

    .line 114
    .line 115
    div-float/2addr v7, v2

    .line 116
    add-float/2addr v0, v7

    .line 117
    iget v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const/4 v5, 0x1

    .line 128
    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    div-float v4, v3, v2

    .line 133
    .line 134
    add-float/2addr v10, v4

    .line 135
    add-float/2addr v9, v3

    .line 136
    sub-float/2addr v1, v4

    .line 137
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->k:Landroid/graphics/RectF;

    .line 138
    .line 139
    invoke-virtual {v3, v10, v9, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 140
    .line 141
    .line 142
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Path;

    .line 143
    .line 144
    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->k:Landroid/graphics/RectF;

    .line 145
    .line 146
    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 147
    .line 148
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Path;

    .line 152
    .line 153
    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:Landroid/graphics/Paint;

    .line 154
    .line 155
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 156
    .line 157
    .line 158
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_0

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    add-float/2addr v10, v2

    .line 179
    float-to-int v3, v10

    .line 180
    add-float/2addr v0, v2

    .line 181
    float-to-int v0, v0

    .line 182
    sub-float/2addr v1, v2

    .line 183
    float-to-int v1, v1

    .line 184
    sub-float/2addr v9, v2

    .line 185
    float-to-int v2, v9

    .line 186
    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 187
    .line 188
    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 202
    .line 203
    const/4 v1, 0x0

    .line 204
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 205
    .line 206
    .line 207
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_1

    .line 214
    .line 215
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_1

    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_1

    .line 230
    .line 231
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_1

    .line 238
    .line 239
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->l()V

    .line 240
    .line 241
    .line 242
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
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
    iget-object p2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    int-to-float p2, p2

    .line 8
    iget v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    .line 9
    .line 10
    mul-float p2, p2, v0

    .line 11
    .line 12
    float-to-int p2, p2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr p2, v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr p2, v0

    .line 23
    const/high16 v0, 0x40000000    # 2.0f

    .line 24
    .line 25
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
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
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->m:I

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setUp(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptrFrameLayout"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->c:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    new-instance p1, Lcom/join/mgps/ptr/indicator/b;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/join/mgps/ptr/indicator/b;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->c:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrIndicator(Lcom/join/mgps/ptr/indicator/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.class public Lmoe/codeest/enviews/ENDownloadView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/codeest/enviews/ENDownloadView$h;,
        Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;
    }
.end annotation


# static fields
.field public static final A:I = 0x2

.field public static final B:I = 0x3

.field private static final C:I = -0x1

.field private static final D:I = -0xc5c0bb

.field private static final E:I = -0x1

.field private static final F:I = 0x9

.field private static final G:I = 0x9

.field private static final H:I = 0xe

.field private static final I:I = 0x0

.field private static final J:I = 0x2

.field private static final K:I = 0x7d0

.field private static final L:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

.field public static final y:I = 0x0

.field public static final z:I = 0x1


# instance fields
.field private b:Lmoe/codeest/enviews/ENDownloadView$h;

.field private c:I

.field private d:F

.field private e:D

.field private f:D

.field private g:I

.field private h:I

.field private i:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Path;

.field private n:Landroid/graphics/RectF;

.field private o:Landroid/graphics/RectF;

.field p:Landroid/animation/ValueAnimator;

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->B:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 2
    .line 3
    sput-object v0, Lmoe/codeest/enviews/ENDownloadView;->L:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/papa/gsyvideoplayer/R$styleable;->download:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/papa/gsyvideoplayer/R$styleable;->download_download_line_color:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 5
    sget v1, Lcom/papa/gsyvideoplayer/R$styleable;->download_download_bg_line_color:I

    const v2, -0xc5c0bb

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 6
    sget v2, Lcom/papa/gsyvideoplayer/R$styleable;->download_download_text_color:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 7
    sget v2, Lcom/papa/gsyvideoplayer/R$styleable;->download_download_line_width:I

    const/16 v3, 0x9

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 8
    sget v4, Lcom/papa/gsyvideoplayer/R$styleable;->download_download_bg_line_width:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 9
    sget v4, Lcom/papa/gsyvideoplayer/R$styleable;->download_download_text_size:I

    const/16 v5, 0xe

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 12
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 14
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    .line 17
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 19
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    int-to-float p2, v3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->l:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->l:Landroid/graphics/Paint;

    int-to-float p2, v4

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 24
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->l:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 25
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->m:Landroid/graphics/Path;

    .line 26
    iput v4, p0, Lmoe/codeest/enviews/ENDownloadView;->g:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->c:I

    .line 28
    sget-object p1, Lmoe/codeest/enviews/ENDownloadView;->L:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->i:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    const/16 p1, 0x7d0

    .line 29
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->h:I

    return-void
.end method

.method static synthetic a(Lmoe/codeest/enviews/ENDownloadView;)F
    .locals 0

    .line 1
    iget p0, p0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lmoe/codeest/enviews/ENDownloadView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lmoe/codeest/enviews/ENDownloadView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->c:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lmoe/codeest/enviews/ENDownloadView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmoe/codeest/enviews/ENDownloadView;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lmoe/codeest/enviews/ENDownloadView;)Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lmoe/codeest/enviews/ENDownloadView;->i:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lmoe/codeest/enviews/ENDownloadView;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lmoe/codeest/enviews/ENDownloadView;->f:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic g(Lmoe/codeest/enviews/ENDownloadView;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lmoe/codeest/enviews/ENDownloadView;->e:D

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic h(Lmoe/codeest/enviews/ENDownloadView;)Lmoe/codeest/enviews/ENDownloadView$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lmoe/codeest/enviews/ENDownloadView;->b:Lmoe/codeest/enviews/ENDownloadView$h;

    .line 2
    .line 3
    return-object p0
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lmoe/codeest/enviews/ENDownloadView;->c:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [F

    .line 37
    .line 38
    fill-array-data v0, :array_0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    iget v1, p0, Lmoe/codeest/enviews/ENDownloadView;->h:I

    .line 48
    .line 49
    int-to-long v1, v1

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 56
    .line 57
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$c;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$c;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$d;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$d;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [F

    .line 31
    .line 32
    fill-array-data v0, :array_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    const-wide/16 v1, 0x2bc

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$e;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$e;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$f;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$f;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private k(Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lmoe/codeest/enviews/ENDownloadView$g;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const-string p1, " b"

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    const-string p1, " kb"

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    const-string p1, " mb"

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_2
    const-string p1, " gb"

    .line 28
    .line 29
    return-object p1
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lmoe/codeest/enviews/ENDownloadView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmoe/codeest/enviews/ENDownloadView;->c:I

    .line 6
    .line 7
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lmoe/codeest/enviews/ENDownloadView;->c:I

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [F

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    const-wide/16 v1, 0x5dc

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$a;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$a;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$b;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$b;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->p:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->c:I

    .line 9
    .line 10
    const/high16 v8, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const v9, 0x3f99999a    # 1.2f

    .line 13
    .line 14
    .line 15
    const/high16 v10, 0x40000000    # 2.0f

    .line 16
    .line 17
    const v11, 0x400ccccd    # 2.2f

    .line 18
    .line 19
    .line 20
    const v12, 0x3fa66666    # 1.3f

    .line 21
    .line 22
    .line 23
    const v13, 0x3e4ccccd    # 0.2f

    .line 24
    .line 25
    .line 26
    if-eqz v1, :cond_8

    .line 27
    .line 28
    const/4 v14, 0x0

    .line 29
    const/4 v15, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eq v1, v2, :cond_4

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/high16 v8, 0x3f000000    # 0.5f

    .line 35
    .line 36
    if-eq v1, v3, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    if-eq v1, v2, :cond_0

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 44
    .line 45
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 46
    .line 47
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 48
    .line 49
    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 55
    .line 56
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 57
    .line 58
    sub-float v3, v1, v2

    .line 59
    .line 60
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 61
    .line 62
    mul-float v5, v2, v8

    .line 63
    .line 64
    sub-float/2addr v1, v5

    .line 65
    mul-float v5, v2, v8

    .line 66
    .line 67
    iget v6, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 68
    .line 69
    mul-float v5, v5, v6

    .line 70
    .line 71
    add-float/2addr v5, v1

    .line 72
    const v10, 0x3f266666    # 0.65f

    .line 73
    .line 74
    .line 75
    mul-float v1, v2, v10

    .line 76
    .line 77
    add-float/2addr v1, v4

    .line 78
    const v11, 0x3eb33333    # 0.35f

    .line 79
    .line 80
    .line 81
    mul-float v2, v2, v11

    .line 82
    .line 83
    mul-float v2, v2, v6

    .line 84
    .line 85
    add-float v6, v1, v2

    .line 86
    .line 87
    iget-object v14, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 88
    .line 89
    move-object/from16 v1, p1

    .line 90
    .line 91
    move v2, v3

    .line 92
    move v3, v4

    .line 93
    move v4, v5

    .line 94
    move v5, v6

    .line 95
    move-object v6, v14

    .line 96
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 100
    .line 101
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 102
    .line 103
    mul-float v3, v2, v8

    .line 104
    .line 105
    sub-float v3, v1, v3

    .line 106
    .line 107
    mul-float v4, v2, v8

    .line 108
    .line 109
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 110
    .line 111
    mul-float v4, v4, v5

    .line 112
    .line 113
    add-float/2addr v3, v4

    .line 114
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 115
    .line 116
    mul-float v6, v2, v10

    .line 117
    .line 118
    add-float/2addr v6, v4

    .line 119
    mul-float v14, v2, v11

    .line 120
    .line 121
    mul-float v14, v14, v5

    .line 122
    .line 123
    add-float/2addr v6, v14

    .line 124
    mul-float v9, v9, v2

    .line 125
    .line 126
    add-float/2addr v1, v9

    .line 127
    mul-float v13, v13, v2

    .line 128
    .line 129
    mul-float v13, v13, v5

    .line 130
    .line 131
    sub-float v9, v1, v13

    .line 132
    .line 133
    mul-float v1, v2, v12

    .line 134
    .line 135
    sub-float/2addr v4, v1

    .line 136
    mul-float v2, v2, v12

    .line 137
    .line 138
    mul-float v2, v2, v5

    .line 139
    .line 140
    add-float v5, v4, v2

    .line 141
    .line 142
    iget-object v12, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 143
    .line 144
    move-object/from16 v1, p1

    .line 145
    .line 146
    move v2, v3

    .line 147
    move v3, v6

    .line 148
    move v4, v9

    .line 149
    move-object v6, v12

    .line 150
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 151
    .line 152
    .line 153
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 154
    .line 155
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 156
    .line 157
    mul-float v3, v2, v8

    .line 158
    .line 159
    sub-float v3, v1, v3

    .line 160
    .line 161
    mul-float v4, v2, v8

    .line 162
    .line 163
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 164
    .line 165
    mul-float v4, v4, v5

    .line 166
    .line 167
    add-float/2addr v3, v4

    .line 168
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 169
    .line 170
    mul-float v6, v2, v10

    .line 171
    .line 172
    add-float/2addr v6, v4

    .line 173
    mul-float v11, v11, v2

    .line 174
    .line 175
    mul-float v11, v11, v5

    .line 176
    .line 177
    add-float/2addr v6, v11

    .line 178
    mul-float v9, v2, v8

    .line 179
    .line 180
    sub-float/2addr v1, v9

    .line 181
    mul-float v8, v8, v2

    .line 182
    .line 183
    mul-float v8, v8, v5

    .line 184
    .line 185
    add-float/2addr v8, v1

    .line 186
    mul-float v10, v10, v2

    .line 187
    .line 188
    add-float/2addr v4, v10

    .line 189
    const/high16 v1, 0x40100000    # 2.25f

    .line 190
    .line 191
    mul-float v2, v2, v1

    .line 192
    .line 193
    mul-float v2, v2, v5

    .line 194
    .line 195
    sub-float v5, v4, v2

    .line 196
    .line 197
    iget-object v9, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 198
    .line 199
    move-object/from16 v1, p1

    .line 200
    .line 201
    move v2, v3

    .line 202
    move v3, v6

    .line 203
    move v4, v8

    .line 204
    move-object v6, v9

    .line 205
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :cond_1
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 211
    .line 212
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 213
    .line 214
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 215
    .line 216
    iget-object v5, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 217
    .line 218
    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 219
    .line 220
    .line 221
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 222
    .line 223
    float-to-double v3, v1

    .line 224
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 225
    .line 226
    cmpg-double v10, v3, v5

    .line 227
    .line 228
    if-gtz v10, :cond_2

    .line 229
    .line 230
    iget-object v3, v0, Lmoe/codeest/enviews/ENDownloadView;->l:Landroid/graphics/Paint;

    .line 231
    .line 232
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->g:I

    .line 233
    .line 234
    int-to-float v5, v4

    .line 235
    int-to-float v4, v4

    .line 236
    div-float/2addr v4, v13

    .line 237
    mul-float v4, v4, v1

    .line 238
    .line 239
    sub-float/2addr v5, v4

    .line 240
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->l:Landroid/graphics/Paint;

    .line 245
    .line 246
    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 247
    .line 248
    .line 249
    :goto_0
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->i:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 250
    .line 251
    sget-object v3, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->NONE:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 252
    .line 253
    if-eq v1, v3, :cond_3

    .line 254
    .line 255
    iget-wide v3, v0, Lmoe/codeest/enviews/ENDownloadView;->e:D

    .line 256
    .line 257
    const-wide/16 v5, 0x0

    .line 258
    .line 259
    cmpl-double v1, v3, v5

    .line 260
    .line 261
    if-lez v1, :cond_3

    .line 262
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    new-array v2, v2, [Ljava/lang/Object;

    .line 269
    .line 270
    iget-wide v3, v0, Lmoe/codeest/enviews/ENDownloadView;->e:D

    .line 271
    .line 272
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    aput-object v3, v2, v14

    .line 277
    .line 278
    const-string v3, "%.2f"

    .line 279
    .line 280
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-object v2, v0, Lmoe/codeest/enviews/ENDownloadView;->i:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 288
    .line 289
    invoke-direct {v0, v2}, Lmoe/codeest/enviews/ENDownloadView;->k(Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 301
    .line 302
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 303
    .line 304
    const v4, 0x3fb33333    # 1.4f

    .line 305
    .line 306
    .line 307
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 308
    .line 309
    mul-float v5, v5, v4

    .line 310
    .line 311
    add-float/2addr v3, v5

    .line 312
    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->l:Landroid/graphics/Paint;

    .line 313
    .line 314
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 315
    .line 316
    .line 317
    :cond_3
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 318
    .line 319
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 320
    .line 321
    mul-float v3, v2, v11

    .line 322
    .line 323
    sub-float v3, v1, v3

    .line 324
    .line 325
    mul-float v9, v9, v2

    .line 326
    .line 327
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 328
    .line 329
    mul-float v9, v9, v4

    .line 330
    .line 331
    add-float/2addr v3, v9

    .line 332
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 333
    .line 334
    mul-float v6, v2, v8

    .line 335
    .line 336
    sub-float v6, v1, v6

    .line 337
    .line 338
    mul-float v2, v2, v8

    .line 339
    .line 340
    mul-float v2, v2, v4

    .line 341
    .line 342
    mul-float v2, v2, v12

    .line 343
    .line 344
    add-float v9, v5, v2

    .line 345
    .line 346
    iget-object v10, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 347
    .line 348
    move-object/from16 v1, p1

    .line 349
    .line 350
    move v2, v3

    .line 351
    move v3, v5

    .line 352
    move v4, v6

    .line 353
    move v5, v9

    .line 354
    move-object v6, v10

    .line 355
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 356
    .line 357
    .line 358
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 359
    .line 360
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 361
    .line 362
    mul-float v3, v2, v8

    .line 363
    .line 364
    sub-float v3, v1, v3

    .line 365
    .line 366
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 367
    .line 368
    mul-float v8, v8, v2

    .line 369
    .line 370
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 371
    .line 372
    mul-float v8, v8, v5

    .line 373
    .line 374
    mul-float v8, v8, v12

    .line 375
    .line 376
    add-float v6, v4, v8

    .line 377
    .line 378
    mul-float v11, v11, v2

    .line 379
    .line 380
    add-float/2addr v1, v11

    .line 381
    mul-float v8, v2, v5

    .line 382
    .line 383
    sub-float v8, v1, v8

    .line 384
    .line 385
    mul-float v2, v2, v5

    .line 386
    .line 387
    mul-float v2, v2, v12

    .line 388
    .line 389
    sub-float v5, v4, v2

    .line 390
    .line 391
    iget-object v9, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 392
    .line 393
    move-object/from16 v1, p1

    .line 394
    .line 395
    move v2, v3

    .line 396
    move v3, v6

    .line 397
    move v4, v8

    .line 398
    move-object v6, v9

    .line 399
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_2

    .line 403
    .line 404
    :cond_4
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 405
    .line 406
    float-to-double v2, v1

    .line 407
    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    cmpg-double v6, v2, v4

    .line 413
    .line 414
    if-gtz v6, :cond_5

    .line 415
    .line 416
    iget-object v2, v0, Lmoe/codeest/enviews/ENDownloadView;->l:Landroid/graphics/Paint;

    .line 417
    .line 418
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->g:I

    .line 419
    .line 420
    int-to-float v3, v3

    .line 421
    div-float/2addr v3, v13

    .line 422
    mul-float v3, v3, v1

    .line 423
    .line 424
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 425
    .line 426
    .line 427
    :cond_5
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 428
    .line 429
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 430
    .line 431
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 432
    .line 433
    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    .line 434
    .line 435
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 436
    .line 437
    .line 438
    iget-object v2, v0, Lmoe/codeest/enviews/ENDownloadView;->n:Landroid/graphics/RectF;

    .line 439
    .line 440
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 441
    .line 442
    const v1, 0x43b3feb8    # 359.99f

    .line 443
    .line 444
    .line 445
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 446
    .line 447
    mul-float v4, v4, v1

    .line 448
    .line 449
    const/4 v5, 0x0

    .line 450
    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 451
    .line 452
    move-object/from16 v1, p1

    .line 453
    .line 454
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 455
    .line 456
    .line 457
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->m:Landroid/graphics/Path;

    .line 458
    .line 459
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 460
    .line 461
    .line 462
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->d:F

    .line 463
    .line 464
    add-float/2addr v1, v10

    .line 465
    iput v1, v0, Lmoe/codeest/enviews/ENDownloadView;->d:F

    .line 466
    .line 467
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 468
    .line 469
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->x:F

    .line 470
    .line 471
    const/high16 v4, 0x40c00000    # 6.0f

    .line 472
    .line 473
    mul-float v4, v4, v3

    .line 474
    .line 475
    sub-float v4, v2, v4

    .line 476
    .line 477
    cmpl-float v1, v1, v4

    .line 478
    .line 479
    if-lez v1, :cond_6

    .line 480
    .line 481
    const/high16 v1, 0x41200000    # 10.0f

    .line 482
    .line 483
    mul-float v3, v3, v1

    .line 484
    .line 485
    sub-float/2addr v2, v3

    .line 486
    iput v2, v0, Lmoe/codeest/enviews/ENDownloadView;->d:F

    .line 487
    .line 488
    :cond_6
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->m:Landroid/graphics/Path;

    .line 489
    .line 490
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->d:F

    .line 491
    .line 492
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 493
    .line 494
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 495
    .line 496
    .line 497
    :goto_1
    const/4 v1, 0x4

    .line 498
    if-ge v14, v1, :cond_7

    .line 499
    .line 500
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->m:Landroid/graphics/Path;

    .line 501
    .line 502
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->x:F

    .line 503
    .line 504
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 505
    .line 506
    sub-float v3, v8, v3

    .line 507
    .line 508
    neg-float v3, v3

    .line 509
    mul-float v3, v3, v2

    .line 510
    .line 511
    mul-float v4, v2, v10

    .line 512
    .line 513
    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 514
    .line 515
    .line 516
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->m:Landroid/graphics/Path;

    .line 517
    .line 518
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->x:F

    .line 519
    .line 520
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 521
    .line 522
    sub-float v3, v8, v3

    .line 523
    .line 524
    mul-float v3, v3, v2

    .line 525
    .line 526
    mul-float v4, v2, v10

    .line 527
    .line 528
    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 529
    .line 530
    .line 531
    add-int/lit8 v14, v14, 0x1

    .line 532
    .line 533
    goto :goto_1

    .line 534
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 535
    .line 536
    .line 537
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->o:Landroid/graphics/RectF;

    .line 538
    .line 539
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 540
    .line 541
    .line 542
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->m:Landroid/graphics/Path;

    .line 543
    .line 544
    iget-object v2, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 545
    .line 546
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 550
    .line 551
    .line 552
    sget-object v1, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->NONE:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 553
    .line 554
    goto/16 :goto_2

    .line 555
    .line 556
    :cond_8
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 557
    .line 558
    float-to-double v2, v1

    .line 559
    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    const v14, 0x3ecccccd    # 0.4f

    .line 565
    .line 566
    .line 567
    cmpg-double v6, v2, v4

    .line 568
    .line 569
    if-gtz v6, :cond_9

    .line 570
    .line 571
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 572
    .line 573
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 574
    .line 575
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 576
    .line 577
    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    .line 578
    .line 579
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 580
    .line 581
    .line 582
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 583
    .line 584
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 585
    .line 586
    sub-float v2, v4, v1

    .line 587
    .line 588
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 589
    .line 590
    add-float v5, v3, v1

    .line 591
    .line 592
    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 593
    .line 594
    move-object/from16 v1, p1

    .line 595
    .line 596
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 597
    .line 598
    .line 599
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 600
    .line 601
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 602
    .line 603
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 604
    .line 605
    add-float v3, v5, v1

    .line 606
    .line 607
    add-float v4, v2, v1

    .line 608
    .line 609
    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 610
    .line 611
    move-object/from16 v1, p1

    .line 612
    .line 613
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 614
    .line 615
    .line 616
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 617
    .line 618
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 619
    .line 620
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 621
    .line 622
    add-float v3, v1, v2

    .line 623
    .line 624
    mul-float v5, v2, v12

    .line 625
    .line 626
    div-float/2addr v5, v14

    .line 627
    iget v6, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 628
    .line 629
    mul-float v5, v5, v6

    .line 630
    .line 631
    sub-float/2addr v3, v5

    .line 632
    const v5, 0x3fcccccd    # 1.6f

    .line 633
    .line 634
    .line 635
    mul-float v5, v5, v2

    .line 636
    .line 637
    sub-float/2addr v1, v5

    .line 638
    mul-float v2, v2, v12

    .line 639
    .line 640
    div-float/2addr v2, v14

    .line 641
    mul-float v2, v2, v6

    .line 642
    .line 643
    add-float v5, v1, v2

    .line 644
    .line 645
    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 646
    .line 647
    move-object/from16 v1, p1

    .line 648
    .line 649
    move v2, v4

    .line 650
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 651
    .line 652
    .line 653
    goto/16 :goto_2

    .line 654
    .line 655
    :cond_9
    float-to-double v2, v1

    .line 656
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    const v6, 0x3e99999a    # 0.3f

    .line 662
    .line 663
    .line 664
    cmpg-double v12, v2, v4

    .line 665
    .line 666
    if-gtz v12, :cond_a

    .line 667
    .line 668
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 669
    .line 670
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 671
    .line 672
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 673
    .line 674
    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    .line 675
    .line 676
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 677
    .line 678
    .line 679
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 680
    .line 681
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 682
    .line 683
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 684
    .line 685
    mul-float v3, v3, v6

    .line 686
    .line 687
    sub-float/2addr v2, v3

    .line 688
    iget-object v3, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 689
    .line 690
    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 691
    .line 692
    .line 693
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 694
    .line 695
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 696
    .line 697
    sub-float v2, v4, v1

    .line 698
    .line 699
    mul-float v3, v1, v9

    .line 700
    .line 701
    div-float/2addr v3, v13

    .line 702
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 703
    .line 704
    sub-float v6, v5, v14

    .line 705
    .line 706
    mul-float v3, v3, v6

    .line 707
    .line 708
    sub-float/2addr v2, v3

    .line 709
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 710
    .line 711
    add-float v6, v3, v1

    .line 712
    .line 713
    div-float/2addr v1, v13

    .line 714
    sub-float/2addr v5, v14

    .line 715
    mul-float v1, v1, v5

    .line 716
    .line 717
    sub-float v5, v6, v1

    .line 718
    .line 719
    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 720
    .line 721
    move-object/from16 v1, p1

    .line 722
    .line 723
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 724
    .line 725
    .line 726
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 727
    .line 728
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 729
    .line 730
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 731
    .line 732
    add-float v3, v5, v1

    .line 733
    .line 734
    div-float v4, v1, v13

    .line 735
    .line 736
    iget v6, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 737
    .line 738
    sub-float v8, v6, v14

    .line 739
    .line 740
    mul-float v4, v4, v8

    .line 741
    .line 742
    sub-float/2addr v3, v4

    .line 743
    add-float v4, v2, v1

    .line 744
    .line 745
    mul-float v1, v1, v9

    .line 746
    .line 747
    div-float/2addr v1, v13

    .line 748
    sub-float/2addr v6, v14

    .line 749
    mul-float v1, v1, v6

    .line 750
    .line 751
    add-float/2addr v4, v1

    .line 752
    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 753
    .line 754
    move-object/from16 v1, p1

    .line 755
    .line 756
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_2

    .line 760
    .line 761
    :cond_a
    cmpg-float v1, v1, v8

    .line 762
    .line 763
    if-gtz v1, :cond_b

    .line 764
    .line 765
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 766
    .line 767
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 768
    .line 769
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 770
    .line 771
    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    .line 772
    .line 773
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 774
    .line 775
    .line 776
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 777
    .line 778
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 779
    .line 780
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 781
    .line 782
    mul-float v4, v3, v6

    .line 783
    .line 784
    sub-float/2addr v2, v4

    .line 785
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 786
    .line 787
    mul-float v3, v3, v6

    .line 788
    .line 789
    sub-float/2addr v4, v3

    .line 790
    div-float/2addr v4, v14

    .line 791
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 792
    .line 793
    const v5, 0x3f19999a    # 0.6f

    .line 794
    .line 795
    .line 796
    sub-float/2addr v3, v5

    .line 797
    mul-float v4, v4, v3

    .line 798
    .line 799
    sub-float/2addr v2, v4

    .line 800
    iget-object v3, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 801
    .line 802
    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 803
    .line 804
    .line 805
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 806
    .line 807
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 808
    .line 809
    mul-float v3, v2, v11

    .line 810
    .line 811
    sub-float v3, v1, v3

    .line 812
    .line 813
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 814
    .line 815
    mul-float v2, v2, v11

    .line 816
    .line 817
    add-float v4, v1, v2

    .line 818
    .line 819
    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 820
    .line 821
    move-object/from16 v1, p1

    .line 822
    .line 823
    move v2, v3

    .line 824
    move v3, v5

    .line 825
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 826
    .line 827
    .line 828
    goto :goto_2

    .line 829
    :cond_b
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 830
    .line 831
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 832
    .line 833
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 834
    .line 835
    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->k:Landroid/graphics/Paint;

    .line 836
    .line 837
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 838
    .line 839
    .line 840
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 841
    .line 842
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 843
    .line 844
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 845
    .line 846
    sub-float/2addr v2, v3

    .line 847
    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 848
    .line 849
    const/high16 v4, 0x40400000    # 3.0f

    .line 850
    .line 851
    mul-float v3, v3, v4

    .line 852
    .line 853
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->q:F

    .line 854
    .line 855
    sub-float/2addr v5, v8

    .line 856
    mul-float v3, v3, v5

    .line 857
    .line 858
    sub-float/2addr v2, v3

    .line 859
    iget-object v3, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 860
    .line 861
    invoke-virtual {v7, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 862
    .line 863
    .line 864
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 865
    .line 866
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 867
    .line 868
    mul-float v3, v2, v11

    .line 869
    .line 870
    sub-float v3, v1, v3

    .line 871
    .line 872
    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 873
    .line 874
    mul-float v2, v2, v11

    .line 875
    .line 876
    add-float v4, v1, v2

    .line 877
    .line 878
    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->j:Landroid/graphics/Paint;

    .line 879
    .line 880
    move-object/from16 v1, p1

    .line 881
    .line 882
    move v2, v3

    .line 883
    move v3, v5

    .line 884
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 885
    .line 886
    .line 887
    :goto_2
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
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->r:F

    .line 6
    .line 7
    int-to-float p2, p2

    .line 8
    iput p2, p0, Lmoe/codeest/enviews/ENDownloadView;->s:F

    .line 9
    .line 10
    const/high16 p3, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float p4, p1, p3

    .line 13
    .line 14
    iput p4, p0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 15
    .line 16
    div-float/2addr p2, p3

    .line 17
    iput p2, p0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 18
    .line 19
    const/high16 p2, 0x40a00000    # 5.0f

    .line 20
    .line 21
    mul-float p1, p1, p2

    .line 22
    .line 23
    const/high16 p2, 0x41400000    # 12.0f

    .line 24
    .line 25
    div-float/2addr p1, p2

    .line 26
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 27
    .line 28
    const/high16 p3, 0x40400000    # 3.0f

    .line 29
    .line 30
    div-float/2addr p1, p3

    .line 31
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->v:F

    .line 32
    .line 33
    const p3, 0x408ccccd    # 4.4f

    .line 34
    .line 35
    .line 36
    mul-float p1, p1, p3

    .line 37
    .line 38
    div-float/2addr p1, p2

    .line 39
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->x:F

    .line 40
    .line 41
    const/high16 p2, 0x41200000    # 10.0f

    .line 42
    .line 43
    mul-float p1, p1, p2

    .line 44
    .line 45
    sub-float/2addr p4, p1

    .line 46
    iput p4, p0, Lmoe/codeest/enviews/ENDownloadView;->d:F

    .line 47
    .line 48
    new-instance p1, Landroid/graphics/RectF;

    .line 49
    .line 50
    iget p2, p0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 51
    .line 52
    iget p3, p0, Lmoe/codeest/enviews/ENDownloadView;->w:F

    .line 53
    .line 54
    sub-float p4, p2, p3

    .line 55
    .line 56
    iget v0, p0, Lmoe/codeest/enviews/ENDownloadView;->u:F

    .line 57
    .line 58
    sub-float v1, v0, p3

    .line 59
    .line 60
    add-float/2addr p2, p3

    .line 61
    add-float/2addr v0, p3

    .line 62
    invoke-direct {p1, p4, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->n:Landroid/graphics/RectF;

    .line 66
    .line 67
    new-instance p1, Landroid/graphics/RectF;

    .line 68
    .line 69
    iget p2, p0, Lmoe/codeest/enviews/ENDownloadView;->t:F

    .line 70
    .line 71
    iget p3, p0, Lmoe/codeest/enviews/ENDownloadView;->x:F

    .line 72
    .line 73
    const/high16 p4, 0x40c00000    # 6.0f

    .line 74
    .line 75
    mul-float v0, p3, p4

    .line 76
    .line 77
    sub-float v0, p2, v0

    .line 78
    .line 79
    mul-float p3, p3, p4

    .line 80
    .line 81
    add-float/2addr p2, p3

    .line 82
    iget p3, p0, Lmoe/codeest/enviews/ENDownloadView;->s:F

    .line 83
    .line 84
    const/4 p4, 0x0

    .line 85
    invoke-direct {p1, v0, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->o:Landroid/graphics/RectF;

    .line 89
    .line 90
    return-void
.end method

.method public setDownloadConfig(IDLmoe/codeest/enviews/ENDownloadView$DownloadUnit;)V
    .locals 0

    .line 1
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->h:I

    .line 2
    .line 3
    iput-wide p2, p0, Lmoe/codeest/enviews/ENDownloadView;->f:D

    .line 4
    .line 5
    iput-object p4, p0, Lmoe/codeest/enviews/ENDownloadView;->i:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 6
    .line 7
    return-void
.end method

.method public setOnDownloadStateListener(Lmoe/codeest/enviews/ENDownloadView$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->b:Lmoe/codeest/enviews/ENDownloadView$h;

    .line 2
    .line 3
    return-void
.end method

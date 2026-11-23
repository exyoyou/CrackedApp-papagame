.class public Lnet/lucode/hackware/magicindicator/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/MagicIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/animation/ValueAnimator;

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Landroid/animation/Animator$AnimatorListener;

.field private g:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Ljava/util/List;

    const/16 v0, 0x96

    .line 3
    iput v0, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    .line 4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->e:Landroid/view/animation/Interpolator;

    .line 5
    new-instance v0, Lnet/lucode/hackware/magicindicator/b$a;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/b$a;-><init>(Lnet/lucode/hackware/magicindicator/b;)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->f:Landroid/animation/Animator$AnimatorListener;

    .line 6
    new-instance v0, Lnet/lucode/hackware/magicindicator/b$b;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/b$b;-><init>(Lnet/lucode/hackware/magicindicator/b;)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->g:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Ljava/util/List;

    const/16 v0, 0x96

    .line 9
    iput v0, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    .line 10
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->e:Landroid/view/animation/Interpolator;

    .line 11
    new-instance v0, Lnet/lucode/hackware/magicindicator/b$a;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/b$a;-><init>(Lnet/lucode/hackware/magicindicator/b;)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->f:Landroid/animation/Animator$AnimatorListener;

    .line 12
    new-instance v0, Lnet/lucode/hackware/magicindicator/b$b;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/b$b;-><init>(Lnet/lucode/hackware/magicindicator/b;)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->g:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 13
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lnet/lucode/hackware/magicindicator/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/b;->e(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lnet/lucode/hackware/magicindicator/b;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lnet/lucode/hackware/magicindicator/b;IFI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/b;->f(IFI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->a(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private f(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 18
    .line 19
    invoke-virtual {v1, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->b(IFI)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->c(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static h(Ljava/util/List;I)Luc/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luc/a;",
            ">;I)",
            "Luc/a;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Luc/a;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Luc/a;

    .line 19
    .line 20
    invoke-direct {v0}, Luc/a;-><init>()V

    .line 21
    .line 22
    .line 23
    if-gez p1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Luc/a;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-int/2addr p1, v1

    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Luc/a;

    .line 51
    .line 52
    :goto_0
    iget v1, p0, Luc/a;->a:I

    .line 53
    .line 54
    invoke-virtual {p0}, Luc/a;->f()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    mul-int v2, v2, p1

    .line 59
    .line 60
    add-int/2addr v1, v2

    .line 61
    iput v1, v0, Luc/a;->a:I

    .line 62
    .line 63
    iget v1, p0, Luc/a;->b:I

    .line 64
    .line 65
    iput v1, v0, Luc/a;->b:I

    .line 66
    .line 67
    iget v1, p0, Luc/a;->c:I

    .line 68
    .line 69
    invoke-virtual {p0}, Luc/a;->f()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    mul-int v2, v2, p1

    .line 74
    .line 75
    add-int/2addr v1, v2

    .line 76
    iput v1, v0, Luc/a;->c:I

    .line 77
    .line 78
    iget v1, p0, Luc/a;->d:I

    .line 79
    .line 80
    iput v1, v0, Luc/a;->d:I

    .line 81
    .line 82
    iget v1, p0, Luc/a;->e:I

    .line 83
    .line 84
    invoke-virtual {p0}, Luc/a;->f()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    mul-int v2, v2, p1

    .line 89
    .line 90
    add-int/2addr v1, v2

    .line 91
    iput v1, v0, Luc/a;->e:I

    .line 92
    .line 93
    iget v1, p0, Luc/a;->f:I

    .line 94
    .line 95
    iput v1, v0, Luc/a;->f:I

    .line 96
    .line 97
    iget v1, p0, Luc/a;->g:I

    .line 98
    .line 99
    invoke-virtual {p0}, Luc/a;->f()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    mul-int p1, p1, v2

    .line 104
    .line 105
    add-int/2addr v1, p1

    .line 106
    iput v1, v0, Luc/a;->g:I

    .line 107
    .line 108
    iget p0, p0, Luc/a;->h:I

    .line 109
    .line 110
    iput p0, v0, Luc/a;->h:I

    .line 111
    .line 112
    return-object v0
.end method


# virtual methods
.method public d(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lnet/lucode/hackware/magicindicator/b;->j(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public j(IZ)V
    .locals 3

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_2

    .line 19
    .line 20
    :cond_1
    invoke-direct {p0, v1}, Lnet/lucode/hackware/magicindicator/b;->e(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/b;->g(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    .line 27
    .line 28
    int-to-float p2, p2

    .line 29
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Ljava/lang/Float;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    :cond_3
    new-instance v2, Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    new-array v1, v1, [F

    .line 59
    .line 60
    aput p2, v1, v0

    .line 61
    .line 62
    const/4 p2, 0x1

    .line 63
    int-to-float v0, p1

    .line 64
    aput v0, v1, p2

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->g:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->f:Landroid/animation/Animator$AnimatorListener;

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->e:Landroid/view/animation/Interpolator;

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    .line 93
    .line 94
    int-to-long v0, v0

    .line 95
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/b;->g(I)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_5

    .line 117
    .line 118
    iget p2, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    .line 119
    .line 120
    invoke-direct {p0, p2, v1, v0}, Lnet/lucode/hackware/magicindicator/b;->f(IFI)V

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-direct {p0, v0}, Lnet/lucode/hackware/magicindicator/b;->e(I)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p1, v1, v0}, Lnet/lucode/hackware/magicindicator/b;->f(IFI)V

    .line 127
    .line 128
    .line 129
    :goto_0
    iput p1, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    .line 130
    .line 131
    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public l(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/b;->e:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/b;->e:Landroid/view/animation/Interpolator;

    .line 12
    .line 13
    :goto_0
    return-void
.end method

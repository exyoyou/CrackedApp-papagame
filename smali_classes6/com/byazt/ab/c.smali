.class public Lcom/byazt/ab/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f5,
        0x14
    }
.end annotation


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public final c:Ljava/lang/String;

.field public da:Z

.field public i:Z

.field public final n:I

.field public sl:Z

.field public sp:Lcom/byazt/ab/PlayableVideoContainer;

.field public t:Z

.field public final tt:Landroid/content/Context;

.field public u:Z

.field public final uj:Lcom/byazt/nr/d;

.field public final ve:Lcom/byazt/ete/ic;

.field public x:Lcom/byazt/ab/ve;

.field public final yp:Lcom/byazt/zd/tt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/byazt/ete/ic;ILcom/byazt/zd/tt;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nr/d;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/ab/c;->uj:Lcom/byazt/nr/d;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/byazt/ab/c;->i:Z

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/byazt/ab/c;->da:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/byazt/ab/c;->t:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/byazt/ab/c;->u:Z

    .line 24
    .line 25
    iput-object p1, p0, Lcom/byazt/ab/c;->c:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    iput p4, p0, Lcom/byazt/ab/c;->n:I

    .line 32
    .line 33
    invoke-static {p3}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    iput-object p6, p0, Lcom/byazt/ab/c;->a:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ab/c;->n()V

    .line 42
    .line 43
    .line 44
    iput-object p5, p0, Lcom/byazt/ab/c;->yp:Lcom/byazt/zd/tt;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ab/c;)Lcom/byazt/ab/PlayableVideoContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ab/c;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method private c(J)V
    .locals 7

    .line 15
    iget-object v0, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/ab/c;->yp:Lcom/byazt/zd/tt;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/ab/c;->i:Z

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nj/c;->tt(J)V

    .line 20
    iget-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/zd/c;->c(J)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/byazt/ab/c;->i:Z

    .line 22
    iget-object v1, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0, v1}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 25
    iget-object v2, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 26
    iget-object v2, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, p1, p2}, Lcom/byazt/jzl/a;->setCurrent(J)V

    .line 28
    iget-boolean v2, p0, Lcom/byazt/ab/c;->da:Z

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 29
    iget-object v2, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30
    invoke-virtual {v1, v0}, Lcom/byazt/jzl/a;->setAudio(Z)V

    .line 31
    :cond_4
    new-instance v2, Lcom/byazt/ab/ve;

    iget-object v3, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    invoke-virtual {v4}, Lcom/byazt/ab/PlayableVideoContainer;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/byazt/ab/ve;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Lcom/byazt/hkv/c;)V

    iput-object v2, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    .line 32
    new-instance v3, Lcom/byazt/ab/c$3;

    invoke-direct {v3, p0}, Lcom/byazt/ab/c$3;-><init>(Lcom/byazt/ab/c;)V

    invoke-virtual {v2, v3}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c$c;)V

    .line 33
    iget-object v2, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    invoke-virtual {v2, p1, p2}, Lcom/byazt/nj/c;->tt(J)V

    .line 34
    iget-object p1, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    invoke-virtual {p1, v1}, Lcom/byazt/zd/c;->c(Lcom/byazt/jzl/a;)Z

    .line 35
    iget-object p1, p0, Lcom/byazt/ab/c;->yp:Lcom/byazt/zd/tt;

    if-eqz p1, :cond_5

    .line 36
    iget-object p1, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    invoke-virtual {p1}, Lcom/byazt/ab/ve;->gr()V

    .line 37
    iget-object p1, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/byazt/ab/ve;->sp(Z)V

    .line 38
    iget-object p1, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    invoke-virtual {p1}, Lcom/byazt/ab/PlayableVideoContainer;->c()V

    return-void

    .line 39
    :cond_5
    iget-object p1, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 40
    iget-object p1, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/ab/ve;->sp(Z)V

    .line 41
    :cond_6
    invoke-direct {p0}, Lcom/byazt/ab/c;->i()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ab/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ab/c;->da()V

    return-void
.end method

.method private da()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ab/c;->a:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/byazt/ab/c;->sp()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v2, v1, [F

    .line 18
    .line 19
    iget-object v3, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    .line 20
    .line 21
    const/high16 v4, 0x43160000    # 150.0f

    .line 22
    .line 23
    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    neg-int v3, v3

    .line 28
    int-to-float v3, v3

    .line 29
    const/4 v4, 0x0

    .line 30
    aput v3, v2, v4

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    aput v5, v2, v3

    .line 35
    .line 36
    const-string v6, "translationX"

    .line 37
    .line 38
    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    .line 43
    .line 44
    new-array v6, v1, [F

    .line 45
    .line 46
    iget-object v7, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    .line 47
    .line 48
    const/high16 v8, 0x42c80000    # 100.0f

    .line 49
    .line 50
    invoke-static {v7, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    neg-int v7, v7

    .line 55
    int-to-float v7, v7

    .line 56
    aput v7, v6, v4

    .line 57
    .line 58
    aput v5, v6, v3

    .line 59
    .line 60
    const-string v5, "translationY"

    .line 61
    .line 62
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v5, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    .line 67
    .line 68
    new-array v6, v1, [F

    .line 69
    .line 70
    fill-array-data v6, :array_0

    .line 71
    .line 72
    .line 73
    const-string v7, "alpha"

    .line 74
    .line 75
    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 80
    .line 81
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 82
    .line 83
    .line 84
    const/4 v7, 0x3

    .line 85
    new-array v7, v7, [Landroid/animation/Animator;

    .line 86
    .line 87
    aput-object v0, v7, v4

    .line 88
    .line 89
    aput-object v2, v7, v3

    .line 90
    .line 91
    aput-object v5, v7, v1

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 97
    .line 98
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    .line 103
    .line 104
    const-wide/16 v0, 0x1f4

    .line 105
    .line 106
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/ab/PlayableVideoContainer;->tt(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/ab/c;->uj:Lcom/byazt/nr/d;

    .line 11
    .line 12
    const-wide/16 v2, 0x7d0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic n(Lcom/byazt/ab/c;)Lcom/byazt/ab/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    return-object p0
.end method

.method private n()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/byazt/ab/c;->a:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/lo;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x425c0000    # 55.0f

    const v3, 0x800035

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Lcom/byazt/ab/PlayableVideoContainer;

    iget-object v1, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/ab/PlayableVideoContainer;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    const/high16 v5, 0x431c0000    # 156.0f

    .line 8
    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    const/high16 v6, 0x42ae0000    # 87.0f

    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    iget-object v3, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11
    iget-object v2, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 12
    iget-object v2, p0, Lcom/byazt/ab/c;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iput-object v0, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/byazt/ab/PlayableVideoContainer;

    iget-object v1, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/ab/PlayableVideoContainer;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 17
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    const/high16 v5, 0x42920000    # 73.0f

    .line 18
    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    const/high16 v6, 0x43020000    # 130.0f

    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    iget-object v3, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 21
    iget-object v2, p0, Lcom/byazt/ab/c;->tt:Landroid/content/Context;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 22
    iget-object v2, p0, Lcom/byazt/ab/c;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iput-object v0, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    return-void
.end method

.method private sp()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ab/c;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic sp(Lcom/byazt/ab/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ab/c;->x()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ab/c;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ab/c;->a:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/ab/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ab/c;)Lcom/byazt/zd/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ab/c;->yp:Lcom/byazt/zd/tt;

    return-object p0
.end method

.method private x()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ab/c;->t:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/ab/c;->sl:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/byazt/ab/c;->sl:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/byazt/ab/c;->tt()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/ab/c;->da:Z

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/byazt/ab/c;->c(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/ab/c;->u:Z

    .line 13
    invoke-virtual {p0}, Lcom/byazt/ab/c;->uj()V

    .line 14
    invoke-direct {p0}, Lcom/byazt/ab/c;->a()V

    return-void
.end method

.method public c(JZ)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ab/c;->u:Z

    .line 3
    iput-boolean p3, p0, Lcom/byazt/ab/c;->da:Z

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/ab/c;->c(J)V

    .line 5
    iget-boolean p1, p0, Lcom/byazt/ab/c;->i:Z

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/ab/c;->yp:Lcom/byazt/zd/tt;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    if-eqz p1, :cond_1

    .line 7
    new-instance p2, Lcom/byazt/ab/c$1;

    invoke-direct {p2, p0}, Lcom/byazt/ab/c$1;-><init>(Lcom/byazt/ab/c;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget-object p1, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    new-instance p2, Lcom/byazt/ab/c$2;

    invoke-direct {p2, p0}, Lcom/byazt/ab/c$2;-><init>(Lcom/byazt/ab/c;)V

    invoke-virtual {p1, p2}, Lcom/byazt/ab/PlayableVideoContainer;->setCustomClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/byazt/ab/c;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/byazt/ab/c;->a()V

    return-void

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/byazt/ab/c;->sp()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/ab/c;->da:Z

    .line 44
    invoke-virtual {v0, p1}, Lcom/byazt/nj/c;->tt(Z)V

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/ab/c;->sp:Lcom/byazt/ab/PlayableVideoContainer;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/byazt/ab/PlayableVideoContainer;->tt(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public tt()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/ab/c;->u:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/byazt/ab/c;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/ab/c;->uj:Lcom/byazt/nr/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-boolean v0, p0, Lcom/byazt/ab/c;->t:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    invoke-virtual {v0}, Lcom/byazt/zd/c;->a()V

    return-void

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/byazt/ab/c;->sl:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public uj()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/zd/c;->da()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ab/c;->i:Z

    .line 6
    iput-boolean v0, p0, Lcom/byazt/ab/c;->sl:Z

    .line 7
    iput-boolean v0, p0, Lcom/byazt/ab/c;->t:Z

    return-void
.end method

.method public ve()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/byazt/ab/c;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/byazt/ab/c;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/byazt/ab/c;->sl:Z

    .line 4
    iget-object v0, p0, Lcom/byazt/ab/c;->uj:Lcom/byazt/nr/d;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5
    iget-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    invoke-virtual {v0}, Lcom/byazt/zd/c;->lr()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/ab/c;->x:Lcom/byazt/ab/ve;

    invoke-virtual {v0}, Lcom/byazt/zd/c;->x()V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/byazt/iym/n;
.super Lcom/byazt/kt/RecyclerView$gu;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/iym/n$tt;,
        Lcom/byazt/iym/n$c;
    }
.end annotation


# instance fields
.field public bx:I

.field public cu:Lcom/byazt/fcd/ve$c;

.field public d:Z

.field public eo:Lcom/byazt/iym/tt;

.field public gr:Lcom/byazt/ff/TTProgressBar;

.field public gt:Landroid/widget/FrameLayout;

.field public gu:Landroid/widget/FrameLayout;

.field public h:Z

.field public md:Z

.field public my:Landroid/widget/FrameLayout;

.field public nb:Landroid/widget/LinearLayout;

.field public nu:Lcom/byazt/rpt/FullRewardExpressView;

.field public or:I

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final pf:Landroid/animation/AnimatorSet;

.field public final qp:Lcom/byazt/nr/d;

.field public qy:Landroid/widget/FrameLayout;

.field public rh:Landroid/view/ViewGroup;

.field public rl:Landroid/widget/FrameLayout;

.field public final yv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public zb:Z

.field public zm:Lcom/byazt/iym/uj;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/kt/RecyclerView$gu;-><init>(Landroid/view/View;)V

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
    iput-object v0, p0, Lcom/byazt/iym/n;->qp:Lcom/byazt/nr/d;

    .line 14
    .line 15
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/byazt/iym/n;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/byazt/iym/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    const v0, 0x7fffffff

    .line 38
    .line 39
    .line 40
    iput v0, p0, Lcom/byazt/iym/n;->bx:I

    .line 41
    .line 42
    const v0, 0x7e06ffb4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/byazt/iym/n;->rh:Landroid/view/ViewGroup;

    .line 52
    .line 53
    const v0, 0x7e06ff42

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/FrameLayout;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/byazt/iym/n;->my:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    const v0, 0x7e06ff64

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/FrameLayout;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/byazt/iym/n;->gt:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    const v0, 0x7e06fed6

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/FrameLayout;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/byazt/iym/n;->rl:Landroid/widget/FrameLayout;

    .line 85
    .line 86
    const v0, 0x7e06ff6d

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/FrameLayout;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/byazt/iym/n;->qy:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    const v0, 0x7e06fedf

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/widget/FrameLayout;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/byazt/iym/n;->gu:Landroid/widget/FrameLayout;

    .line 107
    .line 108
    const v0, 0x7e06ff37

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/byazt/ff/TTProgressBar;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/byazt/iym/n;->gr:Lcom/byazt/ff/TTProgressBar;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Lcom/byazt/iym/n;->c(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method private bx()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/rpt/FullRewardExpressView;->t()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const v0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    iput v0, p0, Lcom/byazt/iym/n;->bx:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/byazt/iym/n;->d:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/byazt/iym/n;->h:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/byazt/iym/n;->zb:Z

    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/iym/n;->gt:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/iym/n;->rl:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/iym/n;->qy:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/iym/n;->gu:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/byazt/iym/n;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/byazt/iym/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/iym/n;->my:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    .line 54
    const/4 v2, -0x1

    .line 55
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/byazt/iym/uj;->da()V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/iym/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/iym/n;->or:I

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    .line 63
    iget-boolean v0, p0, Lcom/byazt/iym/n;->md:Z

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 66
    iget-object v0, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 67
    iget-object v0, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v3, "tt_ic_back_light"

    const/16 v4, 0x140

    .line 69
    invoke-static {p1, v3, v0, v4}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 70
    iget-object v5, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v5, v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 71
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-static {p1, v3, v5, v4}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    const v3, 0x3f333333    # 0.7f

    .line 73
    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 74
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, -0x3f000000    # -8.0f

    .line 75
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 76
    iget-object v4, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u4e0a\u6ed1\u6d4f\u89c8\u66f4\u591a\u5185\u5bb9"

    .line 80
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x51

    .line 83
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v3, 0x431c0000    # 156.0f

    .line 84
    invoke-static {p1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 85
    iget-object p1, p0, Lcom/byazt/iym/n;->rh:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object p1, p0, Lcom/byazt/iym/n;->rh:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 87
    iget-object p1, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-direct {p0, v0, v5}, Lcom/byazt/iym/n;->c(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private c(Landroid/view/View;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 89
    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 90
    new-instance v6, Lcom/byazt/iym/n$c;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/byazt/iym/n$c;-><init>(Lcom/byazt/iym/n$1;)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x514

    .line 91
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x2bc

    .line 92
    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    const/4 v6, -0x1

    .line 93
    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v12, 0x1

    .line 94
    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-array v13, v3, [F

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 95
    iget-object v14, v0, Lcom/byazt/iym/n;->rh:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const/high16 v7, -0x3f600000    # -5.0f

    invoke-static {v14, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v13, v12

    const-string v7, "translationY"

    invoke-static {v1, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 96
    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v14, 0x3e4ccccd    # 0.2f

    const v3, -0x41666666    # -0.3f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v13, v14, v15, v3, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 99
    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v10, 0x1

    .line 100
    invoke-virtual {v1, v10}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v11, 0x2

    new-array v13, v11, [F

    .line 101
    fill-array-data v13, :array_1

    invoke-static {v2, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 102
    new-instance v11, Lcom/byazt/iym/n$c;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/byazt/iym/n$c;-><init>(Lcom/byazt/iym/n$1;)V

    invoke-virtual {v5, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x1f4

    .line 104
    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 105
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 106
    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-array v11, v10, [F

    .line 107
    iget-object v10, v0, Lcom/byazt/iym/n;->rh:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v13, -0x3f400000    # -6.0f

    invoke-static {v10, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    const/4 v13, 0x0

    aput v10, v11, v13

    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 108
    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v14, v15, v3, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x514

    .line 109
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 111
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v3, 0x1

    .line 112
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 113
    iget-object v6, v0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    aput-object v5, v7, v3

    const/4 v3, 0x2

    aput-object v1, v7, v3

    const/4 v1, 0x3

    aput-object v2, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic c(Lcom/byazt/iym/n;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/iym/n;->h:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/iym/n;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/iym/n;->d:Z

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/iym/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/iym/n;->bx:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/iym/n;)Lcom/byazt/fcd/ve$c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/iym/n;->cu:Lcom/byazt/fcd/ve$c;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/iym/n;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/iym/n;->uj(Z)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/iym/n;)Lcom/byazt/iym/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    return-object p0
.end method

.method private uj(Z)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/byazt/iym/n;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/byazt/iym/n;->bx:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/byazt/iym/n;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/byazt/iym/n;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/iym/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/iym/n;->zb:Z

    return p0
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/byazt/iym/tt;)Landroid/view/View;
    .locals 10

    .line 33
    invoke-static {p1}, Lcom/byazt/vfu/a;->yp(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7e06fec1

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7e06ff51

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/byazt/ff/TTRoundRectImageView;

    const v3, 0x7e06ffa3

    .line 36
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7e06feae

    .line 37
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7e06ff76

    .line 38
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7e06fe99

    .line 39
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/byazt/ff/TTRatingBar;

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    .line 40
    invoke-virtual {v6, v8}, Lcom/byazt/ff/TTRatingBar;->setStarEmptyNum(I)V

    .line 41
    invoke-virtual {v6, v7}, Lcom/byazt/ff/TTRatingBar;->setStarFillNum(I)V

    const/high16 v9, 0x41700000    # 15.0f

    .line 42
    invoke-static {p1, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Lcom/byazt/ff/TTRatingBar;->setStarImageWidth(F)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 43
    invoke-static {p1, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Lcom/byazt/ff/TTRatingBar;->setStarImageHeight(F)V

    const/high16 v9, 0x40800000    # 4.0f

    .line 44
    invoke-static {p1, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Lcom/byazt/ff/TTRatingBar;->setStarImagePadding(F)V

    .line 45
    invoke-virtual {v6}, Lcom/byazt/ff/TTRatingBar;->c()V

    :cond_0
    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 47
    invoke-virtual {v6}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 48
    invoke-static {v6}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    goto :goto_0

    :cond_1
    const-string v6, "tt_ad_logo_small"

    const/16 v9, 0x140

    .line 49
    invoke-static {p1, v6, v2, v9}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    .line 50
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 51
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    if-eqz v4, :cond_7

    .line 53
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 54
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/n;->a()I

    move-result p1

    goto :goto_2

    :cond_5
    const/16 p1, 0x1ad6

    :goto_2
    const/16 v2, 0x2710

    if-le p1, v2, :cond_6

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u4e07"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%1$s\u4e2a\u8bc4\u5206"

    .line 56
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v5, :cond_a

    .line 58
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 59
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->i()I

    move-result p1

    if-eq p1, v7, :cond_8

    const-string p1, "\u67e5\u770b\u8be6\u60c5"

    goto :goto_4

    :cond_8
    const-string p1, "\u7acb\u5373\u4e0b\u8f7d"

    goto :goto_4

    .line 60
    :cond_9
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object p1

    .line 61
    :goto_4
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_a
    invoke-virtual {p2}, Lcom/byazt/iym/tt;->ve()Lcom/byazt/hkv/c;

    move-result-object p1

    const-string p2, "reward_draw_listener"

    invoke-static {v1, p1, p2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(FFFFI)V
    .locals 9

    .line 117
    iget-object v0, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/byazt/rpt/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/byazt/rpt/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {v1}, Lcom/byazt/rpt/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 121
    invoke-virtual {v2}, Lcom/byazt/zd/c;->hd()Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-float p1, v1

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    .line 122
    iget-object p2, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p2}, Lcom/byazt/rpt/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    neg-float p1, p1

    .line 123
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long p2, p5

    .line 124
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_1
    int-to-float v0, v0

    mul-float v7, v0, p3

    int-to-float p3, v1

    mul-float v8, p3, p4

    .line 126
    new-instance p3, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p3

    move v4, p1

    move v6, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p3, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    int-to-long p1, p5

    .line 128
    invoke-virtual {p3, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    iget-object p1, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/byazt/rpt/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->ve()Lcom/byazt/hkv/c;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    invoke-virtual {v0}, Lcom/byazt/iym/tt;->ve()Lcom/byazt/hkv/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/hkv/uj;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public c(Lcom/byazt/fcd/ve$c;)V
    .locals 1

    .line 130
    iput-object p1, p0, Lcom/byazt/iym/n;->cu:Lcom/byazt/fcd/ve$c;

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {p1}, Lcom/byazt/fcd/ve$c;->ve()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/zd/c;->tt(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/iym/tt;FF)V
    .locals 3

    .line 4
    iput-object p1, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    .line 5
    iget-object v0, p0, Lcom/byazt/iym/n;->gr:Lcom/byazt/ff/TTProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Lcom/byazt/iym/n;->bx()V

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/byazt/iym/tt;->tt(FF)Lcom/byazt/rpt/FullRewardExpressView;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    .line 8
    iget-boolean p3, p1, Lcom/byazt/iym/tt;->n:Z

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/byazt/ouz/NativeExpressView;->rl()Z

    move-result p2

    const/16 p3, 0x8

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/byazt/iym/n;->qy:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/byazt/iym/n;->gu:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/byazt/iym/n;->c(Landroid/content/Context;Lcom/byazt/iym/tt;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    iget-object p2, p0, Lcom/byazt/iym/n;->gu:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    iget-object v0, p0, Lcom/byazt/iym/n;->my:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0, v1}, Lcom/byazt/rpt/FullRewardExpressView;->c(Landroid/view/ViewGroup;Z)V

    .line 14
    :goto_0
    iget-object p2, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p2}, Lcom/byazt/ouz/NativeExpressView;->getDynamicShowType()I

    move-result p2

    iput p2, p0, Lcom/byazt/iym/n;->or:I

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/byazt/iym/n;->d:Z

    .line 16
    invoke-virtual {p0}, Lcom/byazt/iym/n;->d()V

    .line 17
    iget-object p2, p0, Lcom/byazt/iym/n;->gr:Lcom/byazt/ff/TTProgressBar;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_1
    new-instance p3, Lcom/byazt/iym/n$1;

    invoke-direct {p3, p0, p1}, Lcom/byazt/iym/n$1;-><init>(Lcom/byazt/iym/n;Lcom/byazt/iym/tt;)V

    invoke-virtual {p2, p3}, Lcom/byazt/ouz/NativeExpressView;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    .line 19
    :goto_1
    iget-object p2, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    new-instance p3, Lcom/byazt/iym/n$2;

    invoke-direct {p3, p0}, Lcom/byazt/iym/n$2;-><init>(Lcom/byazt/iym/n;)V

    invoke-virtual {p2, p3}, Lcom/byazt/rpt/FullRewardExpressView;->setExpressVideoListenerProxy(Lcom/byazt/ouz/sl;)V

    .line 20
    iget-object p2, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    new-instance p3, Lcom/byazt/iym/n$3;

    invoke-direct {p3, p0}, Lcom/byazt/iym/n$3;-><init>(Lcom/byazt/iym/n;)V

    invoke-virtual {p2, p3}, Lcom/byazt/rpt/FullRewardExpressView;->setOnVideoSizeChangeListener(Lcom/byazt/rpt/FullRewardExpressView$c;)V

    .line 21
    iget-object p2, p0, Lcom/byazt/iym/n;->qy:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    new-instance p2, Lcom/byazt/iym/uj;

    iget-object p3, p0, Lcom/byazt/iym/n;->rh:Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/byazt/iym/n;->gt:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-direct {p2, p3, v0, v1}, Lcom/byazt/iym/uj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;)V

    iput-object p2, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 24
    iget-object p3, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p3, p2}, Lcom/byazt/rpt/FullRewardExpressView;->setVideoController(Lcom/byazt/dh/ve;)V

    .line 25
    iget-object p2, p0, Lcom/byazt/iym/n;->gt:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/byazt/iym/n;->rl:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p1, p2, p3, v0}, Lcom/byazt/iym/tt;->c(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/byazt/rpt/FullRewardExpressView;)V

    .line 26
    iget-object p2, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    new-instance p3, Lcom/byazt/iym/n$tt;

    .line 27
    invoke-virtual {p1}, Lcom/byazt/iym/tt;->n()Lcom/byazt/zd/c$c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    .line 28
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/byazt/ete/lt;->ve(Lcom/byazt/ete/ic;)I

    move-result v0

    new-instance v1, Lcom/byazt/iym/n$4;

    invoke-direct {v1, p0}, Lcom/byazt/iym/n$4;-><init>(Lcom/byazt/iym/n;)V

    iget-object v2, p0, Lcom/byazt/iym/n;->qp:Lcom/byazt/nr/d;

    invoke-direct {p3, p1, v0, v1, v2}, Lcom/byazt/iym/n$tt;-><init>(Lcom/byazt/zd/c$c;ILcom/byazt/iym/n$tt$c;Lcom/byazt/nr/d;)V

    .line 30
    invoke-virtual {p2, p3}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c$c;)V

    .line 31
    iget-object p1, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    iget-object p2, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    invoke-virtual {p2}, Lcom/byazt/iym/tt;->sl()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/byazt/nj/c;->tt(J)V

    .line 32
    iget-object p1, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/byazt/ouz/NativeExpressView;->nu()V

    return-void
.end method

.method public cu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/rpt/FullRewardExpressView;->t()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/zd/c;->i()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/iym/n;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/byazt/iym/n;->d:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->i()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->z()V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/byazt/iym/n;->zb:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/iym/uj;->gr()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->a()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/byazt/iym/n;->ve(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/byazt/iym/n;->or()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/byazt/iym/n;->zb:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/byazt/iym/n;->qp:Lcom/byazt/nr/d;

    .line 53
    .line 54
    const/16 v1, 0x65

    .line 55
    .line 56
    const-wide/16 v2, 0x1388

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/byazt/iym/n;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/byazt/iym/tt;->c(Lcom/byazt/ouz/NativeExpressView;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/byazt/iym/tt;->da()Lcom/byazt/jzl/a;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/byazt/zd/c;->c(Lcom/byazt/jzl/a;)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public eo()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->sl()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x65

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/iym/n;->uj(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/iym/n;->eo:Lcom/byazt/iym/tt;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/byazt/iym/tt;->sp()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public md()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public nb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/iym/uj;->zm()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public or()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/iym/uj;->x()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public pf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public qp()Lcom/byazt/dh/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt(Z)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/byazt/iym/n;->h:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/iym/n;->h:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/byazt/iym/n;->d()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/iym/n;->zb()V

    .line 8
    iget-object p1, p0, Lcom/byazt/iym/n;->nb:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 9
    iget-object p1, p0, Lcom/byazt/iym/n;->pf:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public ve(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nj/c;->tt(Z)V

    :cond_0
    return-void
.end method

.method public zb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/xh/tt;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.class public Lcom/byazt/xjc/SmallSlideView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ff,
        0x37f
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/xjc/SmallSlideView$tt;,
        Lcom/byazt/xjc/SmallSlideView$c;
    }
.end annotation


# instance fields
.field public final c:Landroid/view/View;

.field public final tt:Lcom/byazt/xjc/SmallSlideView$tt;

.field public uj:Landroid/animation/ObjectAnimator;

.field public ve:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/xjc/SmallSlideView$c;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/byazt/xjc/SmallSlideView$c;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->c:Landroid/view/View;

    .line 10
    .line 11
    new-instance v1, Lcom/byazt/xjc/SmallSlideView$tt;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/byazt/xjc/SmallSlideView$tt;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/byazt/xjc/SmallSlideView;->tt:Lcom/byazt/xjc/SmallSlideView$tt;

    .line 17
    .line 18
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 19
    .line 20
    const/high16 v3, 0x41200000    # 10.0f

    .line 21
    .line 22
    invoke-static {p1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    const/high16 v3, 0x41000000    # 8.0f

    .line 31
    .line 32
    invoke-static {p1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-static {p1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v4, v5, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 41
    .line 42
    .line 43
    const/16 v3, 0xe

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    .line 47
    .line 48
    const/16 v3, 0xc

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .line 61
    const/high16 v1, 0x42a00000    # 80.0f

    .line 62
    .line 63
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-direct {v0, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->c:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/high16 v3, 0x41f00000    # 30.0f

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    const/4 v3, 0x0

    .line 18
    aput v2, v1, v3

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/high16 v3, -0x3e600000    # -20.0f

    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    const/4 v3, 0x1

    .line 32
    aput v2, v1, v3

    .line 33
    .line 34
    const-string v2, "translationY"

    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->ve:Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    const-wide/16 v1, 0x320

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->ve:Landroid/animation/ObjectAnimator;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->ve:Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->ve:Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->tt:Lcom/byazt/xjc/SmallSlideView$tt;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const/high16 v6, 0x42400000    # 48.0f

    .line 78
    .line 79
    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    filled-new-array {v4, v5}, [I

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v5, "newHeight"

    .line 88
    .line 89
    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->uj:Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->uj:Landroid/animation/ObjectAnimator;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->uj:Landroid/animation/ObjectAnimator;

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->uj:Landroid/animation/ObjectAnimator;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->ve:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/xjc/SmallSlideView;->uj:Landroid/animation/ObjectAnimator;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

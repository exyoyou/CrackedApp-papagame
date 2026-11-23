.class final Lcom/kwad/components/core/page/splitLandingPage/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/page/splitLandingPage/view/SplitScrollWebView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/page/splitLandingPage/a;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afA:Lcom/kwad/components/core/page/splitLandingPage/a;


# direct methods
.method constructor <init>(Lcom/kwad/components/core/page/splitLandingPage/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/splitLandingPage/a$5;->afA:Lcom/kwad/components/core/page/splitLandingPage/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/splitLandingPage/a$5;->afA:Lcom/kwad/components/core/page/splitLandingPage/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/page/splitLandingPage/a;->e(Lcom/kwad/components/core/page/splitLandingPage/a;)Lcom/kwad/components/core/page/splitLandingPage/view/SplitScrollWebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kwad/components/core/page/splitLandingPage/a$5;->afA:Lcom/kwad/components/core/page/splitLandingPage/a;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/kwad/components/core/page/splitLandingPage/a;->e(Lcom/kwad/components/core/page/splitLandingPage/a;)Lcom/kwad/components/core/page/splitLandingPage/view/SplitScrollWebView;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-float/2addr v1, p1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final uR()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/splitLandingPage/a$5;->afA:Lcom/kwad/components/core/page/splitLandingPage/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/page/splitLandingPage/a;->f(Lcom/kwad/components/core/page/splitLandingPage/a;)Lcom/kwad/components/core/page/splitLandingPage/view/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/kwad/components/core/page/splitLandingPage/view/a;->uS()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jk()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/kwad/components/core/page/splitLandingPage/a$5;->afA:Lcom/kwad/components/core/page/splitLandingPage/a;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/kwad/components/core/page/splitLandingPage/a;->e(Lcom/kwad/components/core/page/splitLandingPage/a;)Lcom/kwad/components/core/page/splitLandingPage/view/SplitScrollWebView;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/kwad/components/core/page/splitLandingPage/a$5;->afA:Lcom/kwad/components/core/page/splitLandingPage/a;

    .line 34
    .line 35
    invoke-static {v4}, Lcom/kwad/components/core/page/splitLandingPage/a;->e(Lcom/kwad/components/core/page/splitLandingPage/a;)Lcom/kwad/components/core/page/splitLandingPage/view/SplitScrollWebView;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static {v3, v6, v4, v5}, Lcom/kwad/components/core/t/x;->a(Landroid/view/View;Landroid/view/animation/Interpolator;FF)Landroid/animation/Animator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jk()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x1

    .line 54
    if-ne v4, v1, :cond_2

    .line 55
    .line 56
    iget-object v4, p0, Lcom/kwad/components/core/page/splitLandingPage/a$5;->afA:Lcom/kwad/components/core/page/splitLandingPage/a;

    .line 57
    .line 58
    invoke-static {v4}, Lcom/kwad/components/core/page/splitLandingPage/a;->c(Lcom/kwad/components/core/page/splitLandingPage/a;)Lcom/kwad/components/core/widget/FeedVideoView;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lcom/kwad/components/core/widget/FeedVideoView;->isComplete()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_1

    .line 67
    .line 68
    iget-object v4, p0, Lcom/kwad/components/core/page/splitLandingPage/a$5;->afA:Lcom/kwad/components/core/page/splitLandingPage/a;

    .line 69
    .line 70
    invoke-static {v4}, Lcom/kwad/components/core/page/splitLandingPage/a;->f(Lcom/kwad/components/core/page/splitLandingPage/a;)Lcom/kwad/components/core/page/splitLandingPage/view/a;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4, v5}, Lcom/kwad/components/core/page/splitLandingPage/view/a;->aV(Z)Landroid/animation/Animator;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    new-array v1, v1, [Landroid/animation/Animator;

    .line 79
    .line 80
    aput-object v3, v1, v2

    .line 81
    .line 82
    aput-object v4, v1, v5

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-array v1, v5, [Landroid/animation/Animator;

    .line 89
    .line 90
    aput-object v3, v1, v2

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jk()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-ne v1, v5, :cond_3

    .line 101
    .line 102
    new-array v1, v5, [Landroid/animation/Animator;

    .line 103
    .line 104
    aput-object v3, v1, v2

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    new-instance v1, Lcom/kwad/components/core/page/splitLandingPage/a$5$1;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/kwad/components/core/page/splitLandingPage/a$5$1;-><init>(Lcom/kwad/components/core/page/splitLandingPage/a$5;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 118
    .line 119
    .line 120
    return v5
.end method

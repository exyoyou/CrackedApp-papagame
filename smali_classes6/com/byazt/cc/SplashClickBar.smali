.class public Lcom/byazt/cc/SplashClickBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x4a5
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:I

.field public i:Lcom/byazt/cc/SplashClickBarBtn;

.field public n:I

.field public sp:Z

.field public tt:I

.field public uj:I

.field public ve:I

.field public x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/byazt/cc/SplashClickBar;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2
    new-instance v0, Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/byazt/cc/SplashClickBarBtn;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    iput-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-object p2, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->sd()I

    move-result v0

    iput v0, p0, Lcom/byazt/cc/SplashClickBar;->c:I

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->hg()I

    move-result v0

    iput v0, p0, Lcom/byazt/cc/SplashClickBar;->tt:I

    .line 7
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->k()I

    move-result v0

    iput v0, p0, Lcom/byazt/cc/SplashClickBar;->ve:I

    .line 8
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->iy()I

    move-result v0

    iput v0, p0, Lcom/byazt/cc/SplashClickBar;->uj:I

    .line 9
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->pl()I

    move-result v0

    iput v0, p0, Lcom/byazt/cc/SplashClickBar;->n:I

    .line 10
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->di()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cc/SplashClickBar;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->nc()I

    move-result v0

    iput v0, p0, Lcom/byazt/cc/SplashClickBar;->x:I

    .line 12
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->jg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/cc/SplashClickBar;->sp:Z

    .line 13
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ge()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/byazt/cc/SplashClickBarBtn;->setShakeValue(F)V

    .line 15
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->tw()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/byazt/cc/SplashClickBarBtn;->setDeepShakeValue(F)V

    .line 16
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->br()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/byazt/cc/SplashClickBarBtn;->setWriggleValue(F)V

    .line 17
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->lv()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/cc/SplashClickBarBtn;->setTwistConfig(Lorg/json/JSONObject;)V

    .line 18
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->cy()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/cc/SplashClickBarBtn;->setShakeInteractConf(Lorg/json/JSONObject;)V

    .line 19
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yx()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/cc/SplashClickBarBtn;->setTwistInteractConf(Lorg/json/JSONObject;)V

    .line 20
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->pe()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/cc/SplashClickBarBtn;->setCalculationTwistMethod(I)V

    .line 21
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/cc/SplashClickBarBtn;->setCalculationMethod(I)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->mf()Lcom/byazt/ete/s;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/cc/SplashClickBarBtn;->c(Lcom/byazt/ete/s;)V

    .line 23
    iget p1, p0, Lcom/byazt/cc/SplashClickBar;->n:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/byazt/cc/SplashClickBar;->sp:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c(Lcom/byazt/hkv/c;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    invoke-virtual {v0, p1}, Lcom/byazt/cc/SplashClickBarBtn;->c(Lcom/byazt/hkv/c;)V

    return-void
.end method

.method public setBtnLayout(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/byazt/cc/SplashClickBar;->tt:I

    .line 2
    .line 3
    add-int/lit16 v0, v0, 0x96

    .line 4
    .line 5
    iget v1, p0, Lcom/byazt/cc/SplashClickBar;->c:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    if-gt v1, v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/byazt/cc/SplashClickBar;->x:I

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    iput v0, p0, Lcom/byazt/cc/SplashClickBar;->c:I

    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lcom/byazt/cc/SplashClickBar;->ve:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget p1, p0, Lcom/byazt/cc/SplashClickBar;->uj:I

    .line 22
    .line 23
    :goto_0
    if-gez p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    iget v1, p0, Lcom/byazt/cc/SplashClickBar;->x:I

    .line 38
    .line 39
    const/16 v3, -0x32

    .line 40
    .line 41
    if-eq v1, v2, :cond_6

    .line 42
    .line 43
    const/4 v2, 0x5

    .line 44
    if-eq v1, v2, :cond_5

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget v2, p0, Lcom/byazt/cc/SplashClickBar;->tt:I

    .line 54
    .line 55
    int-to-float v2, v2

    .line 56
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 61
    .line 62
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget v2, p0, Lcom/byazt/cc/SplashClickBar;->c:I

    .line 67
    .line 68
    int-to-float v2, v2

    .line 69
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 77
    .line 78
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/high16 v2, 0x41a00000    # 20.0f

    .line 85
    .line 86
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 92
    .line 93
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/high16 v2, 0x41200000    # 10.0f

    .line 100
    .line 101
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    :goto_1
    add-int/2addr p1, v1

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 108
    .line 109
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 110
    .line 111
    :goto_2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    int-to-float p1, p1

    .line 116
    invoke-static {v1, p1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 121
    .line 122
    const/16 p1, 0x51

    .line 123
    .line 124
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    .line 126
    iget-object p1, p0, Lcom/byazt/cc/SplashClickBar;->i:Lcom/byazt/cc/SplashClickBarBtn;

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

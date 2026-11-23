.class public Lcom/byazt/dqg/sp;
.super Lcom/byazt/dqg/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x5b
    }
.end annotation


# instance fields
.field public m:Landroid/widget/TextView;

.field public my:Lcom/byazt/ui/UpieImageView;

.field public nu:Landroid/widget/TextView;

.field public rh:Landroid/widget/TextView;

.field public yp:Landroid/widget/ImageView;

.field public z:Lcom/byazt/ff/TTRoundRectImageView;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/dqg/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/pf;->i(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    return v0
.end method

.method private c(F)V
    .locals 8

    .line 12
    invoke-direct {p0}, Lcom/byazt/dqg/sp;->n()F

    move-result v0

    .line 13
    invoke-direct {p0}, Lcom/byazt/dqg/sp;->a()F

    move-result v1

    .line 14
    iget v2, p0, Lcom/byazt/dqg/tt;->uj:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 19
    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v4, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v4}, Lcom/byazt/ete/ic;->qe()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 20
    iget v4, p0, Lcom/byazt/dqg/tt;->uj:I

    if-eq v4, v3, :cond_1

    .line 21
    iget-object v4, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v4}, Lcom/byazt/aas/pf;->da(Landroid/content/Context;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 22
    :cond_1
    iget v4, p0, Lcom/byazt/dqg/tt;->uj:I

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v4, v3, :cond_2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, p1

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    .line 23
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v7, v1

    move v1, p1

    move p1, v7

    goto :goto_1

    :cond_2
    int-to-float v3, v1

    sub-float/2addr v0, v3

    sub-float/2addr v0, v3

    mul-float v0, v0, p1

    sub-float/2addr v2, v0

    div-float/2addr v2, v6

    .line 24
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 26
    iget-object v2, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v2, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    .line 27
    iget-object v2, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    .line 28
    iget-object v3, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v3, p1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->jy()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance v1, Lcom/byazt/dqg/sp$1;

    invoke-direct {v1, p0, v0}, Lcom/byazt/dqg/sp$1;-><init>(Lcom/byazt/dqg/sp;F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/pf;->x(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    return v0
.end method

.method private tt()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/dqg/tt;->n:F

    .line 2
    .line 3
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    .line 5
    mul-float v0, v0, v1

    .line 6
    .line 7
    float-to-int v0, v0

    .line 8
    const/16 v1, 0x29a

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x5dc

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x6f1

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x232

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x3e8

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    iget v0, p0, Lcom/byazt/dqg/tt;->uj:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    const v0, 0x3f0fdf3b    # 0.562f

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const v0, 0x3fe374bc    # 1.777f

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-direct {p0, v0}, Lcom/byazt/dqg/sp;->c(F)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method private uj()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff84

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->sl:Landroid/widget/RelativeLayout;

    .line 3
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff04

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->t:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/bx;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/bx;->x(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/dqg/sp$2;

    invoke-direct {v1, p0}, Lcom/byazt/dqg/sp$2;-><init>(Lcom/byazt/dqg/sp;)V

    const/4 v2, 0x4

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    :cond_1
    return-void
.end method

.method private ve()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    const v1, 0x7e06ff00

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/dqg/sp;->yp:Landroid/widget/ImageView;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 15
    .line 16
    const v1, 0x7e06ff0a

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/byazt/ff/TTRoundRectImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/dqg/sp;->z:Lcom/byazt/ff/TTRoundRectImageView;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 28
    .line 29
    const v1, 0x7e06fef6

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/dqg/sp;->m:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 41
    .line 42
    const v1, 0x7e06fffa

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/byazt/dqg/sp;->nu:Landroid/widget/TextView;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 54
    .line 55
    const v1, 0x7e06ff07

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/byazt/dqg/sp;->rh:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/byazt/ic/c;->uj(Lcom/byazt/ete/ic;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    new-instance v0, Lcom/byazt/ui/UpieImageView;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/byazt/dqg/sp;->yp:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/byazt/ic/c;->i(Lcom/byazt/ete/ic;)Lcom/byazt/cph/c;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 89
    .line 90
    invoke-static {v3}, Lcom/byazt/nj/c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/tt;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 95
    .line 96
    invoke-static {v4}, Lcom/byazt/ic/c;->da(Lcom/byazt/ete/ic;)Lcom/byazt/ui/c;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/ui/UpieImageView;-><init>(Landroid/content/Context;Lcom/byazt/cph/c;Lcom/byazt/jzl/tt;Lcom/byazt/ui/c;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/byazt/dqg/sp;->my:Lcom/byazt/ui/UpieImageView;

    .line 104
    .line 105
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/byazt/ui/UpieImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    .line 109
    .line 110
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_1

    .line 121
    .line 122
    iget-object v0, p0, Lcom/byazt/dqg/sp;->nu:Landroid/widget/TextView;

    .line 123
    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    iget-object v1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/16 v1, 0x8

    .line 142
    .line 143
    const/4 v2, 0x0

    .line 144
    if-eqz v0, :cond_2

    .line 145
    .line 146
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    iget-object v0, p0, Lcom/byazt/dqg/sp;->yp:Landroid/widget/ImageView;

    .line 155
    .line 156
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    .line 160
    .line 161
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/byazt/dqg/sp;->yp:Landroid/widget/ImageView;

    .line 166
    .line 167
    iget-object v3, p0, Lcom/byazt/dqg/sp;->my:Lcom/byazt/ui/UpieImageView;

    .line 168
    .line 169
    invoke-virtual {p0, v0, v3}, Lcom/byazt/dqg/tt;->c(Landroid/widget/ImageView;Lcom/byazt/ui/UpieImageView;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/byazt/dqg/sp;->yp:Landroid/widget/ImageView;

    .line 173
    .line 174
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    .line 178
    .line 179
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 180
    .line 181
    .line 182
    :goto_0
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-eqz v0, :cond_3

    .line 189
    .line 190
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/byazt/dqg/sp;->z:Lcom/byazt/ff/TTRoundRectImageView;

    .line 195
    .line 196
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 197
    .line 198
    .line 199
    :cond_3
    iget-object v0, p0, Lcom/byazt/dqg/sp;->m:Landroid/widget/TextView;

    .line 200
    .line 201
    if-eqz v0, :cond_4

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/byazt/dqg/tt;->yp()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    :cond_4
    iget-object v0, p0, Lcom/byazt/dqg/sp;->rh:Landroid/widget/TextView;

    .line 211
    .line 212
    if-eqz v0, :cond_5

    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/byazt/dqg/tt;->z()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    :cond_5
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 222
    .line 223
    const v1, 0x7e06feca

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Landroid/widget/TextView;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 233
    .line 234
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/dqg/tt;->c()V

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ffcb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    .line 3
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/byazt/dqg/sp;->uj()V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/dqg/sp;->ve()V

    .line 7
    invoke-direct {p0}, Lcom/byazt/dqg/sp;->tt()V

    return-void
.end method

.method public c(Lcom/byazt/hkv/tt;Lcom/byazt/hkv/tt;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/byazt/dqg/sp;->nu:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p1}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 31
    iget-object v0, p0, Lcom/byazt/dqg/tt;->t:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p1}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 32
    iget-object p1, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2, p2}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 33
    iget-object p1, p0, Lcom/byazt/dqg/sp;->yp:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2, p2}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 34
    iget-object p1, p0, Lcom/byazt/dqg/sp;->z:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-direct {p0, p1, p2, p2}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 35
    iget-object p1, p0, Lcom/byazt/dqg/sp;->m:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, p2}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 36
    iget-object p1, p0, Lcom/byazt/dqg/sp;->rh:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, p2}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 37
    iget-object p1, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p2}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 38
    iget-object p1, p0, Lcom/byazt/dqg/sp;->my:Lcom/byazt/ui/UpieImageView;

    invoke-direct {p0, p1, p2, p2}, Lcom/byazt/dqg/sp;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public uj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sl:Landroid/widget/RelativeLayout;

    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

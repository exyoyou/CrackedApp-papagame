.class public Lcom/byazt/dqg/a;
.super Lcom/byazt/dqg/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x22
    }
.end annotation


# instance fields
.field public gt:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public my:Lcom/byazt/ff/TTRatingBar;

.field public nu:Landroid/widget/TextView;

.field public rh:Landroid/widget/TextView;

.field public rl:Lcom/byazt/ui/UpieImageView;

.field public yp:Lcom/byazt/ff/RatioImageView;

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

.method private tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    const v1, 0x7e06feca

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/dqg/a;->yp:Lcom/byazt/ff/RatioImageView;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x21

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/dqg/a;->yp:Lcom/byazt/ff/RatioImageView;

    .line 35
    .line 36
    const v1, 0x3f0f5c29    # 0.56f

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/byazt/ff/RatioImageView;->setRatio(F)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/a;->yp:Lcom/byazt/ff/RatioImageView;

    .line 44
    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/byazt/ff/RatioImageView;->setRatio(F)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/byazt/dqg/a;->yp:Lcom/byazt/ff/RatioImageView;

    .line 52
    .line 53
    const v1, 0x3ff47ae1    # 1.91f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/byazt/ff/RatioImageView;->setRatio(F)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/byazt/dqg/a;->yp:Lcom/byazt/ff/RatioImageView;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/byazt/dqg/a;->rl:Lcom/byazt/ui/UpieImageView;

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/byazt/dqg/tt;->c(Landroid/widget/ImageView;Lcom/byazt/ui/UpieImageView;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/byazt/dqg/a;->z:Lcom/byazt/ff/TTRoundRectImageView;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/byazt/dqg/a;->z:Lcom/byazt/ff/TTRoundRectImageView;

    .line 83
    .line 84
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v0, p0, Lcom/byazt/dqg/a;->m:Landroid/widget/TextView;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/byazt/dqg/tt;->yp()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-object v0, p0, Lcom/byazt/dqg/a;->nu:Landroid/widget/TextView;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/byazt/dqg/tt;->z()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-direct {p0}, Lcom/byazt/dqg/a;->ve()V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/byazt/dqg/a;->uj()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method private uj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/a;->rh:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/ete/n;->a()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v0, 0x1ad6

    .line 26
    .line 27
    :goto_0
    const/16 v1, 0x2710

    .line 28
    .line 29
    if-le v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    div-int/2addr v0, v1

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "\u4e07"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    aput-object v0, v1, v2

    .line 59
    .line 60
    const-string v0, "(%1$s\u4e2a\u8bc4\u8bba)"

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/byazt/dqg/a;->rh:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private ve()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/a;->my:Lcom/byazt/ff/TTRatingBar;

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
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarEmptyNum(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/dqg/a;->my:Lcom/byazt/ff/TTRatingBar;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarFillNum(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/dqg/a;->my:Lcom/byazt/ff/TTRatingBar;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 19
    .line 20
    const/high16 v2, 0x41800000    # 16.0f

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarImageWidth(F)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/dqg/a;->my:Lcom/byazt/ff/TTRatingBar;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarImageHeight(F)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/dqg/a;->my:Lcom/byazt/ff/TTRatingBar;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 45
    .line 46
    const/high16 v2, 0x40800000    # 4.0f

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarImagePadding(F)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/byazt/dqg/a;->my:Lcom/byazt/ff/TTRatingBar;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/byazt/ff/TTRatingBar;->c()V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/byazt/dqg/tt;->c()V

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06feba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    .line 3
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06ff36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/RatioImageView;

    iput-object v0, p0, Lcom/byazt/dqg/a;->yp:Lcom/byazt/ff/RatioImageView;

    .line 4
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06ff0a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/TTRoundRectImageView;

    iput-object v0, p0, Lcom/byazt/dqg/a;->z:Lcom/byazt/ff/TTRoundRectImageView;

    .line 5
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06fef6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/a;->m:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06ffde

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/a;->nu:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06ff4d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/a;->rh:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06fffa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/a;->gt:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06ff4b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/TTRatingBar;

    iput-object v0, p0, Lcom/byazt/dqg/a;->my:Lcom/byazt/ff/TTRatingBar;

    .line 10
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ic/c;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/byazt/ui/UpieImageView;

    iget-object v1, p0, Lcom/byazt/dqg/a;->yp:Lcom/byazt/ff/RatioImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 12
    invoke-static {v2}, Lcom/byazt/ic/c;->i(Lcom/byazt/ete/ic;)Lcom/byazt/cph/c;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 13
    invoke-static {v3}, Lcom/byazt/nj/c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/tt;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 14
    invoke-static {v4}, Lcom/byazt/ic/c;->da(Lcom/byazt/ete/ic;)Lcom/byazt/ui/c;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/ui/UpieImageView;-><init>(Landroid/content/Context;Lcom/byazt/cph/c;Lcom/byazt/jzl/tt;Lcom/byazt/ui/c;)V

    iput-object v0, p0, Lcom/byazt/dqg/a;->rl:Lcom/byazt/ui/UpieImageView;

    .line 15
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/byazt/ui/UpieImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/byazt/dqg/a;->tt()V

    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 25
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/hkv/tt;Lcom/byazt/hkv/tt;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/dqg/a;->gt:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1, p1}, Lcom/byazt/dqg/a;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 18
    iget-object p1, p0, Lcom/byazt/dqg/a;->yp:Lcom/byazt/ff/RatioImageView;

    invoke-virtual {p0, p1, p2, p2}, Lcom/byazt/dqg/a;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 19
    iget-object p1, p0, Lcom/byazt/dqg/a;->z:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-virtual {p0, p1, p2, p2}, Lcom/byazt/dqg/a;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 20
    iget-object p1, p0, Lcom/byazt/dqg/a;->m:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p2}, Lcom/byazt/dqg/a;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 21
    iget-object p1, p0, Lcom/byazt/dqg/a;->nu:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p2}, Lcom/byazt/dqg/a;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 22
    iget-object p1, p0, Lcom/byazt/dqg/a;->rh:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p2}, Lcom/byazt/dqg/a;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 23
    iget-object p1, p0, Lcom/byazt/dqg/a;->my:Lcom/byazt/ff/TTRatingBar;

    invoke-virtual {p0, p1, p2, p2}, Lcom/byazt/dqg/a;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    .line 24
    iget-object p1, p0, Lcom/byazt/dqg/a;->rl:Lcom/byazt/ui/UpieImageView;

    invoke-virtual {p0, p1, p2, p2}, Lcom/byazt/dqg/a;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.class public final Lcom/kwad/components/ad/reward/presenter/v;
.super Lcom/kwad/components/ad/reward/presenter/b;
.source "SourceFile"


# instance fields
.field private kf:Lcom/kwad/components/core/video/m;

.field private xT:Lcom/kwad/components/core/video/DetailVideoView;

.field private xU:Landroid/view/ViewGroup;

.field private xV:Landroid/widget/FrameLayout;

.field private xW:Landroid/widget/ImageView;

.field private xX:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xX:Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/v$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/v$1;-><init>(Lcom/kwad/components/ad/reward/presenter/v;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->kf:Lcom/kwad/components/core/video/m;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lcom/kwad/components/ad/reward/presenter/v;)Lcom/kwad/components/core/video/DetailVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xT:Lcom/kwad/components/core/video/DetailVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method private am(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/v;->xV:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, p1, v1, v2}, Lcom/kwad/sdk/wrapper/m;->a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xV:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private jh()V
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/components/DevelopMangerComponents;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/components/DevelopMangerComponents;

    .line 8
    .line 9
    return-void
.end method

.method private ji()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/kwad/sdk/utils/as;->VM()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v1, v2

    .line 18
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bQ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cQ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/kwad/components/ad/reward/a/b;->hY()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x0

    .line 38
    :goto_0
    iget-object v6, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 39
    .line 40
    iget-object v6, v6, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 41
    .line 42
    invoke-static {v6}, Lcom/kwad/components/ad/reward/g;->R(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    iget-object v6, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 49
    .line 50
    iget-object v6, v6, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 51
    .line 52
    invoke-static {v6}, Lcom/kwad/components/ad/reward/g;->S(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_2

    .line 57
    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v6, 0x0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    :goto_1
    const/4 v6, 0x1

    .line 66
    :goto_2
    const/16 v7, 0x8

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    if-eqz v6, :cond_6

    .line 71
    .line 72
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/v;->xU:Landroid/view/ViewGroup;

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    const/4 v5, 0x4

    .line 77
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/v;->xW:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    sget v1, Lcom/kwad/sdk/R$layout;->ksad_playable_end_info:I

    .line 88
    .line 89
    invoke-direct {p0, v1}, Lcom/kwad/components/ad/reward/presenter/v;->am(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    sget v1, Lcom/kwad/sdk/R$layout;->ksad_activity_apk_info_landscape:I

    .line 94
    .line 95
    invoke-direct {p0, v1}, Lcom/kwad/components/ad/reward/presenter/v;->am(I)V

    .line 96
    .line 97
    .line 98
    :goto_3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->be(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    xor-int/2addr v0, v2

    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xT:Lcom/kwad/components/core/video/DetailVideoView;

    .line 106
    .line 107
    const/16 v1, 0x11

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/video/DetailVideoView;->updateTextureViewGravity(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xT:Lcom/kwad/components/core/video/DetailVideoView;

    .line 114
    .line 115
    const/16 v1, 0x15

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/video/DetailVideoView;->updateTextureViewGravity(I)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xU:Landroid/view/ViewGroup;

    .line 122
    .line 123
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :goto_4
    return-void
.end method


# virtual methods
.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/b;->ay()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/v;->jh()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xT:Lcom/kwad/components/core/video/DetailVideoView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/kwad/components/ad/reward/presenter/v;->xX:Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/v;->kf:Lcom/kwad/components/core/video/m;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/m/e;->a(Lcom/kwad/components/core/video/m;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/v;->ji()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_player:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/kwad/components/core/video/DetailVideoView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xT:Lcom/kwad/components/core/video/DetailVideoView;

    .line 13
    .line 14
    sget v0, Lcom/kwad/sdk/R$id;->ksad_play_right_area:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xU:Landroid/view/ViewGroup;

    .line 23
    .line 24
    sget v0, Lcom/kwad/sdk/R$id;->ksad_play_right_area_bg_img:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xW:Landroid/widget/ImageView;

    .line 33
    .line 34
    sget v0, Lcom/kwad/sdk/R$id;->ksad_play_right_area_container:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/FrameLayout;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xV:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    return-void
.end method

.method public final onUnbind()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/v;->kf:Lcom/kwad/components/core/video/m;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/m/e;->b(Lcom/kwad/components/core/video/m;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xX:Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xT:Lcom/kwad/components/core/video/DetailVideoView;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/v;->xX:Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    .line 31
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    .line 33
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    .line 35
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/v;->xT:Lcom/kwad/components/core/video/DetailVideoView;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xT:Lcom/kwad/components/core/video/DetailVideoView;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/v;->xX:Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    :cond_2
    return-void
.end method

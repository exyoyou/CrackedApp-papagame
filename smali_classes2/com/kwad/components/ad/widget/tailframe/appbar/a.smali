.class public abstract Lcom/kwad/components/ad/widget/tailframe/appbar/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field protected CR:Landroid/view/View;

.field protected CS:Landroid/widget/Button;

.field protected CU:Landroid/widget/Button;

.field protected Da:Lcom/kwad/components/ad/widget/KsAppTagsView;

.field protected Dd:Lcom/kwad/components/ad/j/a;

.field private De:Ljava/lang/Runnable;

.field protected FL:Lcom/kwad/components/ad/widget/AppScoreView;

.field protected Gb:Lcom/kwad/components/core/page/widget/TextProgressBar;

.field protected Ia:Landroid/view/View;

.field protected Ox:Landroid/widget/TextView;

.field protected gS:Landroid/widget/TextView;

.field protected mn:Landroid/animation/ValueAnimator;

.field protected nU:Landroid/widget/ImageView;

.field protected nV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/ad/widget/tailframe/appbar/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/components/ad/widget/tailframe/appbar/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/wrapper/m;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->getLayoutId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/wrapper/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Ia:Landroid/view/View;

    .line 14
    .line 15
    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_icon:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->nU:Landroid/widget/ImageView;

    .line 24
    .line 25
    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_name:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->nV:Landroid/widget/TextView;

    .line 34
    .line 35
    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_score:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/kwad/components/ad/widget/AppScoreView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->FL:Lcom/kwad/components/ad/widget/AppScoreView;

    .line 44
    .line 45
    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_download_count:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->gS:Landroid/widget/TextView;

    .line 54
    .line 55
    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_introduce:I

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Ox:Landroid/widget/TextView;

    .line 64
    .line 65
    sget v0, Lcom/kwad/sdk/R$id;->ksad_download_bar:I

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/kwad/components/core/page/widget/TextProgressBar;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Gb:Lcom/kwad/components/core/page/widget/TextProgressBar;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/high16 v2, 0x41800000    # 16.0f

    .line 80
    .line 81
    invoke-static {v1, v2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    int-to-float v1, v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/page/widget/TextProgressBar;->setTextDimen(F)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Gb:Lcom/kwad/components/core/page/widget/TextProgressBar;

    .line 90
    .line 91
    const/4 v1, -0x1

    .line 92
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/page/widget/TextProgressBar;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    sget v0, Lcom/kwad/sdk/R$id;->ksad_reward_apk_info_tags:I

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/kwad/components/ad/widget/KsAppTagsView;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Da:Lcom/kwad/components/ad/widget/KsAppTagsView;

    .line 104
    .line 105
    sget v0, Lcom/kwad/sdk/R$id;->ksad_reward_apk_info_install_action:I

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/Button;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CS:Landroid/widget/Button;

    .line 114
    .line 115
    sget v0, Lcom/kwad/sdk/R$id;->ksad_reward_apk_info_install_start:I

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/widget/Button;

    .line 122
    .line 123
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CU:Landroid/widget/Button;

    .line 124
    .line 125
    sget v0, Lcom/kwad/sdk/R$id;->ksad_reward_apk_info_install_container:I

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CR:Landroid/view/View;

    .line 132
    .line 133
    new-instance v0, Lcom/kwad/components/ad/j/a;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Ia:Landroid/view/View;

    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/kwad/components/ad/j/a;-><init>(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Dd:Lcom/kwad/components/ad/j/a;

    .line 141
    .line 142
    return-void
.end method

.method private oC()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->mn:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [F

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->mn:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    const-wide/16 v1, 0x4b0

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->mn:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->mn:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->mn:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    new-instance v1, Lcom/kwad/components/ad/widget/tailframe/appbar/a$2;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/widget/tailframe/appbar/a$2;-><init>(Lcom/kwad/components/ad/widget/tailframe/appbar/a;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->mn:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final E(Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/core/response/model/AdInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->oC()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->lR()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getBtnInstallContainer()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CR:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getLayoutId()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method public getTextProgressBar()Lcom/kwad/components/core/page/widget/TextProgressBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Gb:Lcom/kwad/components/core/page/widget/TextProgressBar;

    .line 2
    .line 3
    return-object v0
.end method

.method public final lR()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->mn:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->mn:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->mn:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->De:Ljava/lang/Runnable;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CR:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->De:Ljava/lang/Runnable;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Dd:Lcom/kwad/components/ad/j/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/kwad/components/ad/j/a;->ok()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public n(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 7
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->S(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xc

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->nU:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cV(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v1, v3, p1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->nU:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cv(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v1, v3, p1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->nV:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cs(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->S(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x1

    .line 46
    const/16 v3, 0x8

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aG(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/high16 v5, 0x40400000    # 3.0f

    .line 56
    .line 57
    cmpl-float v5, v1, v5

    .line 58
    .line 59
    if-ltz v5, :cond_1

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v5, 0x0

    .line 64
    :goto_1
    if-eqz v5, :cond_2

    .line 65
    .line 66
    iget-object v5, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->FL:Lcom/kwad/components/ad/widget/AppScoreView;

    .line 67
    .line 68
    invoke-virtual {v5, v1}, Lcom/kwad/components/ad/widget/AppScoreView;->setScore(F)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->FL:Lcom/kwad/components/ad/widget/AppScoreView;

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->FL:Lcom/kwad/components/ad/widget/AppScoreView;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aF(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_3

    .line 91
    .line 92
    iget-object v5, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->gS:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->gS:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->gS:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Ox:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aA(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->S(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Gb:Lcom/kwad/components/core/page/widget/TextProgressBar;

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CR:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CU:Landroid/widget/Button;

    .line 134
    .line 135
    const-string v1, "\u67e5\u770b\u8be6\u60c5"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CS:Landroid/widget/Button;

    .line 141
    .line 142
    new-array v1, v2, [Ljava/lang/Object;

    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->JY()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    aput-object v2, v1, v4

    .line 161
    .line 162
    const-string v2, "\u6d4f\u89c8\u8be6\u60c5\u9875%s\u79d2\uff0c\u9886\u53d6\u5956\u52b1"

    .line 163
    .line 164
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    iget-boolean v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mRewardVerifyCalled:Z

    .line 172
    .line 173
    if-nez v0, :cond_8

    .line 174
    .line 175
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->De:Ljava/lang/Runnable;

    .line 176
    .line 177
    if-nez v0, :cond_5

    .line 178
    .line 179
    new-instance v0, Lcom/kwad/components/ad/widget/tailframe/appbar/a$1;

    .line 180
    .line 181
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/widget/tailframe/appbar/a$1;-><init>(Lcom/kwad/components/ad/widget/tailframe/appbar/a;)V

    .line 182
    .line 183
    .line 184
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->De:Ljava/lang/Runnable;

    .line 185
    .line 186
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CR:Landroid/view/View;

    .line 187
    .line 188
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->De:Ljava/lang/Runnable;

    .line 189
    .line 190
    const-wide/16 v5, 0x640

    .line 191
    .line 192
    invoke-virtual {v0, v1, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Gb:Lcom/kwad/components/core/page/widget/TextProgressBar;

    .line 197
    .line 198
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CR:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->De:Ljava/lang/Runnable;

    .line 207
    .line 208
    if-eqz v0, :cond_7

    .line 209
    .line 210
    iget-object v1, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->CR:Landroid/view/View;

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 213
    .line 214
    .line 215
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->De:Ljava/lang/Runnable;

    .line 217
    .line 218
    :cond_7
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {p0, v0}, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    .line 223
    .line 224
    .line 225
    :cond_8
    :goto_4
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->S(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_a

    .line 230
    .line 231
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/d;->eF(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-lez v0, :cond_9

    .line 240
    .line 241
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Da:Lcom/kwad/components/ad/widget/KsAppTagsView;

    .line 242
    .line 243
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Da:Lcom/kwad/components/ad/widget/KsAppTagsView;

    .line 248
    .line 249
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    :goto_5
    iget-object v0, p0, Lcom/kwad/components/ad/widget/tailframe/appbar/a;->Da:Lcom/kwad/components/ad/widget/KsAppTagsView;

    .line 253
    .line 254
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/widget/KsAppTagsView;->setAppTags(Ljava/util/List;)V

    .line 255
    .line 256
    .line 257
    :cond_a
    return-void
.end method

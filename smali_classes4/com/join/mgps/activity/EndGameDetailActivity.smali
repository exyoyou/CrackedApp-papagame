.class public Lcom/join/mgps/activity/EndGameDetailActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0049
.end annotation


# instance fields
.field appbar:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btnStart:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clBottom:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private endGameDetailMenuDialog:Lcom/join/mgps/dialog/n0;

.field endGameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isBackToList:Z

.field isFromVideo:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isInit:Z

.field private isVideoCollapse:Z

.field ivAuthorAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ivBack:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ivGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ivMenu:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_book_bg:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field llShare:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field llTop:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mainData:Lcom/join/mgps/dto/EndGameDetailBean;

.field nullView:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field playTag:Ljava/lang/String;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private rpcGameClient:Lcom/join/mgps/rpc/k;

.field rules:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field tablayout:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tagPass:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvAuthorName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvBestScore:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvIntro:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvPassRate:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvTopTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewpager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "EndGameDetailActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->playTag:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isVideoCollapse:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isInit:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/EndGameDetailActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/EndGameDetailActivity;->resetTabTextSize(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private formatMills(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mills"
        }
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 3
    .line 4
    div-float/2addr p1, v0

    .line 5
    const/high16 v0, 0x42700000    # 60.0f

    .line 6
    .line 7
    const-string v1, "\u79d2"

    .line 8
    .line 9
    cmpg-float v0, p1, v0

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/text/DecimalFormat;

    .line 19
    .line 20
    const-string v3, "0.00"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    float-to-double v3, p1

    .line 26
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    float-to-int p1, p1

    .line 42
    div-int/lit8 v0, p1, 0x3c

    .line 43
    .line 44
    rem-int/lit8 p1, p1, 0x3c

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, "\u5206"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dimen"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "status_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
.end method

.method private initAppbarListener()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0713db

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/EndGameDetailActivity;->getStatusBarHeight(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    float-to-int v0, v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 20
    .line 21
    new-instance v2, Lcom/join/mgps/activity/w0;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/w0;-><init>(Lcom/join/mgps/activity/EndGameDetailActivity;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private initVideoPlayer(Lcom/join/mgps/dto/EndGameBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgameInfo"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getVideo()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getCover()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->nullView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->iv_book_bg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getVideo()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getCover()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Lcom/join/android/app/component/video/StandardVideoView;->setCover(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->playTag:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setShowCoverWhenPause(Z)V

    .line 79
    .line 80
    .line 81
    iget-boolean v2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isFromVideo:Z

    .line 82
    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 86
    .line 87
    const-string v2, ""

    .line 88
    .line 89
    invoke-static {p1, v0, v1, v2}, Lcom/join/android/app/component/video/j;->c(Lcom/join/android/app/component/video/StandardVideoView;Ljava/lang/String;ZLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/join/android/app/component/video/j;->a(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->setSurfaceToPlay()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 104
    .line 105
    sget v3, Lcom/join/android/app/component/video/StandardVideoView;->D:I

    .line 106
    .line 107
    const/4 v4, 0x2

    .line 108
    new-array v4, v4, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getTitle()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    aput-object v5, v4, v1

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getCover()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const/4 v1, 0x1

    .line 121
    aput-object p1, v4, v1

    .line 122
    .line 123
    invoke-virtual {v2, v0, v3, v4}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_3

    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_1
    return-void
.end method

.method private initViewpger(Lcom/join/mgps/dto/EndGameDetailBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgameInfo"
        }
    .end annotation

    .line 1
    const-string v0, "\u6392\u884c\u699c"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/join/mgps/fragment/a1;->d0()Lcom/join/mgps/fragment/a1$f;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, p1}, Lcom/join/mgps/fragment/a1$f;->b(Lcom/join/mgps/dto/EndGameDetailBean;)Lcom/join/mgps/fragment/a1$f;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/fragment/a1$f;->a()Lcom/join/mgps/fragment/y0;

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/join/mgps/adapter/h0$a;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aget-object v4, v0, v3

    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/fragment/a1;->d0()Lcom/join/mgps/fragment/a1$f;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5, p1}, Lcom/join/mgps/fragment/a1$f;->b(Lcom/join/mgps/dto/EndGameDetailBean;)Lcom/join/mgps/fragment/a1$f;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/fragment/a1$f;->a()Lcom/join/mgps/fragment/y0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v2, v4, p1}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 47
    .line 48
    new-instance v2, Lcom/join/mgps/adapter/h0;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-direct {v2, v4, v1}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tablayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;[Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 68
    .line 69
    new-instance v0, Lcom/join/mgps/activity/EndGameDetailActivity$a;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/EndGameDetailActivity$a;-><init>(Lcom/join/mgps/activity/EndGameDetailActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v3}, Lcom/join/mgps/activity/EndGameDetailActivity;->resetTabTextSize(I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/EndGameDetailActivity;ILcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/EndGameDetailActivity;->lambda$initAppbarListener$0(ILcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method private synthetic lambda$initAppbarListener$0(ILcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "initAppbarListener: "

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, "   "

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    add-int/2addr p1, p3

    .line 23
    const/4 p2, 0x0

    .line 24
    if-gez p1, :cond_1

    .line 25
    .line 26
    iget-boolean p3, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isVideoCollapse:Z

    .line 27
    .line 28
    if-nez p3, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->llTop:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const p3, 0x7f060503

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->ivBack:Landroid/widget/ImageView;

    .line 39
    .line 40
    const p3, 0x7f080172

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->ivMenu:Landroid/widget/ImageView;

    .line 47
    .line 48
    const p3, 0x7f080891

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/EndGameDetailActivity;->setStatusBarLight(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 64
    .line 65
    if-eqz p2, :cond_0

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    const/4 p3, 0x2

    .line 72
    if-ne p2, p3, :cond_0

    .line 73
    .line 74
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 77
    .line 78
    .line 79
    :cond_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isVideoCollapse:Z

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    if-lez p1, :cond_3

    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isVideoCollapse:Z

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->llTop:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    const p3, 0x7f0604e5

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->ivBack:Landroid/widget/ImageView;

    .line 97
    .line 98
    const p3, 0x7f08081c

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->ivMenu:Landroid/widget/ImageView;

    .line 105
    .line 106
    const p3, 0x7f080974

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 113
    .line 114
    const/4 p3, 0x4

    .line 115
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/EndGameDetailActivity;->setStatusBarLight(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 122
    .line 123
    if-eqz p1, :cond_2

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const/4 p3, 0x5

    .line 130
    if-ne p1, p3, :cond_2

    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 135
    .line 136
    .line 137
    :cond_2
    iput-boolean p2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isVideoCollapse:Z

    .line 138
    .line 139
    :cond_3
    :goto_0
    return-void
.end method

.method private resetTabTextSize(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tablayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->getTabCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tablayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->j(I)Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-ne v2, p1, :cond_0

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    :goto_1
    const/4 v5, 0x0

    .line 23
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method private setStatusBarLight(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLight"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setStatusBarLight: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    or-int/lit16 p1, v1, 0x2000

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x4000000

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x500

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17
    .line 18
    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->llTop:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/EndGameDetailActivity;->getStatusBarHeight(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->endGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameDetailActivity;->getEndGameConfig()V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameDetailActivity;->showLoding()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method btnStart()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/activity/EndGameLaunchActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->gameId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity_$f;->a(Lcom/join/mgps/dto/EndGameBean;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 51
    .line 52
    .line 53
    :try_start_0
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "2"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setEndId(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 77
    .line 78
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->gameId:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 84
    .line 85
    .line 86
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameStartVS:Lcom/papa/sim/statistic/Event;

    .line 91
    .line 92
    invoke-virtual {v2, v3, v0, v1}, Lcom/papa/sim/statistic/t;->i0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_0
    return-void
.end method

.method clAuthor()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->endGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-class v2, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->isEndgame_asset_switch()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getPublisher()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getAssetUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    return-void
.end method

.method clShare()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameDetailBean;->getShareUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getShareUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getGameIcon()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getGameName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "\u6b8b\u5c40\u6311\u6218"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x7

    .line 81
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v0}, Lcom/join/mgps/Util/w;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    return-void
.end method

.method getData(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRefreshAllData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dto/RequestEndGameDetailArgs;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestEndGameDetailArgs;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->gameId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameDetailArgs;->setGameId(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->endGameId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameDetailArgs;->setEndgameId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameDetailArgs;->setUid(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->F(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/16 v2, 0xc8

    .line 61
    .line 62
    if-ne v1, v2, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/join/mgps/dto/EndGameDetailBean;

    .line 69
    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/EndGameDetailActivity;->updateUi(Lcom/join/mgps/dto/EndGameDetailBean;Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameDetailActivity;->showLodingFailed()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameDetailActivity;->showLodingFailed()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const v0, 0x7f12031e

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/EndGameDetailActivity;->showTost(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method getEndGameConfig()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dto/RequestEndGameListArgs;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestEndGameListArgs;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameListArgs;->setUid(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/rpc/impl/i;->o(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/16 v2, 0xc8

    .line 53
    .line 54
    if-ne v1, v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->endGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method ivBack()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method ivMenu()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->endGameDetailMenuDialog:Lcom/join/mgps/dialog/n0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/n0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/n0;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->endGameDetailMenuDialog:Lcom/join/mgps/dialog/n0;

    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/activity/EndGameDetailActivity$c;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/EndGameDetailActivity$c;-><init>(Lcom/join/mgps/activity/EndGameDetailActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/n0;->c(Lcom/join/mgps/dialog/n0$a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->endGameDetailMenuDialog:Lcom/join/mgps/dialog/n0;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->endGameDetailMenuDialog:Lcom/join/mgps/dialog/n0;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->ivMenu:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    int-to-double v2, v2

    .line 35
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 36
    .line 37
    mul-double v2, v2, v4

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const v5, 0x7f0712f6

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    float-to-double v4, v4

    .line 51
    sub-double/2addr v2, v4

    .line 52
    double-to-int v2, v2

    .line 53
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const v4, 0x7f0711b5

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    neg-float v3, v3

    .line 65
    float-to-int v3, v3

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->playTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/activity/EndGameDetailActivity$b;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/EndGameDetailActivity$b;-><init>(Lcom/join/mgps/activity/EndGameDetailActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->taskShotPic(Lv7/e;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->getTimeHas()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x7d0

    .line 27
    .line 28
    cmp-long v4, v0, v2

    .line 29
    .line 30
    if-gez v4, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onAutoCompletion()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/android/app/component/video/i;->f(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->z(Lv7/a;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isBackToList:Z

    .line 55
    .line 56
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isFromVideo:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->playTag:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/android/app/component/video/a;->n0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isFromVideo:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isBackToList:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isInit:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/EndGameDetailActivity;->getData(Z)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->isInit:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->onVideoResume()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameDetailActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/EndGameDetailActivity;->getData(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u52a0\u8f7d\u4e2d"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->clBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->clBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method showMain()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u4e3b\u754c\u9762main"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->clBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method showTost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/EndGameDetailBean;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "isRefreshAllData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameDetailActivity;->showMain()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->mainData:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameDetailBean;->getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getTitle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getTitle()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tvIntro:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getSubTitle()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->ivAuthorAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getAvatar()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->ivGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getGameIcon()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tvAuthorName:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getNickname()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tvPassRate:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getChallengeSucRate()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tagPass:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getWin()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v3, 0x1

    .line 89
    if-ne v2, v3, :cond_1

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/16 v2, 0x8

    .line 94
    .line 95
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->tvBestScore:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getBestTimes()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-gtz v2, :cond_2

    .line 105
    .line 106
    const-string v2, "\u6682\u65e0\u6210\u7ee9"

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getBestTimes()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/EndGameDetailActivity;->formatMills(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/EndGameDetailActivity;->initVideoPlayer(Lcom/join/mgps/dto/EndGameBean;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/EndGameDetailActivity;->initViewpger(Lcom/join/mgps/dto/EndGameDetailBean;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 130
    .line 131
    if-eqz p2, :cond_4

    .line 132
    .line 133
    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-eqz p2, :cond_4

    .line 138
    .line 139
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 140
    .line 141
    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {p2, v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    if-eqz p2, :cond_4

    .line 156
    .line 157
    instance-of v0, p2, Lcom/join/mgps/fragment/y0;

    .line 158
    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    check-cast p2, Lcom/join/mgps/fragment/y0;

    .line 162
    .line 163
    invoke-virtual {p2, p1}, Lcom/join/mgps/fragment/y0;->W(Lcom/join/mgps/dto/EndGameDetailBean;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_2
    return-void
.end method

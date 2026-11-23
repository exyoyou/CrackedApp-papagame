.class public Lcom/join/mgps/activity/ClassifyAndRankActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d013c
.end annotation


# instance fields
.field currentIndex:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178b
    .end annotation
.end field

.field fragment:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field intentFrom:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isFormNewRank:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field title_normal_search_img:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/ClassifyAndRankActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method


# virtual methods
.method afterviews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->title_normal_search_img:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->title:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->title_textview:Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->title:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->intentFrom:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    const v3, 0x7f0a06c2

    .line 46
    .line 47
    .line 48
    if-ne v1, v2, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->title_textview:Landroid/widget/TextView;

    .line 51
    .line 52
    const-string v2, "\u5206\u7c7b"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/fragment/j;

    .line 58
    .line 59
    invoke-direct {v1}, Lcom/join/mgps/fragment/j;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 v2, 0x2

    .line 67
    const-string v4, "\u6392\u884c"

    .line 68
    .line 69
    if-ne v1, v2, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->title_textview:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/fragment/v4;

    .line 77
    .line 78
    invoke-direct {v1}, Lcom/join/mgps/fragment/v4;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v2, Landroid/os/Bundle;

    .line 82
    .line 83
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v4, "table"

    .line 87
    .line 88
    iget v5, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->currentIndex:I

    .line 89
    .line 90
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    const-string v4, "parentExtBean"

    .line 94
    .line 95
    iget-object v5, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 96
    .line 97
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    const/4 v2, 0x3

    .line 108
    if-ne v1, v2, :cond_3

    .line 109
    .line 110
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->title_textview:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Lcom/join/mgps/fragment/x3;

    .line 116
    .line 117
    invoke-direct {v1}, Lcom/join/mgps/fragment/x3;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;->getDownloadTaskInfo()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method back_image()V
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

.method getDownloadTaskInfo()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/f;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/f;-><init>(Lcom/join/mgps/activity/ClassifyAndRankActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;->updateDownloadView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method title_normal_download_cdv()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method title_normal_search_img()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SearchHintActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/papa/sim/statistic/Where;->classGame:Lcom/papa/sim/statistic/Where;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method updateDownloadView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

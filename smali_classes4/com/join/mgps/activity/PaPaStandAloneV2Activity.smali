.class public Lcom/join/mgps/activity/PaPaStandAloneV2Activity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PaPaStandAloneV2Activity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d008c
.end annotation


# static fields
.field static TITLE_PAPA_STANDALONE:[Ljava/lang/String;


# instance fields
.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178b
    .end annotation
.end field

.field private fragments:[Landroidx/fragment/app/Fragment;

.field pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field parentExtBean:Lcom/join/mgps/dto/ExtBean;
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

.field viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "\u6700\u65b0"

    .line 2
    .line 3
    const-string v1, "\u5355\u673a\u699c"

    .line 4
    .line 5
    const-string v2, "\u63a8\u8350"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->TITLE_PAPA_STANDALONE:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->TITLE_PAPA_STANDALONE:[Ljava/lang/String;

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;)[Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->newFragment(I)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getTypeByPosition(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static synthetic j(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->lambda$afterViews$0()V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->lambda$onEventMainThread$1()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$afterViews$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/TabPageIndicator;->onPageSelected(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$onEventMainThread$1()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method private newFragment(I)Landroidx/fragment/app/Fragment;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->getTypeByPosition(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "pageExtBean"

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq p1, v2, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    invoke-direct {v3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget-object v4, Lcom/papa/sim/statistic/EventP$ChatId;->singleGameZoneRanking:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x3e9

    .line 54
    .line 55
    const-string v3, "1"

    .line 56
    .line 57
    invoke-static {v1, v3, v2, v0}, Lcom/join/mgps/activity/k;->a0(ILjava/lang/String;ILandroid/os/Bundle;)Lcom/join/mgps/activity/k;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    aput-object v0, v1, p1

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    invoke-direct {v3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    sget-object v4, Lcom/papa/sim/statistic/EventP$ChatId;->singleGameZoneNew:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v2}, Lcom/join/mgps/fragment/q4;->X(ILandroid/os/Bundle;)Lcom/join/mgps/fragment/q4;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 100
    .line 101
    aput-object v0, v1, p1

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    .line 105
    .line 106
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lcom/join/mgps/dto/ExtBean;

    .line 110
    .line 111
    invoke-direct {v3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v4, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    sget-object v4, Lcom/papa/sim/statistic/EventP$ChatId;->singleGameZoneRecommend:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v2}, Lcom/join/mgps/fragment/q4;->X(ILandroid/os/Bundle;)Lcom/join/mgps/fragment/q4;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 138
    .line 139
    aput-object v0, v1, p1

    .line 140
    .line 141
    return-object v0
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->title_normal_search_img:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->title_textview:Landroid/widget/TextView;

    .line 13
    .line 14
    const-string v2, "\u5355\u673a\u6e38\u620f"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$b;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v0, p0, v2}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$b;-><init>(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;Landroidx/fragment/app/FragmentManager;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/InterceptEventViewPager;->setIsAsParentViewPager(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/InterceptEventViewPager;->setCurrentItem(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 65
    .line 66
    new-instance v1, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$a;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$a;-><init>(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/TabPageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/activity/i8;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/i8;-><init>(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v2, 0x1f4

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->getDownloadTaskInfo()V

    .line 87
    .line 88
    .line 89
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->updateDownloadView()V

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
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/h8;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/h8;-><init>(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->updateDownloadView()V

    .line 8
    .line 9
    .line 10
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
    .locals 1
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
    return-void
.end method

.method updateDownloadView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

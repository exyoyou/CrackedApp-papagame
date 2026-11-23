.class public Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$BarHideEnableObserver;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d02fb
.end annotation


# instance fields
.field private SCROLLING:Z

.field protected activityCloseEnterAnimation:I

.field protected activityCloseExitAnimation:I

.field adapter:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

.field appbar:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

.field close:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field close2:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field close3:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field downNumber:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private firstVisiblePosition:I

.field gameName:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gamedataJson:Ljava/lang/String;

.field gamedatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private gameid:Ljava/lang/String;

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isExploring:Z

.field private lastVisibleIndex:I

.field mBarHideEnableObserver:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$BarHideEnableObserver;

.field private mNavigationBarObserver:Landroid/database/ContentObserver;

.field main:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private pageExtBean:Lcom/join/mgps/dto/ExtBean;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field seetext:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field speedLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field xx:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->lastVisibleIndex:I

    .line 13
    .line 14
    iput v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->firstVisiblePosition:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->SCROLLING:Z

    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->downloadAndDownload:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->isExploring:Z

    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$4;

    .line 38
    .line 39
    new-instance v1, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$4;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;Landroid/os/Handler;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 48
    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->SCROLLING:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->lastVisibleIndex:I

    .line 2
    .line 3
    return p1
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "bool"

    .line 6
    .line 7
    const-string v1, "android"

    .line 8
    .line 9
    const-string v2, "config_showNavigationBar"

    .line 10
    .line 11
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "get"

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    new-array v4, v3, [Ljava/lang/Class;

    .line 34
    .line 35
    const-class v5, Ljava/lang/String;

    .line 36
    .line 37
    aput-object v5, v4, v1

    .line 38
    .line 39
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-array v4, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string v5, "qemu.hw.mainkeys"

    .line 46
    .line 47
    aput-object v5, v4, v1

    .line 48
    .line 49
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "1"

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-string v1, "0"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move v1, p0

    .line 75
    :goto_1
    move p0, v1

    .line 76
    :catch_0
    return p0
.end method

.method private getNavigationBarHeight()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

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
    const-string v3, "navigation_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    return p0
.end method

.method private initData()V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->registerContentResolver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedataJson:Ljava/lang/String;

    .line 14
    .line 15
    const-class v2, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getGameid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gameid:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "0"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getGameid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->context:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lcom/papa/sim/statistic/Event;->showGuessYouLike:Lcom/papa/sim/statistic/Event;

    .line 59
    .line 60
    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getCollectionList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getCollectionList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-lez v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getCollectionList()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget-object v5, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->getRec_context()Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getTid()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    .line 129
    .line 130
    new-instance v5, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 131
    .line 132
    invoke-direct {v5, v2, v3}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    const/4 v1, 0x0

    .line 140
    :try_start_1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget-object v4, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gameid:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iput-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 151
    .line 152
    const/16 v4, 0x8

    .line 153
    .line 154
    if-eqz v3, :cond_5

    .line 155
    .line 156
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    .line 157
    .line 158
    iget-object v5, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->context:Landroid/content/Context;

    .line 159
    .line 160
    invoke-direct {v3, v5}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    int-to-long v5, v3

    .line 178
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 181
    .line 182
    .line 183
    move-result-wide v7

    .line 184
    cmp-long v3, v5, v7

    .line 185
    .line 186
    if-gtz v3, :cond_5

    .line 187
    .line 188
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-nez v3, :cond_3

    .line 199
    .line 200
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    sget-object v5, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_5

    .line 217
    .line 218
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDisableShowSpeedUpPrompt()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-nez v3, :cond_5

    .line 225
    .line 226
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->context:Landroid/content/Context;

    .line 227
    .line 228
    iget-object v5, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 229
    .line 230
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-static {v3, v5}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-eqz v3, :cond_5

    .line 239
    .line 240
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->context:Landroid/content/Context;

    .line 241
    .line 242
    iget-object v5, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 243
    .line 244
    invoke-static {v3, v5}, Lcom/join/mgps/Util/UtilsMy;->Z3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 245
    .line 246
    .line 247
    new-instance v3, Ljava/util/Random;

    .line 248
    .line 249
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 250
    .line 251
    .line 252
    const/16 v5, 0xa

    .line 253
    .line 254
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    add-int/lit8 v3, v3, 0x55

    .line 259
    .line 260
    iget-object v5, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->cfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 261
    .line 262
    if-eqz v5, :cond_4

    .line 263
    .line 264
    iget-object v5, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->tip:Landroid/widget/TextView;

    .line 265
    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    iget-object v7, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->cfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 272
    .line 273
    invoke-virtual {v7}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getTip_text()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v7, "<font color=#5286FA><big>"

    .line 281
    .line 282
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v3, "</big></font>%"

    .line 289
    .line 290
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 302
    .line 303
    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 304
    .line 305
    .line 306
    :cond_4
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 307
    .line 308
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    check-cast v3, Ljava/lang/Integer;

    .line 317
    .line 318
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    iget-object v5, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 323
    .line 324
    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-virtual {v5}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    check-cast v5, Ljava/lang/Integer;

    .line 333
    .line 334
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    iget-object v6, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downNumber:Landroid/widget/TextView;

    .line 339
    .line 340
    new-instance v7, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v8, "\u4eca\u65e5\u53ef\u52a0\u901f\uff1a <strong><font color=#6193FE>"

    .line 346
    .line 347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    sub-int/2addr v3, v5

    .line 351
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v3, "</font></strong> \u6b21"

    .line 355
    .line 356
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 368
    .line 369
    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 370
    .line 371
    .line 372
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    sget-object v5, Lcom/papa/sim/statistic/Event;->AccelerationPopup:Lcom/papa/sim/statistic/Event;

    .line 377
    .line 378
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 379
    .line 380
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v5, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 384
    .line 385
    .line 386
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close3:Landroid/widget/ImageView;

    .line 387
    .line 388
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    .line 390
    .line 391
    goto :goto_2

    .line 392
    :cond_5
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->speedLayout:Landroid/view/View;

    .line 393
    .line 394
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close2:Landroid/view/View;

    .line 398
    .line 399
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close3:Landroid/widget/ImageView;

    .line 403
    .line 404
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    .line 406
    .line 407
    :goto_2
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 408
    .line 409
    iget-object v4, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 410
    .line 411
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    .line 417
    .line 418
    goto :goto_3

    .line 419
    :catch_1
    move-exception v3

    .line 420
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    .line 422
    .line 423
    :goto_3
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 424
    .line 425
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 426
    .line 427
    const/4 v5, 0x2

    .line 428
    invoke-direct {v4, v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 432
    .line 433
    .line 434
    invoke-static {}, Lcom/join/mgps/Util/d2;->x()Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-eqz v3, :cond_6

    .line 439
    .line 440
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getJumpInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    if-eqz v3, :cond_6

    .line 445
    .line 446
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getJumpInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    instance-of v3, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 451
    .line 452
    if-eqz v3, :cond_6

    .line 453
    .line 454
    :try_start_2
    new-instance v3, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 455
    .line 456
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getJumpInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-direct {v3, v5, v4}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->getJumpInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    iget-object v4, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 472
    .line 473
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 474
    .line 475
    .line 476
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    .line 477
    .line 478
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 487
    .line 488
    .line 489
    goto :goto_4

    .line 490
    :catch_2
    move-exception v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 492
    .line 493
    .line 494
    :cond_6
    :goto_4
    new-instance v0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 495
    .line 496
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    .line 497
    .line 498
    invoke-direct {v0, p0, v2, v1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 499
    .line 500
    .line 501
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->adapter:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 502
    .line 503
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gameid:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->setGameId(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 509
    .line 510
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->adapter:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 511
    .line 512
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 513
    .line 514
    .line 515
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 516
    .line 517
    new-instance v1, Lcom/join/mgps/activity/recomend/a;

    .line 518
    .line 519
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/a;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;)V

    .line 520
    .line 521
    .line 522
    const-wide/16 v2, 0x64

    .line 523
    .line 524
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 525
    .line 526
    .line 527
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->lambda$initData$0()V

    return-void
.end method

.method private synthetic lambda$initData$0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->expListPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private registerNavigationBarObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "navigationbar_is_min"

    .line 6
    .line 7
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private updateProgressPartly()V
    .locals 0

    return-void
.end method


# virtual methods
.method afterview()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->recomDataJson()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedataJson:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->finish()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object p0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->context:Landroid/content/Context;

    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-class v2, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->cfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->seetext:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getBtn_text()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->initData()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const v2, 0x7f071408

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 93
    .line 94
    new-instance v3, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;

    .line 95
    .line 96
    invoke-direct {v3, p0, v0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 100
    .line 101
    .line 102
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const v2, 0x10100ae

    .line 107
    .line 108
    .line 109
    filled-new-array {v2}, [I

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const v3, 0x10100ba

    .line 129
    .line 130
    .line 131
    const v4, 0x10100bb

    .line 132
    .line 133
    .line 134
    filled-new-array {v3, v4}, [I

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    iput v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->activityCloseEnterAnimation:I

    .line 147
    .line 148
    const/4 v2, 0x1

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    iput v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->activityCloseExitAnimation:I

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catch_1
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    new-instance v1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$2;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$2;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 171
    .line 172
    .line 173
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 178
    .line 179
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    new-instance v1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$3;

    .line 199
    .line 200
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$3;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method close2()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method close3()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method downloadAcc()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa/sim/statistic/Event;->DownloadAcceleration:Lcom/papa/sim/statistic/Event;

    .line 6
    .line 7
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/join/mgps/event/o;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    const/16 v3, 0xe

    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/event/o;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-static {p0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "\u5df2\u63a5\u5165\u4e13\u5c5e\u901a\u9053\uff0c\u52a0\u901f\u6210\u529f\uff01"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->H4(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->H2(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->speedLayout:Landroid/view/View;

    .line 69
    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close3:Landroid/widget/ImageView;

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close2:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close:Landroid/widget/ImageView;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method

.method expListPoint()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->isExploring:Z

    .line 3
    .line 4
    if-nez v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->isExploring:Z

    .line 8
    .line 9
    iget v2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->firstVisiblePosition:I

    .line 10
    .line 11
    if-ltz v2, :cond_2

    .line 12
    .line 13
    :goto_0
    iget v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->lastVisibleIndex:I

    .line 14
    .line 15
    if-gt v2, v3, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->adapter:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->getItemData(I)Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    instance-of v4, v4, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget-object v5, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    instance-of v4, v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 77
    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_1

    .line 91
    .line 92
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    sget-object v5, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v1

    .line 120
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->isExploring:Z

    .line 121
    .line 122
    throw v1

    .line 123
    :catch_0
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->isExploring:Z

    .line 124
    .line 125
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->activityCloseEnterAnimation:I

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->activityCloseExitAnimation:I

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public isNavigationBarShow()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "navigationbar_hide_bar_enabled"

    .line 8
    .line 9
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-ne v2, v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    return v0

    .line 17
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/join/mgps/Util/v1;->e()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-static {p0}, Lcom/join/mgps/Util/v1;->a(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Lcom/join/mgps/Util/v1;->f(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 38
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/v1;->g()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "force_fsg_nav_bar"

    .line 49
    .line 50
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    return v1

    .line 57
    :catch_1
    move-exception v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Landroid/graphics/Point;

    .line 70
    .line 71
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v4, Landroid/graphics/Point;

    .line 75
    .line 76
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 83
    .line 84
    .line 85
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 86
    .line 87
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 88
    .line 89
    if-eq v2, v3, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/4 v0, 0x0

    .line 93
    :goto_1
    return v0
.end method

.method main()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->mBarHideEnableObserver:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$BarHideEnableObserver;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->recomDataJson()Lorg/androidannotations/api/sharedpreferences/p;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedataJson:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->initData()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method registerContentResolver()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$BarHideEnableObserver;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$BarHideEnableObserver;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->mBarHideEnableObserver:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$BarHideEnableObserver;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "navigationbar_hide_bar_enabled"

    .line 18
    .line 19
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->mBarHideEnableObserver:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$BarHideEnableObserver;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->registerNavigationBarObserver()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x50

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    const p1, 0xffffff

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/p2;->r(Landroid/app/Activity;IZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

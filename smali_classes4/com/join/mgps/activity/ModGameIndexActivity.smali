.class public Lcom/join/mgps/activity/ModGameIndexActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ModGameIndexActivity$z;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0082
.end annotation

.annotation build Lorg/androidannotations/annotations/Fullscreen;
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final STORAGE_PERMISSION_REQ_CODE:I = 0x7

.field private static factory:Lcom/github/snowdream/android/app/downloader/b;

.field static listener:Lcom/github/snowdream/android/app/downloader/b$b;

.field private static tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

.field private autoShrinkRunnable:Ljava/lang/Runnable;

.field btnRecommendToggleExpand:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btnRecommendToggleShrink:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cl_cloud:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cl_mod:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private clickTime:J

.field dialog:Landroid/app/Dialog;

.field private dialogType:I

.field dialogloding:Landroid/app/Dialog;

.field private domainDialog:Lcom/join/mgps/dialog/n1;

.field downloadDialog:Lcom/join/mgps/dialog/h1;

.field expandMask:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private exposureRunnable:Ljava/lang/Runnable;

.field extBean:Lcom/join/mgps/dto/ExtBean;

.field flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field flRecommendShrink:Lcom/join/mgps/customview/MyTouchFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field from:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private hasDragged:Z

.field private hasShowPromptDialog:Z

.field hasVersion:Z

.field private isExpand:Z

.field isModUpdate:Z

.field private isPause:Z

.field private isShowExpand:Z

.field private isShowModMainGame:Z

.field iv_back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0a11
    .end annotation
.end field

.field iv_cloud:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_cloud_1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_mod:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_mod_1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_mod_dot:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_mod_font:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_mod_play:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0a60
    .end annotation
.end field

.field iv_stand_font:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastExposureTime:J

.field private lastRefreshPosition:I

.field llContainer:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_mod_start:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0f13
    .end annotation
.end field

.field ll_stand_start:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0f37
    .end annotation
.end field

.field ll_vip:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private memberUrl:Ljava/lang/String;

.field private modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

.field private modGameRecomendShrinkAdapter:Lcom/join/mgps/adapter/o3;

.field private modGameRecommendExpandAdapter:Lcom/join/mgps/adapter/p3;

.field modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field modIntroductionFragment:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

.field modShopFragment:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

.field modTabFragment:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;

.field private needShowFinish:Z

.field pageExtBean:Lcom/join/mgps/dto/ExtBean;

.field private pageVersion:I

.field parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef_:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private recommendAds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field rightLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rvModGameRecommendExpand:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rvModGameRecommendShrink:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private scrolledDistance:I

.field sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a14a2
    .end annotation
.end field

.field private standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field standGameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field tabDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ModGameIndexActivity$z;",
            ">;"
        }
    .end annotation
.end field

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvRecommendAdCount:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_game_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a1971
    .end annotation
.end field

.field tv_mod_install_status:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_mod_status:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_mod_type:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a19cb
    .end annotation
.end field

.field tv_new_version:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a19db
    .end annotation
.end field

.field tv_open_vip:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a19e7
    .end annotation
.end field

.field tv_stand_new_version:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a1a29
    .end annotation
.end field

.field tv_stand_status:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_stand_type:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a1a2b
    .end annotation
.end field

.field tv_text_5:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private uid:I

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tasks:Ljava/util/Map;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->gameStartPage:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogType:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isPause:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->needShowFinish:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isModUpdate:Z

    .line 40
    .line 41
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$k;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$k;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->autoShrinkRunnable:Ljava/lang/Runnable;

    .line 47
    .line 48
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$r;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$r;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->exposureRunnable:Ljava/lang/Runnable;

    .line 54
    .line 55
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->lastRefreshPosition:I

    .line 56
    .line 57
    const-wide/16 v1, 0x0

    .line 58
    .line 59
    iput-wide v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->clickTime:J

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasShowPromptDialog:Z

    .line 62
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 71
    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendToggle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isExpand:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/ModGameIndexActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/ModGameIndexActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->lastExposureTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1102(Lcom/join/mgps/activity/ModGameIndexActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->lastExposureTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1200()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tasks:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenModGameAfterCheckAbi(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1700(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startVmGameV2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1800(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/join/mgps/dialog/n1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->domainDialog:Lcom/join/mgps/dialog/n1;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkShowCopyDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2200(Lcom/join/mgps/activity/ModGameIndexActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2202(Lcom/join/mgps/activity/ModGameIndexActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2300(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenModGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2400(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenStandGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/mgps/dto/CollectionBeanSub;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->sendExposurePoint(Lcom/join/mgps/dto/CollectionBeanSub;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->exposure()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/ModGameIndexActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->refreshRecomAdsSelected(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/ModGameIndexActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasDragged:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$602(Lcom/join/mgps/activity/ModGameIndexActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasDragged:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/ModGameIndexActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->scrolledDistance:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lcom/join/mgps/activity/ModGameIndexActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->scrolledDistance:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$712(Lcom/join/mgps/activity/ModGameIndexActivity;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->scrolledDistance:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->scrolledDistance:I

    .line 5
    .line 6
    return v0
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/ModGameIndexActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/ModGameIndexActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 2
    .line 3
    return p0
.end method

.method private checkModUpdate()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isModUpdate:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 5
    .line 6
    if-eqz v1, :cond_9

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-eqz v1, :cond_9

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    if-eqz v2, :cond_9

    .line 33
    .line 34
    :try_start_0
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_8

    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x5

    .line 59
    if-ne v2, v3, :cond_8

    .line 60
    .line 61
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/16 v2, 0x2a

    .line 84
    .line 85
    const/16 v4, 0x9

    .line 86
    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v1, v5}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const/4 v5, 0x1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-class v7, Lcom/join/mgps/dto/ModInfoBean;

    .line 115
    .line 116
    invoke-virtual {v6, v1, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/join/mgps/dto/ModInfoBean;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-ge v1, v6, :cond_1

    .line 137
    .line 138
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-ne v1, v3, :cond_1

    .line 145
    .line 146
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 149
    .line 150
    .line 151
    iput-boolean v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isModUpdate:Z

    .line 152
    .line 153
    :cond_1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 158
    .line 159
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v1, v6}, Lcom/join/mgps/va/overmind/i;->u(Ljava/lang/String;)Ld7/a;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v1, :cond_4

    .line 168
    .line 169
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 170
    .line 171
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-eqz v6, :cond_4

    .line 180
    .line 181
    iget v1, v1, Ld7/a;->k:I

    .line 182
    .line 183
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 184
    .line 185
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-ge v1, v6, :cond_4

    .line 194
    .line 195
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-ne v1, v3, :cond_4

    .line 202
    .line 203
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_state()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-ne v1, v5, :cond_2

    .line 210
    .line 211
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 212
    .line 213
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 224
    .line 225
    const/16 v3, 0xb

    .line 226
    .line 227
    invoke-virtual {v1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 228
    .line 229
    .line 230
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    const/16 v3, 0x8

    .line 237
    .line 238
    if-eq v1, v4, :cond_6

    .line 239
    .line 240
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-ne v1, v2, :cond_5

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_6
    :goto_2
    sget-object v1, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 256
    .line 257
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/k;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-static {v1}, Lcom/join/mgps/va/overmind/c;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_7

    .line 276
    .line 277
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 278
    .line 279
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 284
    .line 285
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 290
    .line 291
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    .line 302
    .line 303
    :cond_9
    :goto_3
    return-void
.end method

.method private checkShowCopyDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->Q4(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "/Android/data"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v1, 0x1d

    .line 70
    .line 71
    if-le v0, v1, :cond_0

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialogError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialog:Landroid/app/Dialog;

    .line 78
    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "\u5b58\u6863\u62f7\u8d1d\u4e2d"

    .line 86
    .line 87
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/g0;->y(Landroid/content/Context;Ljava/lang/String;)Lcom/join/mgps/dialog/f1;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialog:Landroid/app/Dialog;

    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialog:Landroid/app/Dialog;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->copyArchive(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "/data/data"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialogError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_0
    return-void
.end method

.method private checkStandUpdate()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standGameId:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standGameId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    if-eqz v0, :cond_8

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    if-eqz v1, :cond_8

    .line 56
    .line 57
    :try_start_0
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/16 v2, 0x2a

    .line 74
    .line 75
    const/16 v3, 0x9

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v4, 0x5

    .line 86
    if-ne v1, v4, :cond_4

    .line 87
    .line 88
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-ge v0, v1, :cond_5

    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-ne v0, v4, :cond_5

    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_state()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    const/4 v1, 0x1

    .line 169
    if-ne v0, v1, :cond_2

    .line 170
    .line 171
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 172
    .line 173
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 184
    .line 185
    const/16 v1, 0xb

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 198
    .line 199
    .line 200
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eq v0, v3, :cond_7

    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-ne v0, v2, :cond_6

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 218
    .line 219
    const/16 v1, 0x8

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 226
    .line 227
    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    .line 235
    .line 236
    :cond_8
    :goto_3
    return-void
.end method

.method private exposure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->exposureRunnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private initRecommendList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendShrink:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/adapter/o3;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/o3;-><init>(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameRecomendShrinkAdapter:Lcom/join/mgps/adapter/o3;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendShrink:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameRecomendShrinkAdapter:Lcom/join/mgps/adapter/o3;

    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/activity/q7;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/q7;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendExpand:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/join/mgps/adapter/p3;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/p3;-><init>(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameRecommendExpandAdapter:Lcom/join/mgps/adapter/p3;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendExpand:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendExpand:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameRecommendExpandAdapter:Lcom/join/mgps/adapter/p3;

    .line 66
    .line 67
    new-instance v1, Lcom/join/mgps/activity/r7;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/r7;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameRecommendExpandAdapter:Lcom/join/mgps/adapter/p3;

    .line 76
    .line 77
    new-instance v1, Lcom/join/mgps/activity/s7;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/s7;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/join/mgps/base/BaseQuickAdapter$h;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendExpand:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$s;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$s;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendShrink:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    .line 97
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$t;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$t;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Landroid/view/GestureDetector;

    .line 106
    .line 107
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$u;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$u;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/MyTouchFrameLayout;->setDetector(Landroid/view/GestureDetector;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendShrink:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/MyTouchFrameLayout;->setDetector(Landroid/view/GestureDetector;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private isModMainGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-class v2, Lcom/join/mgps/dto/ModInfoBean;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/dto/ModInfoBean;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    return p1

    .line 48
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public static synthetic j(Lcom/join/mgps/activity/ModGameIndexActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->lambda$showTabUi$5(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->lambda$onlyOpenModGameAfterCheckAbi$4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->lambda$initRecommendList$2(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$afterViews$0(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;->getShowdownloadModDialog()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private synthetic lambda$initRecommendList$1(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->setRecommendRvsPositionEqual(II)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendToggle()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/papa/sim/statistic/Event;->listClickIconStatus:Lcom/papa/sim/statistic/Event;

    .line 13
    .line 14
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x2

    .line 21
    iget v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameClickIconModelClick:Lcom/papa/sim/statistic/Event;

    .line 33
    .line 34
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    add-int/lit8 v5, p3, 0x1

    .line 53
    .line 54
    iget v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 55
    .line 56
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/t;->B1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->refreshRecomAdsSelected(I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private synthetic lambda$initRecommendList$2(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoDetail:Lcom/papa/sim/statistic/Event;

    .line 18
    .line 19
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    add-int/lit8 v5, p3, 0x1

    .line 30
    .line 31
    iget v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 32
    .line 33
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/t;->B1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;Ljava/lang/String;II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const-string v0, "148"

    .line 45
    .line 46
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    invoke-virtual {p1, p3}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, p0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method private synthetic lambda$initRecommendList$3(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getModGameId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGameId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :goto_0
    if-eqz p2, :cond_7

    .line 41
    .line 42
    const/16 v0, 0x65

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x94

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    const/16 v1, 0xb

    .line 59
    .line 60
    if-eq v0, v1, :cond_5

    .line 61
    .line 62
    const/16 v1, 0xd

    .line 63
    .line 64
    if-eq v0, v1, :cond_4

    .line 65
    .line 66
    const/4 v1, 0x2

    .line 67
    if-eq v0, v1, :cond_3

    .line 68
    .line 69
    const/4 v1, 0x3

    .line 70
    if-eq v0, v1, :cond_2

    .line 71
    .line 72
    const/4 v1, 0x5

    .line 73
    if-eq v0, v1, :cond_1

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    if-eq v0, v1, :cond_2

    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    if-eq v0, v1, :cond_6

    .line 80
    .line 81
    const/16 v1, 0x2a

    .line 82
    .line 83
    if-eq v0, v1, :cond_1

    .line 84
    .line 85
    const/16 p2, 0x2b

    .line 86
    .line 87
    if-eq v0, p2, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 91
    .line 92
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 97
    .line 98
    invoke-static {p2, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-static {p2}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 106
    .line 107
    sget-object p3, Lcom/papa/sim/statistic/Event;->downloadStop:Lcom/papa/sim/statistic/Event;

    .line 108
    .line 109
    invoke-static {p1, p2, p3}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 114
    .line 115
    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 120
    .line 121
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 126
    .line 127
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->b1(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 131
    .line 132
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameClickBigModelGet:Lcom/papa/sim/statistic/Event;

    .line 137
    .line 138
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    add-int/lit8 v5, p3, 0x1

    .line 149
    .line 150
    iget v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 151
    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/t;->B1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;Ljava/lang/String;II)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_7
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 157
    .line 158
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->b1(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 162
    .line 163
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameClickBigModelGet:Lcom/papa/sim/statistic/Event;

    .line 168
    .line 169
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    add-int/lit8 v5, p3, 0x1

    .line 180
    .line 181
    iget v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 182
    .line 183
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/t;->B1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    :goto_1
    return-void
.end method

.method private synthetic lambda$onlyOpenModGameAfterCheckAbi$4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasShowPromptDialog:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->isIncompatible()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameModInfoBean;->isIncompatible()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showAndroidVersionIncompatiblePrompt(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startVmGameV2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method private synthetic lambda$showTabUi$5(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x30

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private synthetic lambda$startDownload$6(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/pref/PrefDef_;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->mod_enhance_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-direct {p0, p0, p2, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startGameADCheck(Landroid/content/Context;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public static synthetic m(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->lambda$initRecommendList$1(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->lambda$afterViews$0(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;)V

    return-void
.end method

.method public static synthetic o(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/pref/PrefDef_;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->lambda$startDownload$6(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/pref/PrefDef_;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private onlyOpenModGame()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCpu_type()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget-object v2, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/join/android/app/common/utils/APKUtils$b;->z(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showCpuAbiIncompatiblePrompt(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenModGameAfterCheckAbi(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private onlyOpenModGameAfterCheckAbi(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/va/overmind/i;->h0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/ExtBean;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->launchGameIdCheckVaExtInstall()Lorg/androidannotations/api/sharedpreferences/p;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/activity/u7;

    .line 54
    .line 55
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/u7;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->h(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasShowPromptDialog:Z

    .line 66
    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->isIncompatible()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameModInfoBean;->isIncompatible()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showAndroidVersionIncompatiblePrompt(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startVmGameV2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method private onlyOpenStandGame()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standGameId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standGameId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, p0, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x1

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/join/mgps/dto/TipBean;

    .line 57
    .line 58
    const-string v6, "23"

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_0

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity$j;

    .line 100
    .line 101
    invoke-direct {v3, p0, p0, v0}, Lcom/join/mgps/activity/ModGameIndexActivity$j;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 102
    .line 103
    .line 104
    const-string v4, "ANDROID_SINGLE"

    .line 105
    .line 106
    invoke-static {p0, v5, v1, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    const/4 v6, 0x1

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    const/4 v2, 0x2

    .line 135
    const/4 v6, 0x2

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    const/4 v6, 0x0

    .line 138
    :goto_2
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->game:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-virtual/range {v3 .. v10}, Lcom/papa/sim/statistic/t;->j1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->Q4(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    const/16 v2, 0xb

    .line 222
    .line 223
    if-ne v1, v2, :cond_6

    .line 224
    .line 225
    invoke-static {v0, p0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const-string v1, "\u8bf7\u8fde\u63a5\u7f51\u7edc\u540e\u91cd\u8bd5!"

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public static synthetic p(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->lambda$initRecommendList$3(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private recommendToggle()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasDragged:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->scrolledDistance:I

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-wide v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->clickTime:J

    .line 11
    .line 12
    sub-long v3, v1, v3

    .line 13
    .line 14
    const-wide/16 v5, 0x1f4

    .line 15
    .line 16
    cmp-long v7, v3, v5

    .line 17
    .line 18
    if-gez v7, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iput-wide v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->clickTime:J

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->refreshRecomAdsSelected(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const-wide/16 v3, 0xc8

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const v6, 0x7f0713c0

    .line 37
    .line 38
    .line 39
    const-string v7, "translationX"

    .line 40
    .line 41
    const/4 v8, 0x1

    .line 42
    const-string v9, "alpha"

    .line 43
    .line 44
    const/4 v10, 0x2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->expandMask:Landroid/view/View;

    .line 48
    .line 49
    const/16 v11, 0x8

    .line 50
    .line 51
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 55
    .line 56
    new-array v11, v10, [F

    .line 57
    .line 58
    aput v5, v11, v0

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    aput v5, v11, v8

    .line 69
    .line 70
    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 75
    .line 76
    new-array v6, v10, [F

    .line 77
    .line 78
    fill-array-data v6, :array_0

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendShrink:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 86
    .line 87
    new-array v7, v10, [F

    .line 88
    .line 89
    fill-array-data v7, :array_1

    .line 90
    .line 91
    .line 92
    invoke-static {v6, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 97
    .line 98
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 111
    .line 112
    .line 113
    new-instance v2, Lcom/join/mgps/activity/ModGameIndexActivity$a;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$a;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 122
    .line 123
    .line 124
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isExpand:Z

    .line 125
    .line 126
    invoke-direct {p0, v10, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->setRecommendRvsPositionEqual(II)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->expandMask:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 141
    .line 142
    new-array v2, v10, [F

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    aput v6, v2, v0

    .line 153
    .line 154
    aput v5, v2, v8

    .line 155
    .line 156
    invoke-static {v1, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 161
    .line 162
    new-array v2, v10, [F

    .line 163
    .line 164
    fill-array-data v2, :array_2

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendShrink:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 172
    .line 173
    new-array v5, v10, [F

    .line 174
    .line 175
    fill-array-data v5, :array_3

    .line 176
    .line 177
    .line 178
    invoke-static {v2, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 183
    .line 184
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 197
    .line 198
    .line 199
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity$b;

    .line 200
    .line 201
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$b;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 208
    .line 209
    .line 210
    iput-boolean v8, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isExpand:Z

    .line 211
    .line 212
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->exposure()V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    nop

    .line 217
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private refreshRecomAdsSelected(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->lastRefreshPosition:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->lastRefreshPosition:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gt v0, p1, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ge v1, v2, :cond_3

    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 38
    .line 39
    if-ne v1, p1, :cond_2

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_1
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CollectionBeanSub;->setSelected(Z)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameRecommendExpandAdapter:Lcom/join/mgps/adapter/p3;

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_2
    return-void
.end method

.method private sendExposurePoint(Lcom/join/mgps/dto/CollectionBeanSub;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sub",
            "position",
            "isExpand"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    sget-object p3, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoWYDetail:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p3, Lcom/papa/sim/statistic/Event;->gameClickIconModelWYClick:Lcom/papa/sim/statistic/Event;

    .line 11
    .line 12
    :goto_0
    move-object v1, p3

    .line 13
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    add-int/lit8 v5, p2, 0x1

    .line 24
    .line 25
    iget v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/t;->B1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private setRecommendRvsPositionEqual(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendExpand:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendShrink:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne p1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    :goto_0
    new-instance v4, Lcom/join/mgps/activity/ModGameIndexActivity$c;

    .line 34
    .line 35
    invoke-direct {v4, p0, p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity$c;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    if-gez p2, :cond_1

    .line 39
    .line 40
    move p2, v3

    .line 41
    :cond_1
    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 42
    .line 43
    .line 44
    if-ne p1, v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void
.end method

.method private shouldShowDomainDialog()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

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
    invoke-static {v0}, Lcom/join/mgps/dto/PdAdCfgBean;->convertStr2Bean(Ljava/lang/String;)Lcom/join/mgps/dto/PdAdCfgBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/PdAdCfgBean;->canShowSingleStartUp()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-eqz v3, :cond_2

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/PdAdCfgBean;->updateSingleShowTimes()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return v1

    .line 38
    :cond_2
    return v2
.end method

.method private showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method private showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "position"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogType:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogType:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogType:I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 9
    :cond_3
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity$m;

    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$m;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/h1;->p(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/h1;->r(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$n;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/p;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$o;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/h1;->u(Lcom/join/mgps/dialog/h1$a;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/h1;->v(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/p;->show()V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    iget p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogType:I

    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    :cond_4
    return-void
.end method

.method private showDialogError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;

    invoke-direct {p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;-><init>()V

    .line 9
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$i;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 10
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    const-string v2, ""

    const-string v3, "\u7531\u4e8e\u5b89\u535311\u4ee5\u4e0a\u7cfb\u7edf\u9650\u5236\uff0c\u65e0\u6cd5\u540c\u6b65\u5b58\u6863\u81f3\u589e\u5f3a\u6a21\u5f0f\uff0c\u8bf7\u4f7f\u7528\u6807\u51c6\u6a21\u5f0f\u6e38\u73a9\u5df2\u4fdd\u5b58\u7684\u6e38\u620f\u5b58\u6863"

    const-string v4, "\u6211\u77e5\u9053\u4e86"

    const-string v5, ""

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->setDialogData(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showDialogError(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "desc"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;

    invoke-direct {p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;-><init>()V

    .line 3
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$h;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    const-string v2, ""

    const-string v4, "\u6211\u77e5\u9053\u4e86"

    const-string v5, ""

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->setDialogData(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showDomainDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "type",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->domainDialog:Lcom/join/mgps/dialog/n1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

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
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->shouldShowDomainDialog()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p3, 0x2

    .line 26
    if-ne p2, p3, :cond_2

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkShowCopyDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    new-instance v7, Lcom/join/mgps/dialog/n1;

    .line 45
    .line 46
    invoke-direct {v7, p0, v0}, Lcom/join/mgps/dialog/n1;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 47
    .line 48
    .line 49
    iput-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->domainDialog:Lcom/join/mgps/dialog/n1;

    .line 50
    .line 51
    new-instance v8, Lcom/join/mgps/activity/ModGameIndexActivity$f;

    .line 52
    .line 53
    move-object v1, v8

    .line 54
    move-object v2, p0

    .line 55
    move v3, p2

    .line 56
    move-object v4, p1

    .line 57
    move v5, p3

    .line 58
    move-object v6, v0

    .line 59
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity$f;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;ILcom/github/snowdream/android/app/downloader/DownloadTask;ILcom/join/mgps/dto/DomainInfoBean;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v8}, Lcom/join/mgps/dialog/n1;->t(Lcom/join/mgps/dialog/n1$a;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->domainDialog:Lcom/join/mgps/dialog/n1;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dialog/n1;->show()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object p2, Lcom/papa/sim/statistic/Event;->pdSingleStartDetails:Lcom/papa/sim/statistic/Event;

    .line 77
    .line 78
    new-instance p3, Lcom/papa/sim/statistic/Ext;

    .line 79
    .line 80
    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p3, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p3, v1}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method private showFinishDialog()V
    .locals 8

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$g;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$g;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 15
    .line 16
    const-string v3, ""

    .line 17
    .line 18
    const-string v4, "\u5df2\u6210\u529f\u540c\u6b65\u5b58\u6863\u81f3\u589e\u5f3a\u6a21\u5f0f"

    .line 19
    .line 20
    const-string v5, "\u6211\u77e5\u9053\u4e86"

    .line 21
    .line 22
    const-string v6, ""

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v2, v1

    .line 26
    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->setDialogData(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, ""

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private showTabUi(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modgameBean"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->setModPackageName(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->setMainGamePackageName(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setModGameArchivePathData(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v2, v4}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setInstallInExtPlug(Z)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveDatas(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/i;->S()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    sget-object v2, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v2, v4}, Lcom/join/mgps/va/overmind/k;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Lcom/join/mgps/mod/utils/PluginConfig;->getArchiveSection(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-eqz v2, :cond_2

    .line 108
    .line 109
    const-string v4, "archiveId"

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v4, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->t()V

    .line 141
    .line 142
    .line 143
    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->L()V

    .line 146
    .line 147
    .line 148
    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    new-instance v4, Lcom/join/mgps/activity/v7;

    .line 155
    .line 156
    invoke-direct {v4, v0}, Lcom/join/mgps/activity/v7;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 160
    .line 161
    .line 162
    new-instance v2, Landroid/os/Bundle;

    .line 163
    .line 164
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v4, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    const-string v6, "gameId"

    .line 177
    .line 178
    const-string v7, "\u653b\u7565"

    .line 179
    .line 180
    if-eqz v5, :cond_3

    .line 181
    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBbs_strategy_switch()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-ne v5, v3, :cond_3

    .line 191
    .line 192
    iget-object v5, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modIntroductionFragment:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    .line 193
    .line 194
    if-nez v5, :cond_3

    .line 195
    .line 196
    new-instance v5, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_;

    .line 197
    .line 198
    invoke-direct {v5}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object v5, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modIntroductionFragment:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    .line 202
    .line 203
    new-instance v5, Landroid/os/Bundle;

    .line 204
    .line 205
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 206
    .line 207
    .line 208
    iget-object v8, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v5, v6, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBbs_strategy_contribute_url()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    const-string v9, "draftUrl"

    .line 222
    .line 223
    invoke-virtual {v5, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v8, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modIntroductionFragment:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    .line 227
    .line 228
    invoke-virtual {v8, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 229
    .line 230
    .line 231
    new-instance v5, Lcom/join/mgps/adapter/h0$a;

    .line 232
    .line 233
    iget-object v8, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modIntroductionFragment:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    .line 234
    .line 235
    invoke-direct {v5, v7, v8}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    const-string v8, "\u6211\u7684\u5b58\u6863"

    .line 246
    .line 247
    const-string v9, "\u5b58\u6863\u793e\u533a"

    .line 248
    .line 249
    const-string v10, "datas"

    .line 250
    .line 251
    const-string v11, "type"

    .line 252
    .line 253
    const/4 v12, 0x0

    .line 254
    if-eqz v5, :cond_4

    .line 255
    .line 256
    new-instance v5, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 257
    .line 258
    invoke-direct {v5}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;-><init>()V

    .line 259
    .line 260
    .line 261
    iput-object v5, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modShopFragment:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 262
    .line 263
    iget-object v5, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v11, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 272
    .line 273
    .line 274
    iget-object v5, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modShopFragment:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 275
    .line 276
    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 277
    .line 278
    .line 279
    new-instance v2, Lcom/join/mgps/adapter/h0$a;

    .line 280
    .line 281
    iget-object v5, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modShopFragment:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 282
    .line 283
    invoke-direct {v2, v9, v5}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 284
    .line 285
    .line 286
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    new-instance v2, Landroid/os/Bundle;

    .line 290
    .line 291
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 299
    .line 300
    .line 301
    move-result-object v13

    .line 302
    invoke-virtual {v13}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    invoke-virtual {v5, v13, v12}, Lcom/join/mgps/va/overmind/i;->h(Ljava/lang/String;I)Z

    .line 307
    .line 308
    .line 309
    iget-object v5, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v11, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 318
    .line 319
    .line 320
    new-instance v5, Lcom/join/mgps/adapter/h0$a;

    .line 321
    .line 322
    const-class v13, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    .line 323
    .line 324
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    invoke-static {v0, v13, v2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-direct {v5, v8, v2}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    .line 339
    .line 340
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 341
    .line 342
    .line 343
    iget-object v5, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const/4 v5, 0x2

    .line 349
    invoke-virtual {v2, v11, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    iget-object v6, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    if-eqz v6, :cond_5

    .line 359
    .line 360
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    iget-object v11, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v6, v11}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    iput-object v6, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 371
    .line 372
    :cond_5
    iget-object v6, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 373
    .line 374
    if-nez v6, :cond_6

    .line 375
    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    iput-object v6, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 385
    .line 386
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    const-string v11, "MOD"

    .line 391
    .line 392
    if-eqz v6, :cond_7

    .line 393
    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    if-lez v6, :cond_7

    .line 403
    .line 404
    new-instance v6, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment_;

    .line 405
    .line 406
    invoke-direct {v6}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment_;-><init>()V

    .line 407
    .line 408
    .line 409
    iput-object v6, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modTabFragment:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;

    .line 410
    .line 411
    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 412
    .line 413
    .line 414
    iget-object v6, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modTabFragment:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;

    .line 415
    .line 416
    invoke-virtual {v6, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 417
    .line 418
    .line 419
    new-instance v2, Lcom/join/mgps/adapter/h0$a;

    .line 420
    .line 421
    iget-object v6, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modTabFragment:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;

    .line 422
    .line 423
    invoke-direct {v2, v11, v6}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    :cond_7
    new-instance v2, Lcom/join/mgps/adapter/h0;

    .line 430
    .line 431
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 436
    .line 437
    .line 438
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 439
    .line 440
    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 441
    .line 442
    .line 443
    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 444
    .line 445
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 446
    .line 447
    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    if-eqz v2, :cond_8

    .line 455
    .line 456
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBbs_strategy_switch()I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-ne v2, v3, :cond_8

    .line 465
    .line 466
    const/4 v2, 0x1

    .line 467
    goto :goto_0

    .line 468
    :cond_8
    const/4 v2, 0x0

    .line 469
    :goto_0
    const/16 v6, 0x8

    .line 470
    .line 471
    const-string v10, "#FFFFFF"

    .line 472
    .line 473
    const v14, 0x7f0a084f

    .line 474
    .line 475
    .line 476
    const v15, 0x7f0d072f

    .line 477
    .line 478
    .line 479
    const v5, 0x7f080976

    .line 480
    .line 481
    .line 482
    const v3, 0x7f0812b8

    .line 483
    .line 484
    .line 485
    if-eqz v2, :cond_9

    .line 486
    .line 487
    new-instance v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 488
    .line 489
    invoke-direct {v4, v0}, Lcom/join/mgps/activity/ModGameIndexActivity$z;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 490
    .line 491
    .line 492
    iput v5, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->a:I

    .line 493
    .line 494
    iput v5, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->d:I

    .line 495
    .line 496
    iput-object v7, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 497
    .line 498
    iput v3, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->b:I

    .line 499
    .line 500
    iget-object v13, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 501
    .line 502
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 506
    .line 507
    invoke-virtual {v4, v12}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    if-eqz v4, :cond_9

    .line 512
    .line 513
    invoke-virtual {v4, v15}, Lcom/google/android/material/tabs/TabLayout$g;->u(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 517
    .line 518
    .line 519
    move-result-object v13

    .line 520
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 521
    .line 522
    .line 523
    move-result-object v13

    .line 524
    check-cast v13, Landroid/widget/ImageView;

    .line 525
    .line 526
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 527
    .line 528
    .line 529
    move-result-object v14

    .line 530
    invoke-virtual {v14, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 540
    .line 541
    .line 542
    move-result-object v13

    .line 543
    const v14, 0x7f0a10d8

    .line 544
    .line 545
    .line 546
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 547
    .line 548
    .line 549
    move-result-object v13

    .line 550
    check-cast v13, Landroid/widget/TextView;

    .line 551
    .line 552
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    move-result v14

    .line 559
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 563
    .line 564
    .line 565
    move-result-object v13

    .line 566
    const v14, 0x7f0a18cc

    .line 567
    .line 568
    .line 569
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object v13

    .line 573
    check-cast v13, Landroid/widget/TextView;

    .line 574
    .line 575
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 576
    .line 577
    .line 578
    const-string v14, "\u65b0"

    .line 579
    .line 580
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    const v13, 0x7f0a085a

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 595
    .line 596
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 597
    .line 598
    .line 599
    const-string v13, "res:///2131233132"

    .line 600
    .line 601
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 602
    .line 603
    .line 604
    move-result-object v13

    .line 605
    invoke-static {v4, v13}, Lcom/join/android/app/common/utils/l;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 606
    .line 607
    .line 608
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 609
    .line 610
    .line 611
    move-result-object v4

    .line 612
    const-string v14, "#C1D0DD"

    .line 613
    .line 614
    if-eqz v4, :cond_12

    .line 615
    .line 616
    new-instance v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 617
    .line 618
    invoke-direct {v4, v0}, Lcom/join/mgps/activity/ModGameIndexActivity$z;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 619
    .line 620
    .line 621
    const v5, 0x7f080d15

    .line 622
    .line 623
    .line 624
    iput v5, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->a:I

    .line 625
    .line 626
    const v6, 0x7f080d16

    .line 627
    .line 628
    .line 629
    iput v6, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->d:I

    .line 630
    .line 631
    const v6, 0x7f0812b9

    .line 632
    .line 633
    .line 634
    iput v6, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->b:I

    .line 635
    .line 636
    iput-object v9, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 637
    .line 638
    iget-object v7, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 639
    .line 640
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    if-eqz v2, :cond_a

    .line 644
    .line 645
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 646
    .line 647
    const/4 v7, 0x1

    .line 648
    invoke-virtual {v4, v7}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    goto :goto_1

    .line 653
    :cond_a
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 654
    .line 655
    invoke-virtual {v4, v12}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    :goto_1
    if-eqz v4, :cond_d

    .line 660
    .line 661
    invoke-virtual {v4, v15}, Lcom/google/android/material/tabs/TabLayout$g;->u(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    const v13, 0x7f0a084f

    .line 669
    .line 670
    .line 671
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 672
    .line 673
    .line 674
    move-result-object v7

    .line 675
    check-cast v7, Landroid/widget/ImageView;

    .line 676
    .line 677
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 678
    .line 679
    .line 680
    if-nez v2, :cond_b

    .line 681
    .line 682
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 683
    .line 684
    .line 685
    move-result-object v13

    .line 686
    invoke-virtual {v13, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 687
    .line 688
    .line 689
    :cond_b
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    const v4, 0x7f0a10d8

    .line 697
    .line 698
    .line 699
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    check-cast v3, Landroid/widget/TextView;

    .line 704
    .line 705
    if-eqz v2, :cond_c

    .line 706
    .line 707
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 708
    .line 709
    .line 710
    move-result v4

    .line 711
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 712
    .line 713
    .line 714
    goto :goto_2

    .line 715
    :cond_c
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 716
    .line 717
    .line 718
    move-result v4

    .line 719
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    .line 721
    .line 722
    :goto_2
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    .line 724
    .line 725
    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 726
    .line 727
    invoke-direct {v3, v0}, Lcom/join/mgps/activity/ModGameIndexActivity$z;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 728
    .line 729
    .line 730
    const v4, 0x7f081333

    .line 731
    .line 732
    .line 733
    iput v4, v3, Lcom/join/mgps/activity/ModGameIndexActivity$z;->a:I

    .line 734
    .line 735
    const v4, 0x7f081334

    .line 736
    .line 737
    .line 738
    iput v4, v3, Lcom/join/mgps/activity/ModGameIndexActivity$z;->d:I

    .line 739
    .line 740
    iput v6, v3, Lcom/join/mgps/activity/ModGameIndexActivity$z;->b:I

    .line 741
    .line 742
    iput-object v8, v3, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 743
    .line 744
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 745
    .line 746
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    :cond_d
    if-eqz v2, :cond_e

    .line 750
    .line 751
    iget-object v3, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 752
    .line 753
    const/4 v4, 0x2

    .line 754
    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 755
    .line 756
    .line 757
    move-result-object v3

    .line 758
    goto :goto_3

    .line 759
    :cond_e
    iget-object v3, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 760
    .line 761
    const/4 v4, 0x1

    .line 762
    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    :goto_3
    if-eqz v3, :cond_f

    .line 767
    .line 768
    invoke-virtual {v3, v15}, Lcom/google/android/material/tabs/TabLayout$g;->u(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 772
    .line 773
    .line 774
    move-result-object v4

    .line 775
    const v5, 0x7f0a084f

    .line 776
    .line 777
    .line 778
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    check-cast v4, Landroid/widget/ImageView;

    .line 783
    .line 784
    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 785
    .line 786
    .line 787
    const v5, 0x7f081333

    .line 788
    .line 789
    .line 790
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    const v4, 0x7f0a10d8

    .line 798
    .line 799
    .line 800
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 801
    .line 802
    .line 803
    move-result-object v3

    .line 804
    check-cast v3, Landroid/widget/TextView;

    .line 805
    .line 806
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 807
    .line 808
    .line 809
    move-result v4

    .line 810
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    .line 815
    .line 816
    :cond_f
    iget-object v3, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 817
    .line 818
    if-eqz v3, :cond_10

    .line 819
    .line 820
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    if-eqz v3, :cond_10

    .line 825
    .line 826
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    if-lez v1, :cond_10

    .line 835
    .line 836
    const/4 v7, 0x1

    .line 837
    goto :goto_4

    .line 838
    :cond_10
    const/4 v7, 0x0

    .line 839
    :goto_4
    if-eqz v7, :cond_18

    .line 840
    .line 841
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 842
    .line 843
    invoke-direct {v1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity$z;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 844
    .line 845
    .line 846
    const v3, 0x7f080d4b

    .line 847
    .line 848
    .line 849
    iput v3, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->a:I

    .line 850
    .line 851
    const v3, 0x7f080d4c

    .line 852
    .line 853
    .line 854
    iput v3, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->d:I

    .line 855
    .line 856
    iput-object v11, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 857
    .line 858
    iput v6, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->b:I

    .line 859
    .line 860
    iget-object v3, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 861
    .line 862
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    .line 864
    .line 865
    if-eqz v2, :cond_11

    .line 866
    .line 867
    iget-object v1, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 868
    .line 869
    const/4 v2, 0x3

    .line 870
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    goto :goto_5

    .line 875
    :cond_11
    iget-object v1, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 876
    .line 877
    const/4 v2, 0x2

    .line 878
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    :goto_5
    if-eqz v1, :cond_18

    .line 883
    .line 884
    invoke-virtual {v1, v15}, Lcom/google/android/material/tabs/TabLayout$g;->u(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    const v3, 0x7f0a084f

    .line 892
    .line 893
    .line 894
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    check-cast v2, Landroid/widget/ImageView;

    .line 899
    .line 900
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    .line 902
    .line 903
    const v3, 0x7f080d4b

    .line 904
    .line 905
    .line 906
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    const v2, 0x7f0a10d8

    .line 914
    .line 915
    .line 916
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    check-cast v1, Landroid/widget/TextView;

    .line 921
    .line 922
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 923
    .line 924
    .line 925
    move-result v2

    .line 926
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_8

    .line 933
    .line 934
    :cond_12
    if-eqz v2, :cond_13

    .line 935
    .line 936
    new-instance v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 937
    .line 938
    invoke-direct {v4, v0}, Lcom/join/mgps/activity/ModGameIndexActivity$z;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 939
    .line 940
    .line 941
    iput v5, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->a:I

    .line 942
    .line 943
    iput v5, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->d:I

    .line 944
    .line 945
    iput-object v7, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 946
    .line 947
    iput v3, v4, Lcom/join/mgps/activity/ModGameIndexActivity$z;->b:I

    .line 948
    .line 949
    iget-object v8, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 950
    .line 951
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 955
    .line 956
    invoke-virtual {v4, v12}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 957
    .line 958
    .line 959
    move-result-object v4

    .line 960
    if-eqz v4, :cond_13

    .line 961
    .line 962
    invoke-virtual {v4, v15}, Lcom/google/android/material/tabs/TabLayout$g;->u(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 966
    .line 967
    .line 968
    move-result-object v8

    .line 969
    const v9, 0x7f0a084f

    .line 970
    .line 971
    .line 972
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 973
    .line 974
    .line 975
    move-result-object v8

    .line 976
    check-cast v8, Landroid/widget/ImageView;

    .line 977
    .line 978
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 982
    .line 983
    .line 984
    move-result-object v6

    .line 985
    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 992
    .line 993
    .line 994
    move-result-object v5

    .line 995
    const v6, 0x7f0a10d8

    .line 996
    .line 997
    .line 998
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 999
    .line 1000
    .line 1001
    move-result-object v5

    .line 1002
    check-cast v5, Landroid/widget/TextView;

    .line 1003
    .line 1004
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1005
    .line 1006
    .line 1007
    move-result v6

    .line 1008
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v4

    .line 1018
    const v5, 0x7f0a085a

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 1026
    .line 1027
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    .line 1029
    .line 1030
    const-string v5, "res:///2131233132"

    .line 1031
    .line 1032
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v5

    .line 1036
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 1037
    .line 1038
    .line 1039
    :cond_13
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1040
    .line 1041
    if-eqz v4, :cond_14

    .line 1042
    .line 1043
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v4

    .line 1047
    if-eqz v4, :cond_14

    .line 1048
    .line 1049
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v1

    .line 1053
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1054
    .line 1055
    .line 1056
    move-result v1

    .line 1057
    if-lez v1, :cond_14

    .line 1058
    .line 1059
    const/4 v7, 0x1

    .line 1060
    goto :goto_6

    .line 1061
    :cond_14
    const/4 v7, 0x0

    .line 1062
    :goto_6
    if-eqz v7, :cond_18

    .line 1063
    .line 1064
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 1065
    .line 1066
    invoke-direct {v1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity$z;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 1067
    .line 1068
    .line 1069
    const v4, 0x7f080d4b

    .line 1070
    .line 1071
    .line 1072
    iput v4, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->a:I

    .line 1073
    .line 1074
    const v4, 0x7f080d4c

    .line 1075
    .line 1076
    .line 1077
    iput v4, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->d:I

    .line 1078
    .line 1079
    iput-object v11, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 1080
    .line 1081
    iput v3, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->b:I

    .line 1082
    .line 1083
    iget-object v4, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 1084
    .line 1085
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    if-eqz v2, :cond_15

    .line 1089
    .line 1090
    iget-object v1, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 1091
    .line 1092
    const/4 v4, 0x1

    .line 1093
    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    goto :goto_7

    .line 1098
    :cond_15
    const/4 v4, 0x1

    .line 1099
    iget-object v1, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 1100
    .line 1101
    invoke-virtual {v1, v12}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    :goto_7
    if-eqz v1, :cond_19

    .line 1106
    .line 1107
    invoke-virtual {v1, v15}, Lcom/google/android/material/tabs/TabLayout$g;->u(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 1108
    .line 1109
    .line 1110
    if-nez v2, :cond_16

    .line 1111
    .line 1112
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v5

    .line 1116
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1117
    .line 1118
    .line 1119
    :cond_16
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v3

    .line 1123
    const v5, 0x7f0a084f

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v3

    .line 1130
    check-cast v3, Landroid/widget/ImageView;

    .line 1131
    .line 1132
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1133
    .line 1134
    .line 1135
    const v5, 0x7f080d4b

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v3

    .line 1145
    const v5, 0x7f0a10d8

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v3

    .line 1152
    check-cast v3, Landroid/widget/TextView;

    .line 1153
    .line 1154
    iget-object v5, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 1155
    .line 1156
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v1

    .line 1164
    check-cast v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 1165
    .line 1166
    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->c:Ljava/lang/String;

    .line 1167
    .line 1168
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1169
    .line 1170
    .line 1171
    move-result v1

    .line 1172
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    .line 1177
    .line 1178
    if-eqz v2, :cond_17

    .line 1179
    .line 1180
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1181
    .line 1182
    .line 1183
    move-result v1

    .line 1184
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1185
    .line 1186
    .line 1187
    goto :goto_9

    .line 1188
    :cond_17
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1189
    .line 1190
    .line 1191
    move-result v1

    .line 1192
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1193
    .line 1194
    .line 1195
    goto :goto_9

    .line 1196
    :cond_18
    :goto_8
    const/4 v4, 0x1

    .line 1197
    :cond_19
    :goto_9
    iget-object v1, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 1198
    .line 1199
    new-instance v2, Lcom/join/mgps/activity/ModGameIndexActivity$l;

    .line 1200
    .line 1201
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/ModGameIndexActivity$l;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 1205
    .line 1206
    .line 1207
    iget-object v1, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modShopFragment:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 1208
    .line 1209
    if-eqz v1, :cond_1b

    .line 1210
    .line 1211
    iget-object v1, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1212
    .line 1213
    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modIntroductionFragment:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    .line 1214
    .line 1215
    if-nez v2, :cond_1a

    .line 1216
    .line 1217
    const/4 v3, 0x0

    .line 1218
    goto :goto_a

    .line 1219
    :cond_1a
    const/4 v3, 0x1

    .line 1220
    :goto_a
    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 1221
    .line 1222
    .line 1223
    :cond_1b
    return-void
.end method

.method private startGameADCheck(Landroid/content/Context;ILjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "type",
            "adConfig"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move/from16 v4, p2

    .line 4
    .line 5
    const-string v0, "adCount"

    .line 6
    .line 7
    const-string v2, "lastTime"

    .line 8
    .line 9
    invoke-static/range {p3 .. p3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v3, :cond_e

    .line 15
    .line 16
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-class v6, Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 21
    .line 22
    move-object/from16 v7, p3

    .line 23
    .line 24
    invoke-virtual {v3, v7, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v11, v3

    .line 29
    check-cast v11, Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 30
    .line 31
    if-eqz v11, :cond_c

    .line 32
    .line 33
    invoke-virtual {v11}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getSwitch_state()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ne v3, v5, :cond_c

    .line 38
    .line 39
    invoke-virtual {v11}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getSwitch_state()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v3, v5, :cond_a

    .line 44
    .line 45
    new-instance v14, Lcom/papa91/wrapper/UserPrefs;

    .line 46
    .line 47
    invoke-direct {v14, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/4 v6, 0x0

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    move v15, v7

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 v15, 0x0

    .line 68
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v8, ""

    .line 77
    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v14, v7}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    const-wide/16 v12, 0x0

    .line 94
    .line 95
    if-eqz v9, :cond_2

    .line 96
    .line 97
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    .line 98
    .line 99
    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_1

    .line 107
    .line 108
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v12

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v12

    .line 125
    :goto_1
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_2

    .line 130
    .line 131
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    :cond_2
    const/4 v0, 0x0

    .line 149
    :goto_2
    invoke-static {v12, v13}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_3

    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    :cond_3
    invoke-virtual {v11}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getDaily_times()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-ge v0, v2, :cond_5

    .line 161
    .line 162
    if-eqz v3, :cond_4

    .line 163
    .line 164
    invoke-static {v3}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_5

    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-gtz v2, :cond_5

    .line 175
    .line 176
    :cond_4
    const/4 v2, 0x1

    .line 177
    goto :goto_3

    .line 178
    :cond_5
    const/4 v2, 0x0

    .line 179
    :goto_3
    if-eqz v2, :cond_8

    .line 180
    .line 181
    invoke-virtual {v11}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_7

    .line 186
    .line 187
    invoke-virtual {v11}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-lez v2, :cond_7

    .line 196
    .line 197
    new-instance v2, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_6

    .line 215
    .line 216
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    check-cast v6, Lcom/join/mgps/dto/PlayCfgBean;

    .line 221
    .line 222
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_6
    invoke-static {v2}, Lcom/join/mgps/ad/p;->b(Ljava/util/List;)I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    :cond_7
    invoke-virtual {v11}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Lcom/join/mgps/dto/PlayCfgBean;

    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    add-int/2addr v0, v5

    .line 253
    new-instance v3, Lcom/join/mgps/ad/RewardAdParams;

    .line 254
    .line 255
    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getReward_time()I

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    move-object/from16 v5, p0

    .line 268
    .line 269
    iget-object v13, v5, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 270
    .line 271
    move-object v6, v3

    .line 272
    move-object v12, v13

    .line 273
    invoke-direct/range {v6 .. v13}, Lcom/join/mgps/ad/RewardAdParams;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/dto/SingleGameAdCfgBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    new-instance v8, Landroid/content/Intent;

    .line 277
    .line 278
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v2, "_RewardAdParams"

    .line 282
    .line 283
    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    new-instance v10, Lcom/join/mgps/activity/ModGameIndexActivity$q;

    .line 291
    .line 292
    move-object v2, v10

    .line 293
    move-object/from16 v3, p0

    .line 294
    .line 295
    move/from16 v4, p2

    .line 296
    .line 297
    move-object v5, v14

    .line 298
    move v6, v15

    .line 299
    move v7, v0

    .line 300
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/ModGameIndexActivity$q;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;ILcom/papa91/wrapper/UserPrefs;II)V

    .line 301
    .line 302
    .line 303
    const-class v0, Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 304
    .line 305
    invoke-virtual {v9, v1, v0, v8, v10}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_8
    if-ne v4, v5, :cond_9

    .line 310
    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenModGame()V

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenStandGame()V

    .line 316
    .line 317
    .line 318
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v14, v1, v0}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    .line 334
    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_a
    if-ne v4, v5, :cond_b

    .line 338
    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenModGame()V

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenStandGame()V

    .line 344
    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_c
    if-ne v4, v5, :cond_d

    .line 348
    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenModGame()V

    .line 350
    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenStandGame()V

    .line 354
    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_e
    if-ne v4, v5, :cond_f

    .line 358
    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenModGame()V

    .line 360
    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenStandGame()V

    .line 364
    .line 365
    .line 366
    :goto_6
    return-void
.end method

.method private startVmGameV2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasShowPromptDialog:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getArchiveData()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "\u5f53\u524d\u6b63\u5728\u4f7f\u7528 "

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " \u7684\u5b58\u6863"

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_9

    .line 80
    .line 81
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-class v3, Lcom/join/mgps/dto/ModInfoBean;

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/join/mgps/dto/ModInfoBean;

    .line 96
    .line 97
    new-instance v2, Lcom/join/mgps/mod/bean/ModMeta;

    .line 98
    .line 99
    invoke-direct {v2}, Lcom/join/mgps/mod/bean/ModMeta;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Lcom/join/mgps/mod/bean/ModMeta;->setPackageName(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Lcom/join/mgps/mod/bean/ModMeta;->setModPath(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 117
    .line 118
    const-string v4, "0"

    .line 119
    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v5, "1"

    .line 127
    .line 128
    if-nez v3, :cond_1

    .line 129
    .line 130
    move-object v3, v4

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    move-object v3, v5

    .line 133
    :goto_0
    invoke-virtual {v2, v3}, Lcom/join/mgps/mod/bean/ModMeta;->setGoldFingerSwitch(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    if-nez v3, :cond_2

    .line 143
    .line 144
    move-object v5, v4

    .line 145
    :cond_2
    invoke-virtual {v2, v5}, Lcom/join/mgps/mod/bean/ModMeta;->setArchiveCloudSwitch(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-nez v3, :cond_3

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBbs_strategy_switch()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    :goto_1
    invoke-virtual {v2, v4}, Lcom/join/mgps/mod/bean/ModMeta;->setIntroductionSwitch(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    invoke-virtual {v2, v4}, Lcom/join/mgps/mod/bean/ModMeta;->setGoldFingerSwitch(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v4}, Lcom/join/mgps/mod/bean/ModMeta;->setArchiveCloudSwitch(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v4}, Lcom/join/mgps/mod/bean/ModMeta;->setIntroductionSwitch(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    const-string v3, ""

    .line 185
    .line 186
    if-eqz v1, :cond_5

    .line 187
    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v2, v4}, Lcom/join/mgps/mod/bean/ModMeta;->setModVersion(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-virtual {v2, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setModCode(I)V

    .line 215
    .line 216
    .line 217
    :cond_5
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v2, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setTypeId(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v2, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setGameId(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setModType(I)V

    .line 232
    .line 233
    .line 234
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 235
    .line 236
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 241
    .line 242
    invoke-virtual {v1, v4}, Lcom/join/android/app/common/utils/q;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v2, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setAndroidId(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v1, "wufun"

    .line 250
    .line 251
    invoke-virtual {v2, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setPlatform(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setPackage_type(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v2, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setTypeId(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 265
    .line 266
    if-eqz v1, :cond_6

    .line 267
    .line 268
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    if-eqz v1, :cond_6

    .line 273
    .line 274
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    :cond_6
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/join/mgps/va/overmind/i;->b0(Landroid/content/Context;Lcom/join/mgps/mod/bean/ModMeta;ILjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    const/4 v2, 0x1

    .line 300
    if-eqz v1, :cond_7

    .line 301
    .line 302
    const/4 v6, 0x1

    .line 303
    goto :goto_3

    .line 304
    :cond_7
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_8

    .line 309
    .line 310
    const/4 v0, 0x2

    .line 311
    const/4 v6, 0x2

    .line 312
    goto :goto_3

    .line 313
    :cond_8
    const/4 v6, 0x0

    .line 314
    :goto_3
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 343
    .line 344
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->game:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    invoke-virtual/range {v3 .. v10}, Lcom/papa/sim/statistic/t;->j1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->Q4(Landroid/content/Context;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    return v2

    .line 393
    :cond_9
    return v0
.end method

.method private updateRecommendDatas(Lcom/join/mgps/event/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ge p1, v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getModGameId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGameId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_1
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameRecommendExpandAdapter:Lcom/join/mgps/adapter/p3;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 55
    .line 56
    .line 57
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method


# virtual methods
.method BgExpand()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0204
        }
    .end annotation

    return-void
.end method

.method ExpandMask()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a05bd
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendToggle()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/papa/sim/statistic/Event;->listClickBigPicStaus:Lcom/papa/sim/statistic/Event;

    .line 9
    .line 10
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x2

    .line 17
    iget v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method RecommendToggleExpand()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0264
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->setRecommendRvsPositionEqual(II)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendToggle()V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lcom/papa/sim/statistic/Event;->listClickIconStatus:Lcom/papa/sim/statistic/Event;

    .line 14
    .line 15
    iget v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x1

    .line 22
    iget v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 23
    .line 24
    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method RecommendToggleShrink()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0265
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendToggle()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/papa/sim/statistic/Event;->listClickBigPicStaus:Lcom/papa/sim/statistic/Event;

    .line 9
    .line 10
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x1

    .line 17
    iget v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "112"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "101"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getLocation()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "cld_"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/t2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v0, v1, v2, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 30
    .line 31
    .line 32
    const-class v1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getEvent()Lcom/join/kotlin/domain/common/SingleLiveEvent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/join/mgps/activity/t7;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/t7;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0, v1}, Lcom/join/kotlin/domain/common/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setParentExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->initRecommendList()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getDetialData()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getRecommendAd()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-class v2, Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 100
    .line 101
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 106
    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudGameConfigBean;->getFree_time()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-lez v1, :cond_0

    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_text_5:Landroid/widget/TextView;

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_text_5:Landroid/widget/TextView;

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v3, "\u6bcf\u65e5\u514d\u8d39\u7545\u73a9"

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudGameConfigBean;->getFree_time()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    div-int/lit8 v0, v0, 0x3c

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, "\u5206\u949f"

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_text_5:Landroid/widget/TextView;

    .line 156
    .line 157
    const/16 v1, 0x8

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateVipStateUI()V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method checkBackUpArchieve()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "backup"

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    array-length v1, v1

    .line 71
    if-lez v1, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;->getMainLocalPath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget-object v2, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/k;->k0()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "/data/data"

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    const-string v4, "/data/user/0"

    .line 94
    .line 95
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v3, "/sdcard"

    .line 100
    .line 101
    const-string v4, ""

    .line 102
    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :cond_1
    const-string v3, "/"

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const/4 v5, 0x0

    .line 118
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v3, v1}, Lcom/join/mgps/Util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const/4 v1, 0x1

    .line 164
    invoke-static {v0, v1}, Lcom/join/mgps/Util/o0;->l(Ljava/lang/String;Z)V

    .line 165
    .line 166
    .line 167
    :cond_2
    :goto_0
    return-void
.end method

.method copyArchive(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 6
    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v1, 0x17

    .line 30
    .line 31
    if-lt v0, v1, :cond_2

    .line 32
    .line 33
    const-string v1, "android.permission-group.STORAGE"

    .line 34
    .line 35
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const/16 p1, 0x1e

    .line 42
    .line 43
    if-ge v0, p1, :cond_1

    .line 44
    .line 45
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 46
    .line 47
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 48
    .line 49
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x7

    .line 54
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :cond_2
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->S()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    sget-object v0, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/k;->k0()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v2, Ljava/io/File;

    .line 147
    .line 148
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_3

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-eqz v3, :cond_3

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    array-length v2, v2

    .line 168
    if-lez v2, :cond_3

    .line 169
    .line 170
    :try_start_0
    invoke-static {v1, v0}, Lcom/join/mgps/Util/o3;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :goto_0
    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->copyFinish(ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_3
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->copyFinish(ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    :goto_1
    return-void

    .line 188
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialog:Landroid/app/Dialog;

    .line 189
    .line 190
    if-eqz v0, :cond_6

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_6

    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialog:Landroid/app/Dialog;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 201
    .line 202
    .line 203
    :cond_6
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialogError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method copyData(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/join/mgps/Util/z;->r:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    new-instance v1, Ljava/io/File;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const/4 v5, 0x1

    .line 66
    invoke-virtual {v4, v5}, Lcom/join/mgps/va/overmind/i;->s(Z)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v4, "data"

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_0

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 105
    .line 106
    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {p1, v0}, Lcom/join/mgps/Util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_1

    .line 121
    :catch_0
    move-exception p1

    .line 122
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->disimissDialog()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->disimissDialog()V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method copyFinish(ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hasArchive",
            "downloadTask"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialog:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialog:Landroid/app/Dialog;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isPause:Z

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->needShowFinish:Z

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showFinishDialog()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->needShowFinish:Z

    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method disimissDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogloding:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogloding:Landroid/app/Dialog;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method getDetialData()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/dto/RequestModGameArgs;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModGameArgs;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModGameArgs;->setUid(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestModGameArgs;->setUserToken(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestModGameArgs;->setGameId(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, "_"

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestModGameArgs;->setGameVersion(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v0, v3}, Lcom/join/mgps/va/overmind/k;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/join/mgps/va/overmind/c;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_2

    .line 130
    .line 131
    const/4 v0, 0x1

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    const/4 v0, 0x0

    .line 134
    :goto_0
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestModGameArgs;->setIs32Mod(Z)V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, v1}, Lcom/join/mgps/rpc/impl/i;->k0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    const/16 v2, 0xc8

    .line 158
    .line 159
    if-ne v1, v2, :cond_4

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/join/mgps/dto/ModGameDetailBean;

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateUi(Lcom/join/mgps/dto/ModGameDetailBean;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showLodingFailed()V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showLodingFailed()V

    .line 184
    .line 185
    .line 186
    :goto_1
    return-void
.end method

.method getModGameArchievePath(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modGameIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/join/mgps/dto/ArchievePathMultiArgs;

    .line 29
    .line 30
    invoke-direct {v3}, Lcom/join/mgps/dto/ArchievePathMultiArgs;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ArchievePathMultiArgs;->setUid(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/ArchievePathMultiArgs;->setDownloadedGameIdList(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Lcom/join/mgps/rpc/impl/i;->k(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/16 v2, 0xc8

    .line 72
    .line 73
    if-ne v1, v2, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/join/mgps/dto/ArchievePathMultiBean;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchievePathMultiBean;->getCloud_archive_path_list()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/join/mgps/dto/ArchievePathMultiBean;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchievePathMultiBean;->getCloud_archive_path_list()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-lez v1, :cond_1

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/join/mgps/dto/ArchievePathMultiBean;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchievePathMultiBean;->getCloud_archive_path_list()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 125
    .line 126
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 127
    .line 128
    sget-object p1, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p1, v1}, Lcom/join/mgps/va/overmind/k;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->archivePath:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathDataV2;->getMainLocalPath()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {p1, v1, v0, v0}, Lcom/join/mgps/mod/utils/PluginConfig;->setArchivePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkBackUpArchieve()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_1
    :goto_0
    return-void
.end method

.method public getPointGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    const-string v0, ""

    .line 20
    .line 21
    return-object v0
.end method

.method getRecommendAd()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->newBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;

    .line 31
    .line 32
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->setUid(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->setGameId(J)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lq5/f;->B()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->setDownloadedGameIdList(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Lb7/i;->k1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/16 v2, 0xc8

    .line 101
    .line 102
    if-ne v1, v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/join/mgps/dto/ModGameRecommendAdBean;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameRecommendAdBean;->getRec_game_list()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const/4 v4, 0x1

    .line 129
    if-eqz v3, :cond_1

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->setFromRecomDown(Z)V

    .line 138
    .line 139
    .line 140
    const/16 v4, 0x65

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 143
    .line 144
    .line 145
    const/16 v4, 0x94

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    check-cast v1, Ljava/util/ArrayList;

    .line 152
    .line 153
    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lcom/join/mgps/dto/ModGameRecommendAdBean;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameRecommendAdBean;->isPopup()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iput-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowExpand:Z

    .line 166
    .line 167
    const-string v1, "A"

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lcom/join/mgps/dto/ModGameRecommendAdBean;

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameRecommendAdBean;->getPanel()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_2

    .line 184
    .line 185
    iput v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_2
    const-string v1, "B"

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Lcom/join/mgps/dto/ModGameRecommendAdBean;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameRecommendAdBean;->getPanel()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_3

    .line 205
    .line 206
    const/4 v0, 0x2

    .line 207
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 208
    .line 209
    :cond_3
    :goto_1
    iget v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 210
    .line 211
    add-int/2addr v0, v4

    .line 212
    iput v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showRecommendAd()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->refreshRvData()V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->hideRecommendAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->hideRecommendAd()V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->hideRecommendAd()V

    .line 234
    .line 235
    .line 236
    :goto_2
    return-void
.end method

.method public handleGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "motionEvent1"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :goto_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    :goto_1
    if-nez p1, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :goto_2
    if-nez p2, :cond_3

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    goto :goto_3

    .line 30
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    :goto_3
    sub-float v3, v1, v2

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-float/2addr p1, p2

    .line 41
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v5, "onFling: "

    .line 51
    .line 52
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, "  "

    .line 59
    .line 60
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    cmpl-float p2, p1, v0

    .line 67
    .line 68
    if-nez p2, :cond_4

    .line 69
    .line 70
    const/high16 p1, 0x42c80000    # 100.0f

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    div-float p1, v4, p1

    .line 74
    .line 75
    :goto_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/high16 p2, 0x3f800000    # 1.0f

    .line 80
    .line 81
    cmpl-float p1, p1, p2

    .line 82
    .line 83
    if-lez p1, :cond_7

    .line 84
    .line 85
    sub-float/2addr v2, v1

    .line 86
    const/high16 p1, 0x43160000    # 150.0f

    .line 87
    .line 88
    cmpl-float p2, v2, p1

    .line 89
    .line 90
    if-lez p2, :cond_5

    .line 91
    .line 92
    iget-boolean p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isExpand:Z

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendToggle()V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sget-object v1, Lcom/papa/sim/statistic/Event;->listClickBigPicStaus:Lcom/papa/sim/statistic/Event;

    .line 106
    .line 107
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const/4 v4, 0x1

    .line 114
    iget v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 115
    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    cmpl-float p1, v3, p1

    .line 121
    .line 122
    if-lez p1, :cond_6

    .line 123
    .line 124
    iget-boolean p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isExpand:Z

    .line 125
    .line 126
    if-nez p1, :cond_6

    .line 127
    .line 128
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendToggle()V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v1, Lcom/papa/sim/statistic/Event;->listClickIconStatus:Lcom/papa/sim/statistic/Event;

    .line 138
    .line 139
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const/4 v4, 0x1

    .line 146
    iget v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 147
    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_5
    const/4 p1, 0x1

    .line 152
    return p1

    .line 153
    :cond_7
    const/4 p1, 0x0

    .line 154
    return p1
.end method

.method hideNavigationBar()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->setSystemUiVisibility()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method hideRecommendAd()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendShrink:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->llContainer:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public initPreDownloadFactory()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/join/mgps/activity/ModGameIndexActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity$v;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$v;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/join/mgps/activity/ModGameIndexActivity;->listener:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 13
    .line 14
    sget-object v1, Lcom/join/mgps/activity/ModGameIndexActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onAccountChangeEvent(Lcom/join/mgps/event/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/b;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateVipStateUI()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method onBack()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a11
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method onCloudGameClick()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0379
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "cld_"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lcom/join/mgps/enums/Dtype;->CLOUD:Lcom/join/mgps/enums/Dtype;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x5

    .line 87
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-instance v4, Lcom/join/mgps/event/r;

    .line 102
    .line 103
    invoke-direct {v4, v1, v2}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 110
    .line 111
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 112
    .line 113
    .line 114
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    sget-object v3, Lcom/papa/sim/statistic/EventP$ChatId;->gameStartPage:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 145
    .line 146
    .line 147
    new-instance v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 148
    .line 149
    invoke-direct {v2, v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBbs_strategy_switch()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getGoldFingerBean()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    const/4 v4, 0x1

    .line 165
    if-eqz v3, :cond_2

    .line 166
    .line 167
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getGoldFingerBean()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_5

    .line 178
    .line 179
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    if-eqz v3, :cond_3

    .line 186
    .line 187
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 188
    .line 189
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getIs_golden_finger()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eq v3, v4, :cond_5

    .line 198
    .line 199
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    if-eqz v3, :cond_4

    .line 206
    .line 207
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-eqz v3, :cond_4

    .line 218
    .line 219
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getIs_golden_finger()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-ne v3, v4, :cond_4

    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_4
    const/4 v4, 0x0

    .line 237
    :cond_5
    :goto_0
    iput v4, v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->c:I

    .line 238
    .line 239
    iput v0, v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->d:I

    .line 240
    .line 241
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iput-object v0, v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->h:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 248
    .line 249
    invoke-static {}, Lcom/join/mgps/Util/w0;->h()Lcom/join/mgps/Util/w0;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0, p0, v2, v1}, Lcom/join/mgps/Util/w0;->q(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V

    .line 254
    .line 255
    .line 256
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    sget-object v2, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 271
    .line 272
    .line 273
    :cond_6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

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
    .locals 10
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
    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateRecommendDatas(Lcom/join/mgps/event/r;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "%"

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    if-ne v1, v4, :cond_4

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p1, v3, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 41
    .line 42
    invoke-virtual {p1, v3, v0, v1}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/h1;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v3, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 94
    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 98
    .line 99
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 100
    .line 101
    invoke-virtual {p1, v3, v0, v1}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/h1;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    return-void

    .line 138
    :cond_4
    const-string v1, "\u89e3\u538b\u5931\u8d25"

    .line 139
    .line 140
    const/4 v5, 0x3

    .line 141
    const/4 v6, 0x5

    .line 142
    if-eqz v0, :cond_14

    .line 143
    .line 144
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 145
    .line 146
    if-eqz v7, :cond_14

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    iget-object v8, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 153
    .line 154
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_14

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_13

    .line 174
    .line 175
    if-eq v7, v3, :cond_12

    .line 176
    .line 177
    if-eq v7, v4, :cond_f

    .line 178
    .line 179
    const/16 v8, 0x30

    .line 180
    .line 181
    if-eq v7, v8, :cond_9

    .line 182
    .line 183
    if-eq v7, v6, :cond_8

    .line 184
    .line 185
    const/4 v8, 0x6

    .line 186
    if-eq v7, v8, :cond_7

    .line 187
    .line 188
    packed-switch v7, :pswitch_data_0

    .line 189
    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :pswitch_0
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 194
    .line 195
    if-eqz v7, :cond_5

    .line 196
    .line 197
    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_5

    .line 202
    .line 203
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 204
    .line 205
    invoke-virtual {v7}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 206
    .line 207
    .line 208
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {v7, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 216
    .line 217
    invoke-virtual {p0, v7}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :pswitch_1
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 223
    .line 224
    if-eqz v7, :cond_6

    .line 225
    .line 226
    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-eqz v7, :cond_6

    .line 231
    .line 232
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 233
    .line 234
    invoke-virtual {v7}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 235
    .line 236
    .line 237
    :cond_6
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 238
    .line 239
    invoke-virtual {p0, v7}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :pswitch_2
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 245
    .line 246
    if-eqz v7, :cond_14

    .line 247
    .line 248
    iget-boolean v8, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 249
    .line 250
    iget-boolean v9, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 251
    .line 252
    invoke-virtual {v7, v5, v8, v9}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 253
    .line 254
    .line 255
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 256
    .line 257
    iget-object v8, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 258
    .line 259
    invoke-virtual {v7, v8}, Lcom/join/mgps/dialog/h1;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :cond_7
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 265
    .line 266
    if-eqz v7, :cond_14

    .line 267
    .line 268
    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-eqz v7, :cond_14

    .line 273
    .line 274
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 275
    .line 276
    invoke-virtual {v7}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getDetialData()V

    .line 282
    .line 283
    .line 284
    :cond_9
    :pswitch_3
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 285
    .line 286
    if-eqz v7, :cond_a

    .line 287
    .line 288
    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-eqz v7, :cond_a

    .line 293
    .line 294
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 295
    .line 296
    invoke-virtual {v7}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 297
    .line 298
    .line 299
    :cond_a
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkModUpdate()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-ne v7, v6, :cond_b

    .line 307
    .line 308
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 309
    .line 310
    invoke-direct {p0, v7}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkShowCopyDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 311
    .line 312
    .line 313
    :cond_b
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 314
    .line 315
    invoke-virtual {p0, v7}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    if-eqz v7, :cond_e

    .line 323
    .line 324
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 325
    .line 326
    if-eqz v7, :cond_e

    .line 327
    .line 328
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    if-ne v7, v6, :cond_e

    .line 333
    .line 334
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogloding:Landroid/app/Dialog;

    .line 335
    .line 336
    if-nez v7, :cond_c

    .line 337
    .line 338
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    invoke-virtual {v7, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    const-string v8, "\u62f7\u8d1d\u4e2d\u3002\u3002\u3002"

    .line 347
    .line 348
    invoke-virtual {v7, v8}, Lcom/join/mgps/dialog/f1;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    iput-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogloding:Landroid/app/Dialog;

    .line 353
    .line 354
    goto :goto_0

    .line 355
    :cond_c
    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-eqz v7, :cond_d

    .line 360
    .line 361
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogloding:Landroid/app/Dialog;

    .line 362
    .line 363
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 364
    .line 365
    .line 366
    :cond_d
    :goto_0
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->dialogloding:Landroid/app/Dialog;

    .line 367
    .line 368
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->copyData(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 372
    .line 373
    .line 374
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateInstallStatus()V

    .line 375
    .line 376
    .line 377
    goto :goto_1

    .line 378
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 379
    .line 380
    if-eqz p1, :cond_11

    .line 381
    .line 382
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    if-eqz p1, :cond_11

    .line 387
    .line 388
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 389
    .line 390
    if-eqz p1, :cond_11

    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 397
    .line 398
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    if-eqz p1, :cond_11

    .line 407
    .line 408
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 409
    .line 410
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 411
    .line 412
    .line 413
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 414
    .line 415
    if-eqz p1, :cond_10

    .line 416
    .line 417
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 418
    .line 419
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 420
    .line 421
    invoke-virtual {p1, v3, v0, v1}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 422
    .line 423
    .line 424
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 425
    .line 426
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 427
    .line 428
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/h1;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 429
    .line 430
    .line 431
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 432
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 439
    .line 440
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 441
    .line 442
    .line 443
    move-result-wide v3

    .line 444
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    :cond_11
    return-void

    .line 458
    :cond_12
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 459
    .line 460
    iget-object v8, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 461
    .line 462
    invoke-virtual {p0, v7, v8}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 463
    .line 464
    .line 465
    goto :goto_1

    .line 466
    :cond_13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateInstallStatus()V

    .line 467
    .line 468
    .line 469
    :cond_14
    :goto_1
    if-eqz v0, :cond_1d

    .line 470
    .line 471
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 472
    .line 473
    if-eqz v7, :cond_1d

    .line 474
    .line 475
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v7

    .line 479
    iget-object v8, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 480
    .line 481
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v8

    .line 485
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-eqz v7, :cond_1d

    .line 490
    .line 491
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 492
    .line 493
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 497
    .line 498
    .line 499
    move-result p1

    .line 500
    if-eq p1, v3, :cond_1c

    .line 501
    .line 502
    if-eq p1, v6, :cond_1a

    .line 503
    .line 504
    if-eq p1, v4, :cond_17

    .line 505
    .line 506
    packed-switch p1, :pswitch_data_1

    .line 507
    .line 508
    .line 509
    goto/16 :goto_2

    .line 510
    .line 511
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 512
    .line 513
    if-eqz p1, :cond_15

    .line 514
    .line 515
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    if-eqz p1, :cond_15

    .line 520
    .line 521
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 522
    .line 523
    invoke-virtual {p1}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 524
    .line 525
    .line 526
    :cond_15
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 534
    .line 535
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 536
    .line 537
    .line 538
    goto/16 :goto_2

    .line 539
    .line 540
    :pswitch_5
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 541
    .line 542
    if-eqz p1, :cond_16

    .line 543
    .line 544
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 545
    .line 546
    .line 547
    move-result p1

    .line 548
    if-eqz p1, :cond_16

    .line 549
    .line 550
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 551
    .line 552
    invoke-virtual {p1}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 553
    .line 554
    .line 555
    :cond_16
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 556
    .line 557
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_2

    .line 561
    .line 562
    :pswitch_6
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 563
    .line 564
    if-eqz p1, :cond_1d

    .line 565
    .line 566
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 567
    .line 568
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 569
    .line 570
    invoke-virtual {p1, v5, v0, v1}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 571
    .line 572
    .line 573
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 574
    .line 575
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 576
    .line 577
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/h1;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 578
    .line 579
    .line 580
    goto :goto_2

    .line 581
    :cond_17
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 582
    .line 583
    if-eqz p1, :cond_19

    .line 584
    .line 585
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    if-eqz p1, :cond_19

    .line 590
    .line 591
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 592
    .line 593
    if-eqz p1, :cond_19

    .line 594
    .line 595
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 600
    .line 601
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result p1

    .line 609
    if-eqz p1, :cond_19

    .line 610
    .line 611
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 612
    .line 613
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 614
    .line 615
    .line 616
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 617
    .line 618
    if-eqz p1, :cond_18

    .line 619
    .line 620
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 621
    .line 622
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 623
    .line 624
    invoke-virtual {p1, v3, v0, v1}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 625
    .line 626
    .line 627
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 628
    .line 629
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 630
    .line 631
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/h1;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 632
    .line 633
    .line 634
    :cond_18
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 635
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .line 640
    .line 641
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 642
    .line 643
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 644
    .line 645
    .line 646
    move-result-wide v3

    .line 647
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    .line 659
    .line 660
    :cond_19
    return-void

    .line 661
    :cond_1a
    :pswitch_7
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 662
    .line 663
    if-eqz p1, :cond_1b

    .line 664
    .line 665
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 666
    .line 667
    .line 668
    move-result p1

    .line 669
    if-eqz p1, :cond_1b

    .line 670
    .line 671
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 672
    .line 673
    invoke-virtual {p1}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 674
    .line 675
    .line 676
    :cond_1b
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkStandUpdate()V

    .line 677
    .line 678
    .line 679
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 680
    .line 681
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateInstallStatus()V

    .line 685
    .line 686
    .line 687
    goto :goto_2

    .line 688
    :cond_1c
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 689
    .line 690
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 691
    .line 692
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 693
    .line 694
    .line 695
    :cond_1d
    :goto_2
    return-void

    .line 696
    nop

    .line 697
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onLocalArchiveUpdate(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveDatas(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
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
    const-string v0, "gameId"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "standGameId"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standGameId:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "from"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->from:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getDetialData()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getRecommendAd()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isPause:Z

    .line 6
    .line 7
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseAppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x7

    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    array-length p1, p3

    .line 9
    const/4 p2, 0x0

    .line 10
    :goto_0
    if-ge p2, p1, :cond_2

    .line 11
    .line 12
    aget v0, p3, p2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    const-string p2, "\u7531\u4e8e\u5b89\u5353\u7cfb\u7edf\u76ee\u5f55\u9650\u5236,\u65e0\u6cd5\u540c\u6b65\u5b58\u6863\u81f3\u589e\u5f3a\u6a21\u5f0f"

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialogError(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->copyArchive(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isPause:Z

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 22
    .line 23
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkModUpdate()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkStandUpdate()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateInstallStatus()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->hideNavigationBar()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->mActivity:Landroid/app/Activity;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateLoacalArchiveData()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-nez v1, :cond_3

    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/join/mgps/dialog/p;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->needShowFinish:Z

    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->needShowFinish:Z

    .line 131
    .line 132
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showFinishDialog()V

    .line 133
    .line 134
    .line 135
    :cond_4
    return-void
.end method

.method public onStartGame(Lcom/join/mgps/event/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->startStandGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->hideNavigationBar()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method openVip()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a19e7
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickLeftCloudAd:Lcom/papa/sim/statistic/Event;

    .line 6
    .line 7
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 22
    .line 23
    const-string v1, "&gameid="

    .line 24
    .line 25
    const-string v2, "?gameid="

    .line 26
    .line 27
    const-string v3, "?"

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getAd_info()Lcom/join/mgps/dto/RecomDatabean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getAd_info()Lcom/join/mgps/dto/RecomDatabean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getAd_info()Lcom/join/mgps/dto/RecomDatabean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-lez v0, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getAd_info()Lcom/join/mgps/dto/RecomDatabean;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    const/4 v5, 0x4

    .line 91
    if-ne v4, v5, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_0

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->memberUrl:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    .line 174
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    sget-object v4, Lcom/papa/sim/statistic/Event;->onclickVipMod:Lcom/papa/sim/statistic/Event;

    .line 179
    .line 180
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 181
    .line 182
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 183
    .line 184
    .line 185
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v0, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->memberUrl:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_3

    .line 201
    .line 202
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->memberUrl:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->memberUrl:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_4
    :goto_1
    return-void
.end method

.method refreshRvData()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tvRecommendAdCount:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameRecomendShrinkAdapter:Lcom/join/mgps/adapter/o3;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameRecommendExpandAdapter:Lcom/join/mgps/adapter/p3;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->recommendAds:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/p3;->setNewData(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getDetialData()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getRecommendAd()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDetialButn(Landroid/widget/TextView;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mgListviewItemInstall",
            "status",
            "size",
            "payGameAmount",
            "gameId",
            "isModMainGame"
        }
    .end annotation

    .line 1
    const/4 p3, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p4, p5}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p5

    .line 9
    const/4 v0, 0x0

    .line 10
    if-lez p5, :cond_0

    .line 11
    .line 12
    const/4 p5, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p5, 0x0

    .line 15
    :goto_0
    const/4 v1, 0x3

    .line 16
    const v2, 0x7f1202c5

    .line 17
    .line 18
    .line 19
    const v3, 0x7f1202c4

    .line 20
    .line 21
    .line 22
    if-ne p2, v1, :cond_2

    .line 23
    .line 24
    if-nez p5, :cond_2

    .line 25
    .line 26
    if-eqz p6, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 v1, 0x2

    .line 53
    if-ne p2, v1, :cond_3

    .line 54
    .line 55
    if-nez p5, :cond_3

    .line 56
    .line 57
    const-string p2, "\u5373\u5c06\u5f00\u653e"

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 v1, 0x6

    .line 67
    if-ne p2, v1, :cond_4

    .line 68
    .line 69
    if-nez p5, :cond_4

    .line 70
    .line 71
    const-string p2, "\u9884\u7ea6"

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    if-eqz p6, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    if-lez p4, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    new-array p3, p3, [Ljava/lang/Object;

    .line 109
    .line 110
    int-to-double p4, p4

    .line 111
    invoke-static {p4, p5}, Lcom/join/mgps/Util/t2;->n(D)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    aput-object p4, p3, v0

    .line 116
    .line 117
    const p4, 0x7f12037c

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p4, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_6
    :goto_2
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

.method setSystemUiVisibility()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x1706

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method showAndroidVersionIncompatiblePrompt(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "gameName"

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$e;

    .line 27
    .line 28
    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity$e;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;->setListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method showCpuAbiIncompatiblePrompt(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isPause:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$b;->o()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/16 v4, 0x60

    .line 30
    .line 31
    if-ne v2, v4, :cond_2

    .line 32
    .line 33
    const-string v3, "32\u300164"

    .line 34
    .line 35
    :cond_2
    const-string v2, "gameName"

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "\u6b64\u8bbe\u5907\u6700\u4f4e\u517c\u5bb9ARM "

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, "\u4f4d\u6e38\u620f\uff0c\u7ee7\u7eed\u542f\u52a8\u6e38\u620f\u53ef\u80fd\u4f1a\u51fa\u73b0\u95ea\u9000\u3001\u9ed1\u5c4f\u3001\u5361\u987f\u3001\u5ef6\u8fdf\u7b49\u95ee\u9898\u3002"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "desc"

    .line 67
    .line 68
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$d;

    .line 75
    .line 76
    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity$d;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;->setListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasShowPromptDialog:Z

    .line 91
    .line 92
    return-void
.end method

.method showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->isModMainGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 13
    .line 14
    .line 15
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const-string v4, "\u91cd\u65b0\u89e3\u538b"

    .line 17
    .line 18
    const-string v5, "\u89e3\u538b\u4e2d"

    .line 19
    .line 20
    const-string v6, "\u5b89\u88c5\u4e2d"

    .line 21
    .line 22
    const-string v7, "\u5f85\u5b89\u88c5"

    .line 23
    .line 24
    const/16 v8, 0xc

    .line 25
    .line 26
    const/16 v9, 0x30

    .line 27
    .line 28
    const/16 v10, 0xb

    .line 29
    .line 30
    const/16 v11, 0x2a

    .line 31
    .line 32
    const/16 v12, 0x9

    .line 33
    .line 34
    const/16 v13, 0xd

    .line 35
    .line 36
    const/16 v14, 0x8

    .line 37
    .line 38
    if-eqz v3, :cond_8

    .line 39
    .line 40
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ne v3, v13, :cond_1

    .line 45
    .line 46
    iget-object v3, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    const v13, 0x7f1202cd

    .line 53
    .line 54
    .line 55
    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    if-eq v2, v12, :cond_7

    .line 63
    .line 64
    if-ne v2, v11, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-ne v2, v10, :cond_3

    .line 68
    .line 69
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_stand_font:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_3
    if-ne v2, v9, :cond_4

    .line 92
    .line 93
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_stand_font:Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :cond_4
    if-ne v2, v8, :cond_5

    .line 116
    .line 117
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_stand_font:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_4

    .line 138
    .line 139
    :cond_5
    const/16 v3, 0xd

    .line 140
    .line 141
    if-ne v2, v3, :cond_6

    .line 142
    .line 143
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_stand_font:Landroid/widget/ImageView;

    .line 149
    .line 150
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 159
    .line 160
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :cond_6
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_stand_font:Landroid/widget/ImageView;

    .line 171
    .line 172
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_7
    :goto_1
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_stand_font:Landroid/widget/ImageView;

    .line 188
    .line 189
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_4

    .line 198
    .line 199
    :cond_8
    iget-object v3, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    const v15, 0x7f1202c4

    .line 206
    .line 207
    .line 208
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    iget-object v3, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    iget-object v3, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_dot:Landroid/widget/ImageView;

    .line 221
    .line 222
    if-eqz v3, :cond_9

    .line 223
    .line 224
    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    :cond_9
    const v3, 0x7f080302

    .line 228
    .line 229
    .line 230
    if-eq v2, v12, :cond_12

    .line 231
    .line 232
    if-ne v2, v11, :cond_a

    .line 233
    .line 234
    goto/16 :goto_3

    .line 235
    .line 236
    :cond_a
    if-ne v2, v10, :cond_b

    .line 237
    .line 238
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 239
    .line 240
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_font:Landroid/widget/ImageView;

    .line 244
    .line 245
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 249
    .line 250
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 254
    .line 255
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->cl_mod:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 259
    .line 260
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_4

    .line 264
    .line 265
    :cond_b
    if-ne v2, v9, :cond_c

    .line 266
    .line 267
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_font:Landroid/widget/ImageView;

    .line 273
    .line 274
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 278
    .line 279
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 283
    .line 284
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->cl_mod:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 288
    .line 289
    const v2, 0x7f080303

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_4

    .line 296
    .line 297
    :cond_c
    if-ne v2, v8, :cond_d

    .line 298
    .line 299
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_font:Landroid/widget/ImageView;

    .line 305
    .line 306
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 310
    .line 311
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 315
    .line 316
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    .line 318
    .line 319
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->cl_mod:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 320
    .line 321
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_d
    const/16 v5, 0xd

    .line 326
    .line 327
    if-ne v2, v5, :cond_e

    .line 328
    .line 329
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 330
    .line 331
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_font:Landroid/widget/ImageView;

    .line 335
    .line 336
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 340
    .line 341
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 345
    .line 346
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->cl_mod:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 350
    .line 351
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 352
    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_e
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 356
    .line 357
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_font:Landroid/widget/ImageView;

    .line 361
    .line 362
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 366
    .line 367
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    if-eqz p1, :cond_10

    .line 371
    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    const/4 v4, 0x5

    .line 377
    if-ne v2, v4, :cond_10

    .line 378
    .line 379
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_dot:Landroid/widget/ImageView;

    .line 380
    .line 381
    if-eqz v0, :cond_f

    .line 382
    .line 383
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    .line 385
    .line 386
    :cond_f
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 387
    .line 388
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 389
    .line 390
    .line 391
    goto :goto_2

    .line 392
    :cond_10
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_dot:Landroid/widget/ImageView;

    .line 393
    .line 394
    if-eqz v2, :cond_11

    .line 395
    .line 396
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    .line 398
    .line 399
    :cond_11
    iget-object v2, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 400
    .line 401
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 402
    .line 403
    .line 404
    :goto_2
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->cl_mod:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 405
    .line 406
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 407
    .line 408
    .line 409
    goto :goto_4

    .line 410
    :cond_12
    :goto_3
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_font:Landroid/widget/ImageView;

    .line 411
    .line 412
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    .line 414
    .line 415
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 416
    .line 417
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    iget-object v0, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->cl_mod:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 421
    .line 422
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    .line 424
    .line 425
    goto :goto_4

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 428
    .line 429
    .line 430
    :goto_4
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->loding_layout:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->loding_faile:Landroid/view/View;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rightLayout:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->loding_layout:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->loding_faile:Landroid/view/View;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rightLayout:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method showProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->isModMainGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const-string v1, "%"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_stand_font:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_status:Landroid/widget/TextView;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_font:Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_dot:Landroid/widget/ImageView;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const v1, 0x7f1202c6

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    :goto_0
    return-void
.end method

.method showRecommendAd()V
    .locals 13
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendExpand:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowExpand:Z

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v1, 0x8

    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->expandMask:Landroid/view/View;

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowExpand:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->flRecommendShrink:Lcom/join/mgps/customview/MyTouchFrameLayout;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->llContainer:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v2, 0x7f071340

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    float-to-int v1, v1

    .line 46
    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowExpand:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isExpand:Z

    .line 55
    .line 56
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Lcom/papa/sim/statistic/Event;->listShowBigPicUPPage:Lcom/papa/sim/statistic/Event;

    .line 61
    .line 62
    iget v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/4 v5, -0x1

    .line 69
    iget v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 70
    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iput-boolean v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isExpand:Z

    .line 76
    .line 77
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    sget-object v8, Lcom/papa/sim/statistic/Event;->listShowIconHotList:Lcom/papa/sim/statistic/Event;

    .line 82
    .line 83
    iget v9, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->uid:I

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    const/4 v11, -0x1

    .line 90
    iget v12, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->pageVersion:I

    .line 91
    .line 92
    invoke-virtual/range {v7 .. v12}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->exposure()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "bean"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x83

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    const/16 v1, 0x2b

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-lez v2, :cond_2

    .line 47
    .line 48
    const/16 v0, 0x2b

    .line 49
    .line 50
    :cond_2
    const/4 v2, 0x2

    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    if-eq v0, v2, :cond_3

    .line 54
    .line 55
    const/16 v3, 0xa

    .line 56
    .line 57
    if-ne v0, v3, :cond_4

    .line 58
    .line 59
    :cond_3
    invoke-static {p1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_4
    const/16 v3, 0xd

    .line 65
    .line 66
    if-ne v0, v3, :cond_5

    .line 67
    .line 68
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_5
    const/16 v3, 0x1b

    .line 74
    .line 75
    if-eq v0, v3, :cond_23

    .line 76
    .line 77
    const/4 v3, 0x3

    .line 78
    if-ne v0, v3, :cond_6

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_6
    const/4 v4, 0x5

    .line 83
    if-ne v0, v4, :cond_d

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 98
    .line 99
    .line 100
    :cond_7
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->isModMainGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_9

    .line 110
    .line 111
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, p0, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->mod_normal_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/String;

    .line 134
    .line 135
    invoke-direct {p0, p0, v2, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->startGameADCheck(Landroid/content/Context;ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :cond_8
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v1, v2}, Lcom/join/mgps/va/overmind/i;->h0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_b

    .line 174
    .line 175
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 176
    .line 177
    invoke-static {p0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/ExtBean;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_a

    .line 182
    .line 183
    return-void

    .line 184
    :cond_a
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->launchGameIdCheckVaExtInstall()Lorg/androidannotations/api/sharedpreferences/p;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Lcom/join/mgps/activity/p7;

    .line 198
    .line 199
    invoke-direct {v1, p0, p1, v0}, Lcom/join/mgps/activity/p7;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/pref/PrefDef_;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->h(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_b

    .line 207
    .line 208
    return-void

    .line 209
    :cond_b
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_c

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->mod_enhance_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/String;

    .line 232
    .line 233
    const/4 v1, 0x1

    .line 234
    invoke-direct {p0, p0, v1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->startGameADCheck(Landroid/content/Context;ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_4

    .line 238
    .line 239
    :cond_c
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_4

    .line 243
    .line 244
    :cond_d
    const/16 v2, 0xb

    .line 245
    .line 246
    if-ne v2, v0, :cond_f

    .line 247
    .line 248
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 249
    .line 250
    if-eqz v0, :cond_e

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_e

    .line 257
    .line 258
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 261
    .line 262
    .line 263
    :cond_e
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_4

    .line 267
    .line 268
    :cond_f
    const-string v2, "checkgame"

    .line 269
    .line 270
    if-eq v1, v0, :cond_1a

    .line 271
    .line 272
    const/4 v1, 0x7

    .line 273
    if-eq v1, v0, :cond_1a

    .line 274
    .line 275
    if-nez v0, :cond_10

    .line 276
    .line 277
    goto/16 :goto_2

    .line 278
    .line 279
    :cond_10
    const/16 v1, 0x30

    .line 280
    .line 281
    if-ne v1, v0, :cond_11

    .line 282
    .line 283
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const-string v1, "\u5b89\u88c5\u4e2d\uff0c\u8bf7\u7a0d\u540e..."

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_4

    .line 293
    .line 294
    :cond_11
    if-eqz p2, :cond_24

    .line 295
    .line 296
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-eqz v0, :cond_12

    .line 304
    .line 305
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_12

    .line 318
    .line 319
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialMoreBean;->getAd_pic_qq()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-virtual {v0, p0, v1, v5, v6}, Lcom/join/mgps/Util/g0;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :cond_12
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-lez v0, :cond_16

    .line 363
    .line 364
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 365
    .line 366
    if-eqz v0, :cond_13

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_13

    .line 377
    .line 378
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 383
    .line 384
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->A4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_4

    .line 392
    .line 393
    :cond_13
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_14

    .line 398
    .line 399
    goto/16 :goto_4

    .line 400
    .line 401
    :cond_14
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-ne v0, v4, :cond_15

    .line 406
    .line 407
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_4

    .line 411
    .line 412
    :cond_15
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_4

    .line 420
    .line 421
    :cond_16
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->D1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 422
    .line 423
    .line 424
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_17

    .line 429
    .line 430
    goto/16 :goto_4

    .line 431
    .line 432
    :cond_17
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-ne v0, v4, :cond_19

    .line 437
    .line 438
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_18

    .line 443
    .line 444
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-ne v0, v3, :cond_18

    .line 449
    .line 450
    invoke-static {p1, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_4

    .line 454
    .line 455
    :cond_18
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_4

    .line 459
    .line 460
    :cond_19
    invoke-static {p1, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_4

    .line 464
    .line 465
    :cond_1a
    :goto_2
    if-eqz p2, :cond_24

    .line 466
    .line 467
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    if-eqz v0, :cond_1b

    .line 475
    .line 476
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    if-eqz v0, :cond_1b

    .line 489
    .line 490
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialMoreBean;->getAd_pic_qq()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v6

    .line 518
    invoke-virtual {v0, p0, v1, v5, v6}, Lcom/join/mgps/Util/g0;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :cond_1b
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-lez v0, :cond_1f

    .line 534
    .line 535
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 536
    .line 537
    if-eqz v0, :cond_1c

    .line 538
    .line 539
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    if-eqz v0, :cond_1c

    .line 548
    .line 549
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 554
    .line 555
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->A4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    goto :goto_4

    .line 563
    :cond_1c
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-eqz v0, :cond_1d

    .line 568
    .line 569
    goto :goto_4

    .line 570
    :cond_1d
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-ne v0, v4, :cond_1e

    .line 575
    .line 576
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 577
    .line 578
    .line 579
    goto :goto_4

    .line 580
    :cond_1e
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    goto :goto_4

    .line 588
    :cond_1f
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->D1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 589
    .line 590
    .line 591
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-eqz v0, :cond_20

    .line 596
    .line 597
    goto :goto_4

    .line 598
    :cond_20
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-ne v0, v4, :cond_22

    .line 603
    .line 604
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-eqz v0, :cond_21

    .line 609
    .line 610
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-ne v0, v3, :cond_21

    .line 615
    .line 616
    invoke-static {p1, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 617
    .line 618
    .line 619
    goto :goto_4

    .line 620
    :cond_21
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 621
    .line 622
    .line 623
    goto :goto_4

    .line 624
    :cond_22
    invoke-static {p1, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 625
    .line 626
    .line 627
    goto :goto_4

    .line 628
    :cond_23
    :goto_3
    invoke-static {p1, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 629
    .line 630
    .line 631
    :cond_24
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 632
    .line 633
    .line 634
    return-void
.end method

.method startModGame()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0f13
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    return-void

    .line 69
    :cond_2
    :goto_0
    sget-object v2, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Lcom/join/mgps/va/overmind/k;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_1
    invoke-static {}, Lcom/join/android/app/common/utils/APKUtils;->m()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const/16 v4, 0x20

    .line 84
    .line 85
    if-ne v3, v4, :cond_3

    .line 86
    .line 87
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    new-instance v1, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 98
    .line 99
    invoke-direct {v1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setGameId(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v0, "\u8bf7\u6ce8\u610f"

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setTitle(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v0, "\u6b64\u6e38\u620f\u4ec5\u652f\u630164\u4f4d\u624b\u673a\uff0c\u60a8\u7684\u8bbe\u5907\u65e0\u6cd5\u6b63\u5e38\u8fd0\u884c\u6b64\u6e38\u620f"

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setContent(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setEvent(I)V

    .line 121
    .line 122
    .line 123
    const-string v0, "\u6211\u77e5\u9053\u4e86"

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setConfirm(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Landroid/content/Intent;

    .line 129
    .line 130
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v2, "_param"

    .line 134
    .line 135
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    new-instance v2, Lcom/join/mgps/activity/ModGameIndexActivity$w;

    .line 143
    .line 144
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$w;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 145
    .line 146
    .line 147
    const-class v3, Lcom/join/mgps/activity/WarningDialogActivity;

    .line 148
    .line 149
    invoke-virtual {v1, p0, v3, v0, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 156
    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    const/16 v1, 0x30

    .line 164
    .line 165
    if-ne v0, v1, :cond_4

    .line 166
    .line 167
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v1, "\u5b89\u88c5\u4e2d\uff0c\u8bf7\u7a0d\u540e..."

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 179
    .line 180
    const/4 v1, 0x3

    .line 181
    const/16 v2, 0x9

    .line 182
    .line 183
    const/4 v3, 0x2

    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v0, v4}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_5

    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_5

    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eq v0, v2, :cond_5

    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    const/16 v4, 0x2a

    .line 225
    .line 226
    if-eq v0, v4, :cond_5

    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eq v0, v3, :cond_5

    .line 235
    .line 236
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eq v0, v1, :cond_5

    .line 243
    .line 244
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 245
    .line 246
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 247
    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 254
    .line 255
    if-eqz v0, :cond_6

    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-ne v0, v2, :cond_6

    .line 262
    .line 263
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eq v0, v3, :cond_6

    .line 270
    .line 271
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eq v0, v1, :cond_6

    .line 278
    .line 279
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 280
    .line 281
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 282
    .line 283
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 287
    .line 288
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 293
    .line 294
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    const/16 v1, 0xc

    .line 299
    .line 300
    if-ne v0, v1, :cond_7

    .line 301
    .line 302
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    const-string v1, "\u89e3\u538b\u4e2d\uff0c\u8bf7\u7a0d\u540e..."

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_7
    :try_start_1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 313
    .line 314
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Ljava/lang/String;

    .line 326
    .line 327
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_8

    .line 332
    .line 333
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    const-class v2, Ljava/util/List;

    .line 338
    .line 339
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Ljava/util/List;

    .line 344
    .line 345
    sget-object v1, Lcom/MApplication;->K:Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_8

    .line 352
    .line 353
    sget-object v1, Lcom/MApplication;->K:Ljava/lang/String;

    .line 354
    .line 355
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_8

    .line 360
    .line 361
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 366
    .line 367
    .line 368
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    if-eqz v0, :cond_8

    .line 370
    .line 371
    return-void

    .line 372
    :catch_1
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 373
    .line 374
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    .line 379
    .line 380
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$x;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 381
    .line 382
    .line 383
    const-string v2, "VIRTUAL_SINGLE"

    .line 384
    .line 385
    invoke-static {p0, v3, v0, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 386
    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenModGame()V

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :cond_a
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenModGame()V

    .line 394
    .line 395
    .line 396
    :goto_3
    return-void
.end method

.method startStandGame()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0f37
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    const/16 v2, 0x9

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v0, p0, v4}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eq v0, v2, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/16 v4, 0x2a

    .line 65
    .line 66
    if-eq v0, v4, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eq v0, v3, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eq v0, v1, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 87
    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-ne v0, v2, :cond_2

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eq v0, v3, :cond_2

    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eq v0, v1, :cond_2

    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 120
    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 125
    .line 126
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_1

    .line 130
    .line 131
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/16 v1, 0xc

    .line 138
    .line 139
    if-ne v0, v1, :cond_3

    .line 140
    .line 141
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v1, "\u89e3\u538b\u4e2d,\u8bf7\u7a0d\u540e!"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 152
    .line 153
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_4

    .line 171
    .line 172
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-class v2, Ljava/util/List;

    .line 177
    .line 178
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Ljava/util/List;

    .line 183
    .line 184
    sget-object v1, Lcom/MApplication;->K:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_4

    .line 191
    .line 192
    sget-object v1, Lcom/MApplication;->K:Ljava/lang/String;

    .line 193
    .line 194
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_4

    .line 199
    .line 200
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 205
    .line 206
    .line 207
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    if-eqz v0, :cond_4

    .line 209
    .line 210
    return-void

    .line 211
    :catch_0
    nop

    .line 212
    :cond_4
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 213
    .line 214
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Ljava/lang/Boolean;

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_5

    .line 232
    .line 233
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Lcom/join/mgps/activity/ModGameIndexActivity$y;

    .line 240
    .line 241
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$y;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 242
    .line 243
    .line 244
    const-string v2, "VIRTUAL_SINGLE"

    .line 245
    .line 246
    invoke-static {p0, v3, v0, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 251
    .line 252
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 253
    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenStandGame()V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_7
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenStandGame()V

    .line 261
    .line 262
    .line 263
    :goto_1
    return-void
.end method

.method startStdGame(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.wufun.game.start.std.game"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "modStdDialog"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->startStandGame()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method startUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "bean"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialMoreBean;->getAd_pic_qq()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/join/mgps/Util/g0;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/4 v2, 0x2

    .line 75
    const/4 v3, 0x1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    if-eq v1, v3, :cond_3

    .line 79
    .line 80
    if-eq v1, v2, :cond_2

    .line 81
    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_17

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->isModMainGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/16 v4, 0x8

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    if-nez v1, :cond_a

    .line 118
    .line 119
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v1, v6}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v1, v6}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-class v7, Lcom/join/mgps/dto/ModInfoBean;

    .line 156
    .line 157
    invoke-virtual {v6, v1, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Lcom/join/mgps/dto/ModInfoBean;

    .line 162
    .line 163
    if-eqz v1, :cond_5

    .line 164
    .line 165
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 166
    .line 167
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    if-eqz v6, :cond_6

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 178
    .line 179
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-ge v1, v6, :cond_6

    .line 188
    .line 189
    :cond_5
    const/4 v1, 0x1

    .line 190
    goto :goto_0

    .line 191
    :cond_6
    const/4 v1, 0x0

    .line 192
    :goto_0
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v6, v7}, Lcom/join/mgps/va/overmind/i;->u(Ljava/lang/String;)Ld7/a;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    if-eqz v6, :cond_9

    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_9

    .line 215
    .line 216
    iget v6, v6, Ld7/a;->k:I

    .line 217
    .line 218
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-ge v6, v7, :cond_9

    .line 227
    .line 228
    if-eqz v1, :cond_7

    .line 229
    .line 230
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_state()I

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-eq v6, v3, :cond_7

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_7
    const/4 v6, 0x1

    .line 238
    goto :goto_2

    .line 239
    :cond_8
    const/4 v1, 0x0

    .line 240
    :cond_9
    :goto_1
    const/4 v6, 0x0

    .line 241
    :goto_2
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_a
    const/4 v1, 0x0

    .line 248
    const/4 v6, 0x0

    .line 249
    :goto_3
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {p1, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer_name()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-virtual {p1, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_url_remote()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-virtual {p1, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-virtual {p1, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver_name()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-virtual {p1, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_down_url()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {p1, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    if-eqz v7, :cond_b

    .line 299
    .line 300
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    invoke-virtual {v7}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    goto :goto_4

    .line 309
    :cond_b
    const/4 v7, 0x0

    .line 310
    :goto_4
    invoke-virtual {p1, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-static {v7}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    invoke-virtual {p1, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    if-eqz v6, :cond_c

    .line 331
    .line 332
    if-eqz v1, :cond_c

    .line 333
    .line 334
    invoke-virtual {p1, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTask_down_type(I)V

    .line 335
    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_c
    if-eqz v1, :cond_d

    .line 339
    .line 340
    invoke-virtual {p1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTask_down_type(I)V

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_d
    if-eqz v6, :cond_e

    .line 345
    .line 346
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTask_down_type(I)V

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_e
    invoke-virtual {p1, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTask_down_type(I)V

    .line 351
    .line 352
    .line 353
    :goto_5
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v0, p1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 361
    .line 362
    .line 363
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->isModMainGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_f

    .line 368
    .line 369
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_new_version:Landroid/widget/TextView;

    .line 370
    .line 371
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    :cond_f
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    const/4 v1, 0x5

    .line 387
    if-lez v0, :cond_13

    .line 388
    .line 389
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 390
    .line 391
    if-eqz v0, :cond_10

    .line 392
    .line 393
    const-string v2, "checkgame"

    .line 394
    .line 395
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_10

    .line 404
    .line 405
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 410
    .line 411
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/UtilsMy;->A4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_10
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_11

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_11
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-ne v0, v1, :cond_12

    .line 431
    .line 432
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 433
    .line 434
    .line 435
    goto :goto_7

    .line 436
    :cond_12
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_13
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->D1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 445
    .line 446
    .line 447
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_14

    .line 452
    .line 453
    goto :goto_7

    .line 454
    :cond_14
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 455
    .line 456
    .line 457
    move-result p2

    .line 458
    if-ne p2, v1, :cond_16

    .line 459
    .line 460
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 461
    .line 462
    .line 463
    move-result p2

    .line 464
    if-eqz p2, :cond_15

    .line 465
    .line 466
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 467
    .line 468
    .line 469
    move-result p2

    .line 470
    if-ne p2, v2, :cond_16

    .line 471
    .line 472
    :cond_15
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 473
    .line 474
    .line 475
    goto :goto_7

    .line 476
    :cond_16
    invoke-static {p1, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .line 478
    .line 479
    goto :goto_7

    .line 480
    :cond_17
    :goto_6
    return-void

    .line 481
    :catch_0
    move-exception p1

    .line 482
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 483
    .line 484
    .line 485
    :goto_7
    return-void
.end method

.method updateButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p2, :cond_23

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->isModMainGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ""

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/16 v2, 0x2b

    .line 71
    .line 72
    if-lez v1, :cond_2

    .line 73
    .line 74
    const/16 v0, 0x2b

    .line 75
    .line 76
    :cond_2
    const/16 v1, 0x9

    .line 77
    .line 78
    if-eq v0, v1, :cond_22

    .line 79
    .line 80
    const/16 v3, 0x2a

    .line 81
    .line 82
    if-ne v0, v3, :cond_3

    .line 83
    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_3
    const/16 v3, 0xc

    .line 87
    .line 88
    if-ne v0, v3, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_4
    const/16 v3, 0xd

    .line 96
    .line 97
    if-ne v0, v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_5
    const/16 v3, 0xb

    .line 105
    .line 106
    if-ne v0, v3, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_6
    const/4 v3, 0x5

    .line 114
    const/4 v4, 0x1

    .line 115
    if-ne v0, v3, :cond_7

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ModGameIndexActivity;->updatePay(Z)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :cond_7
    const/4 v3, 0x2

    .line 126
    if-ne v0, v3, :cond_9

    .line 127
    .line 128
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 132
    .line 133
    if-eqz p2, :cond_8

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_8

    .line 140
    .line 141
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 142
    .line 143
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 144
    .line 145
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 146
    .line 147
    invoke-virtual {p2, v3, v0, v1}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 151
    .line 152
    invoke-virtual {p2, p1}, Lcom/join/mgps/dialog/h1;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_6

    .line 156
    .line 157
    :cond_8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_6

    .line 161
    .line 162
    :cond_9
    const/4 v5, 0x3

    .line 163
    if-eq v0, v5, :cond_21

    .line 164
    .line 165
    const/4 v5, 0x6

    .line 166
    if-eq v0, v5, :cond_21

    .line 167
    .line 168
    const/16 v7, 0x1b

    .line 169
    .line 170
    if-ne v0, v7, :cond_a

    .line 171
    .line 172
    goto/16 :goto_4

    .line 173
    .line 174
    :cond_a
    const/16 v7, 0xa

    .line 175
    .line 176
    if-ne v0, v7, :cond_b

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 179
    .line 180
    .line 181
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 182
    .line 183
    if-eqz p2, :cond_23

    .line 184
    .line 185
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 186
    .line 187
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 188
    .line 189
    invoke-virtual {p2, v3, v0, v1}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 190
    .line 191
    .line 192
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 193
    .line 194
    invoke-virtual {p2, p1}, Lcom/join/mgps/dialog/h1;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_6

    .line 198
    .line 199
    :cond_b
    if-ne v0, v4, :cond_c

    .line 200
    .line 201
    goto/16 :goto_6

    .line 202
    .line 203
    :cond_c
    const-string v7, "\u5df2\u9884\u7ea6"

    .line 204
    .line 205
    const-string v8, "\u9884\u7ea6"

    .line 206
    .line 207
    const/4 v9, 0x0

    .line 208
    const v10, 0x7f12037c

    .line 209
    .line 210
    .line 211
    if-ne v0, v2, :cond_14

    .line 212
    .line 213
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-lez p1, :cond_e

    .line 229
    .line 230
    if-eqz v6, :cond_d

    .line 231
    .line 232
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 233
    .line 234
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    new-array v1, v4, [Ljava/lang/Object;

    .line 239
    .line 240
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    aput-object v2, v1, v9

    .line 249
    .line 250
    invoke-virtual {v0, v10, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    new-array v1, v4, [Ljava/lang/Object;

    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    aput-object v2, v1, v9

    .line 275
    .line 276
    invoke-virtual {v0, v10, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    :cond_e
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-ne p1, v4, :cond_12

    .line 288
    .line 289
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-ne p1, v3, :cond_12

    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-ne p1, v4, :cond_10

    .line 300
    .line 301
    if-eqz v6, :cond_f

    .line 302
    .line 303
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 304
    .line 305
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 310
    .line 311
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    :goto_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 327
    .line 328
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSize()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    move-object v0, p0

    .line 341
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity;->setDetialButn(Landroid/widget/TextView;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_6

    .line 345
    .line 346
    :cond_10
    if-eqz v6, :cond_11

    .line 347
    .line 348
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 349
    .line 350
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_6

    .line 354
    .line 355
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 356
    .line 357
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_6

    .line 361
    .line 362
    :cond_12
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    if-eqz v6, :cond_13

    .line 375
    .line 376
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 377
    .line 378
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSize()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    move-object v0, p0

    .line 391
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity;->setDetialButn(Landroid/widget/TextView;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_6

    .line 395
    .line 396
    :cond_13
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 397
    .line 398
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSize()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    move-object v0, p0

    .line 411
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity;->setDetialButn(Landroid/widget/TextView;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_6

    .line 415
    .line 416
    :cond_14
    const/16 v2, 0x30

    .line 417
    .line 418
    if-ne v0, v2, :cond_15

    .line 419
    .line 420
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 421
    .line 422
    .line 423
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_new_version:Landroid/widget/TextView;

    .line 424
    .line 425
    const/16 p2, 0x8

    .line 426
    .line 427
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 428
    .line 429
    .line 430
    goto/16 :goto_6

    .line 431
    .line 432
    :cond_15
    if-ne v0, v1, :cond_16

    .line 433
    .line 434
    goto/16 :goto_6

    .line 435
    .line 436
    :cond_16
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    if-lez p1, :cond_18

    .line 452
    .line 453
    if-eqz v6, :cond_17

    .line 454
    .line 455
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 456
    .line 457
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    new-array v1, v4, [Ljava/lang/Object;

    .line 462
    .line 463
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    aput-object v2, v1, v9

    .line 472
    .line 473
    invoke-virtual {v0, v10, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    goto :goto_2

    .line 481
    :cond_17
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 482
    .line 483
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    new-array v1, v4, [Ljava/lang/Object;

    .line 488
    .line 489
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    aput-object v2, v1, v9

    .line 498
    .line 499
    invoke-virtual {v0, v10, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    goto :goto_2

    .line 507
    :cond_18
    const p1, 0x7f120104

    .line 508
    .line 509
    .line 510
    if-eqz v6, :cond_19

    .line 511
    .line 512
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 513
    .line 514
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .line 524
    .line 525
    goto :goto_2

    .line 526
    :cond_19
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 527
    .line 528
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    .line 538
    .line 539
    :goto_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    if-ne p1, v4, :cond_1f

    .line 544
    .line 545
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 546
    .line 547
    .line 548
    move-result p1

    .line 549
    if-eq p1, v3, :cond_1a

    .line 550
    .line 551
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    if-ne p1, v5, :cond_1f

    .line 556
    .line 557
    :cond_1a
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    if-ne p1, v4, :cond_1d

    .line 562
    .line 563
    if-eqz v6, :cond_1b

    .line 564
    .line 565
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 566
    .line 567
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    .line 569
    .line 570
    goto :goto_3

    .line 571
    :cond_1b
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 572
    .line 573
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    .line 575
    .line 576
    :goto_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    if-eqz v6, :cond_1c

    .line 589
    .line 590
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 591
    .line 592
    const/4 v2, 0x2

    .line 593
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSize()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    move-object v0, p0

    .line 602
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity;->setDetialButn(Landroid/widget/TextView;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 603
    .line 604
    .line 605
    goto/16 :goto_6

    .line 606
    .line 607
    :cond_1c
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 608
    .line 609
    const/4 v2, 0x2

    .line 610
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSize()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v5

    .line 618
    move-object v0, p0

    .line 619
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity;->setDetialButn(Landroid/widget/TextView;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 620
    .line 621
    .line 622
    goto :goto_6

    .line 623
    :cond_1d
    if-eqz v6, :cond_1e

    .line 624
    .line 625
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 626
    .line 627
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    .line 629
    .line 630
    goto :goto_6

    .line 631
    :cond_1e
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 632
    .line 633
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .line 635
    .line 636
    goto :goto_6

    .line 637
    :cond_1f
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    move-result v4

    .line 649
    if-eqz v6, :cond_20

    .line 650
    .line 651
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    .line 652
    .line 653
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSize()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v5

    .line 665
    move-object v0, p0

    .line 666
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity;->setDetialButn(Landroid/widget/TextView;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 667
    .line 668
    .line 669
    goto :goto_6

    .line 670
    :cond_20
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    .line 671
    .line 672
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSize()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v5

    .line 684
    move-object v0, p0

    .line 685
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity;->setDetialButn(Landroid/widget/TextView;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 686
    .line 687
    .line 688
    goto :goto_6

    .line 689
    :cond_21
    :goto_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 690
    .line 691
    .line 692
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 693
    .line 694
    .line 695
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 696
    .line 697
    if-eqz p2, :cond_23

    .line 698
    .line 699
    iget-boolean v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->isShowModMainGame:Z

    .line 700
    .line 701
    iget-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 702
    .line 703
    invoke-virtual {p2, v3, v0, v1}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 704
    .line 705
    .line 706
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 707
    .line 708
    invoke-virtual {p2, p1}, Lcom/join/mgps/dialog/h1;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 709
    .line 710
    .line 711
    goto :goto_6

    .line 712
    :cond_22
    :goto_5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 713
    .line 714
    .line 715
    :cond_23
    :goto_6
    return-void
.end method

.method updateInstallStatus()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v2, v0}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x5

    .line 38
    if-eq v0, v2, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v2, 0x9

    .line 47
    .line 48
    if-eq v0, v2, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v2, 0x2a

    .line 57
    .line 58
    if-ne v0, v2, :cond_0

    .line 59
    .line 60
    :cond_2
    const/4 v0, 0x1

    .line 61
    :goto_0
    if-eqz v0, :cond_5

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_status:Landroid/widget/TextView;

    .line 64
    .line 65
    const/16 v1, 0x8

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    const-string v2, "\u5df2\u5b89\u88c5"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 82
    .line 83
    const-string v2, "#FFDDEBFF"

    .line 84
    .line 85
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_dot:Landroid/widget/ImageView;

    .line 98
    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 106
    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    const-string v2, "\u672a\u5b89\u88c5"

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 115
    .line 116
    const-string v2, "#FF9DC7FF"

    .line 117
    .line 118
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_install_status:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_dot:Landroid/widget/ImageView;

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    :cond_7
    :goto_1
    return-void
.end method

.method updateLoacalArchiveData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveDatas(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method updatePay(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "needRetry"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "checkgame"

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/x1;->c()Lcom/join/mgps/Util/x1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/join/mgps/activity/ModGameIndexActivity$p;

    .line 28
    .line 29
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity$p;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0, v1, v2}, Lcom/join/mgps/Util/x1;->b(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/x1$b;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modgameBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz p1, :cond_2b

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->loding_layout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->loding_faile:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->rightLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->viewmodle:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setGoldFingerBean(Ljava/util/List;)V

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showTabUi(Lcom/join/mgps/dto/ModGameDetailBean;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    const-string v1, "1"

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object v9, v2

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 12
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->from:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/papa/sim/statistic/t;->a1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getAd_info()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getAd_info()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_open_vip:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getAd_info()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getPic()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetialShowImageBean;

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 28
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz p1, :cond_6

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    if-eqz p1, :cond_6

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getPic()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetialShowImageBean;

    if-eqz p1, :cond_6

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 40
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz p1, :cond_7

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_game_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 42
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz p1, :cond_8

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_game_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGeneral_cfg()Lcom/join/mgps/dto/GeneralCfgBean;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/GeneralCfgBean;->getMemberUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->memberUrl:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/GeneralCfgBean;->getStrongMode()Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_mod_type:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GeneralCfgBean;->getStrongMode()Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GeneralCfgBean;->getNormalMode()Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->tv_stand_type:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GeneralCfgBean;->getNormalMode()Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 51
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_20

    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, p1, v1, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDomainDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;II)V

    goto :goto_5

    .line 56
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudGame()Z

    move-result p1

    if-nez p1, :cond_d

    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 58
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result p1

    const-string v3, ","

    if-eqz p1, :cond_19

    .line 59
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {p1, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz p1, :cond_19

    .line 60
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 61
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 62
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v5, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TipBean;

    .line 65
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 66
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v7, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    goto :goto_6

    .line 67
    :cond_f
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 68
    iget-object v6, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v7, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 69
    :cond_10
    :goto_6
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 70
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v5, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 71
    :cond_11
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v4

    if-nez v4, :cond_19

    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 72
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v4

    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getCompatible_version()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getCompatible_version()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getCompatible_version()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 76
    array-length v5, p1

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_13

    aget-object v7, p1, v6

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$a;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 78
    iput-boolean v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    goto :goto_8

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 79
    :cond_13
    :goto_8
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :cond_14
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TipBean;

    .line 80
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_15
    const/4 v4, 0x1

    goto :goto_9

    .line 81
    :cond_16
    iget-boolean p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    if-eqz p1, :cond_17

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v2, v5, :cond_18

    :cond_17
    if-eqz p1, :cond_19

    if-nez v4, :cond_19

    .line 82
    :cond_18
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTask_down_type(I)V

    .line 83
    :cond_19
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->hasShowModInstallGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v2, 0x0

    goto :goto_b

    :cond_1b
    :goto_a
    const/4 v2, 0x1

    :goto_b
    if-eqz v2, :cond_1d

    .line 87
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudGame()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameDetailBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 89
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v2, v1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDomainDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;II)V

    goto :goto_c

    .line 90
    :cond_1c
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v2, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 91
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->hasShowModInstallGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 93
    :cond_1d
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1f

    .line 94
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1e

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1e

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_1e

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1f

    .line 95
    :cond_1e
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudGame()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v1, 0x0

    :cond_1f
    if-eqz v1, :cond_24

    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_e

    .line 97
    :cond_20
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    const-string v1, "46"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 101
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 102
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v4, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    goto :goto_d

    .line 103
    :cond_22
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 104
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v4, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 105
    :cond_23
    :goto_d
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 106
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 107
    :cond_24
    :goto_e
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkModUpdate()V

    .line 108
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 109
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz p1, :cond_25

    .line 110
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standGameId:Ljava/lang/String;

    .line 111
    :cond_25
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standGameId:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 112
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standGameId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 113
    :cond_26
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_27

    .line 114
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz p1, :cond_28

    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    goto :goto_f

    .line 118
    :cond_27
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 119
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 120
    :cond_28
    :goto_f
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkStandUpdate()V

    .line 121
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz p1, :cond_29

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->standDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_29

    .line 122
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 123
    :cond_29
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->from:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startStdGame(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 125
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showDomainDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;II)V

    goto :goto_10

    .line 126
    :cond_2a
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->checkShowCopyDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 127
    :goto_10
    new-instance p1, Lcom/join/mgps/activity/ModGameIndexActivity$21;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ModGameIndexActivity$21;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->getModGameArchievePath(Ljava/util/List;)V

    .line 128
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->isMod_model()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 129
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_mod_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->isCloud_mod_model()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_cloud:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->isCloud_archive_model()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->iv_cloud_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->isCloud_archive_model()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    :cond_2b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->updateInstallStatus()V

    return-void
.end method

.method updateVipStateUI()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->ll_vip:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide v2, 0xdd861b80L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long v4, v0, v2

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->ll_vip:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->ll_vip:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

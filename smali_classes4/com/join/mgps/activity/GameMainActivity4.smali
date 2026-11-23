.class public Lcom/join/mgps/activity/GameMainActivity4;
.super Lcom/join/mgps/activity/FriendActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/i2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainActivity4$EmuOutResultReceiver;,
        Lcom/join/mgps/activity/GameMainActivity4$k;,
        Lcom/join/mgps/activity/GameMainActivity4$l;,
        Lcom/join/mgps/activity/GameMainActivity4$m;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d005f
.end annotation

.annotation build Lorg/androidannotations/annotations/Fullscreen;
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final TITLE_ACHIEVEMENT:Ljava/lang/String; = "\u6210\u5c31"

.field public static final TITLE_GOLDFINGER:Ljava/lang/String; = "\u91d1\u624b\u6307"

.field public static final TITLE_INTRODUCTION:Ljava/lang/String; = "\u653b\u7565"

.field public static final TITLE_MOMENT:Ljava/lang/String; = "\u52a8\u6001"

.field public static final TITLE_SHOP:Ljava/lang/String; = "\u5b58\u6863\u5546\u5e97"


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field private achievmentTipsDialog:Lcom/papa91/arc/dialog/AchievmentTipsDialog;

.field private adResultReceiver:Lcom/join/mgps/activity/GameMainActivity4$EmuOutResultReceiver;

.field private adapter:Lcom/join/mgps/adapter/i2;

.field areaId:I

.field battleHall:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private battleIp:Ljava/lang/String;

.field private battlePort:I

.field client:Lcom/join/mgps/rpc/k;

.field private clientIp:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentAdsIndex:I

.field private currentRvGoldFingerIndex:I

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field expandContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private expandIntroductionFragment:Lcom/join/mgps/fragment/o5;

.field private fastIp:Ljava/lang/String;

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field friendClient:Lcom/join/mgps/rpc/j;

.field friendContainer:Landroid/widget/FrameLayout;
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

.field gameImg:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameMainNewLeftGv:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private gameTagId:Ljava/lang/String;

.field private general:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field goldFingerAutoScrollRunnable:Ljava/lang/Runnable;

.field private gson:Lcom/google/gson/Gson;

.field private helper:Lcom/join/mgps/recycler/ViewPager2SlowScrollHelper;

.field private introductionFragment:Lcom/join/mgps/fragment/o5;

.field private isGBA:Z

.field private isResume:Z

.field public isVBA:Z

.field private itemBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DynamicEntranceBean;",
            ">;"
        }
    .end annotation
.end field

.field ivChoose:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ivTips:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field leftContainer:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_loading:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

.field private final mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

.field private mCreateGameCountDowner:Landroid/os/CountDownTimer;

.field private mMemberFunAdapter:Lcom/join/mgps/adapter/n3;

.field private final mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

.field mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

.field public marcketDownEnable:Z

.field public marcketPGNEnable:Z

.field mask:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field netWorkPspDialog:Lcom/join/mgps/activity/GameMainActivity4$l;

.field noDiscuss:Landroid/view/View;

.field numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

.field private pagerAdapter:Lcom/join/mgps/customview/e0;

.field playGameTimeTableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/PlayGameTimeTable;",
            ">;"
        }
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field pspBattleServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PspBattleServer;",
            ">;"
        }
    .end annotation
.end field

.field private recommendFragment:Lcom/join/mgps/fragment/c6;

.field recordRoms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation
.end field

.field roomCount:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/l;

.field rpcArchiveClient:Lcom/join/mgps/rpc/d;

.field rpcClient:Lcom/join/mgps/rpc/f;

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field private simulatorMomentChooseDialog:Lcom/join/mgps/dialog/e2;

.field private supportFragmentManager:Landroidx/fragment/app/FragmentManager;

.field tabDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/GameMainActivity4$m;",
            ">;"
        }
    .end annotation
.end field

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;",
            ">;"
        }
    .end annotation
.end field

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipFunc:Lcom/join/mgps/customview/WrapContentGridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->clientIp:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->battleIp:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->battlePort:I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->fastIp:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tabDatas:Ljava/util/List;

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->isResume:Z

    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity4$e;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity4$e;-><init>(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->goldFingerAutoScrollRunnable:Ljava/lang/Runnable;

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->general:Ljava/util/List;

    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 51
    .line 52
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity4$g;

    .line 53
    .line 54
    const-wide/16 v4, 0x2710

    .line 55
    .line 56
    const-wide/16 v6, 0x3e8

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    move-object v3, p0

    .line 60
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/GameMainActivity4$g;-><init>(Lcom/join/mgps/activity/GameMainActivity4;JJ)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mCreateGameCountDowner:Landroid/os/CountDownTimer;

    .line 64
    .line 65
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity4$h;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity4$h;-><init>(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 71
    .line 72
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity4$i;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity4$i;-><init>(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->isVBA:Z

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->marcketDownEnable:Z

    .line 83
    .line 84
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->marcketPGNEnable:Z

    .line 85
    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/GameMainActivity4;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/GameMainActivity4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/GameMainActivity4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->showToastArenaError()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/GameMainActivity4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/GameMainActivity4;->currentRvGoldFingerIndex:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$208(Lcom/join/mgps/activity/GameMainActivity4;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->currentRvGoldFingerIndex:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->currentRvGoldFingerIndex:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/GameMainActivity4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity4;->clientIp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/GameMainActivity4;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/GameMainActivity4;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/GameMainActivity4;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/GameMainActivity4;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->isActivityFinished()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/GameMainActivity4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->cancelCreateGameCountDown()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cancelCreateGameCountDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mCreateGameCountDowner:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static date2TimeStamp(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "date_str",
            "format"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-wide p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    const-wide/16 p0, 0x0

    .line 20
    .line 21
    return-wide p0
.end method

.method private gameMainNewCunDangRl()V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "1"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/t;->X0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/activity/DocumentManageActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/DocumentManageActivity_$r;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/DocumentManageActivity_$r;->a(I)Lcom/join/mgps/activity/DocumentManageActivity_$r;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/DocumentManageActivity_$r;->b(Ljava/lang/String;)Lcom/join/mgps/activity/DocumentManageActivity_$r;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private gameMainNewLocalFightRl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ApFightActivity_$q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ApFightActivity_$q;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ApFightActivity_$q;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y0(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private gameMainNewPaiWeiRl(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "onEnterQualifying"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->X(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string p1, "\u6b63\u5728\u4e0b\u8f7d\u63d2\u4ef6..."

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->hideLoadingDialog()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->o0(Landroid/content/Context;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getMax_battle_count()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->b(I)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->c(I)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method private gameTest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v0, p0, v1}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->T0(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->A0(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private getArchiveCouldArgs()Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method private hideExpandIntroduction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->expandIntroductionFragment:Lcom/join/mgps/fragment/o5;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v1, 0x7f010064

    .line 12
    .line 13
    .line 14
    const v2, 0x7f01007d

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->expandIntroductionFragment:Lcom/join/mgps/fragment/o5;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private isActivityFinished()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method private showAchievementDoneDialog()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->gson:Lcom/google/gson/Gson;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/gson/Gson;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->gson:Lcom/google/gson/Gson;

    .line 11
    .line 12
    :cond_0
    const-string v0, "Papa_Stat_SharedPreferences"

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "achievement_done"

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/google/gson/JsonElement;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivity4;->gson:Lcom/google/gson/Gson;

    .line 63
    .line 64
    const-class v6, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;

    .line 65
    .line 66
    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-lez v0, :cond_2

    .line 81
    .line 82
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity4$k;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 85
    .line 86
    invoke-direct {v0, p0, v4, v3}, Lcom/join/mgps/activity/GameMainActivity4$k;-><init>(Lcom/join/mgps/activity/GameMainActivity4;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/http/utils/PrefUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method

.method private showToastArenaError()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u91cd\u8bd5"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method private toComment(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->general:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt v0, p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/join/mgps/activity/CommentDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->general:Ljava/util/List;

    .line 31
    .line 32
    add-int/lit8 p1, p1, -0x1

    .line 33
    .line 34
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_plugin_num()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_bespeak_switch()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_is_started()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_package()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void
.end method

.method private toCommunity(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getPid()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "-1"

    .line 51
    .line 52
    const-string v3, "0"

    .line 53
    .line 54
    invoke-direct {v1, v3, p1, v2}, Lcom/join/mgps/dto/ExtBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/r0;->w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method private updateLocalAndNet(Z)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isGetData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v1, :cond_a

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->adapter:Lcom/join/mgps/adapter/i2;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/adapter/i2;->b()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v7, 0x5

    .line 35
    const/4 v8, 0x2

    .line 36
    const/16 v9, 0x31

    .line 37
    .line 38
    if-lt v1, v8, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    const/4 v11, 0x7

    .line 49
    const/16 v12, 0x30

    .line 50
    .line 51
    if-lt v10, v11, :cond_0

    .line 52
    .line 53
    const/4 v10, 0x6

    .line 54
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-ne v11, v9, :cond_1

    .line 63
    .line 64
    const/16 v11, 0x31

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/16 v10, 0x30

    .line 68
    .line 69
    :cond_1
    const/16 v11, 0x30

    .line 70
    .line 71
    :goto_0
    if-eq v9, v1, :cond_4

    .line 72
    .line 73
    if-ne v9, v10, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    if-ne v12, v1, :cond_3

    .line 77
    .line 78
    if-ne v12, v10, :cond_3

    .line 79
    .line 80
    if-ne v11, v9, :cond_3

    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->battleHall:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->roomCount:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->battleHall:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->roomCount:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->battleHall:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->roomCount:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const-string v10, "NEW"

    .line 119
    .line 120
    const-string v11, "\u6392\u4f4d\u8d5b"

    .line 121
    .line 122
    const/16 v12, 0xc

    .line 123
    .line 124
    if-le v1, v12, :cond_6

    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 127
    .line 128
    invoke-virtual {p0, p0, v1}, Lcom/join/mgps/activity/GameMainActivity4;->isSupportNetMatchPaiwei(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-ne v1, v9, :cond_6

    .line 139
    .line 140
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 141
    .line 142
    new-instance v12, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 143
    .line 144
    invoke-direct {v12, v11, v10, v5}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    const/16 v12, 0xe

    .line 155
    .line 156
    if-le v1, v12, :cond_7

    .line 157
    .line 158
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 159
    .line 160
    invoke-virtual {p0, p0, v1}, Lcom/join/mgps/activity/GameMainActivity4;->isSupportNetMatchPaiwei(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_7

    .line 165
    .line 166
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ne v1, v9, :cond_7

    .line 171
    .line 172
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 173
    .line 174
    new-instance v13, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 175
    .line 176
    invoke-direct {v13, v11, v10, v12}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-le v1, v4, :cond_8

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-ne v1, v9, :cond_8

    .line 193
    .line 194
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 195
    .line 196
    new-instance v10, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 197
    .line 198
    const-string v11, "\u7ec3\u4e60\u6a21\u5f0f"

    .line 199
    .line 200
    invoke-direct {v10, v11, v2, v7}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    const/4 v7, 0x3

    .line 211
    if-lt v1, v4, :cond_9

    .line 212
    .line 213
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-ne v1, v9, :cond_9

    .line 218
    .line 219
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 220
    .line 221
    new-instance v10, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 222
    .line 223
    const-string v11, "\u7ea6\u6218"

    .line 224
    .line 225
    invoke-direct {v10, v11, v2, v8}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-lt v1, v5, :cond_a

    .line 236
    .line 237
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-ne v9, v0, :cond_a

    .line 242
    .line 243
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 244
    .line 245
    new-instance v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 246
    .line 247
    const-string v8, "\u672c\u5730\u5bf9\u6218"

    .line 248
    .line 249
    invoke-direct {v1, v8, v2, v7}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 256
    .line 257
    if-eqz v0, :cond_18

    .line 258
    .line 259
    if-eqz p1, :cond_c

    .line 260
    .line 261
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 262
    .line 263
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->recommendFragment:Lcom/join/mgps/fragment/c6;

    .line 268
    .line 269
    if-nez v1, :cond_b

    .line 270
    .line 271
    new-instance v1, Lcom/join/mgps/fragment/c6;

    .line 272
    .line 273
    invoke-direct {v1}, Lcom/join/mgps/fragment/c6;-><init>()V

    .line 274
    .line 275
    .line 276
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->recommendFragment:Lcom/join/mgps/fragment/c6;

    .line 277
    .line 278
    new-instance v1, Landroid/os/Bundle;

    .line 279
    .line 280
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v7, "gameId"

    .line 284
    .line 285
    iget-object v8, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivity4;->recommendFragment:Lcom/join/mgps/fragment/c6;

    .line 291
    .line 292
    invoke-virtual {v7, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 293
    .line 294
    .line 295
    const v1, 0x7f0a06cb

    .line 296
    .line 297
    .line 298
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivity4;->recommendFragment:Lcom/join/mgps/fragment/c6;

    .line 299
    .line 300
    invoke-virtual {v0, v1, v7}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_b
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 305
    .line 306
    .line 307
    :goto_3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 308
    .line 309
    .line 310
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberInfo()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    if-eqz v0, :cond_d

    .line 317
    .line 318
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->vipTitle:Landroid/widget/TextView;

    .line 319
    .line 320
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 321
    .line 322
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberInfo()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getTitle()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 334
    .line 335
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberFun()Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_f

    .line 340
    .line 341
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberFun()Ljava/util/List;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mMemberFunAdapter:Lcom/join/mgps/adapter/n3;

    .line 348
    .line 349
    if-nez v1, :cond_e

    .line 350
    .line 351
    new-instance v1, Lcom/join/mgps/adapter/n3;

    .line 352
    .line 353
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 354
    .line 355
    invoke-direct {v1, p0, v7}, Lcom/join/mgps/adapter/n3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mMemberFunAdapter:Lcom/join/mgps/adapter/n3;

    .line 359
    .line 360
    :cond_e
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->vipFunc:Lcom/join/mgps/customview/WrapContentGridView;

    .line 361
    .line 362
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivity4;->mMemberFunAdapter:Lcom/join/mgps/adapter/n3;

    .line 363
    .line 364
    invoke-virtual {v1, v7}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    .line 366
    .line 367
    if-eqz v0, :cond_f

    .line 368
    .line 369
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-lez v1, :cond_f

    .line 374
    .line 375
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mMemberFunAdapter:Lcom/join/mgps/adapter/n3;

    .line 376
    .line 377
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/n3;->d(Ljava/util/List;)V

    .line 378
    .line 379
    .line 380
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mMemberFunAdapter:Lcom/join/mgps/adapter/n3;

    .line 381
    .line 382
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 383
    .line 384
    .line 385
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->noDiscuss:Landroid/view/View;

    .line 386
    .line 387
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/GameMainActivity4;->setForumVisibility(Z)V

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 394
    .line 395
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    if-eqz v0, :cond_13

    .line 400
    .line 401
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_back_ground_img()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    if-nez v7, :cond_10

    .line 410
    .line 411
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 412
    .line 413
    invoke-virtual {v7, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :cond_10
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_area_id()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->areaId:I

    .line 421
    .line 422
    if-eqz p1, :cond_13

    .line 423
    .line 424
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameTagId:Ljava/lang/String;

    .line 425
    .line 426
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    if-nez p1, :cond_11

    .line 431
    .line 432
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameTagId:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainActivity4;->getMulPostData(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :cond_11
    iget p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->areaId:I

    .line 439
    .line 440
    if-eqz p1, :cond_12

    .line 441
    .line 442
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getForumGroupIndex()V

    .line 443
    .line 444
    .line 445
    goto :goto_4

    .line 446
    :cond_12
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getCommentList()V

    .line 447
    .line 448
    .line 449
    :cond_13
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 450
    .line 451
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getNetBattle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    if-eqz p1, :cond_17

    .line 456
    .line 457
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->roomCount:Landroid/widget/TextView;

    .line 458
    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainNetBattle;->getNumber()I

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    if-gez v7, :cond_14

    .line 469
    .line 470
    const/4 p1, 0x0

    .line 471
    goto :goto_5

    .line 472
    :cond_14
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainNetBattle;->getNumber()I

    .line 473
    .line 474
    .line 475
    move-result p1

    .line 476
    :goto_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string p1, "\u623f"

    .line 480
    .line 481
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 492
    .line 493
    if-eqz p1, :cond_16

    .line 494
    .line 495
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightFun()Z

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    if-eqz p1, :cond_15

    .line 500
    .line 501
    goto :goto_6

    .line 502
    :cond_15
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->roomCount:Landroid/widget/TextView;

    .line 503
    .line 504
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    .line 506
    .line 507
    goto :goto_7

    .line 508
    :cond_16
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->roomCount:Landroid/widget/TextView;

    .line 509
    .line 510
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 511
    .line 512
    .line 513
    goto :goto_7

    .line 514
    :cond_17
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->roomCount:Landroid/widget/TextView;

    .line 515
    .line 516
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 517
    .line 518
    .line 519
    :goto_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 520
    .line 521
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getPlayGameInfo()Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    if-eqz p1, :cond_19

    .line 526
    .line 527
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->getFile_save_count()I

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->getFile_save_switch()I

    .line 532
    .line 533
    .line 534
    move-result p1

    .line 535
    if-ne p1, v5, :cond_19

    .line 536
    .line 537
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 538
    .line 539
    new-instance v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 540
    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    const-string v2, "\u4e91\u5b58\u6863"

    .line 557
    .line 558
    invoke-direct {v1, v2, v0, v4}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 559
    .line 560
    .line 561
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    goto :goto_8

    .line 565
    :cond_18
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->noDiscuss:Landroid/view/View;

    .line 566
    .line 567
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/GameMainActivity4;->setForumVisibility(Z)V

    .line 571
    .line 572
    .line 573
    :cond_19
    :goto_8
    return-void
.end method

.method private updateViewPager()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->isGBA:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragmentV2_;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/join/mgps/fragment/CloudListFragmentV2_;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "type"

    .line 31
    .line 32
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const-string v3, "gameid"

    .line 36
    .line 37
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v3, "typeIndex"

    .line 43
    .line 44
    const/4 v4, 0x3

    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 57
    .line 58
    const-string v2, "\u5b58\u6863\u5546\u5e97"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    new-instance v0, Lcom/join/mgps/fragment/z5;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/join/mgps/fragment/z5;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v2, Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 74
    .line 75
    const-string v4, "gameId"

    .line 76
    .line 77
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 89
    .line 90
    const-string v2, "\u52a8\u6001"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/join/mgps/fragment/u5;

    .line 96
    .line 97
    invoke-direct {v0}, Lcom/join/mgps/fragment/u5;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v3, Landroid/os/Bundle;

    .line 101
    .line 102
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 119
    .line 120
    const-string v3, "\u6210\u5c31"

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 126
    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->isBbs_switch()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    new-instance v0, Lcom/join/mgps/fragment/o5;

    .line 136
    .line 137
    invoke-direct {v0}, Lcom/join/mgps/fragment/o5;-><init>()V

    .line 138
    .line 139
    .line 140
    new-instance v3, Landroid/os/Bundle;

    .line 141
    .line 142
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 151
    .line 152
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameMainV4DataBean;->getBbs_strategy_contribute_url()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    const-string v5, "draftUrl"

    .line 157
    .line 158
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v4, "isExpand"

    .line 162
    .line 163
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 167
    .line 168
    .line 169
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 175
    .line 176
    const-string v3, "\u653b\u7565"

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberFun()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-eqz v0, :cond_5

    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberFun()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_3

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    check-cast v4, Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;

    .line 215
    .line 216
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;->getType()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-ne v5, v1, :cond_2

    .line 221
    .line 222
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;->getContents()Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mMemberFunAdapter:Lcom/join/mgps/adapter/n3;

    .line 228
    .line 229
    if-nez v0, :cond_4

    .line 230
    .line 231
    new-instance v0, Lcom/join/mgps/adapter/n3;

    .line 232
    .line 233
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 234
    .line 235
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/n3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mMemberFunAdapter:Lcom/join/mgps/adapter/n3;

    .line 239
    .line 240
    :cond_4
    if-eqz v3, :cond_5

    .line 241
    .line 242
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-lez v0, :cond_5

    .line 247
    .line 248
    new-instance v0, Lcom/join/mgps/fragment/l5;

    .line 249
    .line 250
    invoke-direct {v0}, Lcom/join/mgps/fragment/l5;-><init>()V

    .line 251
    .line 252
    .line 253
    new-instance v1, Landroid/os/Bundle;

    .line 254
    .line 255
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 256
    .line 257
    .line 258
    new-instance v4, Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    .line 262
    .line 263
    const-string v3, "contents"

    .line 264
    .line 265
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 277
    .line 278
    const-string v1, "\u91d1\u624b\u6307"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    :cond_5
    new-instance v0, Lcom/join/mgps/customview/e0;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 286
    .line 287
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 288
    .line 289
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {v0, v1, v3, v4}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 292
    .line 293
    .line 294
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->pagerAdapter:Lcom/join/mgps/customview/e0;

    .line 295
    .line 296
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 297
    .line 298
    const/4 v1, 0x2

    .line 299
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 303
    .line 304
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->pagerAdapter:Lcom/join/mgps/customview/e0;

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 310
    .line 311
    new-instance v1, Lcom/join/mgps/activity/GameMainActivity4$d;

    .line 312
    .line 313
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivity4$d;-><init>(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 320
    .line 321
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->ivTips:Landroid/widget/ImageView;

    .line 327
    .line 328
    const/16 v1, 0x8

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 334
    .line 335
    const/4 v3, 0x0

    .line 336
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_6

    .line 345
    .line 346
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->ivChoose:Landroid/widget/ImageView;

    .line 347
    .line 348
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->ivChoose:Landroid/widget/ImageView;

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    :goto_1
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/BaseActivity;->setSystemUiHide(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "achievement_done"

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/papa91/arc/http/utils/PrefUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "isHasAchievement"

    .line 27
    .line 28
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/papa91/arc/http/utils/PrefUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 38
    .line 39
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->client:Lcom/join/mgps/rpc/k;

    .line 44
    .line 45
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcAccountClient:Lcom/join/mgps/rpc/l;

    .line 50
    .line 51
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 56
    .line 57
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->p()Lcom/join/mgps/rpc/impl/h;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->friendClient:Lcom/join/mgps/rpc/j;

    .line 62
    .line 63
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->k()Lcom/join/mgps/rpc/impl/c;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcArchiveClient:Lcom/join/mgps/rpc/d;

    .line 68
    .line 69
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 74
    .line 75
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 86
    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    .line 109
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->isGBA:Z

    .line 110
    .line 111
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 124
    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameName:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    :cond_1
    new-instance v1, Landroid/view/View;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->noDiscuss:Landroid/view/View;

    .line 142
    .line 143
    new-instance v1, Lcom/join/mgps/adapter/i2;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 146
    .line 147
    invoke-direct {v1, p0, v2, p0}, Lcom/join/mgps/adapter/i2;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/i2$a;)V

    .line 148
    .line 149
    .line 150
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->adapter:Lcom/join/mgps/adapter/i2;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameMainNewLeftGv:Landroid/widget/GridView;

    .line 153
    .line 154
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameMainNewLeftGv:Landroid/widget/GridView;

    .line 158
    .line 159
    const/4 v2, 0x2

    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const v2, 0x7f071658

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    float-to-int v1, v1

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    const v3, 0x7f071543

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    float-to-int v2, v2

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 196
    .line 197
    mul-int v1, v1, v3

    .line 198
    .line 199
    div-int/2addr v1, v2

    .line 200
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 201
    .line 202
    const/4 v3, -0x1

    .line 203
    invoke-direct {v2, v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getDataFromDb()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getData()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getAllAchievementsData()V

    .line 218
    .line 219
    .line 220
    iget-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->isGBA:Z

    .line 221
    .line 222
    if-eqz v1, :cond_2

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getNum()V

    .line 225
    .line 226
    .line 227
    :cond_2
    new-instance v1, Lcom/join/mgps/socket/fight/arena/a;

    .line 228
    .line 229
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity4$c;

    .line 230
    .line 231
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity4$c;-><init>(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 232
    .line 233
    .line 234
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    .line 235
    .line 236
    .line 237
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 238
    .line 239
    invoke-static {}, Lnotchtools/geek/com/notchtools/b;->o()Lnotchtools/geek/com/notchtools/b;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Lnotchtools/geek/com/notchtools/b;->e(Landroid/view/Window;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_3

    .line 252
    .line 253
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->leftContainer:Landroid/view/View;

    .line 254
    .line 255
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 260
    .line 261
    invoke-static {}, Lnotchtools/geek/com/notchtools/b;->o()Lnotchtools/geek/com/notchtools/b;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v2, v3}, Lnotchtools/geek/com/notchtools/b;->g(Landroid/view/Window;)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    const v4, 0x7f0711b5

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    add-int/2addr v2, v3

    .line 285
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 286
    .line 287
    .line 288
    :cond_3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 289
    .line 290
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 294
    .line 295
    .line 296
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    sget-object v3, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    .line 301
    .line 302
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 311
    .line 312
    iget-object v6, p0, Lcom/join/mgps/activity/GameMainActivity4;->from:Ljava/lang/String;

    .line 313
    .line 314
    const/4 v7, 0x0

    .line 315
    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/t;->Z0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->adResultReceiver:Lcom/join/mgps/activity/GameMainActivity4$EmuOutResultReceiver;

    .line 319
    .line 320
    if-nez v0, :cond_4

    .line 321
    .line 322
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity4$EmuOutResultReceiver;

    .line 323
    .line 324
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity4$EmuOutResultReceiver;-><init>(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 325
    .line 326
    .line 327
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->adResultReceiver:Lcom/join/mgps/activity/GameMainActivity4$EmuOutResultReceiver;

    .line 328
    .line 329
    new-instance v0, Landroid/content/IntentFilter;

    .line 330
    .line 331
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gameout"

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->adResultReceiver:Lcom/join/mgps/activity/GameMainActivity4$EmuOutResultReceiver;

    .line 340
    .line 341
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    .line 343
    .line 344
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->t()V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 350
    .line 351
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->L()V

    .line 352
    .line 353
    .line 354
    return-void
.end method

.method back()V
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

.method battleHall()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/t;->R(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "game_main"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/t;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->L0(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    nop

    .line 58
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 69
    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_name()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    const/4 v5, 0x7

    .line 121
    const/16 v6, 0x31

    .line 122
    .line 123
    const/16 v7, 0x30

    .line 124
    .line 125
    if-lt v4, v5, :cond_2

    .line 126
    .line 127
    const/4 v4, 0x6

    .line 128
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    const/4 v5, 0x5

    .line 133
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-ne v1, v6, :cond_1

    .line 138
    .line 139
    const/16 v1, 0x31

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    const/16 v1, 0x30

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    const/16 v1, 0x30

    .line 146
    .line 147
    const/16 v4, 0x30

    .line 148
    .line 149
    :goto_1
    if-ne v7, v3, :cond_3

    .line 150
    .line 151
    if-ne v7, v4, :cond_3

    .line 152
    .line 153
    if-ne v1, v6, :cond_3

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getPspData()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 160
    .line 161
    if-eqz v1, :cond_4

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightFun()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_4

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->cancelRegisterObserver()V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->b(Z)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->c(Lcom/join/mgps/dto/GameInfoBean;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/activity/NewArenaMainActivty_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 195
    .line 196
    .line 197
    :goto_2
    return-void
.end method

.method buyVip()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberInfo()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberInfo()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x4

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "http"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "?"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "&game_id="

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, "?game_id="

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->setLink_type_val(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 107
    .line 108
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getJump_type()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 155
    .line 156
    .line 157
    :cond_2
    return-void
.end method

.method calcLevel()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v2, v1, [I

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getCurrent_lv_times()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getNext_lv_times()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "\u4f20\u8bf4"

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "\u5b97\u5e08"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, "\u7cbe\u82f1"

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v5, "\u8d44\u6df1"

    .line 84
    .line 85
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->gameTimeLvCfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .line 100
    const/4 v5, 0x1

    .line 101
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const-class v8, Ljava/util/ArrayList;

    .line 110
    .line 111
    new-array v9, v5, [Ljava/lang/Class;

    .line 112
    .line 113
    const-class v10, Lcom/join/mgps/dto/GameTimeLevel;

    .line 114
    .line 115
    aput-object v10, v9, v1

    .line 116
    .line 117
    invoke-virtual {v7, v8, v9}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v6, v0, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    new-array v2, v6, [I

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-ge v6, v7, :cond_5

    .line 141
    .line 142
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    check-cast v7, Lcom/join/mgps/dto/GameTimeLevel;

    .line 147
    .line 148
    invoke-virtual {v7}, Lcom/join/mgps/dto/GameTimeLevel;->getVal()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    aput v7, v2, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .line 154
    add-int/lit8 v6, v6, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_5
    add-int/2addr v3, v1

    .line 162
    const/4 v0, 0x0

    .line 163
    :goto_2
    array-length v6, v2

    .line 164
    if-ge v1, v6, :cond_8

    .line 165
    .line 166
    add-int/lit8 v4, v1, 0x1

    .line 167
    .line 168
    aget v6, v2, v1

    .line 169
    .line 170
    sub-int v0, v6, v0

    .line 171
    .line 172
    if-gt v3, v0, :cond_6

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    array-length v7, v2

    .line 176
    sub-int/2addr v7, v5

    .line 177
    if-ne v1, v7, :cond_7

    .line 178
    .line 179
    :goto_3
    move v4, v0

    .line 180
    goto :goto_4

    .line 181
    :cond_7
    sub-int/2addr v3, v0

    .line 182
    move v1, v4

    .line 183
    move v4, v0

    .line 184
    move v0, v6

    .line 185
    goto :goto_2

    .line 186
    :cond_8
    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :catch_1
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    .line 193
    .line 194
    :cond_9
    :goto_5
    return-void
.end method

.method cancelRegisterObserver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method checkUserInfoFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u767b\u5f55\u5df2\u5931\u6548\u8bf7\u60a8\u91cd\u65b0\u767b\u5f55"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->intentLogin()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method discussMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->noDiscuss:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->areaId:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->areaId:I

    .line 19
    .line 20
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->toCommentAllList()V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method endGameEntrance()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/EndGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameActivity_$u;

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

.method gameMainNewYueZhanRl()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->hideLoadingDialog()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/rpc/impl/l;->a0(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    .line 50
    .line 51
    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabled()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    new-instance v0, Lapp/mgsim/arena/ArenaResponse;

    .line 58
    .line 59
    invoke-direct {v0}, Lapp/mgsim/arena/ArenaResponse;-><init>()V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x3e9

    .line 63
    .line 64
    iput v1, v0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 65
    .line 66
    const-string v1, "\u9080\u8bf7\u5931\u8d25\uff1a\u8be5\u73a9\u5bb6\u5df2\u88ab\u5c01\u7981\uff01"

    .line 67
    .line 68
    iput-object v1, v0, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity4;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->gameMainNewYueZhanRlDo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    return-void
.end method

.method gameMainNewYueZhanRlDo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->cancelCreateGameCountDown()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->ll_loading:Landroid/view/View;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mCreateGameCountDowner:Landroid/os/CountDownTimer;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->X(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x1

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u63d2\u4ef6..."

    .line 43
    .line 44
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->hideLoadingDialog()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const-string v3, "register_type_GameMainActivity"

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-virtual {v0, v4}, Lcom/wufan/friend/chat/c;->V(Lcom/join/mgps/dto/FriendBean;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-static {v3, v0, v1, v4, v2}, Lapp/mgsim/arena/ArenaRequestFactory;->createRoom(Ljava/lang/String;Ljava/lang/String;IIZ)Lapp/mgsim/arena/ArenaRequest;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v3}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 116
    .line 117
    iput-boolean v1, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 118
    .line 119
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->N0(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_1
    return-void
.end method

.method getAllAchievementsData()V
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
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;->setGameId(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;->setUid(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;->setToken(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->client:Lcom/join/mgps/rpc/k;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->y0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "getAllAchievementsData: "

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lcom/join/mgps/dto/SimulatorAllAchievementBean;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/join/mgps/dto/SimulatorAllAchievementBean;->getAchievement_list()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "all_achievements"

    .line 106
    .line 107
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/join/mgps/dto/SimulatorAllAchievementBean;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAllAchievementBean;->getAchievement_list()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v3, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, v2, v0}, Lcom/papa91/arc/http/utils/PrefUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_0
    :goto_0
    return-void
.end method

.method getCommentList()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getGameCommentRequestBean()Lcom/join/mgps/dto/RequestCommentAllListArgs;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/f;->a(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/dto/CommentAllListBean;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getGeneral_comment()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->general:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->setCommunityCommentDataUi()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method getData()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x1

    .line 24
    :goto_0
    invoke-direct {v1, v2, v4, v4, v3}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setToken(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->client:Lcom/join/mgps/rpc/k;

    .line 47
    .line 48
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->f(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-boolean v4, p0, Lcom/join/mgps/activity/GameMainActivity4;->isResume:Z

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getFlag()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ne v1, v4, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity4;->showImg(Lcom/join/mgps/dto/GameMainV4DataBean;)V

    .line 69
    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_multi_posts_id()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameTagId:Ljava/lang/String;

    .line 88
    .line 89
    :cond_1
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lt6/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const-class v6, Lcom/join/mgps/dto/GameMainDataBean;

    .line 114
    .line 115
    invoke-virtual {v3, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/join/mgps/dto/GameMainDataBean;

    .line 120
    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v2, :cond_2

    .line 128
    .line 129
    if-eqz v3, :cond_2

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainachieve;->getLastShowVerTime()J

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    invoke-virtual {v2, v5, v6}, Lcom/join/mgps/dto/GameMainachieve;->setLastShowVerTime(J)V

    .line 136
    .line 137
    .line 138
    :cond_2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2, v1}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    new-instance v1, Lcom/join/mgps/db/tables/GameMainTable;

    .line 163
    .line 164
    invoke-direct {v1}, Lcom/join/mgps/db/tables/GameMainTable;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2, v1}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 188
    .line 189
    .line 190
    :goto_1
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/GameMainActivity4;->updateUI(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    :cond_4
    :goto_2
    return-void
.end method

.method getDataFromDb()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lt6/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v2, Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_multi_posts_id()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameTagId:Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/GameMainActivity4;->updateUI(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method getForumGroupIndex()V
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
    if-eqz v0, :cond_4

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->areaId:I

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/i;->Q(I)Lcom/join/mgps/dto/ResultResMainBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getError()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/join/mgps/dto/GameMainCommunityBean;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainCommunityBean;->getPosts()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-lez v1, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getSubject()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 81
    .line 82
    new-instance v4, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getPid()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-direct {v4, v2, v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v2, 0x1

    .line 105
    if-le v1, v2, :cond_3

    .line 106
    .line 107
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getSubject()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 134
    .line 135
    new-instance v4, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 136
    .line 137
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getPid()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-direct {v4, v1, v0}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->setCommunityDataUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_4
    :goto_0
    return-void
.end method

.method public getGameCommentRequestBean()Lcom/join/mgps/dto/RequestCommentAllListArgs;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v6, v0

    .line 24
    check-cast v6, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    move v5, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x1

    .line 45
    const/16 v3, 0xa

    .line 46
    .line 47
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestCommentAllList(IILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RequestCommentAllListArgs;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method getHomepageRecommendLabel()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-interface {v2, v4, v3, v0, v1}, Lcom/join/mgps/rpc/i;->g0(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-lez v1, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 76
    .line 77
    new-instance v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 78
    .line 79
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-direct {v2, v5, v4}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-lez v1, :cond_1

    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 112
    .line 113
    new-instance v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 114
    .line 115
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-direct {v2, v4, v0}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->setCommunityDataUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_2
    :goto_0
    return-void
.end method

.method getMulPostData(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pids"
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
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/i;->t(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/join/mgps/dto/MulPostData;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/MulPostData;->getPosts_list()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 52
    .line 53
    new-instance v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x1

    .line 87
    if-le v0, v1, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 90
    .line 91
    new-instance v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 92
    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-direct {v2, v3, p1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->setCommunityDataUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    return-void
.end method

.method getNum()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getArchiveCouldArgs()Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcArchiveClient:Lcom/join/mgps/rpc/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveColudArgs;->getArgs()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->i(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 16
    .line 17
    if-eqz v0, :cond_e

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x258

    .line 24
    .line 25
    if-ne v0, v1, :cond_e

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getArchiveCoin()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getVipLink()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v1, 0x0

    .line 80
    if-eqz v0, :cond_d

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Lcom/join/mgps/Util/o3;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->recordRoms:Ljava/util/List;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "31"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const/4 v3, 0x1

    .line 107
    if-eqz v2, :cond_7

    .line 108
    .line 109
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->recordRoms:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const-string v7, "_v2"

    .line 122
    .line 123
    if-eqz v6, :cond_1

    .line 124
    .line 125
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    .line 130
    .line 131
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_0

    .line 140
    .line 141
    const/4 v4, 0x1

    .line 142
    goto :goto_0

    .line 143
    :cond_0
    const/4 v5, 0x1

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->recordRoms:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_7

    .line 156
    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    .line 162
    .line 163
    if-eqz v5, :cond_4

    .line 164
    .line 165
    if-nez v4, :cond_4

    .line 166
    .line 167
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->marcketDownEnable:Z

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v6}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_3

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_4
    if-eqz v5, :cond_2

    .line 185
    .line 186
    if-eqz v4, :cond_2

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-static {v8}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-eqz v8, :cond_5

    .line 197
    .line 198
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->marcketPGNEnable:Z

    .line 199
    .line 200
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_2

    .line 209
    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_5
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_6

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const-string v2, "33"

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_b

    .line 240
    .line 241
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->recordRoms:Ljava/util/List;

    .line 242
    .line 243
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const-wide/16 v4, 0x0

    .line 248
    .line 249
    const/4 v2, 0x0

    .line 250
    move-wide v6, v4

    .line 251
    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    if-eqz v8, :cond_a

    .line 256
    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 262
    .line 263
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    const-string v10, "MM\u6708dd\u65e5 HH:mm"

    .line 268
    .line 269
    invoke-static {v9, v10}, Lcom/join/mgps/activity/GameMainActivity4;->date2TimeStamp(Ljava/lang/String;Ljava/lang/String;)J

    .line 270
    .line 271
    .line 272
    move-result-wide v9

    .line 273
    cmp-long v11, v6, v4

    .line 274
    .line 275
    if-nez v11, :cond_9

    .line 276
    .line 277
    move-object v2, v8

    .line 278
    move-wide v6, v9

    .line 279
    :cond_9
    cmp-long v11, v6, v9

    .line 280
    .line 281
    if-lez v11, :cond_8

    .line 282
    .line 283
    move-object v2, v8

    .line 284
    move-wide v6, v9

    .line 285
    goto :goto_2

    .line 286
    :cond_a
    if-eqz v2, :cond_b

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    const-string v2, "vba"

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_b

    .line 299
    .line 300
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameMainActivity4;->setIsVBA(Z)V

    .line 301
    .line 302
    .line 303
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->recordRoms:Ljava/util/List;

    .line 304
    .line 305
    if-eqz v0, :cond_c

    .line 306
    .line 307
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity4;->upNum(I)V

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_c
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity4;->upNum(I)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_d
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity4;->upNum(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    .line 326
    .line 327
    :cond_e
    :goto_3
    return-void
.end method

.method getOnlineCouponData()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method getPspData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->rpcAccountClient:Lcom/join/mgps/rpc/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/join/mgps/rpc/l;->n()Lcom/join/mgps/dto/GameWorldResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x2bd

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->checkUserInfoFailed()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/List;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->pspBattleServers:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->showPspDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method getSimulator()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x5dcL
    .end annotation

    return-void
.end method

.method gotoTargetActivity(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tpl_type",
            "link_type",
            "jump_type",
            "crc_lint_val",
            "link_type_val"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p5}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->hideLoadingDialog()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    const/16 v2, 0x101

    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "\u786e\u5b9a"

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x4

    .line 21
    const-string v9, "dialog_error_hint"

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 26
    .line 27
    new-array v1, v8, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v2, v1, v7

    .line 30
    .line 31
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    aput-object p1, v1, v6

    .line 38
    .line 39
    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    .line 40
    .line 41
    aput-object p1, v1, v5

    .line 42
    .line 43
    aput-object v3, v1, v4

    .line 44
    .line 45
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    const/16 v1, 0x11

    .line 50
    .line 51
    if-ne v0, v1, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 54
    .line 55
    new-array v1, v8, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v2, v1, v7

    .line 58
    .line 59
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    aput-object p1, v1, v6

    .line 66
    .line 67
    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    .line 68
    .line 69
    aput-object p1, v1, v5

    .line 70
    .line 71
    const-string p1, "\u6211\u77e5\u9053\u4e86"

    .line 72
    .line 73
    aput-object p1, v1, v4

    .line 74
    .line 75
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    const/16 v1, 0x9

    .line 80
    .line 81
    if-ne v0, v1, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 84
    .line 85
    new-array v1, v8, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object v2, v1, v7

    .line 88
    .line 89
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    aput-object p1, v1, v6

    .line 96
    .line 97
    const-string p1, "\u623f\u95f4\u4eba\u6570\u5df2\u6ee1\u4f60\u65e0\u6cd5\u52a0\u5165\u623f\u95f4!"

    .line 98
    .line 99
    aput-object p1, v1, v5

    .line 100
    .line 101
    aput-object v3, v1, v4

    .line 102
    .line 103
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    const/4 v1, 0x7

    .line 108
    if-ne v0, v1, :cond_3

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 111
    .line 112
    const/4 v1, 0x6

    .line 113
    new-array v1, v1, [Ljava/lang/Object;

    .line 114
    .line 115
    const/16 v2, 0x100

    .line 116
    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    aput-object v2, v1, v7

    .line 122
    .line 123
    iget v2, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 124
    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    aput-object v2, v1, v6

    .line 130
    .line 131
    const-string v2, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5!"

    .line 132
    .line 133
    aput-object v2, v1, v5

    .line 134
    .line 135
    const-string v2, "\u53d6\u6d88"

    .line 136
    .line 137
    aput-object v2, v1, v4

    .line 138
    .line 139
    aput-object v3, v1, v8

    .line 140
    .line 141
    const/4 v2, 0x5

    .line 142
    aput-object p1, v1, v2

    .line 143
    .line 144
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_3
    const/16 v1, 0x8

    .line 149
    .line 150
    if-ne v0, v1, :cond_4

    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 153
    .line 154
    new-array v1, v8, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object v2, v1, v7

    .line 157
    .line 158
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 159
    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    aput-object p1, v1, v6

    .line 165
    .line 166
    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563!"

    .line 167
    .line 168
    aput-object p1, v1, v5

    .line 169
    .line 170
    aput-object v3, v1, v4

    .line 171
    .line 172
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_4
    const/16 v1, 0xb

    .line 177
    .line 178
    if-ne v0, v1, :cond_5

    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 181
    .line 182
    new-array v1, v8, [Ljava/lang/Object;

    .line 183
    .line 184
    aput-object v2, v1, v7

    .line 185
    .line 186
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 187
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    aput-object p1, v1, v6

    .line 193
    .line 194
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u521b\u5efa\u623f\u95f4!"

    .line 195
    .line 196
    aput-object p1, v1, v5

    .line 197
    .line 198
    aput-object v3, v1, v4

    .line 199
    .line 200
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_5
    const/16 v1, 0xd

    .line 205
    .line 206
    if-ne v0, v1, :cond_6

    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 209
    .line 210
    new-array v1, v8, [Ljava/lang/Object;

    .line 211
    .line 212
    aput-object v2, v1, v7

    .line 213
    .line 214
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 215
    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    aput-object p1, v1, v6

    .line 221
    .line 222
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    .line 223
    .line 224
    aput-object p1, v1, v5

    .line 225
    .line 226
    aput-object v3, v1, v4

    .line 227
    .line 228
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_6
    const/16 v1, 0x3e9

    .line 233
    .line 234
    if-ne v0, v1, :cond_7

    .line 235
    .line 236
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 237
    .line 238
    new-array v1, v8, [Ljava/lang/Object;

    .line 239
    .line 240
    const/16 v2, 0x102

    .line 241
    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    aput-object v2, v1, v7

    .line 247
    .line 248
    iget v2, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 249
    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    aput-object v2, v1, v6

    .line 255
    .line 256
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 257
    .line 258
    aput-object p1, v1, v5

    .line 259
    .line 260
    aput-object v3, v1, v4

    .line 261
    .line 262
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_7
    return-void
.end method

.method hideLoadingDialog()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->ll_loading:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method intentLogin()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x10000000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public isLogined(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method isSupportNetMatchPaiwei(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    :try_start_1
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v1, v2, :cond_4

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, p2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v1, Lcom/join/android/app/common/utils/APKUtils;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/join/android/app/common/utils/APKUtils;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, p1, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    :try_start_2
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    return v0

    .line 70
    :cond_1
    :try_start_4
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 71
    .line 72
    const/16 p2, 0x14a

    .line 73
    .line 74
    if-gt p1, p2, :cond_4

    .line 75
    .line 76
    return v0

    .line 77
    :catch_1
    move-exception p1

    .line 78
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 79
    .line 80
    .line 81
    return v0

    .line 82
    :catch_2
    move-exception p1

    .line 83
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    return v0

    .line 87
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/4 v2, 0x2

    .line 92
    if-ne v1, v2, :cond_3

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ne v1, v2, :cond_3

    .line 99
    .line 100
    new-array v1, v0, [Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p1, p2, v0, v1}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 106
    return p1

    .line 107
    :cond_3
    return v0

    .line 108
    :catch_3
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :catch_4
    :cond_4
    const/4 p1, 0x1

    .line 113
    return p1
.end method

.method ivChoose()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/mgps/customview/e0;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string v2, "\u52a8\u6001"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/e0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/join/mgps/fragment/z5;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lcom/join/mgps/fragment/z5;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/fragment/v5;->Q()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->simulatorMomentChooseDialog:Lcom/join/mgps/dialog/e2;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    new-instance v2, Lcom/join/mgps/dialog/e2;

    .line 37
    .line 38
    invoke-direct {v2, p0, v1}, Lcom/join/mgps/dialog/e2;-><init>(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->simulatorMomentChooseDialog:Lcom/join/mgps/dialog/e2;

    .line 42
    .line 43
    new-instance v1, Lcom/join/mgps/activity/GameMainActivity4$j;

    .line 44
    .line 45
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/GameMainActivity4$j;-><init>(Lcom/join/mgps/activity/GameMainActivity4;Landroidx/fragment/app/Fragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lcom/join/mgps/dialog/e2;->e(Lcom/join/mgps/dialog/e2$a;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->simulatorMomentChooseDialog:Lcom/join/mgps/dialog/e2;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->simulatorMomentChooseDialog:Lcom/join/mgps/dialog/e2;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->ivChoose:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    int-to-double v2, v2

    .line 66
    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    mul-double v2, v2, v4

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const v5, 0x7f0712f6

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    float-to-double v4, v4

    .line 85
    sub-double/2addr v2, v4

    .line 86
    double-to-int v2, v2

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const v4, 0x7f0711b5

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    neg-float v3, v3

    .line 99
    float-to-int v3, v3

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 101
    .line 102
    .line 103
    :cond_1
    return-void
.end method

.method ivTips()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->achievmentTipsDialog:Lcom/papa91/arc/dialog/AchievmentTipsDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/AchievmentTipsDialog;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/papa91/arc/dialog/AchievmentTipsDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->achievmentTipsDialog:Lcom/papa91/arc/dialog/AchievmentTipsDialog;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->achievmentTipsDialog:Lcom/papa91/arc/dialog/AchievmentTipsDialog;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->achievmentTipsDialog:Lcom/papa91/arc/dialog/AchievmentTipsDialog;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->ivTips:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    int-to-double v2, v2

    .line 29
    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    mul-double v2, v2, v4

    .line 35
    .line 36
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const v5, 0x7f0713d4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    float-to-double v4, v4

    .line 50
    sub-double/2addr v2, v4

    .line 51
    double-to-int v2, v2

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const v4, 0x7f0711b5

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    neg-float v3, v3

    .line 64
    float-to-int v3, v3

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method mask()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->hide()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->hideExpandIntroduction()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Lcom/join/mgps/activity/GameMainActivity4$a;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivity4$a;-><init>(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0xc8

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method noDiscuss()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->toCommentAllList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    const-string v0, "GAME_HOME_PAGE"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->type:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/join/mgps/activity/GameMainActivity4$b;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/GameMainActivity4$b;-><init>(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->z0(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->adResultReceiver:Lcom/join/mgps/activity/GameMainActivity4$EmuOutResultReceiver;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onDestroy()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->hideLoadingDialog()V

    .line 5
    .line 6
    .line 7
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
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->getSimulator()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, ""

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2, v3, p0}, Lq5/f;->N(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->d(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_3

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->showAchievementDoneDialog()V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method

.method public onRootView(Lcom/join/mgps/dto/DynamicEntranceBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DynamicEntranceBean;->getTypeId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0xe

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->discussMore()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->gameTest()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->gameMainNewCunDangRl()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_3
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->gameMainNewLocalFightRl()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->gameMainNewYueZhanRl()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_5
    const/4 p1, 0x1

    .line 34
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainActivity4;->gameMainNewPaiWeiRl(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameMainActivity4;->gameMainNewPaiWeiRl(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public removeAchievementFragment()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "isHasAchievement"

    .line 8
    .line 9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/http/utils/PrefUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->ivChoose:Landroid/widget/ImageView;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->pagerAdapter:Lcom/join/mgps/customview/e0;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 52
    .line 53
    instance-of v1, v1, Lcom/join/mgps/fragment/u5;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 61
    .line 62
    const-string v2, "\u6210\u5c31"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->pagerAdapter:Lcom/join/mgps/customview/e0;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->fragments:Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->titles:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/e0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->pagerAdapter:Lcom/join/mgps/customview/e0;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method setCommunityCommentDataUi()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->general:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->noDiscuss:Landroid/view/View;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity4;->setForumVisibility(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method setCommunityDataUi()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->tempList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->noDiscuss:Landroid/view/View;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity4;->setForumVisibility(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->noDiscuss:Landroid/view/View;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity4;->setForumVisibility(Z)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method setForumVisibility(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x6

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/DynamicEntranceBean;->getTypeId()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v3, v2, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->itemBeans:Ljava/util/List;

    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 39
    .line 40
    const-string v1, "\u793e\u533a"

    .line 41
    .line 42
    const-string v3, ""

    .line 43
    .line 44
    invoke-direct {v0, v1, v3, v2}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->adapter:Lcom/join/mgps/adapter/i2;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setHeaderData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "basicInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setIsVBA(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVBA"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->isVBA:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnlinePlayersCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    return-void
.end method

.method public showBattle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->friendContainer:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FriendActivity;->go(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mask:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public showExpandIntroduction()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f010064

    .line 8
    .line 9
    .line 10
    const v2, 0x7f01007d

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->expandIntroductionFragment:Lcom/join/mgps/fragment/o5;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/join/mgps/fragment/o5;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/join/mgps/fragment/o5;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->expandIntroductionFragment:Lcom/join/mgps/fragment/o5;

    .line 26
    .line 27
    new-instance v1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "gameId"

    .line 33
    .line 34
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainV4DataBean;->getBbs_strategy_contribute_url()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "draftUrl"

    .line 46
    .line 47
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v2, "isExpand"

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->expandIntroductionFragment:Lcom/join/mgps/fragment/o5;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    const v1, 0x7f0a05bc

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->expandIntroductionFragment:Lcom/join/mgps/fragment/o5;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->expandContainer:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mask:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method showImg(Lcom/join/mgps/dto/GameMainV4DataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameMaindataImg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method showOnlineCoupinDialog(Lcom/join/mgps/dto/OnlineCouponConfigBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, p0, p1, v1}, Lcom/join/mgps/Util/g0;->X(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lcom/papa/sim/statistic/Event;->quitSingleSuccessUpRedBag:Lcom/papa/sim/statistic/Event;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->T1(Lcom/papa/sim/statistic/Event;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method showPspDialog()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->netWorkPspDialog:Lcom/join/mgps/activity/GameMainActivity4$l;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->netWorkPspDialog:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 19
    .line 20
    const v2, 0x7f13017f

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/GameMainActivity4$l;-><init>(Lcom/join/mgps/activity/GameMainActivity4;Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->netWorkPspDialog:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method startGame()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->f2(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->startGameV2()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity4$f;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity4$f;-><init>(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 52
    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    const-string v4, "RAW_SIMULATOR"

    .line 56
    .line 57
    invoke-static {v0, v3, v1, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->startGameV2()V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method startGameV2()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-class v0, Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    new-instance v3, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    const-class v8, Ljava/util/HashMap;

    .line 20
    .line 21
    new-array v9, v4, [Ljava/lang/Class;

    .line 22
    .line 23
    aput-object v0, v9, v6

    .line 24
    .line 25
    aput-object v0, v9, v5

    .line 26
    .line 27
    invoke-virtual {v7, v8, v9}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity4;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 36
    .line 37
    invoke-virtual {v8}, Lcom/join/mgps/pref/PrefDef_;->lastStartSimulatorCore()Lorg/androidannotations/api/sharedpreferences/p;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {v8}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    check-cast v8, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v7, v8, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v7, v0

    .line 52
    check-cast v7, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .line 54
    if-nez v7, :cond_0

    .line 55
    .line 56
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    move-object v3, v0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    move-object v3, v7

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    move-object v3, v7

    .line 67
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    .line 83
    move-object v2, v0

    .line 84
    goto :goto_2

    .line 85
    :catch_1
    move-exception v0

    .line 86
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_2
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    if-eqz v0, :cond_b

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getNetBattle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 99
    .line 100
    invoke-virtual {v8}, Lcom/join/mgps/dto/GameMainV4DataBean;->getSimulator_core()Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    if-eqz v8, :cond_2

    .line 105
    .line 106
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 107
    .line 108
    invoke-virtual {v8}, Lcom/join/mgps/dto/GameMainV4DataBean;->getSimulator_core()Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v8}, Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;->getCore()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    if-eqz v8, :cond_2

    .line 117
    .line 118
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainV4DataBean;->getSimulator_core()Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;->getCore()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    :cond_2
    move-object v15, v2

    .line 129
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v3, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity4;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastStartSimulatorCore()Lorg/androidannotations/api/sharedpreferences/p;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    goto :goto_3

    .line 154
    :cond_3
    const/4 v0, 0x0

    .line 155
    :goto_3
    if-nez v0, :cond_4

    .line 156
    .line 157
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 158
    .line 159
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_6

    .line 165
    .line 166
    :cond_4
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    const/4 v8, 0x7

    .line 183
    if-lt v3, v8, :cond_5

    .line 184
    .line 185
    const/4 v3, 0x6

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    const/16 v3, 0x31

    .line 191
    .line 192
    if-ne v3, v2, :cond_5

    .line 193
    .line 194
    const/4 v2, 0x1

    .line 195
    goto :goto_4

    .line 196
    :cond_5
    const/4 v2, 0x0

    .line 197
    :goto_4
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    if-eqz v3, :cond_6

    .line 204
    .line 205
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 206
    .line 207
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMaingameinfo;->getMax_battle_count()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    move v14, v3

    .line 216
    goto :goto_5

    .line 217
    :cond_6
    const/4 v14, 0x0

    .line 218
    :goto_5
    if-ne v0, v5, :cond_8

    .line 219
    .line 220
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->battleIp:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_7

    .line 227
    .line 228
    iget v12, v1, Lcom/join/mgps/activity/GameMainActivity4;->battlePort:I

    .line 229
    .line 230
    if-eqz v12, :cond_7

    .line 231
    .line 232
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 233
    .line 234
    iget-object v9, v1, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 235
    .line 236
    const/4 v10, 0x1

    .line 237
    iget-object v11, v1, Lcom/join/mgps/activity/GameMainActivity4;->battleIp:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v13, v1, Lcom/join/mgps/activity/GameMainActivity4;->fastIp:Ljava/lang/String;

    .line 240
    .line 241
    invoke-static/range {v8 .. v15}, Lcom/join/mgps/Util/UtilsMy;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_7
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 246
    .line 247
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 248
    .line 249
    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_8
    if-ne v0, v4, :cond_a

    .line 254
    .line 255
    if-eqz v2, :cond_a

    .line 256
    .line 257
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->battleIp:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_9

    .line 264
    .line 265
    iget v12, v1, Lcom/join/mgps/activity/GameMainActivity4;->battlePort:I

    .line 266
    .line 267
    if-eqz v12, :cond_9

    .line 268
    .line 269
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 270
    .line 271
    iget-object v9, v1, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 272
    .line 273
    const/4 v10, 0x1

    .line 274
    iget-object v11, v1, Lcom/join/mgps/activity/GameMainActivity4;->battleIp:Ljava/lang/String;

    .line 275
    .line 276
    iget-object v13, v1, Lcom/join/mgps/activity/GameMainActivity4;->fastIp:Ljava/lang/String;

    .line 277
    .line 278
    invoke-static/range {v8 .. v15}, Lcom/join/mgps/Util/UtilsMy;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_9
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 283
    .line 284
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 285
    .line 286
    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 287
    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_a
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 291
    .line 292
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 293
    .line 294
    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_b
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 299
    .line 300
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 301
    .line 302
    invoke-static {v7, v0, v3, v6, v2}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity4;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity4;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 316
    .line 317
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/t;->I0(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method toCommentAllList()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "0"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/join/mgps/activity/CommentAllListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_package()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->i(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_plugin_num()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_bespeak_switch()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_is_started()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->g(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->j(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/activity/ForumIndexActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_1
    return-void
.end method

.method tvBattle()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity4;->showBattle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method upNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "localnum"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method updateUI(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "isGetData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4;->gameName:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/GameMainActivity4;->updateLocalAndNet(Z)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity4;->updateViewPager()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

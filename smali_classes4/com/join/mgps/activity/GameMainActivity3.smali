.class public Lcom/join/mgps/activity/GameMainActivity3;
.super Lcom/join/mgps/activity/FriendActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/i2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;,
        Lcom/join/mgps/activity/GameMainActivity3$s;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0060
.end annotation

.annotation build Lorg/androidannotations/annotations/Fullscreen;
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0x1
    }
.end annotation


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field private adResultReceiver:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

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

.field private domainDialog:Lcom/join/mgps/dialog/n1;

.field downNumber:I

.field downNumberNow:I

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field factory:Lcom/github/snowdream/android/app/downloader/b;

.field private fastIp:Ljava/lang/String;

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

.field gameMainNewRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private gameTagId:Ljava/lang/String;

.field gdtInfoStreamVideo:Lcom/join/mgps/ad/e;

.field gdtInteractAdVideo:Lcom/join/mgps/ad/f;

.field gdtList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;"
        }
    .end annotation
.end field

.field private general:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field groMFullSVideo:Lcom/join/mgps/ad/j;

.field hasDialog:Z

.field isGameExit:Z

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

.field leftContainer:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listDataBeans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/github/snowdream/android/app/downloader/b$b;

.field ll_loading:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

.field private final mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

.field private mCreateGameCountDowner:Landroid/os/CountDownTimer;

.field mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

.field mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

.field public marcketDownEnable:Z

.field public marcketPGNEnable:Z

.field nativeAdDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation
.end field

.field netWorkPspDialog:Lcom/join/mgps/activity/GameMainActivity3$s;

.field noDiscuss:Landroid/view/View;

.field numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

.field playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

.field playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

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

.field progressDialogForDown:Lcom/join/mgps/dialog/x;

.field pspBattleServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PspBattleServer;",
            ">;"
        }
    .end annotation
.end field

.field private recommendAdapter:Lcom/join/mgps/adapter/t2;

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

.field tempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;",
            ">;"
        }
    .end annotation
.end field

.field ttInfoStreamVideo:Lcom/join/mgps/ad/w;

.field ttInteractAdVideo:Lcom/join/mgps/ad/y;

.field ttList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;"
        }
    .end annotation
.end field

.field protected videoHeight:I

.field windNativeAd:Lcom/windmill/sdk/natives/WMNativeAd;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->clientIp:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->battleIp:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->battlePort:I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->fastIp:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->listDataBeans:Ljava/util/Map;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downNumber:I

    .line 31
    .line 32
    iput v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downNumberNow:I

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->mDataList:Ljava/util/List;

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->isResume:Z

    .line 42
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->general:Ljava/util/List;

    .line 49
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

    .line 56
    .line 57
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3$o;

    .line 58
    .line 59
    const-wide/16 v5, 0x2710

    .line 60
    .line 61
    const-wide/16 v7, 0x3e8

    .line 62
    .line 63
    move-object v3, v2

    .line 64
    move-object v4, p0

    .line 65
    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/activity/GameMainActivity3$o;-><init>(Lcom/join/mgps/activity/GameMainActivity3;JJ)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->mCreateGameCountDowner:Landroid/os/CountDownTimer;

    .line 69
    .line 70
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3$p;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity3$p;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 76
    .line 77
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3$q;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity3$q;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->isVBA:Z

    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->marcketDownEnable:Z

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->marcketPGNEnable:Z

    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->isGameExit:Z

    .line 91
    .line 92
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->hasDialog:Z

    .line 93
    .line 94
    const/16 v0, 0x13b

    .line 95
    .line 96
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->videoHeight:I

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttList:Ljava/util/List;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtList:Ljava/util/List;

    .line 102
    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/join/mgps/dialog/n1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->domainDialog:Lcom/join/mgps/dialog/n1;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/GameMainActivity3;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/GameMainActivity3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->loadAdStreamVideoByPage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/GameMainActivity3;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->clientIp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/GameMainActivity3;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/GameMainActivity3;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->isActivityFinished()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/GameMainActivity3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->cancelCreateGameCountDown()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/GameMainActivity3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->showToastArenaError()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cancelCreateGameCountDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mCreateGameCountDowner:Landroid/os/CountDownTimer;

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

.method private clearStreamList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtList:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_1
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
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "1"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/t;->X0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ApFightActivity_$q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->hideLoadingDialog()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->o0(Landroid/content/Context;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    const-string p1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->showToast(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method private gameTest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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

.method private initListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 11
    .line 12
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$r;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3$r;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->listener:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->i()V

    .line 27
    .line 28
    .line 29
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

.method private isActivityVisible()Z
    .locals 1

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
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private loadAdStreamVideoByPage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 13
    .line 14
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->loadTTAdStreamVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 28
    .line 29
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->loadGdtAdStreamVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/16 v1, 0xa

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 44
    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->loadTbAdStreamVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method private needShowAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method private shouldShowDomainDialog()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    invoke-virtual {v0}, Lcom/join/mgps/dto/PdAdCfgBean;->canShowSimulatorPopup()Z

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
    invoke-virtual {v0}, Lcom/join/mgps/dto/PdAdCfgBean;->updateSimulatorPopupShowTimes()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return v1

    .line 38
    :cond_2
    return v2
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->general:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/join/mgps/activity/CommentDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->general:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isGetData"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x3

    .line 14
    const/4 v4, 0x2

    .line 15
    const-string v5, ""

    .line 16
    .line 17
    const/4 v6, 0x4

    .line 18
    const/16 v7, 0x8

    .line 19
    .line 20
    const/4 v8, 0x1

    .line 21
    const/4 v9, 0x0

    .line 22
    if-eqz v2, :cond_a

    .line 23
    .line 24
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->adapter:Lcom/join/mgps/adapter/i2;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/adapter/i2;->b()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v10, 0x5

    .line 39
    const/16 v11, 0x31

    .line 40
    .line 41
    if-lt v2, v4, :cond_5

    .line 42
    .line 43
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    const/4 v13, 0x7

    .line 52
    const/16 v14, 0x30

    .line 53
    .line 54
    if-lt v12, v13, :cond_0

    .line 55
    .line 56
    const/4 v12, 0x6

    .line 57
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-ne v13, v11, :cond_1

    .line 66
    .line 67
    const/16 v13, 0x31

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/16 v12, 0x30

    .line 71
    .line 72
    :cond_1
    const/16 v13, 0x30

    .line 73
    .line 74
    :goto_0
    if-eq v11, v2, :cond_4

    .line 75
    .line 76
    if-ne v11, v12, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    if-ne v14, v2, :cond_3

    .line 80
    .line 81
    if-ne v14, v12, :cond_3

    .line 82
    .line 83
    if-ne v13, v11, :cond_3

    .line 84
    .line 85
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->battleHall:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->roomCount:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->battleHall:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->roomCount:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->battleHall:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->roomCount:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    const-string v12, "NEW"

    .line 122
    .line 123
    const-string v13, "\u6392\u4f4d\u8d5b"

    .line 124
    .line 125
    const/16 v14, 0xc

    .line 126
    .line 127
    if-le v2, v14, :cond_6

    .line 128
    .line 129
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 130
    .line 131
    invoke-virtual {v0, v0, v2}, Lcom/join/mgps/activity/GameMainActivity3;->isSupportNetMatchPaiwei(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-ne v2, v11, :cond_6

    .line 142
    .line 143
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 144
    .line 145
    new-instance v14, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 146
    .line 147
    invoke-direct {v14, v13, v12, v8}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/16 v14, 0xe

    .line 158
    .line 159
    if-le v2, v14, :cond_7

    .line 160
    .line 161
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 162
    .line 163
    invoke-virtual {v0, v0, v2}, Lcom/join/mgps/activity/GameMainActivity3;->isSupportNetMatchPaiwei(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_7

    .line 168
    .line 169
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-ne v2, v11, :cond_7

    .line 174
    .line 175
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 176
    .line 177
    new-instance v15, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 178
    .line 179
    invoke-direct {v15, v13, v12, v14}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-le v2, v6, :cond_8

    .line 190
    .line 191
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-ne v2, v11, :cond_8

    .line 196
    .line 197
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 198
    .line 199
    new-instance v12, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 200
    .line 201
    const-string v13, "\u7ec3\u4e60\u6a21\u5f0f"

    .line 202
    .line 203
    invoke-direct {v12, v13, v5, v10}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-lt v2, v6, :cond_9

    .line 214
    .line 215
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-ne v2, v11, :cond_9

    .line 220
    .line 221
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 222
    .line 223
    new-instance v10, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 224
    .line 225
    const-string v12, "\u7ea6\u6218"

    .line 226
    .line 227
    invoke-direct {v10, v12, v5, v4}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-lt v2, v8, :cond_a

    .line 238
    .line 239
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-ne v11, v1, :cond_a

    .line 244
    .line 245
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 246
    .line 247
    new-instance v2, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 248
    .line 249
    const-string v10, "\u672c\u5730\u5bf9\u6218"

    .line 250
    .line 251
    invoke-direct {v2, v10, v5, v3}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :cond_a
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 258
    .line 259
    if-eqz v1, :cond_1a

    .line 260
    .line 261
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->noDiscuss:Landroid/view/View;

    .line 262
    .line 263
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v8}, Lcom/join/mgps/activity/GameMainActivity3;->setForumVisibility(Z)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-eqz v1, :cond_e

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_back_ground_img()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    if-nez v10, :cond_b

    .line 286
    .line 287
    iget-object v10, v0, Lcom/join/mgps/activity/GameMainActivity3;->gameImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 288
    .line 289
    invoke-virtual {v10, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_b
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_area_id()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    iput v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->areaId:I

    .line 297
    .line 298
    if-eqz p1, :cond_e

    .line 299
    .line 300
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->gameTagId:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-nez v1, :cond_c

    .line 307
    .line 308
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->gameTagId:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->getMulPostData(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_c
    iget v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->areaId:I

    .line 315
    .line 316
    if-eqz v1, :cond_d

    .line 317
    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/GameMainActivity3;->getForumGroupIndex()V

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/GameMainActivity3;->getCommentList()V

    .line 323
    .line 324
    .line 325
    :cond_e
    :goto_3
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mDataList:Ljava/util/List;

    .line 326
    .line 327
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 328
    .line 329
    .line 330
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v1}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_f

    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    .line 345
    .line 346
    .line 347
    move-result-wide v1

    .line 348
    const-wide v10, 0xdd861b80L

    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    cmp-long v12, v1, v10

    .line 354
    .line 355
    if-nez v12, :cond_f

    .line 356
    .line 357
    const/4 v1, 0x0

    .line 358
    goto :goto_4

    .line 359
    :cond_f
    const/4 v1, 0x1

    .line 360
    :goto_4
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->recommendAdapter:Lcom/join/mgps/adapter/t2;

    .line 361
    .line 362
    if-eqz v2, :cond_10

    .line 363
    .line 364
    if-eqz v1, :cond_10

    .line 365
    .line 366
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 367
    .line 368
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberInfo()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    new-instance v2, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 373
    .line 374
    iget-object v10, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 375
    .line 376
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameMainV4DataBean;->getMemberFun()Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    invoke-direct {v2, v9, v10}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/CommonMultiItemBean;->setExtData(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mDataList:Ljava/util/List;

    .line 387
    .line 388
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    :cond_10
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    if-eqz v1, :cond_11

    .line 398
    .line 399
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->mDataList:Ljava/util/List;

    .line 400
    .line 401
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 402
    .line 403
    invoke-direct {v10, v3, v1}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    sget-object v3, Lcom/papa/sim/statistic/Event;->pdSimulatorStartDetails:Lcom/papa/sim/statistic/Event;

    .line 414
    .line 415
    new-instance v10, Lcom/papa/sim/statistic/Ext;

    .line 416
    .line 417
    invoke-direct {v10}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 418
    .line 419
    .line 420
    iget-object v11, v0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v10, v11}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 423
    .line 424
    .line 425
    move-result-object v10

    .line 426
    invoke-virtual {v1}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    invoke-virtual {v10, v11}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    invoke-virtual {v1}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {v10, v1}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 443
    .line 444
    .line 445
    :cond_11
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 446
    .line 447
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getNetBattle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    if-eqz v1, :cond_15

    .line 452
    .line 453
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->roomCount:Landroid/widget/TextView;

    .line 454
    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainNetBattle;->getNumber()I

    .line 461
    .line 462
    .line 463
    move-result v10

    .line 464
    if-gez v10, :cond_12

    .line 465
    .line 466
    const/4 v1, 0x0

    .line 467
    goto :goto_5

    .line 468
    :cond_12
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainNetBattle;->getNumber()I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v1, "\u623f"

    .line 476
    .line 477
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 488
    .line 489
    if-eqz v1, :cond_14

    .line 490
    .line 491
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightFun()Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-eqz v1, :cond_13

    .line 496
    .line 497
    goto :goto_6

    .line 498
    :cond_13
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->roomCount:Landroid/widget/TextView;

    .line 499
    .line 500
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 501
    .line 502
    .line 503
    goto :goto_7

    .line 504
    :cond_14
    :goto_6
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->roomCount:Landroid/widget/TextView;

    .line 505
    .line 506
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .line 508
    .line 509
    goto :goto_7

    .line 510
    :cond_15
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->roomCount:Landroid/widget/TextView;

    .line 511
    .line 512
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    :goto_7
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 516
    .line 517
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getPlayGameInfo()Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    if-eqz v1, :cond_16

    .line 522
    .line 523
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->getFile_save_count()I

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->getFile_save_switch()I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    if-ne v1, v8, :cond_16

    .line 532
    .line 533
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 534
    .line 535
    new-instance v3, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 536
    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    const-string v5, "\u4e91\u5b58\u6863"

    .line 553
    .line 554
    invoke-direct {v3, v5, v2, v6}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 555
    .line 556
    .line 557
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    :cond_16
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 561
    .line 562
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getRecommendAdList()Ljava/util/List;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    if-eqz v1, :cond_17

    .line 567
    .line 568
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    if-lez v2, :cond_17

    .line 573
    .line 574
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    if-eqz v2, :cond_17

    .line 583
    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    check-cast v2, Lcom/join/mgps/dto/RecommendAd;

    .line 589
    .line 590
    new-instance v3, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 591
    .line 592
    invoke-direct {v3, v8, v2}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->mDataList:Ljava/util/List;

    .line 596
    .line 597
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    goto :goto_8

    .line 601
    :cond_17
    invoke-static {}, Lcom/join/mgps/Util/d2;->x()Z

    .line 602
    .line 603
    .line 604
    move-result v1

    .line 605
    if-eqz v1, :cond_18

    .line 606
    .line 607
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 608
    .line 609
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getJp_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    if-eqz v1, :cond_18

    .line 614
    .line 615
    new-instance v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 616
    .line 617
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 618
    .line 619
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainV4DataBean;->getJp_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    invoke-direct {v1, v4, v2}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->mDataList:Ljava/util/List;

    .line 627
    .line 628
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    :cond_18
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 632
    .line 633
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getPd_info_popup()Lcom/join/mgps/dto/DomainInfoBean;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    if-eqz v1, :cond_19

    .line 638
    .line 639
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 640
    .line 641
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getPd_info_popup()Lcom/join/mgps/dto/DomainInfoBean;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->showDomainDialog(Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 646
    .line 647
    .line 648
    :cond_19
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->recommendAdapter:Lcom/join/mgps/adapter/t2;

    .line 649
    .line 650
    iget-object v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->mDataList:Ljava/util/List;

    .line 651
    .line 652
    invoke-virtual {v1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 653
    .line 654
    .line 655
    goto :goto_9

    .line 656
    :cond_1a
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->noDiscuss:Landroid/view/View;

    .line 657
    .line 658
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v9}, Lcom/join/mgps/activity/GameMainActivity3;->setForumVisibility(Z)V

    .line 662
    .line 663
    .line 664
    :goto_9
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/BaseActivity;->setSystemUiHide(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->client:Lcom/join/mgps/rpc/k;

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcAccountClient:Lcom/join/mgps/rpc/l;

    .line 18
    .line 19
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 24
    .line 25
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 30
    .line 31
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->k()Lcom/join/mgps/rpc/impl/c;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcArchiveClient:Lcom/join/mgps/rpc/d;

    .line 36
    .line 37
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameName:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    new-instance v1, Landroid/view/View;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->noDiscuss:Landroid/view/View;

    .line 80
    .line 81
    new-instance v1, Lcom/join/mgps/adapter/i2;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 84
    .line 85
    invoke-direct {v1, p0, v2, p0}, Lcom/join/mgps/adapter/i2;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/i2$a;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->adapter:Lcom/join/mgps/adapter/i2;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewLeftGv:Landroid/widget/GridView;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewLeftGv:Landroid/widget/GridView;

    .line 96
    .line 97
    const/4 v2, 0x2

    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const v2, 0x7f071658

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    float-to-int v1, v1

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const v3, 0x7f071543

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    float-to-int v2, v2

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const v4, 0x7f07138a

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    float-to-int v3, v3

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    const v5, 0x7f0713dc

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 156
    .line 157
    mul-int/lit8 v5, v3, 0x2

    .line 158
    .line 159
    sub-int/2addr v4, v5

    .line 160
    mul-int v1, v1, v4

    .line 161
    .line 162
    div-int/2addr v1, v2

    .line 163
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 164
    .line 165
    const/4 v4, -0x1

    .line 166
    invoke-direct {v2, v1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 170
    .line 171
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 172
    .line 173
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 174
    .line 175
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->getDataFromDb()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->getData()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->getAllAchievementsData()V

    .line 187
    .line 188
    .line 189
    new-instance v1, Lcom/join/mgps/socket/fight/arena/a;

    .line 190
    .line 191
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3$j;

    .line 192
    .line 193
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity3$j;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 194
    .line 195
    .line 196
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    .line 197
    .line 198
    .line 199
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 200
    .line 201
    invoke-static {}, Lnotchtools/geek/com/notchtools/b;->o()Lnotchtools/geek/com/notchtools/b;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Lnotchtools/geek/com/notchtools/b;->e(Landroid/view/Window;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_1

    .line 214
    .line 215
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->leftContainer:Landroid/view/View;

    .line 216
    .line 217
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 222
    .line 223
    invoke-static {}, Lnotchtools/geek/com/notchtools/b;->o()Lnotchtools/geek/com/notchtools/b;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2, v3}, Lnotchtools/geek/com/notchtools/b;->g(Landroid/view/Window;)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    const v4, 0x7f0711b5

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    add-int/2addr v2, v3

    .line 247
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 248
    .line 249
    .line 250
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 251
    .line 252
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 261
    .line 262
    .line 263
    new-instance v0, Lcom/join/mgps/adapter/t2;

    .line 264
    .line 265
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/t2;-><init>(Landroid/content/Context;)V

    .line 266
    .line 267
    .line 268
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->recommendAdapter:Lcom/join/mgps/adapter/t2;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/t2;->setGameId(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 276
    .line 277
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->recommendAdapter:Lcom/join/mgps/adapter/t2;

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->from:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_2

    .line 289
    .line 290
    const-string v0, "platform"

    .line 291
    .line 292
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->from:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_3

    .line 299
    .line 300
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 301
    .line 302
    if-eqz v0, :cond_3

    .line 303
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v1, ""

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->from:Ljava/lang/String;

    .line 328
    .line 329
    :cond_3
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    sget-object v2, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    .line 334
    .line 335
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 344
    .line 345
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivity3;->from:Ljava/lang/String;

    .line 346
    .line 347
    const/4 v6, 0x0

    .line 348
    move-object v5, v7

    .line 349
    invoke-virtual/range {v1 .. v7}, Lcom/papa/sim/statistic/t;->a1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->adResultReceiver:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    .line 353
    .line 354
    if-nez v0, :cond_4

    .line 355
    .line 356
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    .line 357
    .line 358
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 359
    .line 360
    .line 361
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->adResultReceiver:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    .line 362
    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    .line 364
    .line 365
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    .line 367
    .line 368
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gameout"

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.gameout.ad"

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->adResultReceiver:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    .line 379
    .line 380
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    .line 382
    .line 383
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 384
    .line 385
    if-nez v0, :cond_5

    .line 386
    .line 387
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->initListener()V

    .line 388
    .line 389
    .line 390
    new-instance v0, Lcom/join/mgps/dialog/x;

    .line 391
    .line 392
    const v1, 0x7f13017f

    .line 393
    .line 394
    .line 395
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/x;-><init>(Landroid/content/Context;I)V

    .line 396
    .line 397
    .line 398
    const-string v1, "\u5b58\u6863\u4e0b\u8f7d\u4e2d"

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    const-string v1, "\u540e\u53f0\u8fd0\u884c"

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    new-instance v1, Lcom/join/mgps/activity/GameMainActivity3$l;

    .line 417
    .line 418
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivity3$l;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->d(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    new-instance v1, Lcom/join/mgps/activity/GameMainActivity3$k;

    .line 426
    .line 427
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivity3$k;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->a(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 435
    .line 436
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->isShowFriendUI()Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-nez v0, :cond_6

    .line 441
    .line 442
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->getNum()V

    .line 443
    .line 444
    .line 445
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->checkBackupArchieve()V

    .line 446
    .line 447
    .line 448
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
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->getPspData()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->cancelRegisterObserver()V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method checkBackupArchieve()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->d2(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "backup"

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    array-length v3, v3

    .line 91
    if-gtz v3, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    new-instance v3, Ljava/io/File;

    .line 95
    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-static {p0}, Lcom/papa91/arc/util/StoreUtils;->getEmuRoot(Landroid/content/Context;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    array-length v1, v0

    .line 136
    const/4 v4, 0x0

    .line 137
    :goto_0
    if-ge v4, v1, :cond_3

    .line 138
    .line 139
    aget-object v5, v0, v4

    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-static {v6, v5}, Lcom/join/mgps/Util/o0;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    add-int/lit8 v4, v4, 0x1

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const/4 v1, 0x1

    .line 184
    invoke-static {v0, v1}, Lcom/join/mgps/Util/o0;->l(Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    :cond_4
    :goto_1
    return-void
.end method

.method checkUserInfoFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u767b\u5f55\u5df2\u5931\u6548\u8bf7\u60a8\u91cd\u65b0\u767b\u5f55"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->showToast(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->intentLogin()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method destroyTBidAdVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->nativeAdDataList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->nativeAdDataList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->destroy()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->windNativeAd:Lcom/windmill/sdk/natives/WMNativeAd;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAd;->destroy()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method discussMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->noDiscuss:Landroid/view/View;

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
    iget v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->areaId:I

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
    iget v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->areaId:I

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->toCommentAllList()V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method downFinishToCopy(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->M4(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->d2(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Ljava/io/File;

    .line 32
    .line 33
    sget-object v3, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, "papa91"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/16 v3, 0x2f

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v3, Ljava/io/File;

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_0

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 116
    .line 117
    .line 118
    :cond_0
    new-instance v4, Ljava/lang/String;

    .line 119
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Ljava/io/File;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_1

    .line 162
    .line 163
    return-void

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0, v4}, Lcom/join/mgps/Util/o0;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v5, ".png"

    .line 208
    .line 209
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {p0, v1, v2, v3}, Lcom/join/mgps/activity/GameMainActivity3;->downLodingImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    if-eqz v0, :cond_2

    .line 220
    .line 221
    new-instance v0, Ljava/io/File;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->updateStatu(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method downLodingImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageUrl",
            "filePath",
            "fileName"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance p3, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-static {p3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 46
    .line 47
    .line 48
    new-instance p2, Ljava/net/URL;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 58
    .line 59
    const/16 p2, 0x1388

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 62
    .line 63
    .line 64
    const-string p2, "GET"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p2, 0x1

    .line 70
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/16 v0, 0xc8

    .line 78
    .line 79
    if-ne p2, v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Ljava/io/FileOutputStream;

    .line 86
    .line 87
    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 88
    .line 89
    .line 90
    const/16 v0, 0x400

    .line 91
    .line 92
    new-array v0, v0, [B

    .line 93
    .line 94
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/4 v2, -0x1

    .line 99
    if-eq v1, v2, :cond_2

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    invoke-static {p3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catch_0
    move-exception p1

    .line 124
    move-object v0, p3

    .line 125
    goto :goto_1

    .line 126
    :catch_1
    move-exception p1

    .line 127
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_2
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_2
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->hideLoadingDialog()V

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewYueZhanRlDo()V
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->cancelCreateGameCountDown()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ll_loading:Landroid/view/View;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mCreateGameCountDowner:Landroid/os/CountDownTimer;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->hideLoadingDialog()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

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
    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->showToast(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
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
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->client:Lcom/join/mgps/rpc/k;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->getGameCommentRequestBean()Lcom/join/mgps/dto/RequestCommentAllListArgs;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcClient:Lcom/join/mgps/rpc/f;

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->general:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->setCommunityCommentDataUi()V

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->client:Lcom/join/mgps/rpc/k;

    .line 47
    .line 48
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->J0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-boolean v4, p0, Lcom/join/mgps/activity/GameMainActivity3;->isResume:Z

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->showImg(Lcom/join/mgps/dto/GameMainV4DataBean;)V

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
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameTagId:Ljava/lang/String;

    .line 88
    .line 89
    :cond_1
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/GameMainActivity3;->updateUI(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V
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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameTagId:Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->updateUI(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->areaId:I

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->setCommunityDataUi()V
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcForumClient:Lcom/join/mgps/rpc/i;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->setCommunityDataUi()V
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcForumClient:Lcom/join/mgps/rpc/i;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->setCommunityDataUi()V
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->getArchiveCouldArgs()Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcArchiveClient:Lcom/join/mgps/rpc/d;

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iput-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->recordRoms:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->recordRoms:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->recordRoms:Ljava/util/List;

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
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->marcketDownEnable:Z

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
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->marcketPGNEnable:Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->recordRoms:Ljava/util/List;

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
    invoke-static {v9, v10}, Lcom/join/mgps/activity/GameMainActivity3;->date2TimeStamp(Ljava/lang/String;Ljava/lang/String;)J

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
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameMainActivity3;->setIsVBA(Z)V

    .line 301
    .line 302
    .line 303
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->recordRoms:Ljava/util/List;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->upNum(I)V

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_c
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->upNum(I)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_d
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->upNum(I)V
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

.method getPspData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->rpcAccountClient:Lcom/join/mgps/rpc/l;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->checkUserInfoFailed()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->pspBattleServers:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->showPspDialog()V
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

.method public getVideoHeight(Landroid/content/Context;)I
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
    const-string v0, "window"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/WindowManager;

    .line 8
    .line 9
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    .line 20
    .line 21
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    div-float/2addr v0, p1

    .line 27
    float-to-int p1, v0

    .line 28
    return p1
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
    iget-object p2, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->hideLoadingDialog()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ll_loading:Landroid/view/View;

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

.method public initGDTInfoStreamAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInfoStreamVideo:Lcom/join/mgps/ad/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$g;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/GameMainActivity3$g;-><init>(Lcom/join/mgps/activity/GameMainActivity3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInfoStreamVideo:Lcom/join/mgps/ad/e;

    .line 17
    .line 18
    new-instance p1, Lcom/join/mgps/activity/GameMainActivity3$h;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/GameMainActivity3$h;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/c;->e(Lcom/join/mgps/ad/c$a;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInfoStreamVideo:Lcom/join/mgps/ad/e;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/ad/e;->a()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInfoStreamVideo:Lcom/join/mgps/ad/e;

    .line 33
    .line 34
    iget p2, p0, Lcom/join/mgps/activity/GameMainActivity3;->videoHeight:I

    .line 35
    .line 36
    int-to-double p2, p2

    .line 37
    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    mul-double p2, p2, v0

    .line 43
    .line 44
    double-to-int p2, p2

    .line 45
    const/4 p3, -0x2

    .line 46
    const/4 v0, 0x3

    .line 47
    invoke-virtual {p1, v0, p2, p3}, Lcom/join/mgps/ad/e;->b(III)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public initGDTInteractAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInteractAdVideo:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$d;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/GameMainActivity3$d;-><init>(Lcom/join/mgps/activity/GameMainActivity3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInteractAdVideo:Lcom/join/mgps/ad/f;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/f;->a()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInteractAdVideo:Lcom/join/mgps/ad/f;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/f;->d(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public initGromoreTTAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->groMFullSVideo:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$i;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/GameMainActivity3$i;-><init>(Lcom/join/mgps/activity/GameMainActivity3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->groMFullSVideo:Lcom/join/mgps/ad/j;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/j;->a()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->groMFullSVideo:Lcom/join/mgps/ad/j;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/j;->d(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public initInfoStreamTTAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInfoStreamVideo:Lcom/join/mgps/ad/w;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$e;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/GameMainActivity3$e;-><init>(Lcom/join/mgps/activity/GameMainActivity3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInfoStreamVideo:Lcom/join/mgps/ad/w;

    .line 17
    .line 18
    new-instance p1, Lcom/join/mgps/activity/GameMainActivity3$f;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/GameMainActivity3$f;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/c;->e(Lcom/join/mgps/ad/c$a;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInfoStreamVideo:Lcom/join/mgps/ad/w;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/ad/w;->a()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInfoStreamVideo:Lcom/join/mgps/ad/w;

    .line 33
    .line 34
    iget p2, p0, Lcom/join/mgps/activity/GameMainActivity3;->videoHeight:I

    .line 35
    .line 36
    int-to-double p2, p2

    .line 37
    const-wide/high16 v0, 0x3fec000000000000L    # 0.875

    .line 38
    .line 39
    mul-double p2, p2, v0

    .line 40
    .line 41
    double-to-int p2, p2

    .line 42
    const/4 p3, 0x0

    .line 43
    const/4 v0, 0x3

    .line 44
    invoke-virtual {p1, v0, p2, p3}, Lcom/join/mgps/ad/w;->b(III)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public initInteractTTAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "adid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInteractAdVideo:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$c;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/GameMainActivity3$c;-><init>(Lcom/join/mgps/activity/GameMainActivity3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInteractAdVideo:Lcom/join/mgps/ad/y;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/y;->a()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInteractAdVideo:Lcom/join/mgps/ad/y;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/y;->d(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method intentLogin()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

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

.method protected isShowFriendUI()Z
    .locals 2

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    :goto_1
    return v0
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
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    :try_start_1
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v1, v2, :cond_5

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-instance v1, Lcom/join/android/app/common/utils/APKUtils;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/join/android/app/common/utils/APKUtils;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, p1, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    :try_start_2
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 62
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 67
    .line 68
    .line 69
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    return v0

    .line 73
    :cond_2
    :try_start_4
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 74
    .line 75
    const/16 p2, 0x14a

    .line 76
    .line 77
    if-gt p1, p2, :cond_5

    .line 78
    .line 79
    return v0

    .line 80
    :catch_1
    move-exception p1

    .line 81
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 82
    .line 83
    .line 84
    return v0

    .line 85
    :catch_2
    move-exception p1

    .line 86
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    return v0

    .line 90
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v2, 0x2

    .line 95
    if-ne v1, v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ne v1, v2, :cond_4

    .line 102
    .line 103
    new-array v1, v0, [Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {p1, p2, v0, v1}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 109
    return p1

    .line 110
    :cond_4
    return v0

    .line 111
    :catch_3
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :catch_4
    :cond_5
    const/4 p1, 0x1

    .line 116
    return p1
.end method

.method public loadAdStreamVideo()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->simulator_exit_information_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-class v2, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    .line 33
    .line 34
    :cond_0
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getSwitch_state()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x1

    .line 41
    if-ne v1, v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lez v1, :cond_2

    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/join/mgps/dto/PlayCfgBean;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-static {v1}, Lcom/join/mgps/ad/p;->b(Ljava/util/List;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const/4 v1, 0x0

    .line 94
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->loadAdStreamVideoByPage()V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method

.method public loadAdVideo()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->needShowAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->simulator_exit_open_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-class v2, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    .line 39
    .line 40
    :cond_0
    if-eqz v0, :cond_6

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getSwitch_state()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    if-ne v1, v2, :cond_6

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-lez v1, :cond_2

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lcom/join/mgps/dto/PlayCfgBean;

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-static {v1}, Lcom/join/mgps/ad/p;->b(Ljava/util/List;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    const/4 v1, 0x0

    .line 100
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-ne v0, v2, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 117
    .line 118
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->loadTTAdVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const/4 v1, 0x2

    .line 129
    if-ne v0, v1, :cond_4

    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 132
    .line 133
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->loadGdtAdVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    const/4 v1, 0x7

    .line 144
    if-ne v0, v1, :cond_5

    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 147
    .line 148
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->loadGromoreAdVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 149
    .line 150
    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 152
    .line 153
    const-string v1, "AD_LOG_TAG \u52a0\u8f7d\u878d\u5408\u5e7f\u544a \u9000\u51fa\u5e7f\u544a"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/16 v1, 0xa

    .line 166
    .line 167
    if-ne v0, v1, :cond_6

    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 170
    .line 171
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->loadTbAdStreamVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    :goto_2
    return-void
.end method

.method public loadGdtAdStreamVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/mgps/activity/GameMainActivity3;->initGDTInfoStreamAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public loadGdtAdVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/mgps/activity/GameMainActivity3;->initGDTInteractAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public loadGromoreAdVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/mgps/activity/GameMainActivity3;->initGromoreTTAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public loadTTAdStreamVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/mgps/activity/GameMainActivity3;->initInfoStreamTTAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public loadTTAdVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/mgps/activity/GameMainActivity3;->initInteractTTAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public loadTbAdStreamVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playCfgBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/join/mgps/ad/adapter/e;->a(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->windNativeAd:Lcom/windmill/sdk/natives/WMNativeAd;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f0715d0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 45
    .line 46
    div-float/2addr v1, v2

    .line 47
    float-to-int v1, v1

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const v2, 0x7f071372

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "ad_key_width"

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "ad_key_height"

    .line 78
    .line 79
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/windmill/sdk/natives/WMNativeAd;

    .line 83
    .line 84
    new-instance v2, Lcom/windmill/sdk/natives/WMNativeAdRequest;

    .line 85
    .line 86
    const/4 v3, 0x3

    .line 87
    invoke-direct {v2, p2, v0, v3, p1}, Lcom/windmill/sdk/natives/WMNativeAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, p0, v2}, Lcom/windmill/sdk/natives/WMNativeAd;-><init>(Landroid/content/Context;Lcom/windmill/sdk/natives/WMNativeAdRequest;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->windNativeAd:Lcom/windmill/sdk/natives/WMNativeAd;

    .line 94
    .line 95
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->windNativeAd:Lcom/windmill/sdk/natives/WMNativeAd;

    .line 96
    .line 97
    new-instance p2, Lcom/join/mgps/activity/GameMainActivity3$b;

    .line 98
    .line 99
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/GameMainActivity3$b;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAd;->loadAd(Lcom/windmill/sdk/natives/WMNativeAd$NativeAdLoadListener;)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method noDiscuss()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->toCommentAllList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onADEvent(Lcom/join/mgps/event/a;)V
    .locals 5
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/a;->a()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, p0}, Lcom/join/mgps/activity/GameMainActivity3;->getVideoHeight(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->videoHeight:I

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->clearStreamList()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/event/a;->b()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->loadAdStreamVideo()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->loadAdVideo()V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->isGameExit:Z

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/event/a;->a()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v3, 0x2

    .line 42
    if-ne v0, v3, :cond_3

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->clearStreamList()V

    .line 45
    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->isGameExit:Z

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/event/a;->a()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v4, 0x3

    .line 56
    if-ne v0, v4, :cond_4

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->clearStreamList()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->loadAdStreamVideo()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/event/a;->a()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v4, 0x4

    .line 71
    if-ne v0, v4, :cond_8

    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 74
    .line 75
    if-eqz p1, :cond_a

    .line 76
    .line 77
    new-instance p1, Lcom/join/mgps/event/b0;

    .line 78
    .line 79
    const/4 v0, 0x5

    .line 80
    invoke-direct {p1, v0}, Lcom/join/mgps/event/b0;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-ne v0, v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Lcom/join/mgps/event/b0;->d(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttList:Ljava/util/List;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/join/mgps/event/b0;->e(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-ne v0, v3, :cond_6

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Lcom/join/mgps/event/b0;->d(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtList:Ljava/util/List;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/join/mgps/event/b0;->e(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/16 v1, 0xa

    .line 124
    .line 125
    if-ne v0, v1, :cond_7

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lcom/join/mgps/event/b0;->d(I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->nativeAdDataList:Ljava/util/List;

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/join/mgps/event/b0;->e(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->nativeAdDataList:Ljava/util/List;

    .line 136
    .line 137
    if-nez v0, :cond_7

    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBeanStream:Lcom/join/mgps/dto/PlayCfgBean;

    .line 140
    .line 141
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->loadTbAdStreamVideo(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 142
    .line 143
    .line 144
    :cond_7
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/event/a;->a()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    const/4 v0, 0x7

    .line 157
    if-ne p1, v0, :cond_a

    .line 158
    .line 159
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 160
    .line 161
    if-eqz p1, :cond_9

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean;->getRecommendAdList()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto :goto_1

    .line 168
    :cond_9
    const/4 p1, 0x0

    .line 169
    :goto_1
    if-eqz p1, :cond_a

    .line 170
    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-lez v0, :cond_a

    .line 176
    .line 177
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Lcom/join/mgps/dto/RecommendAd;

    .line 182
    .line 183
    new-instance v0, Lcom/join/mgps/event/b0;

    .line 184
    .line 185
    const/16 v1, 0x8

    .line 186
    .line 187
    invoke-direct {v0, v1}, Lcom/join/mgps/event/b0;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/b0;->e(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_a
    :goto_2
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
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->updateLocalAndNet(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->z0(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->adResultReceiver:Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInteractAdVideo:Lcom/join/mgps/ad/y;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/ad/y;->w()V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInteractAdVideo:Lcom/join/mgps/ad/f;

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/ad/f;->v()V

    .line 86
    .line 87
    .line 88
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInfoStreamVideo:Lcom/join/mgps/ad/w;

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/ad/w;->c()V

    .line 93
    .line 94
    .line 95
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInfoStreamVideo:Lcom/join/mgps/ad/e;

    .line 96
    .line 97
    if-eqz v0, :cond_8

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/ad/e;->c()V

    .line 100
    .line 101
    .line 102
    :cond_8
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttList:Ljava/util/List;

    .line 103
    .line 104
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtList:Ljava/util/List;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 107
    .line 108
    if-eqz v0, :cond_9

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_9
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onDestroy()V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 117
    .line 118
    if-eqz v0, :cond_a

    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->listener:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 121
    .line 122
    if-eqz v1, :cond_a

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/b;->j(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 125
    .line 126
    .line 127
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->destroyTBidAdVideo()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    const-string v0, "gameId"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "from"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->from:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "GAME_HOME_PAGE"

    .line 41
    .line 42
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->type:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->afterViews()V

    .line 49
    .line 50
    .line 51
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->hideLoadingDialog()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ""

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2, v3, p0}, Lq5/f;->N(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->d(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 90
    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->initListener()V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->e(Landroid/content/Context;)Z

    .line 101
    .line 102
    .line 103
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->toControllerSetting()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->discussMore()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->gameTest()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_3
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewCunDangRl()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_4
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewLocalFightRl()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewYueZhanRl()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_6
    const/4 p1, 0x1

    .line 38
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewPaiWeiRl(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->gameMainNewPaiWeiRl(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/GameMainActivity3$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivity3$a;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x3c

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method recvedDownData(Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.cloud.game.main.downCloud"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->isActivityVisible()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downNumber:I

    .line 15
    .line 16
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downNumberNow:I

    .line 17
    .line 18
    const-string v1, "downCloud"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->listDataBeans:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    const/4 v1, 0x3

    .line 70
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/github/snowdream/android/app/downloader/c;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    move-object v3, v1

    .line 84
    invoke-direct/range {v3 .. v8}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v3, "1/"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, "K"

    .line 128
    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string v2, "0"

    .line 137
    .line 138
    invoke-virtual {v1, p1, v2, v0}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method recvedDownDatav2(Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.cloud.downCloud.all"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->isActivityVisible()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const-string v0, "downClouds"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downNumber:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 28
    .line 29
    const-string v1, "0K"

    .line 30
    .line 31
    const-string v2, "1/"

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v0, v4, v1, v3}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 61
    .line 62
    .line 63
    :cond_2
    iput v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->downNumberNow:I

    .line 64
    .line 65
    iget v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downNumber:I

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/16 v3, 0x64

    .line 91
    .line 92
    iget v4, p0, Lcom/join/mgps/activity/GameMainActivity3;->downNumber:I

    .line 93
    .line 94
    div-int/2addr v3, v4

    .line 95
    invoke-virtual {v0, v2, v1, v3}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->listDataBeans:Ljava/util/Map;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    sget-object v2, Lcom/join/mgps/Util/z;->h:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    new-instance v3, Ljava/io/File;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    const/4 v1, 0x3

    .line 185
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 186
    .line 187
    .line 188
    new-instance v1, Lcom/github/snowdream/android/app/downloader/c;

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    .line 195
    .line 196
    .line 197
    move-result-wide v7

    .line 198
    move-object v3, v1

    .line 199
    invoke-direct/range {v3 .. v8}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 203
    .line 204
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_4
    return-void
.end method

.method public senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "eventName"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "gameId"

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method setCommunityCommentDataUi()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->general:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->noDiscuss:Landroid/view/View;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->setForumVisibility(Z)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->tempList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->noDiscuss:Landroid/view/View;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivity3;->setForumVisibility(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->noDiscuss:Landroid/view/View;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->setForumVisibility(Z)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method setForumVisibility(Z)V
    .locals 5
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x7

    .line 12
    const/4 v3, 0x6

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/DynamicEntranceBean;->getTypeId()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eq v4, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/DynamicEntranceBean;->getTypeId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v0, ""

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 42
    .line 43
    new-instance v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 44
    .line 45
    const-string v4, "\u793e\u533a"

    .line 46
    .line 47
    invoke-direct {v1, v4, v0, v3}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_3
    sget-object p1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->itemBeans:Ljava/util/List;

    .line 76
    .line 77
    new-instance v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 78
    .line 79
    const-string v3, "\u624b\u67c4\u8bbe\u7f6e"

    .line 80
    .line 81
    invoke-direct {v1, v3, v0, v2}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->adapter:Lcom/join/mgps/adapter/i2;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 90
    .line 91
    .line 92
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
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->isVBA:Z

    .line 2
    .line 3
    return-void
.end method

.method public showAdVideo()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->needShowAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->isGameExit:Z

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, ""

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInteractAdVideo:Lcom/join/mgps/ad/y;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p0, v3}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->hasDialog:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v3, 0x2

    .line 52
    if-ne v0, v3, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gdtInteractAdVideo:Lcom/join/mgps/ad/f;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p0, v3}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->hasDialog:Z

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->playCfgBean:Lcom/join/mgps/dto/PlayCfgBean;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v3, 0x7

    .line 82
    if-ne v0, v3, :cond_3

    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->groMFullSVideo:Lcom/join/mgps/ad/j;

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, p0, v3}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->hasDialog:Z

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 105
    .line 106
    const-string v1, "AD_LOG_TAG \u663e\u793a\u878d\u5408\u5e7f\u544a \u9000\u51fa\u5e7f\u544a"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->isGameExit:Z

    .line 113
    .line 114
    :cond_4
    return-void
.end method

.method showDialogDowning()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.wufun.cloud.game.main.showDownDialog"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->g()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method showDomainDialog(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pdInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->domainDialog:Lcom/join/mgps/dialog/n1;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;->shouldShowDomainDialog()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/dialog/n1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/n1;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->domainDialog:Lcom/join/mgps/dialog/n1;

    .line 27
    .line 28
    new-instance v1, Lcom/join/mgps/activity/GameMainActivity3$m;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/GameMainActivity3$m;-><init>(Lcom/join/mgps/activity/GameMainActivity3;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/n1;->t(Lcom/join/mgps/dialog/n1$a;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->domainDialog:Lcom/join/mgps/dialog/n1;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dialog/n1;->show()V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdSimulatorStartWin:Lcom/papa/sim/statistic/Event;

    .line 46
    .line 47
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public showFeedBackDialog()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->hasDialog:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->e(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->hasDialog:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public showGromoreAdVideo(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->groMFullSVideo:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->netWorkPspDialog:Lcom/join/mgps/activity/GameMainActivity3$s;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->netWorkPspDialog:Lcom/join/mgps/activity/GameMainActivity3$s;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3$s;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 19
    .line 20
    const v2, 0x7f13017f

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/GameMainActivity3$s;-><init>(Lcom/join/mgps/activity/GameMainActivity3;Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->netWorkPspDialog:Lcom/join/mgps/activity/GameMainActivity3$s;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public showTTAdVideo(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInteractAdVideo:Lcom/join/mgps/ad/y;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->ttInteractAdVideo:Lcom/join/mgps/ad/y;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method startGame()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    const-string v1, "\u6e38\u620f\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->f2(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x2

    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->startGameV2()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3$n;

    .line 72
    .line 73
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity3$n;-><init>(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    const-string v4, "RAW_SIMULATOR"

    .line 78
    .line 79
    invoke-static {v0, v3, v1, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->startGameV2()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->showToast(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameMainActivity3;->showToast(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
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
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    if-eqz v0, :cond_c

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean;->getNetBattle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v3, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 148
    .line 149
    if-eqz v2, :cond_3

    .line 150
    .line 151
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 167
    .line 168
    const/16 v3, 0x8

    .line 169
    .line 170
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v2, v3, v8}, Lcom/join/mgps/Util/UtilsMy;->Z1(Landroid/content/Context;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    if-eqz v0, :cond_4

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    goto :goto_3

    .line 182
    :cond_4
    const/4 v0, 0x0

    .line 183
    :goto_3
    if-nez v0, :cond_5

    .line 184
    .line 185
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 186
    .line 187
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_6

    .line 193
    .line 194
    :cond_5
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_6

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    const/4 v8, 0x7

    .line 211
    if-lt v3, v8, :cond_6

    .line 212
    .line 213
    const/4 v3, 0x6

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    const/16 v3, 0x31

    .line 219
    .line 220
    if-ne v3, v2, :cond_6

    .line 221
    .line 222
    const/4 v2, 0x1

    .line 223
    goto :goto_4

    .line 224
    :cond_6
    const/4 v2, 0x0

    .line 225
    :goto_4
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 226
    .line 227
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    if-eqz v3, :cond_7

    .line 232
    .line 233
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainV4DataBean;->getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMaingameinfo;->getMax_battle_count()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    move v14, v3

    .line 244
    goto :goto_5

    .line 245
    :cond_7
    const/4 v14, 0x0

    .line 246
    :goto_5
    if-ne v0, v5, :cond_9

    .line 247
    .line 248
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->battleIp:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_8

    .line 255
    .line 256
    iget v12, v1, Lcom/join/mgps/activity/GameMainActivity3;->battlePort:I

    .line 257
    .line 258
    if-eqz v12, :cond_8

    .line 259
    .line 260
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 261
    .line 262
    iget-object v9, v1, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 263
    .line 264
    const/4 v10, 0x1

    .line 265
    iget-object v11, v1, Lcom/join/mgps/activity/GameMainActivity3;->battleIp:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v13, v1, Lcom/join/mgps/activity/GameMainActivity3;->fastIp:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static/range {v8 .. v15}, Lcom/join/mgps/Util/UtilsMy;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_8
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 274
    .line 275
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 276
    .line 277
    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_9
    if-ne v0, v4, :cond_b

    .line 282
    .line 283
    if-eqz v2, :cond_b

    .line 284
    .line 285
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->battleIp:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_a

    .line 292
    .line 293
    iget v12, v1, Lcom/join/mgps/activity/GameMainActivity3;->battlePort:I

    .line 294
    .line 295
    if-eqz v12, :cond_a

    .line 296
    .line 297
    iget-object v8, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 298
    .line 299
    iget-object v9, v1, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 300
    .line 301
    const/4 v10, 0x1

    .line 302
    iget-object v11, v1, Lcom/join/mgps/activity/GameMainActivity3;->battleIp:Ljava/lang/String;

    .line 303
    .line 304
    iget-object v13, v1, Lcom/join/mgps/activity/GameMainActivity3;->fastIp:Ljava/lang/String;

    .line 305
    .line 306
    invoke-static/range {v8 .. v15}, Lcom/join/mgps/Util/UtilsMy;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_a
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 311
    .line 312
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 313
    .line 314
    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_b
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 319
    .line 320
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 321
    .line 322
    invoke-static {v7, v0, v2, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_c
    iget-object v0, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 327
    .line 328
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 329
    .line 330
    invoke-static {v7, v0, v3, v6, v2}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    iget-object v2, v1, Lcom/join/mgps/activity/GameMainActivity3;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 338
    .line 339
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    iget-object v3, v1, Lcom/join/mgps/activity/GameMainActivity3;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 344
    .line 345
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/t;->I0(Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    return-void
.end method

.method toCommentAllList()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

    .line 2
    .line 3
    if-eqz v0, :cond_4

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
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    if-nez v1, :cond_3

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
    goto :goto_1

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/join/mgps/activity/CommentAllListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

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
    const/4 v3, 0x0

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_bespeak_switch()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    :goto_0
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_is_started()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->g(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->j(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/activity/ForumIndexActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_2
    return-void
.end method

.method toControllerSetting()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->context:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "8873670"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
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

.method updateStatu(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/event/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/event/i;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/i;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/i;->j(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->mainDataShow:Lcom/join/mgps/dto/GameMainV4DataBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->gameName:Landroid/widget/TextView;

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
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/GameMainActivity3;->updateLocalAndNet(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

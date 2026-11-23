.class public final Lcom/join/mgps/activity/MGGameDetailActivity_;
.super Lcom/join/mgps/activity/MGGameDetailActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGGameDetailActivity_$k1;
    }
.end annotation


# static fields
.field public static final EXT_BEAN_EXTRA:Ljava/lang/String; = "extBean"

.field public static final INTENTDATE_EXTRA:Ljava/lang/String; = "intentdate"


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final intentFilter2_:Landroid/content/IntentFilter;

.field private final onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

.field private final onViewChangedNotifier_:Lzc/c;

.field private final onpayFinishReceiver_:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onpayFinishReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$2;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->hideDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateAdapter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshVoucherData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->intentLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showMain(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showMain(Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->setData(Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showProgress()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1901(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2001(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2101(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateLine(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2201(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadingPoint(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2301(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateNoOpenPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2401(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2501(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showSvipGiftDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2601(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showVipDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2701(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->Refresh()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2801(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateListHeadAndFoot()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2901(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->upNomore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3001(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->hideI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3101(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->addData(Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3201(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->cleanData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3301(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->initPopowindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3401(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GameVoucherBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->getVoucher(Lcom/join/mgps/dto/GameVoucherBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3501(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->getGiftPackageOperation(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3601(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getToken()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3701(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/MGGameDetailActivity;->onPraiseX(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3801(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/MGGameDetailActivity;->onUnPraiseX(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3901(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->changeGameFollow(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4001(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getDetailData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4101(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getGameCommentList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4201(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->postPraised(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4301(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4401(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getDownloadTaskInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4501(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getGameFromList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4601(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->AddGameToFrom()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4701(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/MGGameDetailActivity;->DelectGame(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/MGGameDetailActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkReset(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/MGGameDetailActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->updatePay(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->onPraiseFail()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
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
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity_;->injectExtras_()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 15
    .line 16
    const-string v0, "com.join,mgps.sim.sdkgamePayfinish"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 29
    .line 30
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onpayFinishReceiver_:Landroid/content/BroadcastReceiver;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "intentdate"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 26
    .line 27
    :cond_0
    const-string v1, "extBean"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGGameDetailActivity_$k1;
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
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$k1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$k1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MGGameDetailActivity_$k1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$k1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$k1;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method AddGameToFrom()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$e1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$e1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method DelectGame(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "game_id",
            "holder"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/MGGameDetailActivity_$f1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    move-object v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/MGGameDetailActivity_$f1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method Refresh()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$j0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$j0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method addData(Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$n0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$n0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method changeGameFollow(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGGameDetailActivity_$w0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGGameDetailActivity_$w0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method checkDownlodingNumber()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$b1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$b1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public checkReset(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "position",
            "i"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGGameDetailActivity_$n;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;II)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method cleanData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$o0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$o0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method getDetailData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$x0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$x0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$c1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$c1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getGameCommentList()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$y0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$y0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getGameFromList()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$d1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$d1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getGiftPackageOperation(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGGameDetailActivity_$s0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGGameDetailActivity_$s0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getToken()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$t0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$t0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getVoucher(Lcom/join/mgps/dto/GameVoucherBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mBean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGGameDetailActivity_$r0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGGameDetailActivity_$r0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GameVoucherBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method hideDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$h;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method hideI()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$m0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$m0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method initPopowindow()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$q0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$q0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method intentLogin()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$t;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d06f9

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onpayFinishReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method onPraiseFail()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$q;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method onPraiseX(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/MGGameDetailActivity_$u0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    move v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/MGGameDetailActivity_$u0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method onUnPraiseX(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/MGGameDetailActivity_$v0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    move v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/MGGameDetailActivity_$v0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a17ec

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->topBarline:Landroid/view/View;

    .line 9
    .line 10
    const v0, 0x7f0a1789

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    const v0, 0x7f0a0518

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadRLayout2:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    const v0, 0x7f0a0f92

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    const v0, 0x7f0a0f95

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loading:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    const v0, 0x7f0a06e2

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameDescribeInit:Landroid/widget/TextView;

    .line 64
    .line 65
    const v0, 0x7f0a06fe

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/ListView;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameListView:Landroid/widget/ListView;

    .line 75
    .line 76
    const v0, 0x7f0a0499

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detialDownBottom:Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    const v0, 0x7f0a1790

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/TextView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->title_textview:Landroid/widget/TextView;

    .line 97
    .line 98
    const v0, 0x7f0a014e

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/ImageView;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->back_image:Landroid/widget/ImageView;

    .line 108
    .line 109
    const v0, 0x7f0a095c

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/TextView;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 119
    .line 120
    const v0, 0x7f0a12b3

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->progressbarLayout:Landroid/widget/RelativeLayout;

    .line 130
    .line 131
    const v0, 0x7f0a095d

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 141
    .line 142
    const v0, 0x7f0a02dc

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/ImageView;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 152
    .line 153
    const v0, 0x7f0a123f

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/widget/TextView;

    .line 161
    .line 162
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->percent:Landroid/widget/TextView;

    .line 163
    .line 164
    const v0, 0x7f0a02db

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroid/widget/ProgressBar;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 174
    .line 175
    const v0, 0x7f0a0514

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Landroid/widget/LinearLayout;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadLayout:Landroid/widget/LinearLayout;

    .line 185
    .line 186
    const v0, 0x7f0a148e

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/widget/TextView;

    .line 194
    .line 195
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text:Landroid/widget/TextView;

    .line 196
    .line 197
    const v0, 0x7f0a0208

    .line 198
    .line 199
    .line 200
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/widget/TextView;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 207
    .line 208
    const v0, 0x7f0a148f

    .line 209
    .line 210
    .line 211
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 216
    .line 217
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 218
    .line 219
    const v0, 0x7f0a07f7

    .line 220
    .line 221
    .line 222
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroid/widget/ImageView;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    .line 229
    .line 230
    const v0, 0x7f0a0515

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Landroid/widget/ImageView;

    .line 238
    .line 239
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadLine:Landroid/widget/ImageView;

    .line 240
    .line 241
    const v0, 0x7f0a086c

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Landroid/widget/ImageView;

    .line 249
    .line 250
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->imageLoading:Landroid/widget/ImageView;

    .line 251
    .line 252
    const v0, 0x7f0a14ca

    .line 253
    .line 254
    .line 255
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Landroid/widget/ImageView;

    .line 260
    .line 261
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->search_detial_image:Landroid/widget/ImageView;

    .line 262
    .line 263
    const v0, 0x7f0a178d

    .line 264
    .line 265
    .line 266
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Landroid/widget/ImageView;

    .line 271
    .line 272
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->title_normal_search_img:Landroid/widget/ImageView;

    .line 273
    .line 274
    const v0, 0x7f0a0e7f

    .line 275
    .line 276
    .line 277
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->linebutn:Landroid/view/View;

    .line 282
    .line 283
    const v0, 0x7f0a151d

    .line 284
    .line 285
    .line 286
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Landroid/widget/ImageView;

    .line 291
    .line 292
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->share:Landroid/widget/ImageView;

    .line 293
    .line 294
    const v0, 0x7f0a0423

    .line 295
    .line 296
    .line 297
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 302
    .line 303
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->container:Landroid/widget/RelativeLayout;

    .line 304
    .line 305
    const v0, 0x7f0a013d

    .line 306
    .line 307
    .line 308
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Landroid/widget/ImageView;

    .line 313
    .line 314
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->backBtn:Landroid/widget/ImageView;

    .line 315
    .line 316
    const v0, 0x7f0a178b

    .line 317
    .line 318
    .line 319
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 324
    .line 325
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 326
    .line 327
    const v0, 0x7f0a049d

    .line 328
    .line 329
    .line 330
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const v1, 0x7f0a14c9

    .line 335
    .line 336
    .line 337
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    const v2, 0x7f0a12b2

    .line 342
    .line 343
    .line 344
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    const v3, 0x7f0a0517

    .line 349
    .line 350
    .line 351
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    const v4, 0x7f0a1368

    .line 356
    .line 357
    .line 358
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    const v5, 0x7f0a1508

    .line 363
    .line 364
    .line 365
    invoke-interface {p1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadLayout:Landroid/widget/LinearLayout;

    .line 370
    .line 371
    if-eqz v5, :cond_0

    .line 372
    .line 373
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$e0;

    .line 374
    .line 375
    invoke-direct {v6, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$e0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    :cond_0
    if-eqz v0, :cond_1

    .line 382
    .line 383
    new-instance v5, Lcom/join/mgps/activity/MGGameDetailActivity_$p0;

    .line 384
    .line 385
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$p0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    .line 390
    .line 391
    :cond_1
    if-eqz v1, :cond_2

    .line 392
    .line 393
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$a1;

    .line 394
    .line 395
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$a1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    .line 400
    .line 401
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->share:Landroid/widget/ImageView;

    .line 402
    .line 403
    if-eqz v0, :cond_3

    .line 404
    .line 405
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity_$g1;

    .line 406
    .line 407
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$g1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    :cond_3
    if-eqz v2, :cond_4

    .line 414
    .line 415
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$h1;

    .line 416
    .line 417
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$h1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    .line 422
    .line 423
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 424
    .line 425
    if-eqz v0, :cond_5

    .line 426
    .line 427
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity_$i1;

    .line 428
    .line 429
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$i1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    .line 434
    .line 435
    :cond_5
    if-eqz v3, :cond_6

    .line 436
    .line 437
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$j1;

    .line 438
    .line 439
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$j1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    :cond_6
    if-eqz v4, :cond_7

    .line 446
    .line 447
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$a;

    .line 448
    .line 449
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$a;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    .line 454
    .line 455
    :cond_7
    if-eqz p1, :cond_8

    .line 456
    .line 457
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$b;

    .line 458
    .line 459
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$b;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    .line 464
    .line 465
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->back_image:Landroid/widget/ImageView;

    .line 466
    .line 467
    if-eqz p1, :cond_9

    .line 468
    .line 469
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$c;

    .line 470
    .line 471
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$c;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    .line 476
    .line 477
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 478
    .line 479
    if-eqz p1, :cond_a

    .line 480
    .line 481
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$d;

    .line 482
    .line 483
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$d;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    .line 488
    .line 489
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->backBtn:Landroid/widget/ImageView;

    .line 490
    .line 491
    if-eqz p1, :cond_b

    .line 492
    .line 493
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$e;

    .line 494
    .line 495
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$e;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    .line 500
    .line 501
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->title_normal_search_img:Landroid/widget/ImageView;

    .line 502
    .line 503
    if-eqz p1, :cond_c

    .line 504
    .line 505
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$f;

    .line 506
    .line 507
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$f;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    .line 512
    .line 513
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 514
    .line 515
    if-eqz p1, :cond_d

    .line 516
    .line 517
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$g;

    .line 518
    .line 519
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$g;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    .line 524
    .line 525
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->afterViews()V

    .line 526
    .line 527
    .line 528
    return-void
.end method

.method postPraised(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGGameDetailActivity_$z0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGGameDetailActivity_$z0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method refreshVoucherData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$i;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method resultShow(Ljava/lang/String;ZII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "b",
            "position",
            "type"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$l;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$l;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;ZII)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method resultShow2(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$m;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/CommentResponse;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method setData(Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "detailResultData"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$w;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x12c

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newIntent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showDialog(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$j;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$k;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$a0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$a0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$x;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$y;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showMain(Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "detailResultData"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$v;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$v;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "commitDataBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$u;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$u;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showProgress()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$z;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showSvipGiftDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$h0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$h0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$s;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showVipDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$i0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$i0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method upNomore()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$l0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$l0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateAdapter()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$r;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$b0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$b0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$g0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$g0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$d0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$d0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateLine(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadingNumber"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$c0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$c0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateListHeadAndFoot()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$k0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$k0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateNoOpenPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$f0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$f0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
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

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$o;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Z)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "result",
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGGameDetailActivity_$p;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

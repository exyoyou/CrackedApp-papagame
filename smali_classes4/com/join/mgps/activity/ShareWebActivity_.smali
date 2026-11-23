.class public final Lcom/join/mgps/activity/ShareWebActivity_;
.super Lcom/join/mgps/activity/ShareWebActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ShareWebActivity_$g0;
    }
.end annotation


# static fields
.field public static final INTENTDATE_EXTRA:Ljava/lang/String; = "intentdate"

.field public static final INTENT_DATA_MAIN_EXTRA:Ljava/lang/String; = "intentDataMain"

.field public static final PARENT_EXT_BEAN_EXTRA:Ljava/lang/String; = "parentExtBean"

.field public static final SUPPORT_JAVASCRIPT_EXTRA:Ljava/lang/String; = "supportJavascript"


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

.field private final finishViewReceiver_:Landroid/content/BroadcastReceiver;

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$1;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->finishViewReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity;->downGame(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->doSearchRoomCmd(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/ShareWebActivity_;Lapp/mgsim/arena/SocketError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->myError(Lapp/mgsim/arena/SocketError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->handleSearchRoomResponse(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity;->doJoinRoom(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->showInputGameRoomPwdDialog(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/ShareWebActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->showLoginDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->dismissLoadingDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/CreateVipData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->startPayVipOrder(Lcom/join/mgps/dto/CreateVipData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1901(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->dialogZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2001(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ShareWebActivity;->getDetailData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2101(Lcom/join/mgps/activity/ShareWebActivity_;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/ShareWebActivity;->getPrivateDomain(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2201(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->getUserInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2301(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->checkToken()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2401(Lcom/join/mgps/activity/ShareWebActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->createVip(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->showMain()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->showTost(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->startDownv2(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity;->showDomainDialog(Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->loaclJumpGameMatch(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/ShareWebActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->initSocket(Z)V

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
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->injectExtras_()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 21
    .line 22
    const-string v0, "com.wufun.finish.activity"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->finishViewReceiver_:Landroid/content/BroadcastReceiver;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
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
    if-eqz v0, :cond_3

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
    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 26
    .line 27
    :cond_0
    const-string v1, "intentDataMain"

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
    move-result-object v1

    .line 39
    check-cast v1, Lcom/join/mgps/dto/IntentDataMain;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->intentDataMain:Lcom/join/mgps/dto/IntentDataMain;

    .line 42
    .line 43
    :cond_1
    const-string v1, "supportJavascript"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->supportJavascript:Z

    .line 56
    .line 57
    :cond_2
    const-string v1, "parentExtBean"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;
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
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ShareWebActivity_$g0;
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
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method checkToken()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ShareWebActivity_$x;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ShareWebActivity_$x;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method createVip(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ordertype"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ShareWebActivity_$y;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ShareWebActivity_$y;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method dialogZ()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$s;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

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

.method dismissLoadingDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$q;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

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

.method doJoinRoom(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "gameRoom",
            "pwd"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity_$m;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

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

.method doSearchRoomCmd(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "roomNum"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$j;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V

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

.method downGame(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "url",
            "intentDateBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$f0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity_$f0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->beans_:Ljava/util/Map;

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

.method getDetailData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "gameId",
            "url",
            "from",
            "extStr"
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/join/mgps/activity/ShareWebActivity_$t;

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
    move-object v0, v10

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    move v8, p3

    .line 14
    move-object v9, p4

    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/join/mgps/activity/ShareWebActivity_$t;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v10}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method getPrivateDomain(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "abUid",
            "url"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/ShareWebActivity_$v;

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
    move v6, p1

    .line 12
    move-object v7, p2

    .line 13
    move-object v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/ShareWebActivity_$v;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method getUserInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ShareWebActivity_$w;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ShareWebActivity_$w;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$o;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lapp/mgsim/arena/ArenaResponse;)V

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

.method handleSearchRoomResponse(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$l;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V

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

.method initSocket(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isShow"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$i;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Z)V

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

.method loaclJumpGameMatch(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "romid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$h;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V

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

.method myError(Lapp/mgsim/arena/SocketError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$k;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lapp/mgsim/arena/SocketError;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0837

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->finishViewReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0f95

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const v0, 0x7f0a0f92

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    const v0, 0x7f0a1b4d

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v_status:Landroid/view/View;

    .line 31
    .line 32
    const v0, 0x7f0a1767

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->title:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    const v0, 0x7f0a1790

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->title_textview:Landroid/widget/TextView;

    .line 53
    .line 54
    const v0, 0x7f0a05f6

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
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->failedMessage:Landroid/widget/TextView;

    .line 64
    .line 65
    const v0, 0x7f0a0e35

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/LinearLayout;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->layout_share:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    const v0, 0x7f0a1b72

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/FrameLayout;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->video_view:Landroid/widget/FrameLayout;

    .line 86
    .line 87
    const v0, 0x7f0a1bde

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->weblayout:Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    const v0, 0x7f0a1bdb

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/join/mgps/customview/LJWebView;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 108
    .line 109
    const v0, 0x7f0a1351

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->refresh:Landroid/widget/ImageView;

    .line 119
    .line 120
    const v0, 0x7f0a14b4

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/ImageView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->search:Landroid/widget/ImageView;

    .line 130
    .line 131
    const v0, 0x7f0a0147

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/ImageView;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->backNew:Landroid/widget/ImageView;

    .line 141
    .line 142
    const v0, 0x7f0a014d

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
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->back_imag:Landroid/widget/ImageView;

    .line 152
    .line 153
    const v0, 0x7f0a050c

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/widget/ImageView;

    .line 161
    .line 162
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->download:Landroid/widget/ImageView;

    .line 163
    .line 164
    const v0, 0x7f0a1508

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    if-eqz v0, :cond_0

    .line 174
    .line 175
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity_$u;

    .line 176
    .line 177
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity_$u;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->back_imag:Landroid/widget/ImageView;

    .line 184
    .line 185
    if-eqz v0, :cond_1

    .line 186
    .line 187
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity_$z;

    .line 188
    .line 189
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity_$z;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->backNew:Landroid/widget/ImageView;

    .line 196
    .line 197
    if-eqz v0, :cond_2

    .line 198
    .line 199
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity_$a0;

    .line 200
    .line 201
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity_$a0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    :cond_2
    if-eqz p1, :cond_3

    .line 208
    .line 209
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$b0;

    .line 210
    .line 211
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$b0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->search:Landroid/widget/ImageView;

    .line 218
    .line 219
    if-eqz p1, :cond_4

    .line 220
    .line 221
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$c0;

    .line 222
    .line 223
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$c0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->download:Landroid/widget/ImageView;

    .line 230
    .line 231
    if-eqz p1, :cond_5

    .line 232
    .line 233
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$d0;

    .line 234
    .line 235
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$d0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->refresh:Landroid/widget/ImageView;

    .line 242
    .line 243
    if-eqz p1, :cond_6

    .line 244
    .line 245
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$e0;

    .line 246
    .line 247
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$e0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    .line 253
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->video_view:Landroid/widget/FrameLayout;

    .line 254
    .line 255
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->video:Landroid/widget/FrameLayout;

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->afterview()V

    .line 258
    .line 259
    .line 260
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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

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
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showDomainDialog(Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "domainInfoBean",
            "abUid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity_$g;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V

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

.method showInputGameRoomPwdDialog(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$n;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V

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

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$a;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$b;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

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

.method showLoginDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$p;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

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

.method showMain()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$c;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

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

.method showTost(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$d;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V

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

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "collectionBeanSub"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$e;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

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

.method startDownv2(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$f;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

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

.method startPayVipOrder(Lcom/join/mgps/dto/CreateVipData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vipData"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$r;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/CreateVipData;)V

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

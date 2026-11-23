.class public final Lcom/join/mgps/activity/arena/GameRoomListActivity_;
.super Lcom/join/mgps/activity/arena/GameRoomListActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;
    }
.end annotation


# static fields
.field public static final FILTER_GAME_EXTRA:Ljava/lang/String; = "filterGame"

.field public static final IS_FORM_HALL_EXTRA:Ljava/lang/String; = "isFormHall"

.field public static final M_GAME_INFO_EXTRA:Ljava/lang/String; = "mGameInfo"


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

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->refreshGameRoomList(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleRoomListDelete(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updateOnlineCounts(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleRoomListUpdate(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/arena/GameRoomListActivity_;ZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->delaySubscribeGameList(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivityForGetConfigFailure()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->setBattleAreaView(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->initViewPagerByConfig(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showNodataView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showFailedView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1901(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2001(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->dismissFastJoinRoomDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/Notification;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleMsgBroadcast(Lcom/papa91/battle/protocol/Notification;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2101(Lcom/join/mgps/activity/arena/GameRoomListActivity_;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updateRoomCountsChanged(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2201(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2301(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2401(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkUserInfoFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2501(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->startCreateRoom(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2601(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->onGameSeriesSelected()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2701(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getUiData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2801(Lcom/join/mgps/activity/arena/GameRoomListActivity_;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->subscribeRoomList(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2901(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->requestServer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3001(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfig()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updateRoomCount(Lapp/mgsim/arena/ArenaResponse;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3101(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getChallengeConfig(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoginDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->stopRefreshing(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handlePushRoomListData(Lapp/mgsim/arena/ArenaResponse;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
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
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->injectExtras_()V

    .line 18
    .line 19
    .line 20
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
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const-string v1, "mGameInfo"

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
    check-cast v1, Lcom/join/mgps/dto/GameInfoBean;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 26
    .line 27
    :cond_0
    const-string v1, "isFormHall"

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
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isFormHall:Z

    .line 40
    .line 41
    :cond_1
    const-string v1, "filterGame"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->filterGame:Z

    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;
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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;
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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method checkUserInfoFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$a0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$a0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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

.method delaySubscribeGameList(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "isElite",
            "isRefreshing"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$n;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;ZZ)V

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

.method dismissFastJoinRoomDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$w;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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

.method finishActivity()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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

.method finishActivityForGetConfigFailure()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$o;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->beans_:Ljava/util/Map;

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

.method getChallengeConfig(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getGameConfig()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomListActivity_$h0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$h0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getUiData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1f4

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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$h;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;)V

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

.method handleMsgBroadcast(Lcom/papa91/battle/protocol/Notification;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "notification"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/Notification;)V

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

.method handlePushRoomListData(Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "response",
            "isFinished"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$j;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V

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

.method handleRoomListDelete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$l;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/util/List;)V

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

.method handleRoomListUpdate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$m;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/util/List;)V

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

.method hideLoadingDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$z;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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

.method hideLoadingView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$u;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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

.method initViewPagerByConfig(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$q;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0064

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method onGameSeriesSelected()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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

.method public onViewChanged(Lzc/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1920

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_area:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a1a48

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_title:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a1349

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->redPoint:Landroid/view/View;

    .line 31
    .line 32
    const v0, 0x7f0a0a53

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->iv_list:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    const v0, 0x7f0a0f38

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_standard_room:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    const v0, 0x7f0a1a2c

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard__room_count:Landroid/widget/TextView;

    .line 64
    .line 65
    const v0, 0x7f0a1a2d

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard_room_name:Landroid/widget/TextView;

    .line 75
    .line 76
    const v0, 0x7f0a0eed

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_elite_room:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    const v0, 0x7f0a1961

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_count:Landroid/widget/TextView;

    .line 97
    .line 98
    const v0, 0x7f0a1962

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/TextView;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_name:Landroid/widget/TextView;

    .line 108
    .line 109
    const v0, 0x7f0a0f29

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/LinearLayout;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_race_room:Landroid/widget/LinearLayout;

    .line 119
    .line 120
    const v0, 0x7f0a1a04

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/TextView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_name:Landroid/widget/TextView;

    .line 130
    .line 131
    const v0, 0x7f0a1a03

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_info:Landroid/widget/TextView;

    .line 141
    .line 142
    const v0, 0x7f0a19b9

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/TextView;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_loading_info:Landroid/widget/TextView;

    .line 152
    .line 153
    const v0, 0x7f0a12ab

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/widget/ProgressBar;

    .line 161
    .line 162
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->progressLoding:Landroid/widget/ProgressBar;

    .line 163
    .line 164
    const v0, 0x7f0a0eda

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroid/widget/LinearLayout;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 174
    .line 175
    const v0, 0x7f0a08de

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Landroid/widget/ImageView;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->imgIconList:Landroid/widget/ImageView;

    .line 185
    .line 186
    const v0, 0x7f0a10ca

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->myDragImageView:Landroid/view/View;

    .line 194
    .line 195
    const v0, 0x7f0a192d

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Lcom/join/mgps/customview/AlwaysMarqueeTextView;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_broadcast:Lcom/join/mgps/customview/AlwaysMarqueeTextView;

    .line 205
    .line 206
    const v0, 0x7f0a0feb

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 214
    .line 215
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 216
    .line 217
    const v0, 0x7f0a1405

    .line 218
    .line 219
    .line 220
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 225
    .line 226
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->rl_top:Landroid/widget/RelativeLayout;

    .line 227
    .line 228
    const v0, 0x7f0a0ed6

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Landroid/widget/LinearLayout;

    .line 236
    .line 237
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_battle_area:Landroid/widget/LinearLayout;

    .line 238
    .line 239
    const v0, 0x7f0a0f3c

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Landroid/widget/LinearLayout;

    .line 247
    .line 248
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_tab:Landroid/widget/LinearLayout;

    .line 249
    .line 250
    const v0, 0x7f0a0a14

    .line 251
    .line 252
    .line 253
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Landroid/widget/ImageView;

    .line 258
    .line 259
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->iv_battle_area_arrow:Landroid/widget/ImageView;

    .line 260
    .line 261
    const v0, 0x7f0a0ef0

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Landroid/widget/LinearLayout;

    .line 269
    .line 270
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_error:Landroid/widget/LinearLayout;

    .line 271
    .line 272
    const v0, 0x7f0a0f0a

    .line 273
    .line 274
    .line 275
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Landroid/widget/LinearLayout;

    .line 280
    .line 281
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_loading:Landroid/widget/LinearLayout;

    .line 282
    .line 283
    const v0, 0x7f0a0258

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->btnFastGame:Landroid/widget/ImageView;

    .line 293
    .line 294
    const v0, 0x7f0a0250

    .line 295
    .line 296
    .line 297
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Landroid/widget/ImageView;

    .line 302
    .line 303
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->btnCreateRoom:Landroid/widget/ImageView;

    .line 304
    .line 305
    const v0, 0x7f0a067a

    .line 306
    .line 307
    .line 308
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Landroid/widget/LinearLayout;

    .line 313
    .line 314
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->footer:Landroid/widget/LinearLayout;

    .line 315
    .line 316
    const v0, 0x7f0a1346

    .line 317
    .line 318
    .line 319
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 324
    .line 325
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;

    .line 326
    .line 327
    const v0, 0x7f0a1345

    .line 328
    .line 329
    .line 330
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 335
    .line 336
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 337
    .line 338
    const v0, 0x7f0a14f8

    .line 339
    .line 340
    .line 341
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->selecterLayout:Landroid/view/View;

    .line 346
    .line 347
    const v0, 0x7f0a0266

    .line 348
    .line 349
    .line 350
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    const v1, 0x7f0a0a11

    .line 355
    .line 356
    .line 357
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    const v2, 0x7f0a0259

    .line 362
    .line 363
    .line 364
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    const v3, 0x7f0a03b0

    .line 369
    .line 370
    .line 371
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    const v4, 0x7f0a12eb

    .line 376
    .line 377
    .line 378
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->selecterLayout:Landroid/view/View;

    .line 383
    .line 384
    if-eqz v4, :cond_0

    .line 385
    .line 386
    new-instance v5, Lcom/join/mgps/activity/arena/GameRoomListActivity_$k;

    .line 387
    .line 388
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$k;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    .line 393
    .line 394
    :cond_0
    if-eqz v0, :cond_1

    .line 395
    .line 396
    new-instance v4, Lcom/join/mgps/activity/arena/GameRoomListActivity_$v;

    .line 397
    .line 398
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$v;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    .line 403
    .line 404
    :cond_1
    if-eqz v1, :cond_2

    .line 405
    .line 406
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$g0;

    .line 407
    .line 408
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$g0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    .line 413
    .line 414
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->iv_list:Landroid/widget/LinearLayout;

    .line 415
    .line 416
    if-eqz v0, :cond_3

    .line 417
    .line 418
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity_$j0;

    .line 419
    .line 420
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$j0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    .line 425
    .line 426
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->btnCreateRoom:Landroid/widget/ImageView;

    .line 427
    .line 428
    if-eqz v0, :cond_4

    .line 429
    .line 430
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity_$k0;

    .line 431
    .line 432
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$k0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    .line 437
    .line 438
    :cond_4
    if-eqz v2, :cond_5

    .line 439
    .line 440
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$l0;

    .line 441
    .line 442
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$l0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    .line 447
    .line 448
    :cond_5
    if-eqz v3, :cond_6

    .line 449
    .line 450
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$m0;

    .line 451
    .line 452
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$m0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    .line 457
    .line 458
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->myDragImageView:Landroid/view/View;

    .line 459
    .line 460
    if-eqz v0, :cond_7

    .line 461
    .line 462
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity_$n0;

    .line 463
    .line 464
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$n0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .line 469
    .line 470
    :cond_7
    if-eqz p1, :cond_8

    .line 471
    .line 472
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$o0;

    .line 473
    .line 474
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$o0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    .line 479
    .line 480
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->afterViews()V

    .line 481
    .line 482
    .line 483
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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method refreshGameRoomList(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "refreshType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V

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

.method requestServer()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomListActivity_$f0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$f0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method setBattleAreaView(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "battle_area"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "battleArea"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/BattleArea;)V

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

.method showFailedView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$t;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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

.method showLoadingView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$r;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$e;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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

.method public showNodataView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$s;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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
            "info"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$y;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;)V

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

.method startCreateRoom(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "gameId",
            "challengeCoins"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$b0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$b0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;I)V

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

.method stopRefreshing(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isElite"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Z)V

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

.method subscribeRoomList(IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "roomType",
            "isRefreshing"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/arena/GameRoomListActivity_$e0;

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
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$e0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;JLjava/lang/String;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method updateOnlineCounts(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

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

.method updateRoomCount(Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "response",
            "isElite"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V

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

.method updateRoomCountsChanged(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "newSize",
            "isElite"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$x;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;IZ)V

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

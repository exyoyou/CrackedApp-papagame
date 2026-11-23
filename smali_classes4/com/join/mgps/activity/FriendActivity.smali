.class public Lcom/join/mgps/activity/FriendActivity;
.super Lcom/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/v0$e;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/FriendActivity$i;,
        Lcom/join/mgps/activity/FriendActivity$f;,
        Lcom/join/mgps/activity/FriendActivity$g;,
        Lcom/join/mgps/activity/FriendActivity$h;
    }
.end annotation


# instance fields
.field accountId:Landroid/widget/TextView;

.field arenaNoRecordDialog:Lcom/join/mgps/dialog/m;

.field avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field button:Landroid/view/View;

.field close:Landroid/view/View;

.field private cloudListFragment:Lcom/join/mgps/fragment/m;

.field fragmentManager:Landroidx/fragment/app/FragmentManager;

.field fragmentStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private friendAddFragment:Lcom/join/mgps/fragment/x1;

.field private friendCardFragment:Lcom/join/mgps/fragment/j2;

.field protected friendFragment:Lcom/join/mgps/fragment/v2;

.field private friendMessageFragment:Lcom/join/mgps/fragment/z2;

.field gameAdapter:Lcom/join/mgps/activity/FriendActivity$f;

.field gameAdapter1:Lcom/join/mgps/activity/FriendActivity$f;

.field protected gameId:Ljava/lang/String;

.field gameInfoBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field gameInfoBeanList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field gameInfoListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field gameSelector:Landroid/view/View;

.field gameSelector1:Landroid/view/View;

.field handler:Landroid/os/Handler;

.field hasPlug:Z

.field hasRom:Z

.field inviteBean:Lcom/join/mgps/dto/FriendBean;

.field isActive:Z

.field mArenaCreateDialog:Lcom/join/mgps/dialog/i;

.field mDialog:Landroid/app/Dialog;

.field mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

.field name:Landroid/widget/TextView;

.field receiver:Landroid/content/BroadcastReceiver;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;

.field recyclerViewGamelist1:Landroidx/recyclerview/widget/RecyclerView;

.field roomSelecteradapter:Lcom/join/mgps/activity/FriendActivity$i;

.field protected ruid:Ljava/lang/String;

.field private selectedPosition:I

.field protected showFriendUI:Z

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->hasRom:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->hasPlug:Z

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->roomSelecteradapter:Lcom/join/mgps/activity/FriendActivity$i;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter:Lcom/join/mgps/activity/FriendActivity$f;

    .line 32
    .line 33
    const/16 v2, -0x400

    .line 34
    .line 35
    iput v2, p0, Lcom/join/mgps/activity/FriendActivity;->selectedPosition:I

    .line 36
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoListData:Ljava/util/List;

    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList:Ljava/util/List;

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->isActive:Z

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter1:Lcom/join/mgps/activity/FriendActivity$f;

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList1:Ljava/util/List;

    .line 61
    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/FriendActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/FriendActivity;->selectedPosition:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/FriendActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/FriendActivity;->selectedPosition:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/FriendActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->getGameConfigv2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getGameConfigv2()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x2

    .line 28
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestArenaRoomListArgs(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/d;->N1()Lb7/d;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1, v0}, Lb7/d;->h(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/join/mgps/activity/FriendActivity$d;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FriendActivity$d;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method

.method private getGameTypeList()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/l;->m0()Lb7/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Lb7/k;->L(Ljava/lang/String;)Lretrofit2/Call;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/join/mgps/activity/FriendActivity$c;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FriendActivity$c;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/FriendActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->lambda$showGameSelector1$9(I)V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/activity/FriendActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->lambda$toast$2(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onResume$1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->checkClipboard()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$showAddFriend$3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$showAddFriend$4(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->add(I)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v0, "3"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    sget-object v0, Lcom/papa/sim/statistic/Event;->addFriends:Lcom/papa/sim/statistic/Event;

    .line 52
    .line 53
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private synthetic lambda$showCreateRoomDialog$0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/FriendActivity;->isPreDownloadPrepared(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 p2, 0x2

    .line 55
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/FriendActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/FriendActivity;->needUpdate(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/16 p1, 0x2710

    .line 89
    .line 90
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/activity/FriendActivity;->startDownloadActivity(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$showGameSelector$5(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$showGameSelector$6(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoListData:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->getGameConfigv2()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private synthetic lambda$showGameSelector$7(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onGameSelected(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->hideGameSelector()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private synthetic lambda$showGameSelector1$8(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector1:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$showGameSelector1$9(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList1:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onGameSelected(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->hideGameSelector1()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private synthetic lambda$showInputRoomPwdDialog$10(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "\u8bf7\u8f93\u5165\u623f\u95f4\u5bc6\u7801"

    .line 6
    .line 7
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/join/mgps/customview/input/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/FriendActivity$e;

    .line 11
    .line 12
    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/FriendActivity$e;-><init>(Lcom/join/mgps/activity/FriendActivity;Lcom/join/mgps/customview/input/a;Lapp/mgsim/arena/ArenaRequest;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private synthetic lambda$toast$2(Ljava/lang/String;)V
    .locals 1

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

.method public static synthetic m(Lcom/join/mgps/activity/FriendActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->lambda$showGameSelector$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/join/mgps/activity/FriendActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->lambda$showGameSelector1$8(Landroid/view/View;)V

    return-void
.end method

.method private needUpdate(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-static {p0, p1, v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->b2(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return p1

    .line 27
    :catch_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public static synthetic o(Lcom/join/mgps/activity/FriendActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->lambda$showGameSelector$7(I)V

    return-void
.end method

.method public static synthetic p(Lcom/join/mgps/activity/FriendActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->lambda$showGameSelector$6(I)V

    return-void
.end method

.method public static synthetic q(Lcom/join/mgps/activity/FriendActivity;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity;->lambda$showAddFriend$4(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/join/mgps/activity/FriendActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->lambda$showAddFriend$3(Landroid/view/View;)V

    return-void
.end method

.method private showCloudUI()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->cloudListFragment:Lcom/join/mgps/fragment/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/fragment/CloudListFragment_;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/fragment/CloudListFragment_;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->cloudListFragment:Lcom/join/mgps/fragment/m;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "type"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const-string v1, "gameid"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "typeIndex"

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->cloudListFragment:Lcom/join/mgps/fragment/m;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const v1, 0x7f0a06cb

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->cloudListFragment:Lcom/join/mgps/fragment/m;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/join/mgps/activity/FriendActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->lambda$onResume$1()V

    return-void
.end method

.method public static synthetic u(Lcom/join/mgps/activity/FriendActivity;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->lambda$showInputRoomPwdDialog$10(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method public static synthetic v(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity;->lambda$showCreateRoomDialog$0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method


# virtual methods
.method add(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
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
    new-instance v1, Lcom/join/mgps/dto/FriendReqBean;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    .line 29
    .line 30
    .line 31
    const-string p1, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->p()Lcom/join/mgps/rpc/impl/h;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->o()Lb7/h;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1, v1}, Lb7/h;->i(Lcom/join/mgps/dto/FriendReqBean;)Lretrofit2/Call;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lcom/join/mgps/activity/FriendActivity$a;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FriendActivity$a;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method addSuccess(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "\u5df2\u53d1\u9001\u52a0\u597d\u53cb\u7533\u8bf7"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->toast(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transaction"
        }
    .end annotation

    .line 1
    const v0, 0x7f010064

    .line 2
    .line 3
    .line 4
    const v1, 0x7f01007d

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method autoSendAdd()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->button:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->button:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method checkClipboard()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "clipboard"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/ClipboardManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v2, v1}, Lcom/wufan/friend/chat/c;->l(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FriendActivity;->showAddFriend(I)V

    .line 49
    .line 50
    .line 51
    const-string v1, ""

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    return-void
.end method

.method protected checkGameIsInstall(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->hasRom:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->hasPlug:Z

    .line 5
    .line 6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x5

    .line 22
    if-ne v2, v3, :cond_3

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->hasRom:Z

    .line 25
    .line 26
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, p1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    new-array v2, v0, [Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p0, p1, v0, v2}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->D0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->hasPlug:Z

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->hasPlug:Z

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->hasPlug:Z

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->hasRom:Z

    .line 65
    .line 66
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->hasPlug:Z

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->hasRom:Z

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    return v1

    .line 75
    :cond_4
    return v0
.end method

.method protected getFrameLayoutId()I
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f0a06cc

    .line 6
    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const v0, 0x7f0a06cb

    .line 10
    .line 11
    .line 12
    return v0
.end method

.method getFriendInfo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/FriendActivity$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FriendActivity$b;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    aput-object p1, v1, v2

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public go(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->navigateTo(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    instance-of v1, p0, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendAddFragment:Lcom/join/mgps/fragment/x1;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendAddFragment:Lcom/join/mgps/fragment/x1;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendMessageFragment:Lcom/join/mgps/fragment/z2;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendMessageFragment:Lcom/join/mgps/fragment/z2;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 57
    .line 58
    .line 59
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public hideGameSelector()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public hideGameSelector1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector1:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method hideNavigationBar()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->setSystemUiVisibility()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method isPlaying(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

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
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public isPreDownloadPrepared(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/16 v2, 0xb

    .line 43
    .line 44
    if-eq p1, v2, :cond_3

    .line 45
    .line 46
    :cond_2
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-static {v1}, Lcom/join/android/app/common/utils/o;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    :cond_3
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_4
    return v0
.end method

.method protected isShowFriendUI()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method navigateTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    instance-of v1, p0, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendAddFragment:Lcom/join/mgps/fragment/x1;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendAddFragment:Lcom/join/mgps/fragment/x1;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendMessageFragment:Lcom/join/mgps/fragment/z2;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendMessageFragment:Lcom/join/mgps/fragment/z2;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 57
    .line 58
    .line 59
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez p1, :cond_7

    .line 74
    .line 75
    instance-of p1, p0, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 76
    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 83
    .line 84
    if-nez p1, :cond_6

    .line 85
    .line 86
    new-instance p1, Lcom/join/mgps/fragment/FriendFragment_;

    .line 87
    .line 88
    invoke-direct {p1}, Lcom/join/mgps/fragment/FriendFragment_;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 92
    .line 93
    new-instance p1, Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "gameId"

    .line 99
    .line 100
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "type"

    .line 106
    .line 107
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->type:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 113
    .line 114
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->getFrameLayoutId()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 122
    .line 123
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 124
    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 129
    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :cond_7
    const/4 v1, 0x1

    .line 134
    if-ne p1, v1, :cond_9

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendAddFragment:Lcom/join/mgps/fragment/x1;

    .line 140
    .line 141
    if-nez p1, :cond_8

    .line 142
    .line 143
    new-instance p1, Lcom/join/mgps/fragment/y1;

    .line 144
    .line 145
    invoke-direct {p1}, Lcom/join/mgps/fragment/y1;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendAddFragment:Lcom/join/mgps/fragment/x1;

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->getFrameLayoutId()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendAddFragment:Lcom/join/mgps/fragment/x1;

    .line 155
    .line 156
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_8
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_9
    const/4 v1, 0x2

    .line 165
    if-ne p1, v1, :cond_b

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendMessageFragment:Lcom/join/mgps/fragment/z2;

    .line 171
    .line 172
    if-nez p1, :cond_a

    .line 173
    .line 174
    new-instance p1, Lcom/join/mgps/fragment/a3;

    .line 175
    .line 176
    invoke-direct {p1}, Lcom/join/mgps/fragment/a3;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendMessageFragment:Lcom/join/mgps/fragment/z2;

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->getFrameLayoutId()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendMessageFragment:Lcom/join/mgps/fragment/z2;

    .line 186
    .line 187
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_a
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_b
    const/4 v1, 0x3

    .line 196
    if-ne p1, v1, :cond_d

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 202
    .line 203
    if-nez p1, :cond_c

    .line 204
    .line 205
    new-instance p1, Lcom/join/mgps/fragment/k2;

    .line 206
    .line 207
    invoke-direct {p1}, Lcom/join/mgps/fragment/k2;-><init>()V

    .line 208
    .line 209
    .line 210
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 211
    .line 212
    new-instance p1, Landroid/os/Bundle;

    .line 213
    .line 214
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v1, "ruid"

    .line 218
    .line 219
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->ruid:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 225
    .line 226
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->getFrameLayoutId()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 234
    .line 235
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_c
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->ruid:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/j2;->r0(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 245
    .line 246
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 247
    .line 248
    .line 249
    :cond_d
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catch_1
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    .line 256
    .line 257
    :goto_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
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
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p3, -0x1

    .line 5
    if-ne p2, p3, :cond_1

    .line 6
    .line 7
    const/16 p2, 0x2710

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 p2, 0x2711

    .line 25
    .line 26
    if-ne p1, p2, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    .line 35
    .line 36
    .line 37
    iput-object p3, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public onAddFriend()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->go(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/high16 v1, 0x10000000

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onArenaResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
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
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->pop()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 19
    .line 20
    .line 21
    :goto_0
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
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->registerReceiver()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 29
    .line 30
    instance-of p1, p0, Lcom/join/mgps/activity/FriendInviteActivity;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->isShowFriendUI()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->go(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->showCloudUI()V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->unregisterReceiver()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->isActive:Z

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public onFriendClick(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->ruid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->ruid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->ruid:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FriendActivity;->go(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onFriendEvent(Lcom/wufan/friend/chat/protocol/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
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
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getServiceValue()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne v0, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getPathValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xd

    .line 16
    .line 17
    if-ne v0, v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LocalBattleGameData;->getLocalBattleGameInfoList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->isActive:Z

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/LocalBattleGameData;->getLocalBattleGameInfoList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->showGameSelector1(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    nop

    .line 79
    :cond_3
    :goto_0
    return-void
.end method

.method onGameSelected(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->isPreDownloadPrepared(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v0, 0x2

    .line 51
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->needUpdate(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/16 v0, 0x2710

    .line 85
    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/FriendActivity;->startDownloadActivity(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    return-void
.end method

.method public onInvite(Lcom/join/mgps/dto/FriendBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

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
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    const p1, 0x7f12031e

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->toast(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->showGameSelector()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-virtual {p1, v0, v1, v2}, Lcom/wufan/friend/chat/c;->v(IJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public onJoin(Lcom/join/mgps/dto/FriendBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

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
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->isPreDownloadPrepared(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v0, 0x2

    .line 60
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->needUpdate(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const/16 p1, 0x2711

    .line 92
    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/FriendActivity;->startDownloadActivity(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    :cond_4
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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendAddFragment:Lcom/join/mgps/fragment/x1;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendMessageFragment:Lcom/join/mgps/fragment/z2;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->friendCardFragment:Lcom/join/mgps/fragment/j2;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->cloudListFragment:Lcom/join/mgps/fragment/m;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 25
    .line 26
    instance-of p1, p0, Lcom/join/mgps/activity/FriendInviteActivity;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->isShowFriendUI()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->go(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->showCloudUI()V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->isActive:Z

    .line 6
    .line 7
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->showFriendUI:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->isActive:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/fragment/v2;->P0()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Lcom/join/mgps/activity/h1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/h1;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0x1f4

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_1
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->hideNavigationBar()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->fragmentStack:Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->navigateTo(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method registerReceiver()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/FriendActivity$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FriendActivity$1;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
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

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

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

.method showAddFriend(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .line 1
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
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v1, p1, :cond_6

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 26
    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    new-instance v0, Landroid/app/Dialog;

    .line 30
    .line 31
    const v1, 0x7f130584

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 38
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v2, 0x1c

    .line 42
    .line 43
    if-lt v1, v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const v1, 0x7f0d01e2

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f0a03b0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->close:Landroid/view/View;

    .line 86
    .line 87
    const v1, 0x7f0a02dd

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->button:Landroid/view/View;

    .line 95
    .line 96
    const v1, 0x7f0a10d8

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Landroid/widget/TextView;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->name:Landroid/widget/TextView;

    .line 106
    .line 107
    const v1, 0x7f0a0063

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroid/widget/TextView;

    .line 115
    .line 116
    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->accountId:Landroid/widget/TextView;

    .line 117
    .line 118
    const v1, 0x7f0a0134

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 126
    .line 127
    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const v1, 0x7f0714a7

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const v2, 0x7f071494

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const/4 v4, -0x1

    .line 167
    if-nez v0, :cond_2

    .line 168
    .line 169
    const/4 v0, -0x1

    .line 170
    :cond_2
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 171
    .line 172
    if-nez v1, :cond_3

    .line 173
    .line 174
    const/4 v1, -0x1

    .line 175
    :cond_3
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 176
    .line 177
    const/16 v0, 0x11

    .line 178
    .line 179
    invoke-virtual {v2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->close:Landroid/view/View;

    .line 183
    .line 184
    new-instance v1, Lcom/join/mgps/activity/m1;

    .line 185
    .line 186
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/m1;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->button:Landroid/view/View;

    .line 193
    .line 194
    new-instance v1, Lcom/join/mgps/activity/n1;

    .line 195
    .line 196
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/n1;-><init>(Lcom/join/mgps/activity/FriendActivity;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->getFriendInfo(I)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_5

    .line 212
    .line 213
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->mDialog:Landroid/app/Dialog;

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 216
    .line 217
    .line 218
    :cond_5
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    sget-object v0, Lcom/papa/sim/statistic/Event;->showInviteCode:Lcom/papa/sim/statistic/Event;

    .line 223
    .line 224
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 225
    .line 226
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 230
    .line 231
    .line 232
    :cond_6
    :goto_0
    return-void
.end method

.method showArenaNoRecordDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->arenaNoRecordDialog:Lcom/join/mgps/dialog/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/m;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/m;-><init>(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->arenaNoRecordDialog:Lcom/join/mgps/dialog/m;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->arenaNoRecordDialog:Lcom/join/mgps/dialog/m;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dialog/m;->g()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method showCreateRoomDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->mArenaCreateDialog:Lcom/join/mgps/dialog/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dialog/i;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lq5/f;->s()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/join/mgps/activity/o1;

    .line 17
    .line 18
    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/o1;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/join/mgps/dialog/i;

    .line 22
    .line 23
    invoke-direct {v2, p0, v1}, Lcom/join/mgps/dialog/i;-><init>(Landroid/app/Activity;Lcom/join/mgps/dialog/i$c;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->mArenaCreateDialog:Lcom/join/mgps/dialog/i;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/dialog/i;->h(Ljava/util/List;Z)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->mArenaCreateDialog:Lcom/join/mgps/dialog/i;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dialog/i;->j()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->showArenaNoRecordDialog()V

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->hideNavigationBar()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public showGameSelector()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    const v3, 0x7f0d0785

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector:Landroid/view/View;

    .line 28
    .line 29
    const v3, 0x7f0a1345

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector:Landroid/view/View;

    .line 41
    .line 42
    const v3, 0x7f0a1346

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector:Landroid/view/View;

    .line 54
    .line 55
    const v3, 0x7f0a03b0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->close:Landroid/view/View;

    .line 63
    .line 64
    new-instance v3, Lcom/join/mgps/activity/j1;

    .line 65
    .line 66
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/j1;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 75
    .line 76
    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lcom/join/mgps/activity/FriendActivity$i;

    .line 83
    .line 84
    invoke-direct {v2, p0, p0}, Lcom/join/mgps/activity/FriendActivity$i;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->roomSelecteradapter:Lcom/join/mgps/activity/FriendActivity$i;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/join/mgps/activity/FriendActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 97
    .line 98
    const/4 v4, 0x3

    .line 99
    invoke-direct {v3, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Lcom/join/mgps/activity/FriendActivity$f;

    .line 106
    .line 107
    invoke-direct {v2, p0, p0, v1}, Lcom/join/mgps/activity/FriendActivity$f;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;Z)V

    .line 108
    .line 109
    .line 110
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter:Lcom/join/mgps/activity/FriendActivity$f;

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/join/mgps/activity/FriendActivity$f;->b()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList:Ljava/util/List;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter:Lcom/join/mgps/activity/FriendActivity$f;

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->roomSelecteradapter:Lcom/join/mgps/activity/FriendActivity$i;

    .line 126
    .line 127
    new-instance v3, Lcom/join/mgps/activity/k1;

    .line 128
    .line 129
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/k1;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/FriendActivity$i;->f(Lcom/join/mgps/activity/FriendActivity$g;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter:Lcom/join/mgps/activity/FriendActivity$f;

    .line 136
    .line 137
    new-instance v3, Lcom/join/mgps/activity/l1;

    .line 138
    .line 139
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/l1;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/FriendActivity$f;->g(Lcom/join/mgps/activity/FriendActivity$g;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->inviteBean:Lcom/join/mgps/dto/FriendBean;

    .line 151
    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getSource()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    const/4 v2, 0x1

    .line 159
    if-ne v0, v2, :cond_1

    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter:Lcom/join/mgps/activity/FriendActivity$f;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/FriendActivity$f;->f(Z)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter:Lcom/join/mgps/activity/FriendActivity$f;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FriendActivity$f;->f(Z)V

    .line 170
    .line 171
    .line 172
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter:Lcom/join/mgps/activity/FriendActivity$f;

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FriendActivity$f;->h(Z)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector:Landroid/view/View;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->getGameTypeList()V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public showGameSelector1(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/LocalBattleGameInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector1:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    const v3, 0x7f0d0786

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector1:Landroid/view/View;

    .line 28
    .line 29
    const v3, 0x7f0a1346

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->recyclerViewGamelist1:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector1:Landroid/view/View;

    .line 41
    .line 42
    const v3, 0x7f0a03b0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Lcom/join/mgps/activity/e1;

    .line 50
    .line 51
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/e1;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->recyclerViewGamelist1:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 60
    .line 61
    const/4 v4, 0x3

    .line 62
    invoke-direct {v3, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/join/mgps/activity/FriendActivity$f;

    .line 69
    .line 70
    invoke-direct {v2, p0, p0, v1}, Lcom/join/mgps/activity/FriendActivity$f;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;Z)V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter1:Lcom/join/mgps/activity/FriendActivity$f;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/join/mgps/activity/FriendActivity$f;->b()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList1:Ljava/util/List;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->recyclerViewGamelist1:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter1:Lcom/join/mgps/activity/FriendActivity$f;

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter1:Lcom/join/mgps/activity/FriendActivity$f;

    .line 89
    .line 90
    new-instance v3, Lcom/join/mgps/activity/g1;

    .line 91
    .line 92
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/g1;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/FriendActivity$f;->g(Lcom/join/mgps/activity/FriendActivity$g;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector1:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter1:Lcom/join/mgps/activity/FriendActivity$f;

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/FriendActivity$f;->h(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameSelector1:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList1:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/wufan/friend/chat/protocol/LocalBattleGameInfo;

    .line 134
    .line 135
    new-instance v1, Lcom/join/mgps/dto/GameInfoBean;

    .line 136
    .line 137
    invoke-direct {v1}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LocalBattleGameInfo;->getGameSrc()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setPic_cover(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LocalBattleGameInfo;->getGameName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setTitle(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LocalBattleGameInfo;->getGameId()J

    .line 160
    .line 161
    .line 162
    move-result-wide v3

    .line 163
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v3, ""

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LocalBattleGameInfo;->getGameName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList1:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->gameAdapter1:Lcom/join/mgps/activity/FriendActivity$f;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->isActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lcom/join/mgps/activity/f1;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/f1;-><init>(Lcom/join/mgps/activity/FriendActivity;Lapp/mgsim/arena/ArenaRequest;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public startDownloadActivity(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "requestCode"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "hasPlug"

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->hasPlug:Z

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p1, "hasRom"

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->hasRom:Z

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/i1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/i1;-><init>(Lcom/join/mgps/activity/FriendActivity;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method unregisterReceiver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

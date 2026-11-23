.class public Lcom/join/mgps/activity/arena/GameRoomListActivity;
.super Lcom/join/mgps/activity/FriendActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomListActivity$x;,
        Lcom/join/mgps/activity/arena/GameRoomListActivity$z;,
        Lcom/join/mgps/activity/arena/GameRoomListActivity$w;,
        Lcom/join/mgps/activity/arena/GameRoomListActivity$y;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0064
.end annotation


# static fields
.field private static final COLOR_WHITE:I

.field private static final COLOR_YELLOW:I

.field private static DEBUG:Z = false

.field private static final HANDLER_COUNT_DOWN:I = 0x1

.field private static final INTERVAL_BTN_CLICK:I = 0x3e8

.field private static final REFRESH_TYPE_CHANGED_AREA:I = 0x1

.field private static final REFRESH_TYPE_ERROR:I = 0x3

.field private static final REFRESH_TYPE_SERVICE_UNBIND:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GameRoomListActivity"


# instance fields
.field accountUtil:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field adapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

.field private animation:Landroid/view/animation/Animation;

.field btnCreateRoom:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btnFastGame:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field dialog:Landroid/app/Dialog;

.field private fastJoinErrorInfo:Ljava/lang/String;

.field filterGame:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field footer:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field gameAdapter:Lcom/join/mgps/adapter/f2;

.field gameInfoBeanList:Ljava/util/List;
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

.field handler:Landroid/os/Handler;

.field hasdistory:Z

.field imgIconList:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field inviteFriend:Lcom/join/mgps/dto/FriendBean;

.field private volatile isEliteRoomPushFinished:Z

.field isFormHall:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private volatile isNeedEliteRoomRefreshView:Z

.field private volatile isNeedNormalRoomRefreshView:Z

.field private volatile isNormalRoomPushFinished:Z

.field isOnlyStandardRoom:Z

.field isOutSideClose:Z

.field private isSubscribeEliteRoomList:Z

.field private isSubscribeNormalRoomList:Z

.field iv_battle_area_arrow:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_list:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private joinSpectatorReason:Ljava/lang/String;

.field ll_battle_area:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_broadcast:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_elite_room:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_error:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_loading:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_race_room:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_standard_room:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_tab:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

.field private final mArenaSelectedCallback:Lcom/join/mgps/customview/h0$e;

.field private mBattleArea:Lcom/papa91/battle/protocol/BattleArea;

.field private mBattleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

.field private final mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

.field private mCount:I

.field private mCountDownerHandler:Landroid/os/Handler;

.field private mCreateGameCountDowner:Landroid/os/CountDownTimer;

.field private mDySinceDirectionChange:I

.field private mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

.field private mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

.field private mFastJoinRoomDialog:Landroid/app/Dialog;

.field private mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

.field mGameInfo:Lcom/join/mgps/dto/GameInfoBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private final mInitialCallback:Lcom/join/mgps/fragment/roomlist/c$n;

.field mLastBtnFastGameTime:J

.field private final mLocker:Ljava/lang/Object;

.field mNetClient:Lcom/join/mgps/rpc/l;

.field private final mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private mPopBattleArea:Lcom/join/mgps/customview/h0;

.field private mRaceRoomFragment:Lcom/join/mgps/fragment/roomlist/b;

.field mRpcClient:Lcom/join/mgps/rpc/e;

.field mSelGameConfig:Lcom/join/mgps/dto/GameConfig;

.field private mServerRecBattleArea:Lcom/papa91/battle/protocol/BattleArea;

.field private mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

.field private mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

.field private mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field myDragImageView:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pref:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field progressLoding:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field quickReturnFooter:Lcom/join/mgps/Util/n3$a;

.field recomendNumber:I

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field redPoint:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_top:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field roomBak:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation
.end field

.field roomCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field roomSelecteradapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

.field roomSizeOfCurrAreaGame:I

.field private selectedPosition:I

.field selecterLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_area:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_broadcast:Lcom/join/mgps/customview/AlwaysMarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tv_countDown:Landroid/widget/TextView;

.field tv_elite_room_count:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_elite_room_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_loading_info:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_race_room_info:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_race_room_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_standard__room_count:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_standard_room_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "#ffffff"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sput v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->COLOR_YELLOW:I

    .line 8
    .line 9
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->COLOR_WHITE:I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mRaceRoomFragment:Lcom/join/mgps/fragment/roomlist/b;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedNormalRoomRefreshView:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedEliteRoomRefreshView:Z

    .line 33
    .line 34
    new-instance v1, Ljava/lang/Object;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLocker:Ljava/lang/Object;

    .line 40
    .line 41
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomSizeOfCurrAreaGame:I

    .line 42
    .line 43
    new-instance v1, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomCountMap:Ljava/util/HashMap;

    .line 49
    .line 50
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeNormalRoomList:Z

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isOutSideClose:Z

    .line 62
    .line 63
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaSelectedCallback:Lcom/join/mgps/customview/h0$e;

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isOnlyStandardRoom:Z

    .line 72
    .line 73
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hasdistory:Z

    .line 74
    .line 75
    const/4 v0, 0x3

    .line 76
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCount:I

    .line 77
    .line 78
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 84
    .line 85
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$e;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$e;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mInitialCallback:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 91
    .line 92
    const-wide/16 v0, 0x0

    .line 93
    .line 94
    iput-wide v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLastBtnFastGameTime:J

    .line 95
    .line 96
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;

    .line 97
    .line 98
    const-wide/16 v4, 0x2710

    .line 99
    .line 100
    const-wide/16 v6, 0x3e8

    .line 101
    .line 102
    move-object v2, v0

    .line 103
    move-object v3, p0

    .line 104
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;JJ)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCreateGameCountDowner:Landroid/os/CountDownTimer;

    .line 108
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

    .line 115
    .line 116
    const/16 v0, -0x400

    .line 117
    .line 118
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->selectedPosition:I

    .line 119
    .line 120
    new-instance v0, Landroid/os/Handler;

    .line 121
    .line 122
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$m;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$m;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handler:Landroid/os/Handler;

    .line 131
    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dto/BattleChallengeConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->retryLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getPageSize(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1500(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showInputPwdForGameRoom(Lapp/mgsim/arena/ArenaResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dto/ArenaGameRoomListConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->selectBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1800()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->COLOR_WHITE:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->COLOR_YELLOW:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServerRecBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeNormalRoomList:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServerRecBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2300(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2310(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCount:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$2400(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->fastJoinErrorInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2500(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_countDown:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2700(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->startCountDownAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2800(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dialog/f1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2900(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideSeleter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isActivityFinished()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$3000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->selectedPosition:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3002(Lcom/join/mgps/activity/arena/GameRoomListActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->selectedPosition:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3200(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaPopupInfoBean;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkShowAD(Lcom/join/mgps/dto/ArenaPopupInfoBean;Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/join/mgps/activity/arena/GameRoomListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lcom/join/mgps/activity/arena/GameRoomListActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lcom/join/mgps/activity/arena/GameRoomListActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->cancelCreateGameCountDown()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cancelCreateGameCountDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCreateGameCountDowner:Landroid/os/CountDownTimer;

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

.method private checkOutSideTouch(Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "ev"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    return p1

    .line 21
    :cond_2
    :goto_0
    return v0
.end method

.method private checkShowAD(Lcom/join/mgps/dto/ArenaPopupInfoBean;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arenaPopupInfoBean",
            "shareBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ArenaPopupInfoBean;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaPopupInfoShareBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    const-string v1, "arenadialog"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz p2, :cond_4

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getId()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-ne v6, v7, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getDaily_count()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setDaily_count(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getLastShowTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    invoke-static {v6, v7}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getHasShowCount()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getDaily_count()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-ge v4, v6, :cond_1

    .line 68
    .line 69
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showAdDialog(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getHasShowCount()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    add-int/2addr p1, v2

    .line 77
    invoke-virtual {v5, p1}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setHasShowCount(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    invoke-virtual {v5, v0, v1}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setLastShowTime(J)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return v2

    .line 105
    :cond_1
    const/4 v4, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v5, v2}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setHasShowCount(I)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    invoke-virtual {v5, v3, v4}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setLastShowTime(J)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showAdDialog(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const-string p1, "22222222222222"

    .line 138
    .line 139
    invoke-static {v1, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return v2

    .line 143
    :cond_3
    if-nez v4, :cond_5

    .line 144
    .line 145
    new-instance v0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;

    .line 146
    .line 147
    invoke-direct {v0}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getId()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setId(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getDaily_count()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setDaily_count(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide v3

    .line 168
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setLastShowTime(J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setHasShowCount(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v3, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {v0, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showAdDialog(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    .line 195
    .line 196
    .line 197
    const-string p1, "3333333333"

    .line 198
    .line 199
    invoke-static {v1, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return v2

    .line 203
    :cond_4
    new-instance p2, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;

    .line 204
    .line 205
    invoke-direct {p2}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getId()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setId(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getDaily_count()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setDaily_count(I)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v3

    .line 226
    invoke-virtual {p2, v3, v4}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setLastShowTime(J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setHasShowCount(I)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 241
    .line 242
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v3, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showAdDialog(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    .line 258
    .line 259
    .line 260
    const-string p1, "4444444444"

    .line 261
    .line 262
    invoke-static {v1, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return v2

    .line 266
    :cond_5
    return v0
.end method

.method private checkViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "ev"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [I

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    float-to-int v2, v2

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    float-to-int p2, p2

    .line 21
    aget v3, v1, v0

    .line 22
    .line 23
    if-ge v3, v2, :cond_1

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aget v5, v1, v4

    .line 27
    .line 28
    if-ge v5, p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-int/2addr v3, v5

    .line 35
    if-ge v2, v3, :cond_1

    .line 36
    .line 37
    aget v1, v1, v4

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    add-int/2addr v1, p1

    .line 44
    if-ge p2, v1, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    :cond_1
    return v0
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
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Lb7/k;->L(Ljava/lang/String;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private getPageSize(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

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
    const/4 v0, 0x2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGeneral_match_switch()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    :cond_1
    return v0
.end method

.method private hideSeleter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->selecterLayout:Landroid/view/View;

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

.method private initRoomSelecterlayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomSelecteradapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f(Lcom/join/mgps/activity/arena/GameRoomListActivity$w;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomSelecteradapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    iput-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/q;->j(Landroid/app/Activity;)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    float-to-double v0, v0

    .line 44
    const-wide v2, 0x3ffe666666666666L    # 1.9

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmpl-double v4, v0, v2

    .line 50
    .line 51
    if-ltz v4, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x2

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 61
    .line 62
    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/join/mgps/adapter/f2;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/f2;-><init>(Landroid/content/Context;Z)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameAdapter:Lcom/join/mgps/adapter/f2;

    .line 77
    .line 78
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/f2;->f(Lcom/join/mgps/adapter/f2$e;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameAdapter:Lcom/join/mgps/adapter/f2;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/adapter/f2;->b()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoBeanList:Ljava/util/List;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recyclerViewGamelist:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameAdapter:Lcom/join/mgps/adapter/f2;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameTypeList()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->onGameSeriesSelected()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private initTabView(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iput-boolean v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isOnlyStandardRoom:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_elite_room:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_elite_room:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGeneral_match_switch()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v1, :cond_2

    .line 40
    .line 41
    iput-boolean v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isOnlyStandardRoom:Z

    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_race_room:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_race_room:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isOnlyStandardRoom:Z

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_tab:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
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

.method private synthetic lambda$afterViews$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/t1;->b(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getStatusBarHeight()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    float-to-int v1, v1

    .line 20
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method private removeGameRoomForDissolved(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLocker:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 5
    .line 6
    iget v1, v1, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 24
    .line 25
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 26
    .line 27
    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Lcom/join/mgps/fragment/roomlist/d;->z0(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeNormalRoomList:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 46
    .line 47
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 48
    .line 49
    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/join/mgps/fragment/roomlist/d;->z0(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method private retryLogin()V
    .locals 4

    .line 1
    const-string v0, "---retryLogin---"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoadingView()V

    .line 7
    .line 8
    .line 9
    const-string v0, "register_type_GameRoomListActivity"

    .line 10
    .line 11
    invoke-static {v0}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v1, v3, :cond_0

    .line 38
    .line 39
    iput-boolean v3, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 40
    .line 41
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    iput v1, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 48
    .line 49
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 50
    .line 51
    iput v3, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 52
    .line 53
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private selectBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleArea"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "register_type_GameRoomListActivity"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->changeBattleArea(Ljava/lang/String;Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/ArenaRequest;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private showAdDialog(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arenaPopupInfoBean"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->dialog:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->dialog:Landroid/app/Dialog;

    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;

    .line 32
    .line 33
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/join/mgps/Util/g0;->R(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dialog/p0$c;)Landroid/app/Dialog;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->dialog:Landroid/app/Dialog;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->dialog:Landroid/app/Dialog;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getShow_time()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    const/4 p1, 0x1

    .line 58
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method private showFastJoinRoomDialog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkNetwork()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->fastJoinErrorInfo:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCount:I

    .line 19
    .line 20
    const v2, 0x7f010049

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->animation:Landroid/view/animation/Animation;

    .line 28
    .line 29
    new-instance v2, Landroid/app/Dialog;

    .line 30
    .line 31
    const v3, 0x7f130585

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 38
    .line 39
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v3, 0x7f0d01d6

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const v2, 0x7f0a1944

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_countDown:Landroid/widget/TextView;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCount:I

    .line 70
    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/high16 v2, 0x43020000    # 130.0f

    .line 97
    .line 98
    invoke-static {p0, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 103
    .line 104
    const v2, 0x43888000    # 273.0f

    .line 105
    .line 106
    .line 107
    invoke-static {p0, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    .line 113
    const/16 v1, 0x11

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_countDown:Landroid/widget/TextView;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->animation:Landroid/view/animation/Animation;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    const-wide/16 v2, 0x3e8

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private showInputPwdForGameRoom(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLocker:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 8
    .line 9
    iget v1, v1, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 27
    .line 28
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 29
    .line 30
    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/join/mgps/fragment/roomlist/c;->G0(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeNormalRoomList:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 49
    .line 50
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 51
    .line 52
    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lcom/join/mgps/fragment/roomlist/c;->G0(I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method private showLoadingDialog(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p0, p1, v1}, Lcom/join/mgps/Util/g0;->z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/f1;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dialog/f1;->b()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private startCountDownAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->animation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_countDown:Landroid/widget/TextView;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->animation:Landroid/view/animation/Animation;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic w(Lcom/join/mgps/activity/arena/GameRoomListActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->lambda$afterViews$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mRpcClient:Lcom/join/mgps/rpc/e;

    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mNetClient:Lcom/join/mgps/rpc/l;

    .line 20
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v1, 0x1c

    .line 24
    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-static {v2, v3}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->footer:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->bindQuickReturnView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    if-lt v0, v1, :cond_2

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lcom/join/mgps/activity/arena/d;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/d;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a;

    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_standard_room:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$r;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$r;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_elite_room:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$s;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$s;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_race_room:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$t;

    .line 109
    .line 110
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$t;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 119
    .line 120
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_error:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;

    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard__room_count:Landroid/widget/TextView;

    .line 136
    .line 137
    const/16 v1, 0x8

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_count:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_info:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_3

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoadingView()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->requestServer()V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showFailedView()V

    .line 166
    .line 167
    .line 168
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstArenaFilterVisit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/d;->j(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_4

    .line 185
    .line 186
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->imgIconList:Landroid/widget/ImageView;

    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const v2, 0x7f080a9a

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    .line 201
    .line 202
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->initRoomSelecterlayout()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    :try_start_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :catch_1
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .line 222
    .line 223
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getUiData()V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method bindQuickReturnView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/n3$a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/join/mgps/Util/n3$a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 7
    .line 8
    return-void
.end method

.method btnCreateRoom()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
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
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "pa"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    instance-of v1, v0, Lcom/join/mgps/fragment/roomlist/c;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    check-cast v0, Lcom/join/mgps/fragment/roomlist/c;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/fragment/roomlist/c;->g0()V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method btnFastGameM()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "pa"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    iget-wide v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLastBtnFastGameTime:J

    .line 62
    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    cmp-long v4, v0, v2

    .line 66
    .line 67
    if-lez v4, :cond_3

    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    iget-wide v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLastBtnFastGameTime:J

    .line 74
    .line 75
    sub-long/2addr v0, v2

    .line 76
    const-wide/16 v2, 0x3e8

    .line 77
    .line 78
    cmp-long v4, v0, v2

    .line 79
    .line 80
    if-lez v4, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-string v0, "btnFastGame so fast ,waiting a moment!"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    iput-wide v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLastBtnFastGameTime:J

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/fragment/roomlist/c;->N0()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void

    .line 101
    :cond_4
    :goto_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_3
    return-void
.end method

.method btnRefresh()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/join/mgps/fragment/roomlist/c;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/fragment/roomlist/c;->refresh()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method canShowPopupWindow(Lcom/join/mgps/customview/h0;Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mPopWindow",
            "v"
        }
    .end annotation

    .line 1
    const-string v0, "v.setOnClickListener"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->u:Landroid/view/View;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    if-eq p1, p2, :cond_1

    .line 19
    .line 20
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    :goto_0
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isOutSideClose:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_4
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isOutSideClose:Z

    .line 68
    .line 69
    return v0
.end method

.method cancelSubscribeGameRoom()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.join.mgps.socket.fight.arena.cancel_subscribe"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method checkNetwork()Z
    .locals 1

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
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method checkUserInfoFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method clearRoomCoumt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomCountMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideSeleter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public createRoom(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "isElite"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkNetwork()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    const-string v0, "\u6b63\u5728\u521b\u5efa\u623f\u95f4..."

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->cancelCreateGameCountDown()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCreateGameCountDowner:Landroid/os/CountDownTimer;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getChallengeConfig(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->startCreateRoom(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method delaySubscribeGameList(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "isElite",
            "isRefreshing"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedNormalRoomRefreshView:Z

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->subscribeRoomList(IZ)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedEliteRoomRefreshView:Z

    .line 29
    .line 30
    :cond_2
    const/4 p1, 0x2

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->subscribeRoomList(IZ)V

    .line 32
    .line 33
    .line 34
    :cond_3
    :goto_0
    if-nez p2, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoadingView()V

    .line 37
    .line 38
    .line 39
    :cond_4
    return-void
.end method

.method dismissFastJoinRoomDialog()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hasdistory:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public fastJoinRoom(J)V
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkNetwork()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showFastJoinRoomDialog()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-string v1, "register_type_GameRoomListActivity"

    .line 50
    .line 51
    invoke-static {v1, p1, p2, v0}, Lapp/mgsim/arena/ArenaRequestFactory;->fastJoinRoom(Ljava/lang/String;JI)Lapp/mgsim/arena/ArenaRequest;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    return-void
.end method

.method public fastJoinRoomSelected()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, ""

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "1"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->g(Z)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method finishActivity()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->cancelCreateGameCountDown()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingDialog()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->dismissFastJoinRoomDialog()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method finishActivityForGetConfigFailure()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff01"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method getChallengeConfig(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mNetClient:Lcom/join/mgps/rpc/l;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/join/mgps/rpc/l;->R(ILjava/lang/String;J)Lcom/join/mgps/dto/ResultArenaBean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x2bd

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v0, v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkUserInfoFailed()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/BattleChallengeConfig;->getIsBattle()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const/16 v0, 0x32

    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->startCreateRoom(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x1f4

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->startCreateRoom(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingDialog()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->cancelCreateGameCountDown()V

    .line 83
    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ne p1, v1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkUserInfoFailed()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const-string p1, "\u7cfb\u7edf\u9519\u8bef!"

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    nop

    .line 104
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->cancelCreateGameCountDown()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingDialog()V

    .line 108
    .line 109
    .line 110
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_4

    .line 115
    .line 116
    const-string p1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    const-string p1, "\u521b\u5efa\u623f\u95f4\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-void
.end method

.method getGameConfig()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mRpcClient:Lcom/join/mgps/rpc/e;

    .line 37
    .line 38
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->h(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_6

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivityForGetConfigFailure()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_5

    .line 97
    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-gtz v2, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-gtz v2, :cond_3

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 143
    .line 144
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/GameInfoBean;->setCollection_id(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->initViewPagerByConfig(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivityForGetConfigFailure()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivityForGetConfigFailure()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_6
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff01"

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showFailedView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v2, "get game config exception:"

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivityForGetConfigFailure()V

    .line 206
    .line 207
    .line 208
    :goto_3
    return-void
.end method

.method public getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method getGameConfigv2()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

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
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivityForGetConfigFailure()V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void
.end method

.method public getGameSeries()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomSelecteradapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b()Lcom/join/mgps/dto/GameInfoBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const-string v0, ""

    .line 19
    .line 20
    :goto_1
    return-object v0
.end method

.method public getGameSeriesGames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInviteFriend()Lcom/join/mgps/dto/FriendBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->inviteFriend:Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusBarHeight()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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
    const-string v3, "status_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getBattle_area()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 57
    .line 58
    sget-object v3, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 59
    .line 60
    if-eq v2, v3, :cond_2

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/c;->d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v3, ","

    .line 88
    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-lez v2, :cond_4

    .line 114
    .line 115
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 116
    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    if-nez v0, :cond_3

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, "\u6b3e\u6e38\u620f"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :cond_4
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomSizeOfCurrAreaGame:I

    .line 169
    .line 170
    if-lez v0, :cond_5

    .line 171
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomSizeOfCurrAreaGame:I

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, "\u4e2a\u623f\u95f4"

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :cond_5
    return-object v1
.end method

.method getUiData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
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
    new-instance v1, Lcom/join/mgps/dto/CollectionCommentRequest;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/CollectionCommentRequest;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CollectionCommentRequest;->setCollection_id(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/CollectionCommentRequest;->setUid(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/d;->N1()Lb7/d;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1, v0}, Lb7/d;->K1(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$l;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$l;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 56
    .line 57
    .line 58
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingDialog()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->removeGameRoomForDissolved(Lapp/mgsim/arena/ArenaResponse;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 156
    .line 157
    new-array v1, v8, [Ljava/lang/Object;

    .line 158
    .line 159
    aput-object v2, v1, v7

    .line 160
    .line 161
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 162
    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    aput-object p1, v1, v6

    .line 168
    .line 169
    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563!"

    .line 170
    .line 171
    aput-object p1, v1, v5

    .line 172
    .line 173
    aput-object v3, v1, v4

    .line 174
    .line 175
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_4
    const/16 v1, 0xb

    .line 180
    .line 181
    if-ne v0, v1, :cond_5

    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 184
    .line 185
    new-array v1, v8, [Ljava/lang/Object;

    .line 186
    .line 187
    aput-object v2, v1, v7

    .line 188
    .line 189
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 190
    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    aput-object p1, v1, v6

    .line 196
    .line 197
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u521b\u5efa\u623f\u95f4!"

    .line 198
    .line 199
    aput-object p1, v1, v5

    .line 200
    .line 201
    aput-object v3, v1, v4

    .line 202
    .line 203
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_5
    const/16 v1, 0xd

    .line 208
    .line 209
    if-ne v0, v1, :cond_6

    .line 210
    .line 211
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 212
    .line 213
    new-array v1, v8, [Ljava/lang/Object;

    .line 214
    .line 215
    aput-object v2, v1, v7

    .line 216
    .line 217
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 218
    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    aput-object p1, v1, v6

    .line 224
    .line 225
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    .line 226
    .line 227
    aput-object p1, v1, v5

    .line 228
    .line 229
    aput-object v3, v1, v4

    .line 230
    .line 231
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_6
    const/16 v1, 0xa

    .line 236
    .line 237
    if-ne v0, v1, :cond_7

    .line 238
    .line 239
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showInputPwdForGameRoom(Lapp/mgsim/arena/ArenaResponse;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_7
    const/16 v1, 0x3e9

    .line 244
    .line 245
    if-ne v0, v1, :cond_8

    .line 246
    .line 247
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 248
    .line 249
    new-array v1, v8, [Ljava/lang/Object;

    .line 250
    .line 251
    const/16 v2, 0x102

    .line 252
    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    aput-object v2, v1, v7

    .line 258
    .line 259
    iget v2, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 260
    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    aput-object v2, v1, v6

    .line 266
    .line 267
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 268
    .line 269
    aput-object p1, v1, v5

    .line 270
    .line 271
    aput-object v3, v1, v4

    .line 272
    .line 273
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_8
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v1, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 282
    .line 283
    const-string v2, "cmd_quick_join_room"

    .line 284
    .line 285
    if-ne v1, v2, :cond_9

    .line 286
    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v1, "\u5feb\u901f\u52a0\u5165\u623f\u95f4\u5931\u8d25 "

    .line 293
    .line 294
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v0, " , \u8bf7\u91cd\u8bd5!"

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->fastJoinErrorInfo:Ljava/lang/String;

    .line 310
    .line 311
    return-void

    .line 312
    :cond_9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 316
    .line 317
    const-string v1, "cmd_subscribe_game_roomlist"

    .line 318
    .line 319
    if-ne v0, v1, :cond_a

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivity()V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :cond_a
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 326
    .line 327
    if-eqz p1, :cond_b

    .line 328
    .line 329
    iget-boolean v0, p1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 330
    .line 331
    if-eqz v0, :cond_b

    .line 332
    .line 333
    iget-boolean p1, p1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 334
    .line 335
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->stopRefreshing(Z)V

    .line 336
    .line 337
    .line 338
    :cond_b
    return-void
.end method

.method handleMsgBroadcast(Lcom/papa91/battle/protocol/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "notification"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_broadcast:Lcom/join/mgps/customview/AlwaysMarqueeTextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Notification;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/Notification;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method handlePushRoomListData(Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "response",
            "isFinished"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLocker:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-boolean v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->DEBUG:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    :goto_0
    const/16 p2, 0x14

    .line 19
    .line 20
    if-ge v2, p2, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->newBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, v3}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2, v3}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    add-int/lit8 v1, v2, 0x64

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setCopper(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    mul-int/lit8 v4, v2, 0x5

    .line 41
    .line 42
    add-int/lit8 v4, v4, 0xa

    .line 43
    .line 44
    invoke-virtual {p2, v4}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setPlaySeconds(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget-object v4, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 49
    .line 50
    invoke-virtual {p2, v4}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setState(Lcom/papa91/battle/protocol/RoomState;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, v3}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setHasPeripheralPlayer(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setChallengeCoins(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "hulaoda"

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p2, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->build()Lcom/papa91/battle/protocol/SimpleRoom;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 94
    .line 95
    if-eqz p2, :cond_2

    .line 96
    .line 97
    invoke-virtual {p2, p1, v3}, Lcom/join/mgps/fragment/roomlist/c;->d0(Ljava/util/List;Z)V

    .line 98
    .line 99
    .line 100
    :cond_2
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :cond_3
    if-eqz p2, :cond_4

    .line 103
    .line 104
    iget-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p2, [Ljava/lang/Object;

    .line 107
    .line 108
    aget-object p2, p2, v3

    .line 109
    .line 110
    check-cast p2, Ljava/util/List;

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    iget-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p2, Ljava/util/List;

    .line 116
    .line 117
    :goto_1
    const-string v1, "---handlePushRoomListData--data print  begin "

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->clearRoomCoumt()V

    .line 123
    .line 124
    .line 125
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 140
    .line 141
    const-string v5, "GameRoomListActivity"

    .line 142
    .line 143
    invoke-static {v5, v4}, Lcom/join/mgps/socket/fight/arena/c;->r(Ljava/lang/String;Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 144
    .line 145
    .line 146
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 147
    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v7, ""

    .line 161
    .line 162
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 178
    .line 179
    .line 180
    move-result-wide v6

    .line 181
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v4, ""

    .line 185
    .line 186
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {p0, v4, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->setRoomCount(Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_5
    const-string v1, "---handlePushRoomListData--data print  end "

    .line 198
    .line 199
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v4, "handlePushRoomListData ---response.request: "

    .line 208
    .line 209
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v4, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 213
    .line 214
    invoke-virtual {v4}, Lapp/mgsim/arena/ArenaRequest;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 229
    .line 230
    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 231
    .line 232
    if-ne p1, v3, :cond_7

    .line 233
    .line 234
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 235
    .line 236
    if-eqz p1, :cond_9

    .line 237
    .line 238
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeNormalRoomList:Z

    .line 239
    .line 240
    if-eqz p1, :cond_9

    .line 241
    .line 242
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedNormalRoomRefreshView:Z

    .line 243
    .line 244
    if-eqz p1, :cond_6

    .line 245
    .line 246
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedNormalRoomRefreshView:Z

    .line 247
    .line 248
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 249
    .line 250
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 251
    .line 252
    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/fragment/roomlist/c;->x0(Ljava/util/List;Z)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 257
    .line 258
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 259
    .line 260
    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/fragment/roomlist/c;->d0(Ljava/util/List;Z)V

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 265
    .line 266
    if-eqz p1, :cond_9

    .line 267
    .line 268
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    .line 269
    .line 270
    if-eqz p1, :cond_9

    .line 271
    .line 272
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 273
    .line 274
    if-eqz p1, :cond_9

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-ne p1, v3, :cond_9

    .line 285
    .line 286
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedEliteRoomRefreshView:Z

    .line 287
    .line 288
    if-eqz p1, :cond_8

    .line 289
    .line 290
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedEliteRoomRefreshView:Z

    .line 291
    .line 292
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 293
    .line 294
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 295
    .line 296
    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/fragment/roomlist/c;->x0(Ljava/util/List;Z)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 301
    .line 302
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 303
    .line 304
    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/fragment/roomlist/c;->d0(Ljava/util/List;Z)V

    .line 305
    .line 306
    .line 307
    :cond_9
    :goto_3
    monitor-exit v0

    .line 308
    return-void

    .line 309
    :catchall_0
    move-exception p1

    .line 310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    throw p1
.end method

.method handleRoomListDelete(Ljava/util/List;)V
    .locals 8
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLocker:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->DEBUG:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "---handleRoomListDelete--data print  begin "

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 30
    .line 31
    const-string v3, "GameRoomListActivity"

    .line 32
    .line 33
    invoke-static {v3, v2}, Lcom/join/mgps/socket/fight/arena/c;->r(Ljava/lang/String;Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "---handleRoomListDelete--data print  end "

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :goto_2
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 82
    .line 83
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v7, ""

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v3, ""

    .line 123
    .line 124
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const/4 v5, -0x1

    .line 132
    invoke-virtual {p0, v3, v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->setRoomCount(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    monitor-exit v4

    .line 136
    goto :goto_1

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    throw p1

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updatePopBattleAreaRoomCount()V

    .line 141
    .line 142
    .line 143
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeNormalRoomList:Z

    .line 144
    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/roomlist/d;->S0(Ljava/util/ArrayList;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    .line 159
    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 163
    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 167
    .line 168
    if-eqz p1, :cond_5

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    const/4 v1, 0x1

    .line 179
    if-ne p1, v1, :cond_5

    .line 180
    .line 181
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 182
    .line 183
    if-eqz p1, :cond_5

    .line 184
    .line 185
    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/d;->S0(Ljava/util/ArrayList;)V

    .line 186
    .line 187
    .line 188
    :cond_5
    monitor-exit v0

    .line 189
    return-void

    .line 190
    :catchall_1
    move-exception p1

    .line 191
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    throw p1
.end method

.method handleRoomListUpdate(Ljava/util/List;)V
    .locals 14
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mLocker:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->DEBUG:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "---handleRoomListUpdate--data print  begin "

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 30
    .line 31
    const-string v3, "GameRoomListActivity"

    .line 32
    .line 33
    invoke-static {v3, v2}, Lcom/join/mgps/socket/fight/arena/c;->r(Ljava/lang/String;Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "---handleRoomListUpdate--data print  end "

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 83
    .line 84
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    :goto_2
    const/4 v9, 0x1

    .line 102
    if-ge v8, v6, :cond_5

    .line 103
    .line 104
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    check-cast v10, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 109
    .line 110
    iget-object v11, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 111
    .line 112
    new-instance v12, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v13, ""

    .line 125
    .line 126
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-virtual {v11, v12}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_4

    .line 138
    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v11, ""

    .line 152
    .line 153
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v5, v9, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v12, ""

    .line 177
    .line 178
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    invoke-virtual {v4, v11, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    new-instance v11, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 194
    .line 195
    .line 196
    move-result-wide v12

    .line 197
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v10, ""

    .line 201
    .line 202
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    invoke-virtual {p0, v10, v9}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->setRoomCount(Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/util/AbstractMap;->size()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-ge v7, p1, :cond_7

    .line 220
    .line 221
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 230
    .line 231
    if-eqz p1, :cond_6

    .line 232
    .line 233
    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 234
    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v10, ""

    .line 248
    .line 249
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    invoke-virtual {v6, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_6

    .line 261
    .line 262
    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 263
    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 270
    .line 271
    .line 272
    move-result v10

    .line 273
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v10, ""

    .line 277
    .line 278
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    invoke-virtual {v6, v8, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_7
    invoke-virtual {v4}, Ljava/util/AbstractMap;->size()I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-lez p1, :cond_8

    .line 296
    .line 297
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomBak:Ljava/util/LinkedHashMap;

    .line 298
    .line 299
    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 300
    .line 301
    .line 302
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :try_start_2
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeNormalRoomList:Z

    .line 304
    .line 305
    if-eqz p1, :cond_9

    .line 306
    .line 307
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 308
    .line 309
    if-eqz p1, :cond_9

    .line 310
    .line 311
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 312
    .line 313
    if-eqz p1, :cond_9

    .line 314
    .line 315
    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/roomlist/d;->T0(Ljava/util/ArrayList;)V

    .line 316
    .line 317
    .line 318
    :cond_9
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    .line 319
    .line 320
    if-eqz p1, :cond_a

    .line 321
    .line 322
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 323
    .line 324
    if-eqz p1, :cond_a

    .line 325
    .line 326
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 327
    .line 328
    if-eqz p1, :cond_a

    .line 329
    .line 330
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-ne p1, v9, :cond_a

    .line 339
    .line 340
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 341
    .line 342
    if-eqz p1, :cond_a

    .line 343
    .line 344
    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/d;->T0(Ljava/util/ArrayList;)V

    .line 345
    .line 346
    .line 347
    :cond_a
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    return-void

    .line 349
    :catchall_0
    move-exception p1

    .line 350
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    :try_start_4
    throw p1

    .line 352
    :catchall_1
    move-exception p1

    .line 353
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 354
    throw p1
.end method

.method handleServiceConnected()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->delaySubscribeGameList(ZZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->delaySubscribeGameList(ZZ)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v0, "register_type_GameRoomListActivity"

    .line 56
    .line 57
    invoke-static {v0}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-boolean v1, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 62
    .line 63
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-ne v3, v2, :cond_2

    .line 70
    .line 71
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-ne v3, v2, :cond_2

    .line 84
    .line 85
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    iput v1, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iput-boolean v1, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 92
    .line 93
    iput v2, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 94
    .line 95
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method

.method hideLoadingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method hideLoadingView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_loading:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_error:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method initViewPagerByConfig(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_title:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getTitle()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->setBattleAreaView(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_tab:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->initTabView(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getPageSize(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    new-instance v3, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-direct {v3, p0, p1, v4}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;Landroidx/fragment/app/FragmentManager;)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 59
    .line 60
    new-instance v3, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;

    .line 61
    .line 62
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-static {v3, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->b(Lcom/join/mgps/activity/arena/GameRoomListActivity$x;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleServiceConnected()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 99
    .line 100
    .line 101
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 102
    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 112
    .line 113
    const/4 v1, 0x2

    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameConfig;->getOnly_show_mobile_gamers_room()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-ne v2, v0, :cond_3

    .line 127
    .line 128
    const/4 v2, 0x2

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    const/4 v2, 0x1

    .line 131
    :goto_2
    iput v2, p1, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 132
    .line 133
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 134
    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameConfig;->getOnly_show_mobile_gamers_room()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-ne v2, v0, :cond_5

    .line 148
    .line 149
    const/4 v0, 0x2

    .line 150
    :cond_5
    iput v0, p1, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 151
    .line 152
    :cond_6
    return-void
.end method

.method iv_back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isFormHall:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/activity/NewArenaMainActivty_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method iv_list()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkNetwork()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e\uff0c\u8bf7\u7a0d\u7b49..."

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaSelectedCallback:Lcom/join/mgps/customview/h0$e;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->m()Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServerRecBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 39
    .line 40
    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->b(Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/AreaInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recomendNumber:I

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/fragment/roomlist/c;->J0(Lcom/join/mgps/customview/h0$e;Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v2, 0x1

    .line 61
    if-ne v0, v2, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v2, :cond_4

    .line 76
    .line 77
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaSelectedCallback:Lcom/join/mgps/customview/h0$e;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->m()Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServerRecBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 98
    .line 99
    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->b(Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/AreaInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recomendNumber:I

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/fragment/roomlist/c;->J0(Lcom/join/mgps/customview/h0$e;Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstArenaFilterVisit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/d;->j(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstArenaFilterVisit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->imgIconList:Landroid/widget/ImageView;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const v2, 0x7f080a9a

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    return-void
.end method

.method public joinRoom(ILjava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomId",
            "password",
            "isElite"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->checkNetwork()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "\u6b63\u5728\u52a0\u5165\u623f\u95f4..."

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "register_type_GameRoomListActivity"

    .line 14
    .line 15
    invoke-static {v0, p1, p2, p3}, Lapp/mgsim/arena/ArenaRequestFactory;->joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method myDragImageView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->redPoint:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/join/mgps/rpc/h;->x:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "/lobby_active/index/"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
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
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/FriendActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    const/16 p2, 0x3f7

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object p2, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    .line 18
    .line 19
    new-instance p3, Lcom/papa/sim/statistic/Ext;

    .line 20
    .line 21
    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ""

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    const-string v0, "1"

    .line 70
    .line 71
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 p2, 0x1

    .line 83
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->g(Z)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception p1

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const/16 p2, 0x3f6

    .line 116
    .line 117
    if-ne p1, p2, :cond_2

    .line 118
    .line 119
    if-eqz p3, :cond_2

    .line 120
    .line 121
    const-string p1, "gameId"

    .line 122
    .line 123
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_2

    .line 132
    .line 133
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 134
    .line 135
    .line 136
    move-result-wide p1

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->fastJoinRoom(J)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    const/16 p2, 0x2711

    .line 142
    .line 143
    if-ne p1, p2, :cond_2

    .line 144
    .line 145
    if-eqz p3, :cond_2

    .line 146
    .line 147
    const-string p1, "mGameInfo"

    .line 148
    .line 149
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 154
    .line 155
    if-eqz p1, :cond_2

    .line 156
    .line 157
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    :cond_2
    :goto_1
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
    const-string v0, "BATTLE_ROOM_LIST"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->type:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->cancelCreateGameCountDown()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingDialog()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->dismissFastJoinRoomDialog()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->cancelSubscribeGameRoom()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onDestroy()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hasdistory:Z

    .line 53
    .line 54
    return-void
.end method

.method onGameSeriesSelected()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->friendFragment:Lcom/join/mgps/fragment/v2;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoBeanList:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/fragment/v2;->G0(Ljava/lang/String;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public onInvite(Lcom/join/mgps/dto/FriendBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onInvite(Lcom/join/mgps/dto/FriendBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->iv_back()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onScroll(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dy"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mDySinceDirectionChange:I

    .line 5
    .line 6
    if-ltz v1, :cond_1

    .line 7
    .line 8
    :cond_0
    if-gez p1, :cond_2

    .line 9
    .line 10
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mDySinceDirectionChange:I

    .line 11
    .line 12
    if-lez v1, :cond_2

    .line 13
    .line 14
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/n3$a;->g()V

    .line 17
    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mDySinceDirectionChange:I

    .line 20
    .line 21
    :cond_2
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mDySinceDirectionChange:I

    .line 22
    .line 23
    add-int/2addr v1, p1

    .line 24
    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mDySinceDirectionChange:I

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/Util/n3$a;->h()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-le v1, p1, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/n3$a;->l(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mDySinceDirectionChange:I

    .line 41
    .line 42
    if-gez p1, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/n3$a;->l(Z)V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_0
    return-void
.end method

.method public onScrolled(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dy"
        }
    .end annotation

    return-void
.end method

.method printLog(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method

.method quanmingxing()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/join/mgps/rpc/h;->l:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "/static/match_v2/index.html"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "11"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public refreshData(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isElite"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedNormalRoomRefreshView:Z

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedEliteRoomRefreshView:Z

    .line 8
    .line 9
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->subscribeRoomList(IZ)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 p1, 0x2

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->subscribeRoomList(IZ)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const-string v1, "register_type_GameRoomListActivity"

    .line 43
    .line 44
    invoke-static {v1}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-boolean v0, v1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 49
    .line 50
    iput-boolean p1, v1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    return v0
.end method

.method refreshGameRoomList(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshType"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedNormalRoomRefreshView:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNeedEliteRoomRefreshView:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeNormalRoomList:Z

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isNormalRoomPushFinished:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isEliteRoomPushFinished:Z

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/fragment/roomlist/c;->Q0()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/fragment/roomlist/c;->Q0()V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->cancelCreateGameCountDown()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mFastJoinRoomDialog:Landroid/app/Dialog;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 72
    .line 73
    .line 74
    :cond_4
    const/16 v2, 0x8

    .line 75
    .line 76
    if-ne p1, v0, :cond_8

    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    new-instance v3, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/fragment/roomlist/c;->x0(Ljava/util/List;Z)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    new-instance v3, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/fragment/roomlist/c;->x0(Ljava/util/List;Z)V

    .line 100
    .line 101
    .line 102
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 103
    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServerRecBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 107
    .line 108
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleServiceConnected()V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 112
    .line 113
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_loading:Landroid/widget/LinearLayout;

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_error:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_8
    const/4 v0, 0x2

    .line 128
    if-ne p1, v0, :cond_9

    .line 129
    .line 130
    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 132
    .line 133
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_loading:Landroid/widget/LinearLayout;

    .line 139
    .line 140
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_error:Landroid/widget/LinearLayout;

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_9
    const/4 v0, 0x3

    .line 150
    if-ne p1, v0, :cond_a

    .line 151
    .line 152
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_loading:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_error:Landroid/widget/LinearLayout;

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    :cond_a
    :goto_0
    return-void
.end method

.method public refreshListData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->refreshData(Z)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->refreshData(Z)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method requestServer()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mNetClient:Lcom/join/mgps/rpc/l;

    .line 22
    .line 23
    invoke-interface {v2, v1, v0}, Lcom/join/mgps/rpc/l;->a0(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lapp/mgsim/arena/ArenaLobbyServer;

    .line 46
    .line 47
    invoke-virtual {v1}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabled()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    new-instance v1, Lapp/mgsim/arena/ArenaResponse;

    .line 54
    .line 55
    invoke-direct {v1}, Lapp/mgsim/arena/ArenaResponse;-><init>()V

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x3e9

    .line 59
    .line 60
    iput v2, v1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    .line 67
    .line 68
    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabledMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, v1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingView()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfig()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method selectFragment(ILcom/join/mgps/dto/ArenaGameRoomListConfig;)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "config"
        }
    .end annotation

    .line 1
    const-string v0, "isElite"

    .line 2
    .line 3
    if-nez p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    new-instance p1, Lcom/join/mgps/fragment/roomlist/d;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/join/mgps/fragment/roomlist/d;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mInitialCallback:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/roomlist/c;->D0(Lcom/join/mgps/fragment/roomlist/c$n;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    iget-boolean p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->filterGame:Z

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string v0, "filterGameId"

    .line 41
    .line 42
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_2
    const/4 v1, 0x1

    .line 54
    if-ne p1, v1, :cond_6

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-ne p1, v1, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    new-instance p1, Lcom/join/mgps/fragment/roomlist/d;

    .line 71
    .line 72
    invoke-direct {p1}, Lcom/join/mgps/fragment/roomlist/d;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mInitialCallback:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/roomlist/c;->D0(Lcom/join/mgps/fragment/roomlist/c$n;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mRaceRoomFragment:Lcom/join/mgps/fragment/roomlist/b;

    .line 99
    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    new-instance p1, Lcom/join/mgps/fragment/roomlist/b;

    .line 103
    .line 104
    invoke-direct {p1}, Lcom/join/mgps/fragment/roomlist/b;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mRaceRoomFragment:Lcom/join/mgps/fragment/roomlist/b;

    .line 108
    .line 109
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mRaceRoomFragment:Lcom/join/mgps/fragment/roomlist/b;

    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_6
    const/4 p2, 0x2

    .line 113
    if-ne p1, p2, :cond_8

    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mRaceRoomFragment:Lcom/join/mgps/fragment/roomlist/b;

    .line 116
    .line 117
    if-nez p1, :cond_7

    .line 118
    .line 119
    new-instance p1, Lcom/join/mgps/fragment/roomlist/b;

    .line 120
    .line 121
    invoke-direct {p1}, Lcom/join/mgps/fragment/roomlist/b;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mRaceRoomFragment:Lcom/join/mgps/fragment/roomlist/b;

    .line 125
    .line 126
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mRaceRoomFragment:Lcom/join/mgps/fragment/roomlist/b;

    .line 127
    .line 128
    return-object p1

    .line 129
    :cond_8
    const/4 p1, 0x0

    .line 130
    return-object p1
.end method

.method selecterLayout()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method setBattleAreaView(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_area"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->rl_top:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_battle_area:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a0f4b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$b;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_battle_area:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->rl_top:Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public setInviteFriend(Lcom/join/mgps/dto/FriendBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inviteFriend"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->inviteFriend:Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    return-void
.end method

.method setRoomCount(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "diff"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomCountMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomCountMap:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    add-int/2addr v0, p2

    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v0

    .line 29
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomCountMap:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method showBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleArea"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 5
    .line 6
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recomendNumber:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recomendNumber:I

    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getBattle_area()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_area:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getSubtitle()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method showFailedView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_loading:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_error:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public showFasterJoinBtn(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->quickReturnFooter:Lcom/join/mgps/Util/n3$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/n3$a;->l(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method showLoadingView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_loading:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_error:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_loading_info:Landroid/widget/TextView;

    .line 20
    .line 21
    const-string v1, "\u6570\u636e\u52a0\u8f7d\u4e2d..."

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->progressLoding:Landroid/widget/ProgressBar;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method showLoginDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public showNodataView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_broadcast:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_loading:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_error:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_loading_info:Landroid/widget/TextView;

    .line 20
    .line 21
    const-string v2, "\u6682\u65e0\u6e38\u620f\u623f\u95f4"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->progressLoding:Landroid/widget/ProgressBar;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method showPopBattleArea(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServerRecBattleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-lez p1, :cond_4

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->selecterLayout:Landroid/view/View;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->selectedPosition:I

    .line 27
    .line 28
    const/16 v1, -0x400

    .line 29
    .line 30
    if-eq p1, v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ge v0, p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigv2()V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameTypeList()V

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isActivityFinished()Z

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
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method startCreateRoom(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "challengeCoins"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "startCreateRoom gameId:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const-string v1, "register_type_GameRoomListActivity"

    .line 32
    .line 33
    invoke-static {v1, p1, p2, v0}, Lapp/mgsim/arena/ArenaRequestFactory;->createRoom(Ljava/lang/String;Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method stopRefreshing(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isElite"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->Q0()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->Q0()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method subscribeRoomList(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomType",
            "isRefreshing"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "register_type_GameRoomListActivity"

    .line 16
    .line 17
    invoke-static {v1, v0, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->subscribeRoomList(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    iput-boolean p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeNormalRoomList:Z

    .line 27
    .line 28
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput-boolean p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 38
    .line 39
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 40
    .line 41
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method updateOnlineCounts(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getSubtitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_area:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getSubtitle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_area:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_area:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getSubtitle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_area:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getSubtitle()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    return-void
.end method

.method updatePopBattleAreaRoomCount()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_area:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getSubtitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-lez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/join/mgps/dto/GameConfig;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomCountMap:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomCountMap:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameConfig;->setRoom_count(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mPopBattleArea:Lcom/join/mgps/customview/h0;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/h0;->c(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mPopBattleArea:Lcom/join/mgps/customview/h0;

    .line 113
    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    new-instance v1, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/h0;->c(Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    return-void
.end method

.method updateRoomCount()V
    .locals 2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mStandardRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/fragment/roomlist/c;->k0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mEliteRoomFragment:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/fragment/roomlist/c;->k0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->roomSizeOfCurrAreaGame:I

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updatePopBattleAreaRoomCount()V

    return-void
.end method

.method updateRoomCount(Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "response",
            "isElite"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    check-cast p1, Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isSubscribeEliteRoomList:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCounter;->getElite()I

    move-result p2

    if-lez p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_count:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCounter;->getElite()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u623f\uff09"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_count:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method updateRoomCountsChanged(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newSize",
            "isElite"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-gtz p1, :cond_2

    .line 6
    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_count:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-gtz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard__room_count:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->isOnlyStandardRoom:Z

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameConfig:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_title:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getTitle()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

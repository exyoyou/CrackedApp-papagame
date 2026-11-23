.class public final Lcom/join/mgps/activity/arena/GameRoomActivity_;
.super Lcom/join/mgps/activity/arena/GameRoomActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;
    }
.end annotation


# static fields
.field public static final BATTLE_CHALLENGE_CONFIG_EXTRA:Ljava/lang/String; = "battleChallengeConfig"

.field public static final COPPER_EXTRA:Ljava/lang/String; = "copper"

.field public static final FROM_EXTRA:Ljava/lang/String; = "from"

.field public static final GAME_NAME_EXTRA:Ljava/lang/String; = "gameName"

.field public static final IS_ALLOW_PC_JOIN_EXTRA:Ljava/lang/String; = "isAllowPcJoin"

.field public static final IS_CREATE_ROOM_EXTRA:Ljava/lang/String; = "isCreateRoom"

.field public static final IS_FAST_JOIN_ROOM_EXTRA:Ljava/lang/String; = "isFastJoinRoom"

.field public static final JOIN_SPECTATOR_REASON_EXTRA:Ljava/lang/String; = "joinSpectatorReason"

.field public static final M_GAME_ROOM_EXTRA:Ljava/lang/String; = "mGameRoom"

.field public static final PASSWORD_EXTRA:Ljava/lang/String; = "password"

.field public static final POSITION_EXTRA:Ljava/lang/String; = "position"

.field public static final ROOM_LIVE_EXTRA:Ljava/lang/String; = "roomLive"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showKickInfoDialog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showSetGoldDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showSvrPlayMode()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->startQQ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->statGameByBattleServerIp(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateCopperTxt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->getIpFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/mgps/activity/arena/GameRoomActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->setRoomServerPlayModeUi(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->reverseRoomServerPlayModeUi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->sendCheckRealname()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1901(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateGameRoomAsync()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2001(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->getChallengeConfig()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showReadyTimeOutDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2101(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->shareQQ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2201(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->getGameData(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2301(Lcom/join/mgps/activity/arena/GameRoomActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->getBattleServerIp(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2401(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->printLog(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showStartGameTimeOut()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->handleKickPlayerInfo(Lcom/papa91/battle/protocol/KickInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->handleError(Lapp/mgsim/arena/ArenaResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->hideLoadingDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->checkUserInfoFailed()V

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
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->injectExtras_()V

    .line 11
    .line 12
    .line 13
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
    if-eqz v0, :cond_b

    .line 10
    .line 11
    const-string v1, "battleChallengeConfig"

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
    check-cast v1, Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 26
    .line 27
    :cond_0
    const-string v1, "roomLive"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->roomLive:I

    .line 40
    .line 41
    :cond_1
    const-string v1, "mGameRoom"

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
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/papa91/battle/protocol/GameRoom;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 56
    .line 57
    :cond_2
    const-string v1, "joinSpectatorReason"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 70
    .line 71
    :cond_3
    const-string v1, "gameName"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->gameName:Ljava/lang/String;

    .line 84
    .line 85
    :cond_4
    const-string v1, "isFastJoinRoom"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isFastJoinRoom:Z

    .line 98
    .line 99
    :cond_5
    const-string v1, "isCreateRoom"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCreateRoom:Z

    .line 112
    .line 113
    :cond_6
    const-string v1, "isAllowPcJoin"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_7

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isAllowPcJoin:I

    .line 126
    .line 127
    :cond_7
    const-string v1, "from"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_8

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->from:Ljava/lang/String;

    .line 140
    .line 141
    :cond_8
    const-string v1, "password"

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_9

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->password:Ljava/lang/String;

    .line 154
    .line 155
    :cond_9
    const-string v1, "position"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_a

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->position:I

    .line 168
    .line 169
    :cond_a
    const-string v1, "copper"

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_b

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->copper:I

    .line 182
    .line 183
    :cond_b
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;
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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;
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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method checkUserInfoFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$y;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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

.method getBattleServerIp(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "serverType"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomActivity_$q;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/arena/GameRoomActivity_$q;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->beans_:Ljava/util/Map;

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

.method getChallengeConfig()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomActivity_$n;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomActivity_$n;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getGameData(Ljava/lang/String;)V
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
    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomActivity_$p;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/arena/GameRoomActivity_$p;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getIpFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$h;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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

.method handleError(Lapp/mgsim/arena/ArenaResponse;)V
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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$x;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lapp/mgsim/arena/ArenaResponse;)V

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

.method handleKickPlayerInfo(Lcom/papa91/battle/protocol/KickInfo;)V
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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$w;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/KickInfo;)V

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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0063

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1a7a

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtHint:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a1546

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a1a78

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtCopper:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a0e9f

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->llCopper:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v0, 0x7f0a197e

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_gold_info:Landroid/widget/TextView;

    .line 55
    .line 56
    const v0, 0x7f0a1971

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_game_name:Landroid/widget/TextView;

    .line 66
    .line 67
    const v0, 0x7f0a1a13

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_roomNum:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a1976

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_game_time_state:Landroid/widget/TextView;

    .line 88
    .line 89
    const v0, 0x7f0a0f32

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ll_set_challenge_gold:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    const v0, 0x7f0a1942

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_copper_plate_count:Landroid/widget/TextView;

    .line 110
    .line 111
    const v0, 0x7f0a0a34

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/ImageView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_elite:Landroid/widget/ImageView;

    .line 121
    .line 122
    const v0, 0x7f0a0a1c

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_challenge_gold_arrow:Landroid/widget/ImageView;

    .line 132
    .line 133
    const v0, 0x7f0a0a8b

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_switch_outdevice_in:Landroid/widget/ImageView;

    .line 143
    .line 144
    const v0, 0x7f0a13bb

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rlRoomType:Landroid/view/View;

    .line 152
    .line 153
    const v0, 0x7f0a18d8

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tvRoomType:Landroid/widget/TextView;

    .line 163
    .line 164
    const v0, 0x7f0a13ee

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_net_archive:Landroid/widget/RelativeLayout;

    .line 174
    .line 175
    const v0, 0x7f0a191e

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Landroid/widget/TextView;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_archive_name:Landroid/widget/TextView;

    .line 185
    .line 186
    const v0, 0x7f0a0a0e

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/widget/ImageView;

    .line 194
    .line 195
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_arrow_net_archive:Landroid/widget/ImageView;

    .line 196
    .line 197
    const v0, 0x7f0a13cb

    .line 198
    .line 199
    .line 200
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/widget/LinearLayout;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_audience_1:Landroid/widget/LinearLayout;

    .line 207
    .line 208
    const v0, 0x7f0a13cc

    .line 209
    .line 210
    .line 211
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 216
    .line 217
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_audience_2:Landroid/widget/RelativeLayout;

    .line 218
    .line 219
    const v0, 0x7f0a0e80

    .line 220
    .line 221
    .line 222
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->linesee:Landroid/view/View;

    .line 227
    .line 228
    const v0, 0x7f0a1921

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Landroid/widget/TextView;

    .line 236
    .line 237
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_audience:Landroid/widget/TextView;

    .line 238
    .line 239
    const v0, 0x7f0a0a10

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 247
    .line 248
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_audience:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 249
    .line 250
    const v0, 0x7f0a0ebc

    .line 251
    .line 252
    .line 253
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Landroid/widget/LinearLayout;

    .line 258
    .line 259
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->llPlayMode:Landroid/widget/LinearLayout;

    .line 260
    .line 261
    const v0, 0x7f0a09e5

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Landroid/widget/RadioButton;

    .line 269
    .line 270
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ivPlayModeSwitcher:Landroid/widget/RadioButton;

    .line 271
    .line 272
    const v0, 0x7f0a12ff

    .line 273
    .line 274
    .line 275
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Landroid/widget/RadioGroup;

    .line 280
    .line 281
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->radioGroup:Landroid/widget/RadioGroup;

    .line 282
    .line 283
    const v0, 0x7f0a09e6

    .line 284
    .line 285
    .line 286
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ivPlayModeSwitcherlayout:Landroid/view/View;

    .line 291
    .line 292
    const v0, 0x7f0a198f

    .line 293
    .line 294
    .line 295
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroid/widget/TextView;

    .line 300
    .line 301
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_info_audience:Landroid/widget/TextView;

    .line 302
    .line 303
    const v0, 0x7f0a0252

    .line 304
    .line 305
    .line 306
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGame:Landroid/view/View;

    .line 311
    .line 312
    const v0, 0x7f0a0253

    .line 313
    .line 314
    .line 315
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Landroid/widget/ImageView;

    .line 320
    .line 321
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 322
    .line 323
    const v0, 0x7f0a0254

    .line 324
    .line 325
    .line 326
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Landroid/widget/TextView;

    .line 331
    .line 332
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 333
    .line 334
    const v0, 0x7f0a1997

    .line 335
    .line 336
    .line 337
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    check-cast v0, Landroid/widget/TextView;

    .line 342
    .line 343
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_invite_fight:Landroid/widget/TextView;

    .line 344
    .line 345
    const v0, 0x7f0a1922

    .line 346
    .line 347
    .line 348
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Landroid/widget/TextView;

    .line 353
    .line 354
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_audience_name:Landroid/widget/TextView;

    .line 355
    .line 356
    const v0, 0x7f0a0a11

    .line 357
    .line 358
    .line 359
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    if-eqz p1, :cond_0

    .line 364
    .line 365
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$k;

    .line 366
    .line 367
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$k;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    .line 372
    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->afterViews()V

    .line 374
    .line 375
    .line 376
    return-void
.end method

.method printLog(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomActivity_$r;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/arena/GameRoomActivity_$r;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/papa91/battle/protocol/GameRoom;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method reverseRoomServerPlayModeUi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$j;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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

.method sendCheckRealname()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomActivity_$l;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0xbb8

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomActivity_$l;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setRoomServerPlayModeUi(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$i;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;I)V

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

.method shareQQ()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomActivity_$o;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomActivity_$o;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method showKickInfoDialog(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$s;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V

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

.method showReadyTimeOutDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$u;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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

.method showSetGoldDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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

.method showStartGameTimeOut()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$v;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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

.method showSvrPlayMode()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$t;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V

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

.method startQQ()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$e;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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

.method statGameByBattleServerIp(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "battleServerAddr",
            "battleServerIp"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

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

.method updateCopperTxt()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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

.method updateGameRoomAsync()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomActivity_$m;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomActivity_$m;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V
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
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$z;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/GameRoom;)V

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

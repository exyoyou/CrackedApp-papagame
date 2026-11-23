.class public final Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;
.super Lcom/join/mgps/activity/SimulatorExitPlayActivity1;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$x;
    }
.end annotation


# static fields
.field public static final BATTLE_UIDS_EXTRA:Ljava/lang/String; = "battleUids"

.field public static final END_ID_EXTRA:Ljava/lang/String; = "endId"

.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"

.field public static final HIDE_LEVEL_EXTRA:Ljava/lang/String; = "hideLevel"

.field public static final IS_STAT_END_GAME_FAILED_POINT_EXTRA:Ljava/lang/String; = "isStatEndGameFailedPoint"

.field public static final LEVEL_EXTRA:Ljava/lang/String; = "level"

.field public static final LEVEL_URL_EXTRA:Ljava/lang/String; = "levelUrl"

.field public static final MAX_EXTRA:Ljava/lang/String; = "max"

.field public static final PROGRESS_EXTRA:Ljava/lang/String; = "progress"

.field public static final SNAPSHOT_PATH_EXTRA:Ljava/lang/String; = "snapshotPath"

.field public static final TIME_EXTRA:Ljava/lang/String; = "time"


# instance fields
.field private final afterLoginReceiver_:Landroid/content/BroadcastReceiver;

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

.field private final onViewChangedNotifier_:Lzc/c;

.field private final receiveScreenShotReceiver_:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$1;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->receiveScreenShotReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$2;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->afterLoginReceiver_:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->setLevel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->getExitPanel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/ResponseModel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->updateReward(Lcom/join/mgps/dto/ResponseModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->load()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->afterLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->loadRecommendAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/SimulatorAchievementBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->showAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/SimulatorAchievementBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->showTouristAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->setData(Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->toast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/CommonAdBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->bindRecommendAd(Lcom/join/mgps/dto/CommonAdBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->loadReward()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->loadRewardAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->getAchievementData()V

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
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->injectExtras_()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 15
    .line 16
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.ShowShare.main"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->receiveScreenShotReceiver_:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->afterLoginReceiver_:Landroid/content/BroadcastReceiver;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
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
    if-eqz v0, :cond_a

    .line 10
    .line 11
    const-string v1, "gameId"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const-string v1, "time"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->time:I

    .line 38
    .line 39
    :cond_1
    const-string v1, "hideLevel"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->hideLevel:Z

    .line 52
    .line 53
    :cond_2
    const-string v1, "level"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->level:I

    .line 66
    .line 67
    :cond_3
    const-string v1, "progress"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progress:I

    .line 80
    .line 81
    :cond_4
    const-string v1, "max"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->max:I

    .line 94
    .line 95
    :cond_5
    const-string v1, "levelUrl"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->levelUrl:Ljava/lang/String;

    .line 108
    .line 109
    :cond_6
    const-string v1, "battleUids"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->battleUids:[I

    .line 122
    .line 123
    :cond_7
    const-string v1, "isStatEndGameFailedPoint"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_8

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iput-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->isStatEndGameFailedPoint:Z

    .line 136
    .line 137
    :cond_8
    const-string v1, "endId"

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_9

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->endId:Ljava/lang/String;

    .line 150
    .line 151
    :cond_9
    const-string v1, "snapshotPath"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_a

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->snapshotPath:Ljava/lang/String;

    .line 164
    .line 165
    :cond_a
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$x;
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
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$x;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$x;
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
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$x;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method afterLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$o;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$o;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method bindRecommendAd(Lcom/join/mgps/dto/CommonAdBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$i;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/CommonAdBean;)V

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

.method getAchievementData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$l;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$l;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->beans_:Ljava/util/Map;

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

.method getExitPanel()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$m;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$m;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method load()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$n;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$n;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method loadRecommendAd()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$p;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$p;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method loadReward()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$j;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$j;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method loadRewardAd()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$k;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$k;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d00a6

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->receiveScreenShotReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->afterLoginReceiver_:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->onDestroy()V

    .line 12
    .line 13
    .line 14
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
    const v0, 0x7f0a072b

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->game_cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    const v0, 0x7f0a0728

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->game_bg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    .line 23
    const v0, 0x7f0a0093

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    .line 34
    const v0, 0x7f0a0099

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adTitle:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a146d

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->save:Landroid/view/View;

    .line 53
    .line 54
    const v0, 0x7f0a094d

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->info:Landroid/view/View;

    .line 62
    .line 63
    const v0, 0x7f0a1260

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->play_time:Landroid/widget/TextView;

    .line 73
    .line 74
    const v0, 0x7f0a0e58

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/TextView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->levelName:Landroid/widget/TextView;

    .line 84
    .line 85
    const v0, 0x7f0a12ad

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/TextView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressTv:Landroid/widget/TextView;

    .line 95
    .line 96
    const v0, 0x7f0a0e56

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/ImageView;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->levelIcon:Landroid/widget/ImageView;

    .line 106
    .line 107
    const v0, 0x7f0a129e

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/ProgressBar;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressBar:Landroid/widget/ProgressBar;

    .line 117
    .line 118
    const v0, 0x7f0a18f5

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/TextView;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->tvTips:Landroid/widget/TextView;

    .line 128
    .line 129
    const v0, 0x7f0a1392

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/widget/TextView;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_title:Landroid/widget/TextView;

    .line 139
    .line 140
    const v0, 0x7f0a0729

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->game_block:Landroid/view/View;

    .line 148
    .line 149
    const v0, 0x7f0a1390

    .line 150
    .line 151
    .line 152
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/FrameLayout;

    .line 157
    .line 158
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 159
    .line 160
    const v0, 0x7f0a0e5c

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 168
    .line 169
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->level_bar:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 170
    .line 171
    const v0, 0x7f0a138a

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward:Landroid/view/View;

    .line 179
    .line 180
    const v0, 0x7f0a138b

    .line 181
    .line 182
    .line 183
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward1:Landroid/view/View;

    .line 188
    .line 189
    const v0, 0x7f0a1391

    .line 190
    .line 191
    .line 192
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Landroid/widget/ImageView;

    .line 197
    .line 198
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_bg:Landroid/widget/ImageView;

    .line 199
    .line 200
    const v0, 0x7f0a138c

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/widget/ImageView;

    .line 208
    .line 209
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward1_icon:Landroid/widget/ImageView;

    .line 210
    .line 211
    const v0, 0x7f0a138e

    .line 212
    .line 213
    .line 214
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroid/widget/ImageView;

    .line 219
    .line 220
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward2_icon:Landroid/widget/ImageView;

    .line 221
    .line 222
    const v0, 0x7f0a02c6

    .line 223
    .line 224
    .line 225
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_share:Landroid/view/View;

    .line 230
    .line 231
    const v0, 0x7f0a14b3

    .line 232
    .line 233
    .line 234
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->se_reward_title:Landroid/view/View;

    .line 239
    .line 240
    const v0, 0x7f0a12f1

    .line 241
    .line 242
    .line 243
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Landroid/widget/TextView;

    .line 248
    .line 249
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->r1_name:Landroid/widget/TextView;

    .line 250
    .line 251
    const v0, 0x7f0a12f0

    .line 252
    .line 253
    .line 254
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Landroid/widget/TextView;

    .line 259
    .line 260
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->r1_desc:Landroid/widget/TextView;

    .line 261
    .line 262
    const v0, 0x7f0a02b6

    .line 263
    .line 264
    .line 265
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Landroid/widget/TextView;

    .line 270
    .line 271
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r1:Landroid/widget/TextView;

    .line 272
    .line 273
    const v0, 0x7f0a138d

    .line 274
    .line 275
    .line 276
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward2:Landroid/view/View;

    .line 281
    .line 282
    const v0, 0x7f0a12f5

    .line 283
    .line 284
    .line 285
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Landroid/widget/TextView;

    .line 290
    .line 291
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->r2_name:Landroid/widget/TextView;

    .line 292
    .line 293
    const v0, 0x7f0a12f4

    .line 294
    .line 295
    .line 296
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Landroid/widget/TextView;

    .line 301
    .line 302
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->r2_desc:Landroid/widget/TextView;

    .line 303
    .line 304
    const v0, 0x7f0a02b7

    .line 305
    .line 306
    .line 307
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    check-cast v0, Landroid/widget/TextView;

    .line 312
    .line 313
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r2:Landroid/widget/TextView;

    .line 314
    .line 315
    const v0, 0x7f0a1526

    .line 316
    .line 317
    .line 318
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->share_container:Landroid/view/View;

    .line 323
    .line 324
    const v0, 0x7f0a152b

    .line 325
    .line 326
    .line 327
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const v1, 0x7f0a152c

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const v2, 0x7f0a1527

    .line 339
    .line 340
    .line 341
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    const v3, 0x7f0a1528

    .line 346
    .line 347
    .line 348
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    const v4, 0x7f0a1383

    .line 353
    .line 354
    .line 355
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    const v5, 0x7f0a05b6

    .line 360
    .line 361
    .line 362
    invoke-interface {p1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    iget-object v5, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_share:Landroid/view/View;

    .line 367
    .line 368
    if-eqz v5, :cond_0

    .line 369
    .line 370
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$q;

    .line 371
    .line 372
    invoke-direct {v6, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$q;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    :cond_0
    if-eqz v0, :cond_1

    .line 379
    .line 380
    new-instance v5, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$r;

    .line 381
    .line 382
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$r;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    .line 387
    .line 388
    :cond_1
    if-eqz v1, :cond_2

    .line 389
    .line 390
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$s;

    .line 391
    .line 392
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$s;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    .line 397
    .line 398
    :cond_2
    if-eqz v2, :cond_3

    .line 399
    .line 400
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$t;

    .line 401
    .line 402
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$t;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    .line 407
    .line 408
    :cond_3
    if-eqz v3, :cond_4

    .line 409
    .line 410
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$u;

    .line 411
    .line 412
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$u;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    .line 417
    .line 418
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->save:Landroid/view/View;

    .line 419
    .line 420
    if-eqz v0, :cond_5

    .line 421
    .line 422
    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$v;

    .line 423
    .line 424
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$v;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    .line 429
    .line 430
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->info:Landroid/view/View;

    .line 431
    .line 432
    if-eqz v0, :cond_6

    .line 433
    .line 434
    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$w;

    .line 435
    .line 436
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$w;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    .line 441
    .line 442
    :cond_6
    if-eqz v4, :cond_7

    .line 443
    .line 444
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$a;

    .line 445
    .line 446
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$a;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    .line 451
    .line 452
    :cond_7
    if-eqz p1, :cond_8

    .line 453
    .line 454
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$b;

    .line 455
    .line 456
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$b;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    .line 461
    .line 462
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->afterViews()V

    .line 463
    .line 464
    .line 465
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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->beans_:Ljava/util/Map;

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
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method setData(Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V
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
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$g;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V

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
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setLevel()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$c;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;)V

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

.method showAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V
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
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$e;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/SimulatorAchievementBean;)V

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

.method showTouristAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V
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
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$f;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/SimulatorAchievementBean;)V

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

.method toast(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$h;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Ljava/lang/String;)V

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

.method updateReward(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/SimulatorExitPanel;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_$d;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;Lcom/join/mgps/dto/ResponseModel;)V

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

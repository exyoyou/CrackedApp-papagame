.class public final Lcom/join/mgps/activity/MGMainActivity_;
.super Lcom/join/mgps/activity/MGMainActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGMainActivity_$d3;
    }
.end annotation


# static fields
.field public static final INTENT_DATE_BEAN22_EXTRA:Ljava/lang/String; = "intentDateBean22"

.field public static final INTENT_DATE_BEAN_EXTRA:Ljava/lang/String; = "intentDateBean"

.field public static final J_PUSH_INTENT_DATA_EXTRA:Ljava/lang/String; = "jPushIntentData"


# instance fields
.field private final accountChangeReceiver_:Landroid/content/BroadcastReceiver;

.field private final afterLoginReceiver_:Landroid/content/BroadcastReceiver;

.field private final backUpGameFinishReceiver_:Landroid/content/BroadcastReceiver;

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

.field private final downloadPermissGetReceiver_:Landroid/content/BroadcastReceiver;

.field private final downloaddelayReceiver_:Landroid/content/BroadcastReceiver;

.field private final emuOnResumeReceiver_:Landroid/content/BroadcastReceiver;

.field private final getUpdateIntentReceiver_:Landroid/content/BroadcastReceiver;

.field private final intentFilter10_:Landroid/content/IntentFilter;

.field private final intentFilter11_:Landroid/content/IntentFilter;

.field private final intentFilter12_:Landroid/content/IntentFilter;

.field private final intentFilter13_:Landroid/content/IntentFilter;

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final intentFilter2_:Landroid/content/IntentFilter;

.field private final intentFilter3_:Landroid/content/IntentFilter;

.field private final intentFilter4_:Landroid/content/IntentFilter;

.field private final intentFilter5_:Landroid/content/IntentFilter;

.field private final intentFilter6_:Landroid/content/IntentFilter;

.field private final intentFilter7_:Landroid/content/IntentFilter;

.field private final intentFilter8_:Landroid/content/IntentFilter;

.field private final intentFilter9_:Landroid/content/IntentFilter;

.field private final onViewChangedNotifier_:Lzc/c;

.field private final receivedInitAdVideoConfigReceiver_:Landroid/content/BroadcastReceiver;

.field private final recivedShowToastReceiver_:Landroid/content/BroadcastReceiver;

.field private final recveidDownLiveResReceiver_:Landroid/content/BroadcastReceiver;

.field private final recveidcoinfloatReceiver_:Landroid/content/BroadcastReceiver;

.field private final showupdateDialogReceiver_:Landroid/content/BroadcastReceiver;

.field private final unreadnotifyReceiver_:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->recivedShowToastReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->getUpdateIntentReceiver_:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter3_:Landroid/content/IntentFilter;

    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$3;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$3;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->showupdateDialogReceiver_:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter4_:Landroid/content/IntentFilter;

    .line 66
    .line 67
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$4;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$4;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->backUpGameFinishReceiver_:Landroid/content/BroadcastReceiver;

    .line 73
    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter5_:Landroid/content/IntentFilter;

    .line 80
    .line 81
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$5;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$5;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->unreadnotifyReceiver_:Landroid/content/BroadcastReceiver;

    .line 87
    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter6_:Landroid/content/IntentFilter;

    .line 94
    .line 95
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$6;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$6;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->recveidDownLiveResReceiver_:Landroid/content/BroadcastReceiver;

    .line 101
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    .line 103
    .line 104
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter7_:Landroid/content/IntentFilter;

    .line 108
    .line 109
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$7;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$7;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->recveidcoinfloatReceiver_:Landroid/content/BroadcastReceiver;

    .line 115
    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    .line 117
    .line 118
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter8_:Landroid/content/IntentFilter;

    .line 122
    .line 123
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$8;

    .line 124
    .line 125
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$8;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->receivedInitAdVideoConfigReceiver_:Landroid/content/BroadcastReceiver;

    .line 129
    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter9_:Landroid/content/IntentFilter;

    .line 136
    .line 137
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$9;

    .line 138
    .line 139
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$9;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->downloaddelayReceiver_:Landroid/content/BroadcastReceiver;

    .line 143
    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    .line 145
    .line 146
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter10_:Landroid/content/IntentFilter;

    .line 150
    .line 151
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$10;

    .line 152
    .line 153
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$10;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->downloadPermissGetReceiver_:Landroid/content/BroadcastReceiver;

    .line 157
    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    .line 159
    .line 160
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter11_:Landroid/content/IntentFilter;

    .line 164
    .line 165
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$11;

    .line 166
    .line 167
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$11;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->accountChangeReceiver_:Landroid/content/BroadcastReceiver;

    .line 171
    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    .line 173
    .line 174
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter12_:Landroid/content/IntentFilter;

    .line 178
    .line 179
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$12;

    .line 180
    .line 181
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$12;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 182
    .line 183
    .line 184
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->afterLoginReceiver_:Landroid/content/BroadcastReceiver;

    .line 185
    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    .line 187
    .line 188
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter13_:Landroid/content/IntentFilter;

    .line 192
    .line 193
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$13;

    .line 194
    .line 195
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$13;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 196
    .line 197
    .line 198
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->emuOnResumeReceiver_:Landroid/content/BroadcastReceiver;

    .line 199
    .line 200
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->hideSplash()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$10001(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkQuark()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/MGMainActivity_;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->showInstallAppDialogActivity(ILjava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->showRedPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$10101(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->scanQuarkTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;Lcom/join/mgps/dto/UninstallOnlineGameBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->gotoInstallAppDialogV2Activity(Ljava/lang/String;Lcom/join/mgps/dto/UninstallOnlineGameBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/RewardBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->toastData(Lcom/join/mgps/dto/RewardBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->initViewS()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateHistory()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showBackupFinishDialog(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getdownloadTaskUI(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->sendRegister(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1901(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateLine(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2001(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateDownloadingPoint(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->hideRedPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2101(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateNoOpenPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2201(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateHidePoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2301(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2401(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/TipsInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateFindGameRetHot(Lcom/join/mgps/dto/TipsInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2501(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->startPlayVideo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2601(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->refreshTabIcon()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2701(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->serverConnectionException()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2801(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->showDownNotice()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2901(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->sendHomeDownInstallListPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3001(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->tokenFailure()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->requestWriteUUID(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3101(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3201(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3301(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3401(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->error(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3501(Lcom/join/mgps/activity/MGMainActivity_;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3601(Lcom/join/mgps/activity/MGMainActivity_;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateSignUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3701(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->showAdM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3801(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3901(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->sanLocalGameIv(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4001(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showCheckData(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->checkShowOldUserRecom(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4101(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4201(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setSNKGameData(Lcom/join/mgps/dto/SNKGameInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4301(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/ad/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->delayLoadRewardAd(Lcom/join/mgps/ad/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4401(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->delayChangeAdshow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4501(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateStartGameTable(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4601(Lcom/join/mgps/activity/MGMainActivity_;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startAlphaBreathAnimation(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4701(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->delaydown(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4801(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/event/w;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startGameRoom(Lcom/join/mgps/event/w;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4901(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5001(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkRealName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5101(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->autoSendAdd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5201(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->showOnlineCouponDialog(Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5301(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->goToOnekeyLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5401(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->saveUUID()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5501(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->initOM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5601(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getRootUrl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5701(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->initCheckSNKGame(Ljava/util/List;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5801(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->initJPushJoinDevice()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5901(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getRedPointData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6001(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getData(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->selectTableDelay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6101(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getEndGameConfig()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6201(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getLogincfgs()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6301(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getHaveGameList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6401(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->savePurchasedList(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6501(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getDetailData(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6601(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkInstallApp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6701(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->getUnInstallGameInfo(Ljava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6801(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->rewadCopper()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6901(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->init()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7001(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkToken()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/MGMainActivity_;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->startIntentOldUserRecom(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7101(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startBackups(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7201(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->startLoadRecommendwifi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7301(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getdownloadTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7401(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->sendRigester(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7501(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownloadNumber()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7601(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getVideoAdCfg(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7701(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getEMUVersion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7801(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->onresumData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7901(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateAndroidApp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8001(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->setwifiStadu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->addShortCuts()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8101(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getArchivingCfg()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8201(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getUserInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8301(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->touristLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8401(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getUpdateFeature()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8501(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getHomePopupAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8601(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->checkSign(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8701(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->sign()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8801(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getBootPageData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$8901(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->preLoad(Lcom/join/mgps/dto/PopupAdBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9001(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkSNKGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showSharedGameDialog(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9101(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getSNKGameInfo(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9201(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->initAdVideoConfig()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9301(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->videoAdWatchLog(Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9401(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->handleVideoAdWatchLogRecord()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9501(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->afterLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9601(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->reject(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9701(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkClipBoard2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9801(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->preLogin(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$9901(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getAvailableLoginMethods()V

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
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f12031f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->netExcption:Ljava/lang/String;

    .line 23
    .line 24
    const v0, 0x7f1200cd

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->netConnectException:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity_;->injectExtras_()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string v0, "com.join.intent.showtoast"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 44
    .line 45
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.appUpdate"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter3_:Landroid/content/IntentFilter;

    .line 51
    .line 52
    const-string v0, "com.papa.broadcast.showUpdateDialog"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter4_:Landroid/content/IntentFilter;

    .line 58
    .line 59
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.backup_game_finish"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter5_:Landroid/content/IntentFilter;

    .line 65
    .line 66
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_unread_notify"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter6_:Landroid/content/IntentFilter;

    .line 72
    .line 73
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.startDownloadLiveRes"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter7_:Landroid/content/IntentFilter;

    .line 79
    .line 80
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.coinflote"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter8_:Landroid/content/IntentFilter;

    .line 86
    .line 87
    const-string v0, "com.join.intent.initAdVideoConfig"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter9_:Landroid/content/IntentFilter;

    .line 93
    .line 94
    const-string v0, "com.download.delay.down"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter10_:Landroid/content/IntentFilter;

    .line 100
    .line 101
    const-string v0, "com.download.permiss.get"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter11_:Landroid/content/IntentFilter;

    .line 107
    .line 108
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter12_:Landroid/content/IntentFilter;

    .line 114
    .line 115
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter13_:Landroid/content/IntentFilter;

    .line 121
    .line 122
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.emu.resume"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->recivedShowToastReceiver_:Landroid/content/BroadcastReceiver;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 130
    .line 131
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->getUpdateIntentReceiver_:Landroid/content/BroadcastReceiver;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 137
    .line 138
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->showupdateDialogReceiver_:Landroid/content/BroadcastReceiver;

    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter3_:Landroid/content/IntentFilter;

    .line 144
    .line 145
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->backUpGameFinishReceiver_:Landroid/content/BroadcastReceiver;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter4_:Landroid/content/IntentFilter;

    .line 151
    .line 152
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->unreadnotifyReceiver_:Landroid/content/BroadcastReceiver;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter5_:Landroid/content/IntentFilter;

    .line 158
    .line 159
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->recveidDownLiveResReceiver_:Landroid/content/BroadcastReceiver;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter6_:Landroid/content/IntentFilter;

    .line 165
    .line 166
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->recveidcoinfloatReceiver_:Landroid/content/BroadcastReceiver;

    .line 170
    .line 171
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter7_:Landroid/content/IntentFilter;

    .line 172
    .line 173
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->receivedInitAdVideoConfigReceiver_:Landroid/content/BroadcastReceiver;

    .line 177
    .line 178
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter8_:Landroid/content/IntentFilter;

    .line 179
    .line 180
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->downloaddelayReceiver_:Landroid/content/BroadcastReceiver;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter9_:Landroid/content/IntentFilter;

    .line 186
    .line 187
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->downloadPermissGetReceiver_:Landroid/content/BroadcastReceiver;

    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter10_:Landroid/content/IntentFilter;

    .line 193
    .line 194
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->accountChangeReceiver_:Landroid/content/BroadcastReceiver;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter11_:Landroid/content/IntentFilter;

    .line 200
    .line 201
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->afterLoginReceiver_:Landroid/content/BroadcastReceiver;

    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter12_:Landroid/content/IntentFilter;

    .line 207
    .line 208
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->emuOnResumeReceiver_:Landroid/content/BroadcastReceiver;

    .line 212
    .line 213
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->intentFilter13_:Landroid/content/IntentFilter;

    .line 214
    .line 215
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
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
    const-string v1, "intentDateBean"

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
    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 26
    .line 27
    :cond_0
    const-string v1, "intentDateBean22"

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
    check-cast v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean22:Lcom/join/mgps/Util/IntentDateBean;

    .line 42
    .line 43
    :cond_1
    const-string v1, "jPushIntentData"

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
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/join/mgps/dto/JPushIntentData;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGMainActivity_$d3;
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
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$d3;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$d3;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MGMainActivity_$d3;
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
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$d3;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$d3;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method addShortCuts()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$i0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$i0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method afterLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$o;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$o;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method autoSendAdd()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$z1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$z1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method checkClipBoard2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$q;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$q;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method checkDownloadNumber()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$x2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$x2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method checkInstallApp()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$o2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$o2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method checkQuark()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$t;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x5dc

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$t;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method checkRealName()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$f0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$f0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

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

.method checkSNKGame()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$j;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$j;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method checkShowOldUserRecom(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intentSplash"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$e0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$e0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Z)V

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

.method checkSign(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "showSign"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$f;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x4b0

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$f;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method checkToken()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$s2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$s2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method delayChangeAdshow()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$s1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$s1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x7d0

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

.method delayLoadRewardAd(Lcom/join/mgps/ad/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "video"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$r1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$r1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/ad/d;)V

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

.method delaydown(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$v1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$v1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xbb8

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

.method error(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$i1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$i1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V

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

.method getArchivingCfg()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$a;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x1f4

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$a;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getAvailableLoginMethods()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$s;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$s;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->beans_:Ljava/util/Map;

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

.method getBootPageData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$h;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x5dc

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$h;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getData(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intentSplash"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$i2;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x3e8

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$i2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getDetailData(Ljava/lang/String;)V
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
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$n2;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$n2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getEMUVersion()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$z2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$z2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getEndGameConfig()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$j2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$j2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getHaveGameList()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$l2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$l2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getHomePopupAd()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$e;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$e;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getLogincfgs()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$k2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$k2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getRedPointData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$h2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$h2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getRootUrl()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$e2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$e2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getSNKGameInfo(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$k;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$k;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getUnInstallGameInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "gameId",
            "downloadTasksNotInstall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/MGMainActivity_$p2;

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
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/MGMainActivity_$p2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method getUpdateFeature()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$d;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$d;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getUserInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$b;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$b;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getVideoAdCfg(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "needPreLoad"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$y2;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$y2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getdownloadTask()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$v2;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x3e8

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$v2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getdownloadTaskUI(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTasks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$r0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$r0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V

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

.method goToOnekeyLogin()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$b2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$b2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method gotoInstallAppDialogV2Activity(Ljava/lang/String;Lcom/join/mgps/dto/UninstallOnlineGameBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "gameId",
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$l0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$l0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;Lcom/join/mgps/dto/UninstallOnlineGameBean;)V

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
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$y1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$y1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaResponse;)V

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

.method handleVideoAdWatchLogRecord()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$n;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x1388

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$n;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method hideRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$c0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$c0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method hideSplash()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$a0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$a0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x514

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

.method init()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$r2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$r2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method initAdVideoConfig()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$l;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$l;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method initCheckSNKGame(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "listZip",
            "style"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/MGMainActivity_$f2;

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
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/MGMainActivity_$f2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method initJPushJoinDevice()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$g2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$g2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method initOM()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$d2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$d2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method initViewS()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$n0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$n0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d070c

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->recivedShowToastReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->getUpdateIntentReceiver_:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->showupdateDialogReceiver_:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->backUpGameFinishReceiver_:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->unreadnotifyReceiver_:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->recveidDownLiveResReceiver_:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->recveidcoinfloatReceiver_:Landroid/content/BroadcastReceiver;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->receivedInitAdVideoConfigReceiver_:Landroid/content/BroadcastReceiver;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->downloaddelayReceiver_:Landroid/content/BroadcastReceiver;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->downloadPermissGetReceiver_:Landroid/content/BroadcastReceiver;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->accountChangeReceiver_:Landroid/content/BroadcastReceiver;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->afterLoginReceiver_:Landroid/content/BroadcastReceiver;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->emuOnResumeReceiver_:Landroid/content/BroadcastReceiver;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    .line 65
    .line 66
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->onDestroy()V

    .line 67
    .line 68
    .line 69
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
    const v0, 0x7f0a117c

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/mgps/customview/LightningView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->numberInTab:Lcom/join/mgps/customview/LightningView;

    .line 11
    .line 12
    const v0, 0x7f0a0320

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    .line 22
    .line 23
    const v0, 0x7f0a0535

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
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downlodingGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    .line 34
    const v0, 0x7f0a15e5

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->splash:Landroid/widget/ImageView;

    .line 44
    .line 45
    const v0, 0x7f0a0215

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->bottom:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v0, 0x7f0a105d

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_tabselect:Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    const v0, 0x7f0a1048    # 1.83518E38f

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_tabselect:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    const v0, 0x7f0a104e

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_tabselect:Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    const v0, 0x7f0a105e

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_text:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a1049

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
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_text:Landroid/widget/TextView;

    .line 110
    .line 111
    const v0, 0x7f0a104a

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
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    .line 121
    .line 122
    const v0, 0x7f0a13de

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rl_home_tab_game:Landroid/widget/RelativeLayout;

    .line 132
    .line 133
    const v0, 0x7f0a077e

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 143
    .line 144
    const v0, 0x7f0a104c

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/TextView;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_text:Landroid/widget/TextView;

    .line 154
    .line 155
    const v0, 0x7f0a1050

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_text:Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0a061e

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/TextView;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fightText:Landroid/widget/TextView;

    .line 176
    .line 177
    const v0, 0x7f0a0faa

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->lottie_mg_emulator:Lcom/airbnb/lottie/LottieAnimationView;

    .line 187
    .line 188
    const v0, 0x7f0a0fac

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->lottie_mg_recom:Lcom/airbnb/lottie/LottieAnimationView;

    .line 198
    .line 199
    const v0, 0x7f0a0fa9

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->lottie_mg_chart:Lcom/airbnb/lottie/LottieAnimationView;

    .line 209
    .line 210
    const v0, 0x7f0a0fab

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->lottie_mg_fight:Lcom/airbnb/lottie/LottieAnimationView;

    .line 220
    .line 221
    const v0, 0x7f0a0fa8

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->lottie_mg_category:Lcom/airbnb/lottie/LottieAnimationView;

    .line 231
    .line 232
    const v0, 0x7f0a1350

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/TextView;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->red_point:Landroid/widget/TextView;

    .line 242
    .line 243
    const v0, 0x7f0a061a

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 251
    .line 252
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fightSelect:Landroid/widget/RelativeLayout;

    .line 253
    .line 254
    const v0, 0x7f0a104b

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 262
    .line 263
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_tabselect:Landroid/widget/RelativeLayout;

    .line 264
    .line 265
    const v0, 0x7f0a1ae9

    .line 266
    .line 267
    .line 268
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroid/widget/TextView;

    .line 273
    .line 274
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->unreadMessageBadge:Landroid/widget/TextView;

    .line 275
    .line 276
    const v0, 0x7f0a081b

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 284
    .line 285
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_monkey_layout:Landroid/widget/RelativeLayout;

    .line 286
    .line 287
    const v0, 0x7f0a0818

    .line 288
    .line 289
    .line 290
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/widget/LinearLayout;

    .line 295
    .line 296
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_default_layout:Landroid/widget/LinearLayout;

    .line 297
    .line 298
    const v0, 0x7f0a081a

    .line 299
    .line 300
    .line 301
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Landroid/widget/ImageView;

    .line 306
    .line 307
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_monkey_image:Landroid/widget/ImageView;

    .line 308
    .line 309
    const v0, 0x7f0a0819

    .line 310
    .line 311
    .line 312
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, Landroid/widget/ImageView;

    .line 317
    .line 318
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_huojian_image:Landroid/widget/ImageView;

    .line 319
    .line 320
    const v0, 0x7f0a088d

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/ImageView;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->imageView36:Landroid/widget/ImageView;

    .line 330
    .line 331
    const v0, 0x7f0a0e32

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 339
    .line 340
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->layout_others:Landroid/widget/RelativeLayout;

    .line 341
    .line 342
    const v0, 0x7f0a04d0

    .line 343
    .line 344
    .line 345
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Landroid/widget/LinearLayout;

    .line 350
    .line 351
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->discoverNormal:Landroid/widget/LinearLayout;

    .line 352
    .line 353
    const v0, 0x7f0a04cf

    .line 354
    .line 355
    .line 356
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Landroid/widget/ImageView;

    .line 361
    .line 362
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->discoverMessage:Landroid/widget/ImageView;

    .line 363
    .line 364
    const v0, 0x7f0a04ce

    .line 365
    .line 366
    .line 367
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Landroid/widget/ImageView;

    .line 372
    .line 373
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->discoverHuojian:Landroid/widget/ImageView;

    .line 374
    .line 375
    const v0, 0x7f0a115c

    .line 376
    .line 377
    .line 378
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Landroid/widget/TextView;

    .line 383
    .line 384
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->notice_text:Landroid/widget/TextView;

    .line 385
    .line 386
    const v0, 0x7f0a04a0

    .line 387
    .line 388
    .line 389
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Landroid/widget/TextView;

    .line 394
    .line 395
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->dialogBack:Landroid/widget/TextView;

    .line 396
    .line 397
    const v0, 0x7f0a115b

    .line 398
    .line 399
    .line 400
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Landroid/widget/LinearLayout;

    .line 405
    .line 406
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->notice_layout:Landroid/widget/LinearLayout;

    .line 407
    .line 408
    const v0, 0x7f0a0207

    .line 409
    .line 410
    .line 411
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    check-cast v0, Landroid/widget/TextView;

    .line 416
    .line 417
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->bigCenterRound:Landroid/widget/TextView;

    .line 418
    .line 419
    const v0, 0x7f0a1064

    .line 420
    .line 421
    .line 422
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    check-cast v0, Landroid/widget/TextView;

    .line 427
    .line 428
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->miniGameBadge:Landroid/widget/TextView;

    .line 429
    .line 430
    const v0, 0x7f0a0586

    .line 431
    .line 432
    .line 433
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Landroid/widget/TextView;

    .line 438
    .line 439
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->endGameBadge:Landroid/widget/TextView;

    .line 440
    .line 441
    const v0, 0x7f0a1415

    .line 442
    .line 443
    .line 444
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 449
    .line 450
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->root:Landroid/widget/RelativeLayout;

    .line 451
    .line 452
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_tabselect:Landroid/widget/RelativeLayout;

    .line 453
    .line 454
    if-eqz p1, :cond_0

    .line 455
    .line 456
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$v;

    .line 457
    .line 458
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$v;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    .line 463
    .line 464
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_tabselect:Landroid/widget/LinearLayout;

    .line 465
    .line 466
    if-eqz p1, :cond_1

    .line 467
    .line 468
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$w;

    .line 469
    .line 470
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$w;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    .line 475
    .line 476
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_tabselect:Landroid/widget/RelativeLayout;

    .line 477
    .line 478
    if-eqz p1, :cond_2

    .line 479
    .line 480
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$x;

    .line 481
    .line 482
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$x;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    .line 487
    .line 488
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_tabselect:Landroid/widget/RelativeLayout;

    .line 489
    .line 490
    if-eqz p1, :cond_3

    .line 491
    .line 492
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$y;

    .line 493
    .line 494
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$y;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    .line 499
    .line 500
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->fightSelect:Landroid/widget/RelativeLayout;

    .line 501
    .line 502
    if-eqz p1, :cond_4

    .line 503
    .line 504
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$z;

    .line 505
    .line 506
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$z;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    .line 511
    .line 512
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->afterViews()V

    .line 513
    .line 514
    .line 515
    return-void
.end method

.method onresumData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$a3;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x3e8

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$a3;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method preLoad(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adBean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$i;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$i;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/PopupAdBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method preLogin(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gotoLogin"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$r;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$r;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Z)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$h1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$h1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$f1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$f1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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

.method receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$g1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$g1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method refreshTabIcon()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$a1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$a1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method reject(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fromAccountId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$p;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$p;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method requestWriteUUID(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$d0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$d0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V

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

.method rewadCopper()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$q2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$q2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method sanLocalGameIv(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$n1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$n1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;I)V

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

.method savePurchasedList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "beans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$m2;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$m2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method saveUUID()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$c2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$c2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method scanQuarkTask()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$u;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$u;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method selectTableDelay()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$g0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$g0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x320

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

.method sendHomeDownInstallListPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$d1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$d1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

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

.method sendRegister(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "regeisterId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$s0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$s0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V

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

.method sendRigester(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "regeisterId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$w2;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$w2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method serverConnectionException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$b1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$b1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setSNKGameData(Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resp"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$q1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$q1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/SNKGameInfoBean;)V

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

.method setwifiStadu()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$c3;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$c3;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method showAdM()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$l1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$l1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method showBackupFinishDialog(I)V
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
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$q0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$q0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;I)V

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

.method showCheckData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "checkGameList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$o1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$o1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V

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

.method showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "adCfgInfo",
            "showSign"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$j1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$j1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x320

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

.method showDownNotice()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$c1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$c1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x5dc

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

.method showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$m1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$m1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/PopupAdBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1f4

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

.method showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$x1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$x1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaRequest;)V

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

.method showInstallAppDialogActivity(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "showType",
            "tasks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$k0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$k0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;ILjava/util/List;)V

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

.method showMessage(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$o0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$o0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V

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

.method showOnlineCouponDialog(Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "data",
            "localType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$a2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$a2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V

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

.method showRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$b0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$b0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method showSharedGameDialog(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datas"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$j0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$j0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/CollectionBeanSub;)V

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

.method showToast(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$p1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$p1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V

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

.method public showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "versionDto",
            "mandatory"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$x0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$x0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/VersionDto;Z)V

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

.method sign()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$g;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$g;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method startAlphaBreathAnimation(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "wihteBack"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$u1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$u1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x190

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

.method startBackups(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "hasPermiss"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$t2;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x7d0

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$t2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method startGameRoom(Lcom/join/mgps/event/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$w1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$w1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/event/w;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xc8

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

.method startIntentOldUserRecom(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "range"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$h0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$h0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;J)V

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

.method startLoadRecommendwifi()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$u2;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$u2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method startPlayVideo()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$z0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$z0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x190

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

.method toastData(Lcom/join/mgps/dto/RewardBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rewardBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$m0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$m0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/RewardBean;)V

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

.method tokenFailure()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$e1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$e1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method touristLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$c;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$c;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method updateAndroidApp()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$b3;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$b3;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$u0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$u0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;I)V

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

.method updateFindGameRetHot(Lcom/join/mgps/dto/TipsInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tipsInfoBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$y0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$y0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/TipsInfoBean;)V

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

.method updateHidePoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$w0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$w0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method updateHistory()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$p0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$p0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$t0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$t0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;I)V

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

.method updateNoOpenPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$v0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

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

.method updateSignUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$k1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$k1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x190

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

.method updateStartGameTable(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTaskN"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$t1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$t1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1f4

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

.method videoAdWatchLog(Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "videoWatchLogTable",
            "isOld"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/MGMainActivity_$m;

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
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/MGMainActivity_$m;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

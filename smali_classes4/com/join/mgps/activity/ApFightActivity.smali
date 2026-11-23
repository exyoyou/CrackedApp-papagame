.class public Lcom/join/mgps/activity/ApFightActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0266
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x2329

.field public static final REQUEST_ZXING_CODE:I = 0x2711

.field public static final START_MODE_NETCLIENT:I = 0x2

.field public static final START_MODE_NETSERVER:I = 0x1

.field public static step:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field apBtnEnable:Z

.field apName:Ljava/lang/String;

.field ap_net_match_info_1p_frame:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ap_net_match_info_2p_frame:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field apfight_zxing_content_lay:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field beginAnimation:Landroid/view/animation/Animation;

.field btnAnimation:Landroid/view/animation/Animation;

.field clientBrandName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clientBtn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field fightClientIcon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

.field private fightConnectListener:Lcom/join/mgps/callbacks/g;

.field private fightCreateServerDialog:Lcom/join/mgps/dialog/s0;

.field private fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

.field private fightServerChoseDialog:Lcom/join/mgps/dialog/v0;

.field fightServerIcon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fightStart:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private gId:Ljava/lang/String;

.field private gName:Ljava/lang/String;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field getSSID:Ljava/lang/String;

.field hint:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ipTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ip_lay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isClient:Z

.field private isConnectSuccessed:Z

.field isGetPermission:Z

.field private isUsing:Z

.field isWifiConnectedBefore:Z

.field private isWranAp:Z

.field lastClick:J

.field lcon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mPermissionHelper:Lru/alexbykov/nopermission/b;

.field mServerIp:Ljava/lang/String;

.field private mWifiApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

.field mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

.field mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

.field mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

.field mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

.field mismatchDialog:Lcom/join/mgps/dialog/u2;

.field private mode:I

.field modeIconAP:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field modeIconWifi:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field modeSwitchEnable:Z

.field num:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p1status_btn_around_img:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private plugin_num:Ljava/lang/String;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private romPath:Ljava/lang/String;

.field serverBrandName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field serverBtn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private specifiedSSID:Ljava/lang/String;

.field ssidTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statType:I

.field suiji:I

.field tipTxt1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tipTxt2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tipWifi:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field type:I

.field w:Lcom/join/mgps/dialog/t2;

.field waitHint:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private wifiInfo:Landroid/net/wifi/WifiInfo;

.field zxingBtn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxingImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxingTip1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxingTip2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxing_lay:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxing_tip_lay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiApList:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 40
    .line 41
    new-instance v2, Lcom/join/mgps/activity/ApFightActivity$e;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ApFightActivity$e;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->getSSID:Ljava/lang/String;

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isGetPermission:Z

    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isWranAp:Z

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isWifiConnectedBefore:Z

    .line 57
    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ApFightActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/join/mgps/activity/ApFightActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1200(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->dismissShowClientLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/ApFightActivity;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ApFightActivity;->showConnectExceptionDialog(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->onSuccess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1600(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->onDenied()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1702(Lcom/join/mgps/activity/ApFightActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/ApFightActivity;->isWranAp:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/ApFightActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ApFightActivity;->createZxingLay(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/v0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/v0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/v0;)Lcom/join/mgps/dialog/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/v0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/t0;)Lcom/join/mgps/dialog/t0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/ApFightActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 2
    .line 3
    return p0
.end method

.method private checkWifiIp(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 1
    const-string v0, "192.168"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string v0, "10."

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const-string v0, "172."

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method private createServer()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    const v2, 0x7f080e13

    .line 10
    .line 11
    .line 12
    const-string v3, "\u6211\u662f\u4e3b\u673a"

    .line 13
    .line 14
    const-string v4, ""

    .line 15
    .line 16
    if-lt v0, v1, :cond_4

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "papa_"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "_"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/join/mgps/activity/ApFightActivity;->suiji:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v1, 0xb

    .line 56
    .line 57
    if-eq v0, v1, :cond_2

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isWranAp:Z

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/16 v1, 0xd

    .line 71
    .line 72
    if-eq v0, v1, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x3

    .line 81
    if-ne v0, v1, :cond_3

    .line 82
    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeServer()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/join/mgps/helper/MGFightServerManager;->startServer(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->showLoading()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 124
    .line 125
    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/join/mgps/customview/p;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/p;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->b(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$j;

    .line 143
    .line 144
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$j;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->a(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$k;

    .line 151
    .line 152
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/ApFightActivity$k;-><init>(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/customview/p;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->d(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    :goto_1
    return-void

    .line 159
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeServer()V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/join/mgps/helper/MGFightServerManager;->startServer(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->showLoading()V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_5
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_6

    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    .line 205
    .line 206
    .line 207
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 208
    .line 209
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lcom/join/mgps/helper/MGWifiFightServerManger;->startServer(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :goto_2
    return-void
.end method

.method private createZxingLay(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p0}, Lh7/a;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingImg:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->tipWifi:Landroid/widget/TextView;

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1, p0}, Lh7/a;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingImg:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->tipWifi:Landroid/widget/TextView;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    new-instance p1, Landroid/os/Handler;

    .line 37
    .line 38
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity$d;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity$d;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v1, 0x190

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private dismissShowClientLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private getDeviceInfo()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$f;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$f;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private onDenied()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u4f60\u5df2\u62d2\u7edd\u6743\u9650\u7533\u8bf7\uff0c\u65e0\u6cd5\u5bf9\u6218\uff01"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private onNeverAskAgain()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u4f60\u5df2\u62d2\u7edd\u6743\u9650\u7533\u8bf7\uff0c\u65e0\u6cd5\u5bf9\u6218\uff01"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private onSuccess()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isGetPermission:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->getSSID:Ljava/lang/String;

    .line 11
    .line 12
    iget v1, p0, Lcom/join/mgps/activity/ApFightActivity;->type:I

    .line 13
    .line 14
    if-ne v1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->clientBtn()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private resetClientBtn()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 6
    .line 7
    const v1, 0x7f0800a8

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 15
    .line 16
    const v1, 0x7f0800b0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private showClientLoading(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stage",
            "hint"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method showClientLoading() called.stage="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/a;

    .line 30
    .line 31
    const v1, 0x7f13017f

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/a;-><init>(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    if-eq p1, v0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    .line 71
    .line 72
    const-string p2, "\u6b63\u5728\u641c\u7d22\u6e38\u620f\u623f\u95f4,\u8bf7\u7a0d\u5019..."

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/a;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 78
    .line 79
    :catch_0
    :goto_0
    return-void
.end method

.method private showConnectExceptionDialog(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const v1, 0x7f13017f

    .line 3
    .line 4
    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->dismissShowClientLoading()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->w:Lcom/join/mgps/dialog/t2;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Lcom/join/mgps/dialog/t2;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p1, p0, v1, v0}, Lcom/join/mgps/dialog/t2;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->w:Lcom/join/mgps/dialog/t2;

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->w:Lcom/join/mgps/dialog/t2;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_7

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->w:Lcom/join/mgps/dialog/t2;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->dismissShowClientLoading()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 53
    .line 54
    .line 55
    :cond_3
    new-instance p1, Lcom/join/mgps/dialog/t0;

    .line 56
    .line 57
    invoke-direct {p1, p0, v1}, Lcom/join/mgps/dialog/t0;-><init>(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 61
    .line 62
    :try_start_1
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 68
    .line 69
    const-string v0, "\u672a\u641c\u7d22\u5230\u53ef\u7528\u623f\u95f4"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/t0;->j(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 75
    .line 76
    const-string v0, "\u65e0\u6cd5\u641c\u7d22\u5230\u5c0f\u4f19\u4f34\u521b\u5efa\u7684\u70ed\u70b9\uff0c\u8bf7\u91cd\u8bd5"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/t0;->f(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 82
    .line 83
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity$b;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity$b;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/t0;->h(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->dismissShowClientLoading()V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 96
    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 100
    .line 101
    .line 102
    :cond_5
    new-instance p1, Lcom/join/mgps/dialog/t0;

    .line 103
    .line 104
    invoke-direct {p1, p0, v1}, Lcom/join/mgps/dialog/t0;-><init>(Landroid/content/Context;I)V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 108
    .line 109
    :try_start_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    return-void

    .line 114
    :cond_6
    const/4 v0, 0x5

    .line 115
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 121
    .line 122
    const-string v0, "\u52a0\u5165\u623f\u95f4\u5931\u8d25"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/t0;->j(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 128
    .line 129
    const-string v0, "\u8bf7\u786e\u8ba4\u624b\u673aWIFI\u529f\u80fd\u662f\u5426\u6253\u5f00\uff0c\u5e76\u8bf7\u786e\u4fdd\u672c\u673a\u70ed\u70b9\u5904\u4e8e\u5173\u95ed\u72b6\u6001\uff0c\u6216\u91cd\u65b0\u641c\u7d22\u623f\u95f4"

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/t0;->f(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 135
    .line 136
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity$a;

    .line 137
    .line 138
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity$a;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/t0;->h(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    .line 147
    :catch_0
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method afterStartGame()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xbb8L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeServer()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x80

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gameId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isWranAp:Z

    .line 24
    .line 25
    new-instance v1, Ljava/util/Random;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x384

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/lit8 v1, v1, 0x64

    .line 37
    .line 38
    iput v1, p0, Lcom/join/mgps/activity/ApFightActivity;->suiji:I

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->romPath:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 83
    .line 84
    const-string v2, " "

    .line 85
    .line 86
    const-string v3, ""

    .line 87
    .line 88
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const/4 v4, 0x6

    .line 97
    if-le v1, v4, :cond_0

    .line 98
    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 110
    .line 111
    :cond_0
    new-instance v0, Lcom/join/mgps/helper/MGFightServerManager;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 114
    .line 115
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/helper/MGFightServerManager;-><init>(Landroid/content/Context;Lcom/join/mgps/callbacks/g;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 119
    .line 120
    new-instance v0, Lcom/join/mgps/helper/MGFightClientManager;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 123
    .line 124
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/helper/MGFightClientManager;-><init>(Landroid/content/Context;Lcom/join/mgps/callbacks/g;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 128
    .line 129
    new-instance v0, Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 136
    .line 137
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/join/mgps/helper/MGWifiFightServerManger;-><init>(Landroid/content/Context;Lcom/join/mgps/callbacks/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 141
    .line 142
    new-instance v0, Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 145
    .line 146
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/helper/MGWifiFightClientManger;-><init>(Landroid/content/Context;Lcom/join/mgps/callbacks/g;)V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 150
    .line 151
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 169
    .line 170
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$c;

    .line 171
    .line 172
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$c;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    const v0, 0x7f01007b

    .line 179
    .line 180
    .line 181
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->beginAnimation:Landroid/view/animation/Animation;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 190
    .line 191
    .line 192
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->btnAnimation:Landroid/view/animation/Animation;

    .line 197
    .line 198
    new-instance v0, Lru/alexbykov/nopermission/b;

    .line 199
    .line 200
    invoke-direct {v0, p0}, Lru/alexbykov/nopermission/b;-><init>(Landroid/app/Activity;)V

    .line 201
    .line 202
    .line 203
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mPermissionHelper:Lru/alexbykov/nopermission/b;

    .line 204
    .line 205
    return-void
.end method

.method backClicked()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const-string v0, "a---------"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreServer()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreClient()V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    return-void
.end method

.method clientBtn()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/ApFightActivity;->lastClick:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gtz v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lastClick:J

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x1c

    .line 30
    .line 31
    if-lt v1, v2, :cond_3

    .line 32
    .line 33
    iget v2, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isGetPermission:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->type:I

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->getDeviceInfo()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->getSSID:Ljava/lang/String;

    .line 57
    .line 58
    const-string v2, "unknown id"

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "\u4f60\u5df2\u62d2\u7edd\u6743\u9650\u7533\u8bf7\uff0c\u65e0\u6cd5\u5bf9\u6218\uff01"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    const/16 v2, 0x1a

    .line 83
    .line 84
    if-lt v1, v2, :cond_5

    .line 85
    .line 86
    iget v3, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 87
    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_4

    .line 101
    .line 102
    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    :cond_4
    new-instance v0, Lcom/join/mgps/customview/p;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/p;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 116
    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v2, "papa_"

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->c(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$i;

    .line 141
    .line 142
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/ApFightActivity$i;-><init>(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/customview/p;)V

    .line 143
    .line 144
    .line 145
    const-string v2, "\u53bb\u8fde\u63a5"

    .line 146
    .line 147
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/customview/p;->e(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_5
    if-ge v1, v2, :cond_6

    .line 152
    .line 153
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 154
    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_6

    .line 162
    .line 163
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    .line 166
    .line 167
    .line 168
    :cond_6
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 169
    .line 170
    if-nez v0, :cond_8

    .line 171
    .line 172
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 173
    .line 174
    if-eqz v0, :cond_7

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "\u4f60\u5df2\u7ecf\u662f\u4e3b\u673a"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :goto_0
    return-void

    .line 187
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 188
    .line 189
    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 194
    .line 195
    .line 196
    const/4 v0, 0x1

    .line 197
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    .line 198
    .line 199
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    iget v5, p0, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    .line 214
    .line 215
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    iget-object v7, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v6, v7, p0}, Lq5/f;->N(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/papa/sim/statistic/t;->H(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 229
    .line 230
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 233
    .line 234
    const-string v2, ""

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 240
    .line 241
    if-nez v0, :cond_9

    .line 242
    .line 243
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 247
    .line 248
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lcom/join/mgps/helper/MGFightClientManager;->setGameName(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager;->connect()V

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_9
    invoke-static {p0}, Lcom/join/mgps/activity/FightWifiInputDialogActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/FightWifiInputDialogActivity_$c;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/16 v1, 0x2329

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FightWifiInputDialogActivity_$c;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 266
    .line 267
    .line 268
    :goto_1
    return-void
.end method

.method closeBeginAnim()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public closeServer()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->disConnect()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->shutDown()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->disConnect()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->shutDownServer()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public connectToChosen(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "FIGHT_JOIN_SERVER"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/v0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/v0;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 29
    .line 30
    const-string v0, "ssid"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v0, "connect to specifiedSSID ::"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/v0;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-string p1, ""

    .line 75
    .line 76
    :goto_0
    const/4 v0, 0x1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4\""

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiApList:Ljava/util/ArrayList;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, "\",\u8bf7\u7a0d\u5019..."

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->connectToChosen()V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/v0;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v1, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4"

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ",\u8bf7\u7a0d\u5019..."

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/join/mgps/helper/MGFightClientManager;->connectToChosen(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/v0;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 174
    .line 175
    .line 176
    :goto_1
    return-void
.end method

.method disConnectWifiFightAPClient()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager;->disConnect()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method disConnectWifiFightClient()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->disConnect()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dismissLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightCreateServerDialog:Lcom/join/mgps/dialog/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method fightStartClicked()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

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
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->startGame()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->startGame()V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->startGameServer()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->afterStartGame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void
.end method

.method hideFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_1p_frame:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_2p_frame:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method modeIconAP()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "\u6e38\u620f\u521b\u5efa\u6210\u529f\uff0c\u60a8\u5f53\u524d\u65e0\u6cd5\u5207\u6362\u6a21\u5f0f\u54e6~"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreServer()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f080d55

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconAP:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const v2, 0x7f080d51

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 56
    .line 57
    const v1, 0x7f120033

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method modeIconWifi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "\u6e38\u620f\u521b\u5efa\u6210\u529f\uff0c\u60a8\u5f53\u524d\u65e0\u6cd5\u5207\u6362\u6a21\u5f0f\u54e6~"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 20
    .line 21
    const v1, 0x7f12056f

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v2, 0x7f080d54

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconAP:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const v2, 0x7f080d52

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeServer()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreServer()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightAPClient()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreClient()V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
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
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x2329

    .line 11
    .line 12
    const-string v2, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4,\u8bf7\u7a0d\u5019..."

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x232a

    .line 17
    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "ip"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 36
    .line 37
    iget-object p3, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/helper/MGWifiFightClientManger;->connect(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    const-string v0, "result"

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    if-ne p2, v3, :cond_2

    .line 48
    .line 49
    iget v4, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 50
    .line 51
    if-ne v4, v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ApFightActivity;->checkWifiIp(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 73
    .line 74
    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    .line 75
    .line 76
    iget-object p3, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p2, p3}, Lcom/join/mgps/helper/MGWifiFightClientManger;->connect(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "\u60a8\u626b\u63cf\u7684\u4e0d\u662fWIFI\u6a21\u5f0f\u8054\u673a\u4e8c\u7ef4\u7801\u54e6~"

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    if-ne p2, v3, :cond_5

    .line 93
    .line 94
    iget p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 95
    .line 96
    if-nez p2, :cond_5

    .line 97
    .line 98
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string p2, "papa"

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-nez p2, :cond_4

    .line 113
    .line 114
    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string p2, "\u60a8\u626b\u63cf\u7684\u4e0d\u662f\u70ed\u70b9\u6a21\u5f0f\u8054\u673a\u4e8c\u7ef4\u7801\u54e6~"

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    :goto_0
    const/4 p2, 0x0

    .line 134
    const-string p3, ""

    .line 135
    .line 136
    invoke-direct {p0, p2, p3}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 140
    .line 141
    iget-object p3, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Lcom/join/mgps/helper/MGFightClientManager;->setGameName(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Lcom/join/mgps/helper/MGFightClientManager;->connect(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    const/16 p2, 0x59

    .line 153
    .line 154
    if-ne p1, p2, :cond_6

    .line 155
    .line 156
    iget p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 157
    .line 158
    if-nez p1, :cond_6

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->clientBtn()V

    .line 161
    .line 162
    .line 163
    :cond_6
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->backClicked()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->unregisterBroadCast()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->unregisterBroadCast()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->disConnect()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->shutDown()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightAPClient()V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager;->getmWifiapBroadcast()Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    :cond_4
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    const v0, 0x1869e

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mPermissionHelper:Lru/alexbykov/nopermission/b;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lru/alexbykov/nopermission/b;->q(I[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    aget p2, p3, p1

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    .line 27
    .line 28
    invoke-static {p0, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    const-string p2, "\u5bf9\u6218\u9700\u8981\u7f51\u7edc\u6743\u9650,\u8bf7\u6388\u6743\u7f51\u7edc\u6743\u9650(\u90e8\u5206\u624b\u673a\u663e\u793a\u7f51\u7edc\u4e0e\u5b9a\u4f4d\u6743\u9650)"

    .line 35
    .line 36
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    const-string p2, "\u6ca1\u6709\u83b7\u53d6\u5230\u6743\u9650,\u5bf9\u6218\u9700\u8981\u7f51\u7edc\u6743\u9650,\u8bf7\u6388\u6743\u7f51\u7edc\u6743\u9650(\u90e8\u5206\u624b\u673a\u663e\u793a\u7f51\u7edc\u4e0e\u5b9a\u4f4d\u6743\u9650)"

    .line 45
    .line 46
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->ssidBefore()Lorg/androidannotations/api/sharedpreferences/p;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getSSID()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "ssid original is "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getSSID()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isWifiConnectedBefore:Z

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/t0;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method openBeginAnim()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->btnAnimation:Landroid/view/animation/Animation;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method restoreClient()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightAPClient()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightClient()V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f080e13

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 56
    .line 57
    const v3, 0x7f0800b4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 64
    .line 65
    const-string v3, "\u6211\u662f\u4e3b\u673a"

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    .line 71
    .line 72
    const-string v3, "\u6211\u662f\u5ba2\u673a"

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 91
    .line 92
    const-string v1, ""

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method restoreServer()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/helper/MGWifiFightServerManger;->disConnect()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/helper/MGWifiFightServerManger;->shutDown()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->apName:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "12345678"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Lcom/join/mgps/Util/WifiUtils;->setHotSpot(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/helper/MGFightServerManager;->disConnect()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/helper/MGFightServerManager;->shutDown()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/helper/MGWifiFightServerManger;->shutDownServer()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const v3, 0x7f080e13

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 84
    .line 85
    const-string v2, "\u6211\u662f\u4e3b\u673a"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 96
    .line 97
    const v2, 0x7f0800b4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    .line 104
    .line 105
    const-string v2, "\u6211\u662f\u5ba2\u673a"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 114
    .line 115
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 119
    .line 120
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 142
    .line 143
    const-string v1, ""

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method revertHint()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 6
    .line 7
    const v1, 0x7f120033

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 22
    .line 23
    const v1, 0x7f12056f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method serverBtn()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/ApFightActivity;->lastClick:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gtz v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lastClick:J

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "\u4f60\u5df2\u7ecf\u662f\u5ba2\u673a"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "aisUsing----"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->g(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 66
    .line 67
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->createServer()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/s0;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/s0;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightCreateServerDialog:Lcom/join/mgps/dialog/s0;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    return-void
.end method

.method showP1Frame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_1p_frame:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showP2Frame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_2p_frame:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method startGameClient()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->romPath:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const-string v5, "192.168.43.1"

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    .line 13
    .line 14
    .line 15
    move-result-wide v6

    .line 16
    iget-object v8, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    invoke-static/range {v0 .. v8}, Lcom/join/mgps/Util/UtilsMy;->t4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method startGameClientWifi()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->romPath:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    .line 13
    .line 14
    .line 15
    move-result-wide v6

    .line 16
    iget-object v8, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    invoke-static/range {v0 .. v8}, Lcom/join/mgps/Util/UtilsMy;->t4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method startGameServer()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->romPath:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const-string v5, ""

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    .line 13
    .line 14
    .line 15
    move-result-wide v6

    .line 16
    iget-object v8, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    invoke-static/range {v0 .. v8}, Lcom/join/mgps/Util/UtilsMy;->t4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method zxingBtn()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x1c

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-lt v1, v2, :cond_2

    .line 13
    .line 14
    iget v2, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 15
    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isGetPermission:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    iput v3, p0, Lcom/join/mgps/activity/ApFightActivity;->type:I

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->getDeviceInfo()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->getSSID:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "unknown id"

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "\u4f60\u5df2\u62d2\u7edd\u6743\u9650\u7533\u8bf7\uff0c\u65e0\u6cd5\u5bf9\u6218\uff01"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const/16 v2, 0x1a

    .line 63
    .line 64
    if-lt v1, v2, :cond_4

    .line 65
    .line 66
    iget v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 67
    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    :cond_3
    new-instance v0, Lcom/join/mgps/customview/p;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/p;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 96
    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "papa_"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->c(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$g;

    .line 121
    .line 122
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/ApFightActivity$g;-><init>(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/customview/p;)V

    .line 123
    .line 124
    .line 125
    const-string v2, "\u53bb\u8fde\u63a5"

    .line 126
    .line 127
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/customview/p;->e(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    .line 140
    .line 141
    .line 142
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 143
    .line 144
    if-nez v0, :cond_7

    .line 145
    .line 146
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 147
    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v1, "\u4f60\u5df2\u7ecf\u662f\u4e3b\u673a"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    return-void

    .line 161
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 162
    .line 163
    .line 164
    iput-boolean v3, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 165
    .line 166
    iput-boolean v3, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 169
    .line 170
    const-string v1, ""

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    const/4 v0, 0x2

    .line 176
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    .line 177
    .line 178
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    iget v3, p0, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    .line 193
    .line 194
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v4, v5, p0}, Lq5/f;->N(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/t;->H(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    .line 208
    .line 209
    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 210
    .line 211
    .line 212
    const-string v1, "android.permission.CAMERA"

    .line 213
    .line 214
    filled-new-array {v1}, [Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$h;

    .line 223
    .line 224
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$h;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method zxingCloseBtn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

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

.method zxingTipBtn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

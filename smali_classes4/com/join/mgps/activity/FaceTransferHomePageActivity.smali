.class public Lcom/join/mgps/activity/FaceTransferHomePageActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d025d
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceTransferHomePageActivity"


# instance fields
.field private ap:Ljava/lang/String;

.field connecting:Z

.field connectingSvr:Z

.field connection:Landroid/content/ServiceConnection;

.field connectionSrv:Landroid/content/ServiceConnection;

.field getSSID:Ljava/lang/String;

.field hearTitleTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a1790
    .end annotation
.end field

.field isGetPermission:Z

.field private isUsing:Z

.field private isWranAp:Z

.field mBinder:Lcom/join/mgps/service/SocketClientService$a;

.field mBinderSrv:Lcom/join/mgps/service/SocketServerService$a;

.field mContext:Landroid/content/Context;

.field private mPermissionHelper:Lru/alexbykov/nopermission/b;

.field private mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

.field nopapaTip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field serviceBound:Z

.field serviceBoundSrv:Z

.field suiji:I

.field title:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        value = 0x7f1204e5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AndroidShare_"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->ap:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->isWranAp:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->isUsing:Z

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->getSSID:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->isGetPermission:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectingSvr:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connecting:Z

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mBinderSrv:Lcom/join/mgps/service/SocketServerService$a;

    .line 25
    .line 26
    new-instance v1, Lcom/join/mgps/activity/FaceTransferHomePageActivity$c;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity$c;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectionSrv:Landroid/content/ServiceConnection;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mBinder:Lcom/join/mgps/service/SocketClientService$a;

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$d;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity$d;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connection:Landroid/content/ServiceConnection;

    .line 41
    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/FaceTransferHomePageActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->isWranAp:Z

    .line 2
    .line 3
    return p1
.end method

.method private getDeviceInfo()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mPermissionHelper:Lru/alexbykov/nopermission/b;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_SMS"

    .line 4
    .line 5
    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    .line 6
    .line 7
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 8
    .line 9
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 10
    .line 11
    const-string v5, "android.permission.READ_PHONE_STATE"

    .line 12
    .line 13
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lru/alexbykov/nopermission/b;->d([Ljava/lang/String;)Lru/alexbykov/nopermission/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/join/mgps/activity/z0;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/z0;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lru/alexbykov/nopermission/b;->r(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/join/mgps/activity/a1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/a1;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lru/alexbykov/nopermission/b;->n(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/join/mgps/activity/b1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/b1;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lru/alexbykov/nopermission/b;->p(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lru/alexbykov/nopermission/b;->s()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private initNoPapaTipView()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "\u514d\u6d41\u91cf\u53d1\u9001\u7ed9\u597d\u53cb"

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const v1, 0x7f120354

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroid/text/SpannableString;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/join/mgps/activity/FaceTransferHomePageActivity$a;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity$a;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v2, v0, 0x8

    .line 31
    .line 32
    const/16 v4, 0x11

    .line 33
    .line 34
    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->onNeverAskAgain()V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->onDenied()V

    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->onSuccess()V

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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->isGetPermission:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->getSSID:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method connected2Client()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connecting:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->stopClientService()V

    .line 7
    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connecting:Z

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectingSvr:Z

    .line 12
    .line 13
    const-string v2, "\u6b63\u5728\u7b49\u5f85\u8fde\u63a5..."

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/content/Intent;

    .line 33
    .line 34
    const-class v1, Lcom/join/mgps/service/SocketServerService;

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectionSrv:Landroid/content/ServiceConnection;

    .line 41
    .line 42
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectingSvr:Z

    .line 54
    .line 55
    return-void
.end method

.method connected2Service()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectingSvr:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->stopService()V

    .line 7
    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectingSvr:Z

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connecting:Z

    .line 12
    .line 13
    const-string v2, "\u6b63\u5728\u8fde\u63a5\u4e2d..."

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/content/Intent;

    .line 33
    .line 34
    const-class v2, Lcom/join/mgps/service/SocketClientService;

    .line 35
    .line 36
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/Util/WifiUtils;->getLocalIPAddress()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "."

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ".1"

    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v4, "connected2Service: host"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, ":::\u672c\u5730\u5730\u5740:::"

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, "host"

    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connection:Landroid/content/ServiceConnection;

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    .line 106
    .line 107
    iput-boolean v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connecting:Z

    .line 108
    .line 109
    return-void
.end method

.method doSomeAfterView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Lru/alexbykov/nopermission/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lru/alexbykov/nopermission/b;-><init>(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mPermissionHelper:Lru/alexbykov/nopermission/b;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 17
    .line 18
    new-instance v0, Ljava/util/Random;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x384

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v0, v0, 0x64

    .line 30
    .line 31
    iput v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->suiji:I

    .line 32
    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->init()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->initView()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method goClientSysHotspot()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

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
    if-lt v1, v2, :cond_2

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->isGetPermission:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->getDeviceInfo()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->getSSID:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "unknown id"

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "\u4f60\u5df2\u62d2\u7edd\u6743\u9650\u7533\u8bf7\uff0c\u65e0\u6cd5\u5bf9\u6218\uff01"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const/16 v2, 0x1a

    .line 54
    .line 55
    if-lt v1, v2, :cond_4

    .line 56
    .line 57
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    :cond_3
    new-instance v0, Lcom/join/mgps/customview/q;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/q;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 75
    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->ap:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->suiji:I

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/q;->c(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/join/mgps/activity/FaceTransferHomePageActivity$g;

    .line 100
    .line 101
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity$g;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;Lcom/join/mgps/customview/q;)V

    .line 102
    .line 103
    .line 104
    const-string v2, "\u53bb\u8fde\u63a5"

    .line 105
    .line 106
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/customview/q;->e(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connected2Service()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method goSrvSysHotspot()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_4

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->ap:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->suiji:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v3, 0xb

    .line 34
    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->isWranAp:Z

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0xd

    .line 49
    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x3

    .line 59
    if-ne v0, v1, :cond_3

    .line 60
    .line 61
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/BuildQRCodeActivity_$c;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->ap:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->suiji:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "ssid"

    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/join/mgps/activity/BuildQRCodeActivity_$c;

    .line 91
    .line 92
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->isUsing:Z

    .line 97
    .line 98
    new-instance v1, Lcom/join/mgps/customview/q;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/q;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/q;->b(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v2, Lcom/join/mgps/activity/FaceTransferHomePageActivity$e;

    .line 110
    .line 111
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity$e;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/q;->a(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$f;

    .line 118
    .line 119
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/FaceTransferHomePageActivity$f;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;Lcom/join/mgps/customview/q;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/q;->d(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 126
    return v0

    .line 127
    :cond_4
    return v2
.end method

.method init()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->hearTitleTxt:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->title:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->hearTitleTxt:Landroid/widget/TextView;

    .line 9
    .line 10
    const/16 v1, 0x11

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->initNoPapaTipView()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method nopapaTip()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "3269874"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a05eb,
            0x7f0a05ec,
            0x7f0a014e
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x1a

    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :sswitch_0
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/i;->f(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p1, "\u8bf7\u786e\u4fdd\u672c\u673a\u70ed\u70b9\u5904\u4e8e\u5173\u95ed\u72b6\u6001"

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/t;->p0(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/tbruyelle/rxpermissions2/c;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "android.permission.CAMERA"

    .line 58
    .line 59
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 60
    .line 61
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :sswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->goSrvSysHotspot()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    if-lt p1, v0, :cond_2

    .line 88
    .line 89
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 90
    .line 91
    invoke-static {p0, p1}, Lcom/join/mgps/activity/y0;->a(Lcom/join/mgps/activity/FaceTransferHomePageActivity;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "location permission: "

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    filled-new-array {p1}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const/4 v0, 0x1

    .line 115
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/t;->o0(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goBuildQRCodeActivity(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 143
    .line 144
    .line 145
    :goto_1
    return-void

    .line 146
    nop

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x7f0a014e -> :sswitch_2
        0x7f0a05eb -> :sswitch_1
        0x7f0a05ec -> :sswitch_0
    .end sparse-switch
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
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->stopService()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->stopClientService()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connecting:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectingSvr:Z

    .line 21
    .line 22
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
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
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/t;->o0(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goBuildQRCodeActivity(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onSocketStatusEvent(Lcom/join/mgps/socket/entity/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onSocketStatusEvent: 0000"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget p1, p1, Lcom/join/mgps/socket/entity/f;->a:I

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq p1, v2, :cond_2

    .line 21
    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->stopClientService()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->stopService()V

    .line 29
    .line 30
    .line 31
    iput-boolean v3, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connecting:Z

    .line 32
    .line 33
    iput-boolean v3, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectingSvr:Z

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const-string p1, "onSocketStatusEvent: \u6210\u529f"

    .line 37
    .line 38
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/t;->l0(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connecting:Z

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-static {p0}, Lcom/join/mgps/activity/GameTransferActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameTransferActivity_$k;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/GameTransferActivity_$k;->a(I)Lcom/join/mgps/activity/GameTransferActivity_$k;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-boolean p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectingSvr:Z

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-static {p0}, Lcom/join/mgps/activity/GameTransferActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameTransferActivity_$k;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/GameTransferActivity_$k;->a(I)Lcom/join/mgps/activity/GameTransferActivity_$k;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_0
    iput-boolean v3, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connecting:Z

    .line 92
    .line 93
    iput-boolean v3, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectingSvr:Z

    .line 94
    .line 95
    :goto_1
    return-void
.end method

.method stopClientService()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->serviceBound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connection:Landroid/content/ServiceConnection;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-class v1, Lcom/join/mgps/service/SocketClientService;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method stopService()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->serviceBoundSrv:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->connectionSrv:Landroid/content/ServiceConnection;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-class v1, Lcom/join/mgps/service/SocketServerService;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

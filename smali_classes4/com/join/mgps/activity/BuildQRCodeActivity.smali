.class public Lcom/join/mgps/activity/BuildQRCodeActivity;
.super Lcom/join/mgps/baseactivity/BaseLoadingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/BuildQRCodeActivity$ApWifiConnectedReceiver;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0029
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BuildQRCodeActivity"


# instance fields
.field private SSID:Ljava/lang/String;

.field apWifiManager:Lcom/join/mgps/helper/ApWifiManager;

.field apWifiUtil:Lcom/join/mgps/Util/k;

.field build_qr_code_title:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a02d5
    .end annotation
.end field

.field connectedSuccess:Z

.field connection:Landroid/content/ServiceConnection;

.field createApWifiThread:Lcom/join/mgps/task/a;

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field hearTitleTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a1790
    .end annotation
.end field

.field mBinder:Lcom/join/mgps/service/SocketServerService$a;

.field mContex:Landroid/content/Context;

.field mExecutor:Ljava/util/concurrent/ExecutorService;

.field pwd:Ljava/lang/String;

.field qr_code_img:Landroid/widget/ImageView;

.field receiver:Lcom/join/mgps/activity/BuildQRCodeActivity$ApWifiConnectedReceiver;

.field serviceBound:Z

.field ssid:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
        value = "ssid"
    .end annotation
.end field

.field ssidTxt:Landroid/widget/TextView;

.field str_create_ap_wifi_failed_hint:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        value = 0x7f120215
    .end annotation
.end field

.field str_creating_ap_wifi_hint:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        value = 0x7f120216
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        value = 0x7f1204e4
    .end annotation
.end field

.field viewStub:Landroid/view/ViewStub;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a12ea
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
    invoke-direct {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->future:Ljava/util/concurrent/Future;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->createApWifiThread:Lcom/join/mgps/task/a;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->SSID:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    iput-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->pwd:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->connectedSuccess:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->serviceBound:Z

    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mBinder:Lcom/join/mgps/service/SocketServerService$a;

    .line 23
    .line 24
    new-instance v0, Lcom/join/mgps/activity/BuildQRCodeActivity$a;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/BuildQRCodeActivity$a;-><init>(Lcom/join/mgps/activity/BuildQRCodeActivity;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->connection:Landroid/content/ServiceConnection;

    .line 30
    .line 31
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/BuildQRCodeActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method buildApWifi()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->showLoadingLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->getRandomPwd()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->getSSIDName()V

    .line 8
    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x1a

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->ssid:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->SSID:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "12345678"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->pwd:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Lcom/join/mgps/event/e;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/join/mgps/event/e;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput v1, v0, Lcom/join/mgps/event/e;->a:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->SSID:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, v0, Lcom/join/mgps/event/e;->b:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->pwd:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, v0, Lcom/join/mgps/event/e;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->apWifiManager:Lcom/join/mgps/helper/ApWifiManager;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->SSID:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->pwd:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/helper/ApWifiManager;->createApWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    new-instance v0, Lcom/join/mgps/task/a;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mContex:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/join/mgps/task/a;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->createApWifiThread:Lcom/join/mgps/task/a;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 67
    .line 68
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->future:Ljava/util/concurrent/Future;

    .line 73
    .line 74
    return-void
.end method

.method buildQrCode()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->viewStub:Landroid/view/ViewStub;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0a12e9

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->qr_code_img:Landroid/widget/ImageView;

    .line 17
    .line 18
    const v1, 0x7f0a15ff

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->ssidTxt:Landroid/widget/TextView;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "\u8bf7\u5c06\u70ed\u70b9\u540d\u79f0\u8bbe\u7f6e\u4e3a\n"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->SSID:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v1, 0x1a

    .line 54
    .line 55
    if-lt v0, v1, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->ssidTxt:Landroid/widget/TextView;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "SSID:"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->SSID:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ":Pwd:"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->pwd:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mContex:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v0, v1}, Lh7/a;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->qr_code_img:Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->connected2Client()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->registApWifiStatus()V

    .line 107
    .line 108
    .line 109
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/t;->m0(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method closeWifiAp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->apWifiManager:Lcom/join/mgps/helper/ApWifiManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/helper/ApWifiManager;->closeWifiAp()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->stopService()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method connected2Client()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/service/SocketServerService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->connection:Landroid/content/ServiceConnection;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public crateApWifiStatus(Lcom/join/mgps/event/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
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
    iget p1, p1, Lcom/join/mgps/event/e;->a:I

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lcom/join/mgps/activity/BuildQRCodeActivity;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "onSuccess: \u70ed\u70b9\u521b\u5efa\u6210\u529f"

    .line 15
    .line 16
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "crateApWifiStatus: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->future:Ljava/util/concurrent/Future;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, ":::\u662f\u5426\u53d6\u6d88:::"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->future:Ljava/util/concurrent/Future;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->hideLoadingLayout()V

    .line 75
    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->connectedSuccess:Z

    .line 78
    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->buildQrCode()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->future:Ljava/util/concurrent/Future;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->future:Ljava/util/concurrent/Future;

    .line 95
    .line 96
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->connectedSuccess:Z

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    sget-object p1, Lcom/join/mgps/activity/BuildQRCodeActivity;->TAG:Ljava/lang/String;

    .line 103
    .line 104
    const-string v0, "onFailed: \u70ed\u70b9\u521b\u5efa\u5931\u8d25"

    .line 105
    .line 106
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->str_create_ap_wifi_failed_hint:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setmLoadingHintMsgLoading(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method

.method destroyRunable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->createApWifiThread:Lcom/join/mgps/task/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/task/a;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->future:Ljava/util/concurrent/Future;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->future:Ljava/util/concurrent/Future;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method doSomeAfterInject()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterInject;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->str_creating_ap_wifi_hint:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setLoadingHintMsg(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method doSomeAfterView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->init()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->initView()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->build_qr_code_title:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getLoadingLayoutResID()I
    .locals 1

    const v0, 0x7f0a02d4

    return v0
.end method

.method public getLoadingMarginTop()I
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "HM 1SLTETD"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingMarginTop()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-double v0, v0

    .line 22
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 23
    .line 24
    mul-double v0, v0, v2

    .line 25
    .line 26
    double-to-int v0, v0

    .line 27
    return v0

    .line 28
    :cond_0
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingMarginTop()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public getRandomPwd()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    rem-int/lit8 v1, v1, 0xa

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x30

    .line 17
    .line 18
    int-to-char v1, v1

    .line 19
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->pwd:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->pwd:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    if-lt v1, v2, :cond_0

    .line 49
    .line 50
    sget-object v0, Lcom/join/mgps/activity/BuildQRCodeActivity;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "getRandomPwd: \u968f\u673a\u76846\u4f4d\u5bc6\u7801\u662f"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->pwd:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method getSSIDName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/m;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->SSID:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method goBack()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a014e
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->closeWifiAp()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method goGameTransfer()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/GameTransferActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameTransferActivity_$k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameTransferActivity_$k;->a(I)Lcom/join/mgps/activity/GameTransferActivity_$k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mContex:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/helper/ApWifiManager;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mContex:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/join/mgps/helper/ApWifiManager;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->apWifiManager:Lcom/join/mgps/helper/ApWifiManager;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mContex:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/k;->i(Landroid/content/Context;)Lcom/join/mgps/Util/k;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->apWifiUtil:Lcom/join/mgps/Util/k;

    .line 30
    .line 31
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->hearTitleTxt:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->title:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->buildApWifi()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->onDestroy()V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->destroyRunable()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->receiver:Lcom/join/mgps/activity/BuildQRCodeActivity$ApWifiConnectedReceiver;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
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
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->closeWifiAp()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public onSocketStatusEvent(Lcom/join/mgps/socket/entity/f;)V
    .locals 2
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
    sget-object v0, Lcom/join/mgps/activity/BuildQRCodeActivity;->TAG:Ljava/lang/String;

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
    const/4 v1, 0x1

    .line 18
    if-eq p1, v1, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->stopService()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->closeWifiAp()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string p1, "onSocketStatusEvent: \u521b\u5efa\u6210\u529f"

    .line 35
    .line 36
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildQRCodeActivity;->goGameTransfer()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method registApWifiStatus()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/activity/BuildQRCodeActivity$ApWifiConnectedReceiver;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/BuildQRCodeActivity$ApWifiConnectedReceiver;-><init>(Lcom/join/mgps/activity/BuildQRCodeActivity;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->receiver:Lcom/join/mgps/activity/BuildQRCodeActivity$ApWifiConnectedReceiver;

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method stopService()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->serviceBound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->serviceBound:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->mBinder:Lcom/join/mgps/service/SocketServerService$a;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/join/mgps/service/SocketServerService$a;->setMonitor(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/BuildQRCodeActivity;->connection:Landroid/content/ServiceConnection;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    const-class v1, Lcom/join/mgps/service/SocketServerService;

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

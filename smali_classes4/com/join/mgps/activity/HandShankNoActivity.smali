.class public Lcom/join/mgps/activity/HandShankNoActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0376
.end annotation


# instance fields
.field private handShankDialog:Lcom/join/mgps/dialog/b1;

.field isInputDeviceConnected:Z

.field mAdView:Lcom/join/mgps/customview/HandShankAdView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field papahandList:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rightButn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->isInputDeviceConnected:Z

    .line 6
    .line 7
    return-void
.end method

.method private checkJoystickJoin(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "devices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 28
    .line 29
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    new-instance v1, Lcom/join/mgps/db/tables/HandShankTable;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/join/mgps/db/tables/HandShankTable;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/HandShankTable;->setName(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/HandShankTable;->setAddress(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/HandShankTable;->setTime(Ljava/lang/Long;)V

    .line 71
    .line 72
    .line 73
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/HandShankTable;->setIsConnect(Ljava/lang/Boolean;)V

    .line 76
    .line 77
    .line 78
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->isInputDeviceConnected:Z

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HandShankNoActivity;->save(Lcom/join/mgps/db/tables/HandShankTable;)V

    .line 85
    .line 86
    .line 87
    move-object v1, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-boolean p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->isInputDeviceConnected:Z

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HandShankNoActivity;->showTipDialog(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void

    .line 97
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

    .line 98
    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->getValidDeviceCount(Ljava/util/List;)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-ge p1, v0, :cond_5

    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 116
    .line 117
    .line 118
    :cond_5
    return-void
.end method

.method private sendJoystickInfo(Lcom/join/mgps/db/tables/HandShankTable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handShankTable"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_name(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, ":"

    .line 40
    .line 41
    const-string v3, "_"

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_mac(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getTime()Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/JoyStickConfig;->setUpdate_time(J)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method AfterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankNoActivity;->loadAdData()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const-string v4, ""

    .line 31
    .line 32
    const-string v5, ""

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->c0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->rightButn:Landroid/widget/Button;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method backImage()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public blue_setup_btn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "\u8bbe\u5907\u4e0d\u652f\u6301\u84dd\u7259\uff0c\u65e0\u6cd5\u5f00\u542f"

    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method getAdData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getHandShankAdList()Lcom/join/mgps/dto/CommonRequestBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->V0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x258

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->mAdView:Lcom/join/mgps/customview/HandShankAdView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/mgps/dto/HandShankAdBean;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/HandShankAdView;->m(Lcom/join/mgps/dto/HandShankAdBean;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->mAdView:Lcom/join/mgps/customview/HandShankAdView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->mAdView:Lcom/join/mgps/customview/HandShankAdView;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->i()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public loadAdData()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankNoActivity;->getAdData()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->mAdView:Lcom/join/mgps/customview/HandShankAdView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->l()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onControllerDeviceChanged(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "controllerDevices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/HandShankNoActivity;->checkJoystickJoin(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankBaseActivity;->setSpp4CheckInfo(Z)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onResume()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method papahandList()V
    .locals 2
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
    const-string v1, "http://h5.5fun.com/wf_shoubing.html"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method save(Lcom/join/mgps/db/tables/HandShankTable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handShankTable"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lt6/x;->p()Lt6/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lt6/x;->q(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lt6/x;->n(Lcom/join/mgps/db/tables/HandShankTable;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HandShankNoActivity;->sendJoystickInfo(Lcom/join/mgps/db/tables/HandShankTable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public declared-synchronized showTipDialog(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/b1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/b1;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/b1;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

    .line 23
    .line 24
    new-instance v0, Lcom/join/mgps/activity/HandShankNoActivity$a;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankNoActivity$a;-><init>(Lcom/join/mgps/activity/HandShankNoActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b1;->a(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

    .line 33
    .line 34
    new-instance v0, Lcom/join/mgps/activity/HandShankNoActivity$b;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankNoActivity$b;-><init>(Lcom/join/mgps/activity/HandShankNoActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b1;->b(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->handShankDialog:Lcom/join/mgps/dialog/b1;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_1
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    .line 63
    throw p1
.end method

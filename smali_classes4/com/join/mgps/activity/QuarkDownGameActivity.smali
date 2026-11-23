.class public Lcom/join/mgps/activity/QuarkDownGameActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0098
.end annotation


# instance fields
.field contentView:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a037b
    .end annotation
.end field

.field extInfo:Lcom/join/mgps/dto/ExtInfoBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameIconUrl:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameName:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field quarkInstalled:Z

.field sdv_game_icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_desc:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_download:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_game_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_game_price:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_label:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_not_ask:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v_close1:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->quarkInstalled:Z

    .line 6
    .line 7
    return-void
.end method

.method private downloadQuark()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/d2;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->S()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "3875871586"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->isQuarkSilentDownload()Lorg/androidannotations/api/sharedpreferences/d;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "2057111073"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/16 v3, 0xb

    .line 61
    .line 62
    if-ne v2, v3, :cond_2

    .line 63
    .line 64
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const-string v1, "\u5938\u514b\u4e0b\u8f7d\u4e2d..."

    .line 77
    .line 78
    invoke-static {v1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "action"

    .line 86
    .line 87
    const-string v3, "downloadQuark"

    .line 88
    .line 89
    invoke-virtual {v1, v2, v3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/join/mgps/service/CommonService_$n0;

    .line 94
    .line 95
    const-string v2, "isOm"

    .line 96
    .line 97
    invoke-virtual {v1, v2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 102
    .line 103
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void
.end method

.method private startDomain()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->privateDomainFeedbackInfo()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-class v2, Lcom/join/mgps/dto/DomainInfoBean;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/mgps/dto/DomainInfoBean;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lcom/papa/sim/statistic/Event;->pdPcGameDetailsClick:Lcom/papa/sim/statistic/Event;

    .line 38
    .line 39
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->gameId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "pc_game_details"

    .line 74
    .line 75
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkDownGameActivity;->startQuark()V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method private startOrDownQuark()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isQuarkSilentDownload()Lorg/androidannotations/api/sharedpreferences/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "com.quark.browser"

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->quarkInstalled:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/Util/d2;->n()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkDownGameActivity;->startDomain()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkDownGameActivity;->startQuark()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-static {}, Lcom/join/mgps/Util/d2;->q()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-static {}, Lcom/join/mgps/Util/d2;->n()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkDownGameActivity;->startDomain()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkDownGameActivity;->startQuark()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkDownGameActivity;->downloadQuark()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method private startQuark()V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickSpeedDownUpQk:Lcom/papa/sim/statistic/Event;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/WebDiskInfo;->getGameId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "pc"

    .line 10
    .line 11
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/d2;->u(Landroid/content/Context;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {}, Lcom/join/mgps/Util/d2;->q()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskInfo;->getWb_url()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    iget-object v7, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->gameName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v8, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->gameIconUrl:Ljava/lang/String;

    .line 31
    .line 32
    move-object v4, p0

    .line 33
    invoke-virtual/range {v3 .. v8}, Lcom/join/mgps/Util/IntentUtil;->startQuarkBrowser(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickPcDetailHomeBtn:Lcom/papa/sim/statistic/Event;

    .line 41
    .line 42
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 43
    .line 44
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "2"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/join/mgps/dto/WebDiskInfo;->getGameId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/Ext;->setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_download:Landroid/widget/TextView;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_not_ask:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->extInfo:Lcom/join/mgps/dto/ExtInfoBean;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_desc:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtInfoBean;->getHelp_des()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->extInfo:Lcom/join/mgps/dto/ExtInfoBean;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtInfoBean;->getGame_cfg()Lcom/join/mgps/dto/GameCfgBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_game_price:Landroid/widget/TextView;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->extInfo:Lcom/join/mgps/dto/ExtInfoBean;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtInfoBean;->getGame_cfg()Lcom/join/mgps/dto/GameCfgBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameCfgBean;->getGame_price()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->extInfo:Lcom/join/mgps/dto/ExtInfoBean;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtInfoBean;->getGame_cfg()Lcom/join/mgps/dto/GameCfgBean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getGame_size()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 65
    .line 66
    mul-double v0, v0, v2

    .line 67
    .line 68
    mul-double v0, v0, v2

    .line 69
    .line 70
    double-to-long v0, v0

    .line 71
    iget-object v2, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_label:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->extInfo:Lcom/join/mgps/dto/ExtInfoBean;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtInfoBean;->getHelp_url()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_not_ask:Landroid/widget/TextView;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_not_ask:Landroid/widget/TextView;

    .line 105
    .line 106
    const/16 v1, 0x8

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_game_name:Landroid/widget/TextView;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->gameName:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->sdv_game_icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->gameIconUrl:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v1, Lcom/papa/sim/statistic/Event;->visitPCDbankPageExp:Lcom/papa/sim/statistic/Event;

    .line 130
    .line 131
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 132
    .line 133
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object v3, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->gameId:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/join/mgps/Util/d2;->n()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    const/16 v0, 0x12

    .line 152
    .line 153
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->gameId:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->Z1(Landroid/content/Context;ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->contentView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a195e

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkDownGameActivity;->startOrDownQuark()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v0, 0x7f0a19e2

    .line 18
    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->extInfo:Lcom/join/mgps/dto/ExtInfoBean;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtInfoBean;->getHelp_url()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->extInfo:Lcom/join/mgps/dto/ExtInfoBean;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtInfoBean;->getHelp_url()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "com.quark.browser"

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "\u4fdd\u5b58\u6e38\u620f"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_download:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/d2;->q()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->S()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_download:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkDownGameActivity;->tv_download:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v1, "\u5b89\u88c5\u5938\u514b\u00b7\u4fdd\u5b58\u6e38\u620f"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

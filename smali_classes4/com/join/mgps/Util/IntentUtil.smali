.class public Lcom/join/mgps/Util/IntentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ourInstance:Lcom/join/mgps/Util/IntentUtil;


# instance fields
.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private gameid:Ljava/lang/String;

.field private intent2:Landroid/content/Intent;

.field private splashActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private checkAndDownloadApk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_8

    .line 10
    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    if-eq v0, v1, :cond_7

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_6

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_5

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq v0, v1, :cond_4

    .line 23
    .line 24
    const/4 v1, 0x6

    .line 25
    if-eq v0, v1, :cond_5

    .line 26
    .line 27
    const/4 v1, 0x7

    .line 28
    if-eq v0, v1, :cond_8

    .line 29
    .line 30
    const/16 v1, 0x2a

    .line 31
    .line 32
    const-string v2, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    const/16 v1, 0x2b

    .line 37
    .line 38
    if-eq v0, v1, :cond_8

    .line 39
    .line 40
    packed-switch v0, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :pswitch_0
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    invoke-static {p2, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    :pswitch_2
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_9

    .line 97
    .line 98
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string p2, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d~"

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_7
    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_8
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    :goto_1
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/join/mgps/Util/IntentUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/IntentUtil;->ourInstance:Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/Util/IntentUtil;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentUtil;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/Util/IntentUtil;->ourInstance:Lcom/join/mgps/Util/IntentUtil;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/Util/IntentUtil;->ourInstance:Lcom/join/mgps/Util/IntentUtil;

    .line 13
    .line 14
    return-object v0
.end method

.method private goLogin(Landroid/content/Context;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    const/4 p1, 0x1

    return p1
.end method

.method private showUserNotLogin(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const v1, 0x7f120142

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public checkAndStartMain(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intentDateBean",
            "flags"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/join/mgps/activity/MGMainActivity;->isCreated:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/join/mgps/activity/MGMainActivity_;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "intentActivityBean"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public checkRealNameAndIntent(Landroid/content/Context;Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "accountBean",
            "from",
            "gameid"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->startGameCheckRealnameHasIntent(Landroid/content/Context;Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2, p4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string p3, "login"

    .line 23
    .line 24
    invoke-static {p1, p2, p3}, Lcom/join/mgps/Util/UtilsMy;->p4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public getSplashActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentUtil;->splashActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public goAccountCenterActivity(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/AccountCenterNewActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/AccountCenterNewActivity_$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public goAccountUpgradeActivity(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public goBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.action.VIEW"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public goBuildQRCodeActivity(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/BuildQRCodeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/BuildQRCodeActivity_$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public goChangeNickname(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_$IntentBuilder_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public goCheckIn(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 14
    .line 15
    .line 16
    const-string v1, "\u7b7e\u5230"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/join/mgps/rpc/h;->d1:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public goCodesBoxActivity(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public goCollectionCommentActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/CollectionCommentActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionCommentActivity_$u;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CollectionCommentActivity_$u;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionCommentActivity_$u;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public goColloctionList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tpl_type",
            "collection_id"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goColloctionList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tpl_type",
            "collection_id",
            "extBean"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 7
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    const/4 p4, 0x2

    .line 8
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goCommentDetailActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "commentId",
            "gameId",
            "commentScoreSwitch"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "green"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public goCommentSelfListActivity(Landroid/content/Context;)V
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public goDownloadCenterActivity(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public goDownloadSettingActivity(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/DownloadSettingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/DownloadSettingActivity_$r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public goFaceTransferHomePageActivity(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/FaceTransferHomePageActivity_$e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public goFeedback(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f120367

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/join/mgps/rpc/h;->x:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "/papa_help"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public goFormDetial(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "formID"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public goForumAndPrfileActivity(ILandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v1, Lcom/join/mgps/activity/GameAndProfileActivity_;

    .line 10
    .line 11
    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "type"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public goForumFid(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "fid"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public goForumGroupActivity(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/h;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/static/group/group_square.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goForumGroupActivity(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "fid"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/ForumActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumActivity_$q;->a(I)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ForumActivity_$q;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goForumGroupActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fid",
            "from"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/ForumActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumActivity_$q;->a(I)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/ForumActivity_$q;->b(Ljava/lang/String;)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ForumActivity_$q;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goForumGroupMemberActivity(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "gid"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumGroupMemberActivity_$i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumGroupMemberActivity_$i;->a(I)Lcom/join/mgps/activity/ForumGroupMemberActivity_$i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/high16 p2, 0x4000000

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/activity/ForumGroupMemberActivity_$i;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public goForumMyDynamicActivity(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/ForumMyActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumMyActivity_$h;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public goForumMyPostsActivity(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumMyPostsActivity_$o;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public goForumPostsTagSelectActivity(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "action",
            "pid",
            "selectedTags",
            "post_type"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;->a(I)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;->b(I)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "selectedTags"

    .line 14
    .line 15
    invoke-virtual {p1, p2, p4}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;

    .line 20
    .line 21
    invoke-virtual {p1, p5}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;->c(I)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/16 p2, 0x2711

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public goForumProfileCommentActivity(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public goForumProfileFavoritesActivity(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$z;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public goForumProfileMessageActivity(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/message/MessageMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public goFullScrVideoPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cover",
            "url"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    .line 2
    .line 3
    invoke-direct {p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p3}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->H(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/adapter/FullScreenActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public goFullShareWebActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "intentDateBean"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/FullShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/FullShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/FullShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goFullShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goFullShareWebActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "gameID",
            "_from_ype"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 25
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 26
    new-instance p2, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 27
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 28
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "gameID",
            "extBean"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 32
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "gameID",
            "gameDetialType",
            "sp",
            "_from_type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 6
    new-instance p2, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    invoke-virtual {p2, p5}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 8
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "gameID",
            "gameDetialType",
            "sp",
            "_from_ype",
            "remarks",
            "where",
            "keyword",
            "dataFlag"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 12
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 15
    new-instance p2, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 16
    invoke-virtual {p2, p6}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    const/16 p3, 0x93

    if-ne p5, p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x70

    .line 17
    :goto_0
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 18
    invoke-virtual {p2, p7}, Lcom/join/mgps/dto/ExtBean;->setWhere(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 19
    invoke-virtual {p2, p8}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 20
    invoke-virtual {p2, p9}, Lcom/join/mgps/dto/ExtBean;->setDataFlag(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 21
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_info_tpl_type()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tpl_two_position()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-class v3, Lcom/join/mgps/dto/ExtBean;

    .line 55
    .line 56
    invoke-virtual {v2, p2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Lcom/join/mgps/dto/ExtBean;

    .line 61
    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    move-object v1, p2

    .line 65
    :cond_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public goGameDetialActivityBYDownloadTaskForFav(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_info_tpl_type()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tpl_two_position()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const-class v3, Lcom/join/mgps/dto/ExtBean;

    .line 82
    .line 83
    invoke-virtual {v2, p2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Lcom/join/mgps/dto/ExtBean;

    .line 88
    .line 89
    if-eqz p2, :cond_1

    .line 90
    .line 91
    move-object v1, p2

    .line 92
    :cond_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pageVersion()Lorg/androidannotations/api/sharedpreferences/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    const/high16 v2, 0x4000000

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity4_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameMainActivity4_$i0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/GameMainActivity4_$i0;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameMainActivity4_$i0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/GameMainActivity4_$i0;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GameMainActivity4_$i0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/join/mgps/activity/GameMainActivity4_$i0;

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity3_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameMainActivity3_$g0;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/GameMainActivity3_$g0;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameMainActivity3_$g0;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/GameMainActivity3_$g0;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GameMainActivity3_$g0;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/join/mgps/activity/GameMainActivity3_$g0;

    .line 64
    .line 65
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public goJoystickManager(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x4000000

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/activity/HandShankOverActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/HandShankOverActivity_$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/activity/HandShankOverActivity_$b;

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {}, Lt6/x;->p()Lt6/x;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lt6/x;->o()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/activity/HandShankYesActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/HandShankYesActivity_$g;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/join/mgps/activity/HandShankYesActivity_$g;

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/activity/HandShankNoActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/HandShankNoActivity_$f;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/join/mgps/activity/HandShankNoActivity_$f;

    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method public goLabelGroupActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "fid"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/join/mgps/rpc/h;->k:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/group/posts/forum_tags/tagSquare?fid="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public goLogin(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public goLogin(Landroid/content/Context;Lcom/join/mgps/dto/LoginParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "params"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;->loginParams(Lcom/join/mgps/dto/LoginParams;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    const/4 p1, 0x1

    return p1
.end method

.method public goLoginBattle(Landroid/content/Context;)Z
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
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;I)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public goLoginInteractive(Landroid/content/Context;)Z
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
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;I)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public goLoginNetGame(Landroid/content/Context;)Z
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
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;I)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public goMGMainActivity2Front(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    const-class v1, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goMGMainActivity2Front(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "pos",
            "classiFy",
            "classifyPrimaryIndex"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MainPos"

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    const-string p2, "classiFy"

    .line 6
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz p4, :cond_1

    const-string p2, "classifyPrimaryIndex"

    .line 7
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goMGSettingActivity(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/MGPapaAboutActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGPapaAboutActivity_$e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public goMYAccountDetialActivity(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountDetialActivity_$b0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public goMainLabelActivity(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "tagId"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method public goMainLabelActivity(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tagId",
            "fid",
            "fname"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/join/mgps/activity/label/MainLabelActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->b(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->a(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->c(Ljava/lang/String;)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tagId",
            "tagName"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method public goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tagId",
            "tagName",
            "fromType"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/label/MainLabelActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->e(Ljava/lang/String;)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->b(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goModUploadArchiveActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId",
            "imgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const/high16 v1, 0x10000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v1, "uploadGameId"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    const-string p2, "imagePath"

    .line 36
    .line 37
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public goMyAccountLoginActivity(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;II)V

    return-void
.end method

.method public goMyAccountLoginActivity(Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "fromIndex",
            "intentFrom"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMyAccountLoginActivityNewTask(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMyAccountLoginActivityNewTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "hostPkg"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.join.mgps.activity.login.LoginSplashActivity_"

    invoke-direct {v1, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goMyGameManagerActivity(Landroid/content/Context;)V
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
    instance-of v0, p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/activity/MyGameManagerActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyGameManagerActivity_$a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public goMyVoucherActivity(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public goOnlineGameCheckPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/OnlineGameInstallCheckActivity_$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity_$c;->a(Ljava/lang/String;)Lcom/join/mgps/activity/OnlineGameInstallCheckActivity_$c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public goPAPayCenterActivity(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/PAPayCenterActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PAPayCenterActivity_$h;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public goQQChart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "qqNumber"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mqqwpa://im/chat?chat_type=wpa&uin="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, "&version=1"

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "android.intent.action.VIEW"

    .line 26
    .line 27
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public goQQGroup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "qqNumber"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/Util/IntentUtil;->joinQQGroup(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public goReportFeedbackDetail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity_$n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity_$n;->a(Ljava/lang/String;)Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity_$n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public goSearchHintActivity(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goSearchHintActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "keyword"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SearchHintActivity_$b0;->c(Ljava/lang/String;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goSearchHintActivity(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0
    .param p2    # Ljava/util/ArrayList;
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
            "ctx",
            "keywords",
            "interval"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/SScrollingTxtBeanV2;",
            ">;I)V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SearchHintActivity_$b0;->d(Ljava/util/ArrayList;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/SearchHintActivity_$b0;->b(I)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goSearchListActivity(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "keyword",
            "isNeedRecommend"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/SearchListActivity1_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SearchListActivity1_$q;->e(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/SearchListActivity1_$q;->d(Z)Lcom/join/mgps/activity/SearchListActivity1_$q;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goShareWebActivity(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "url",
            "extBean"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goShareWebActivityNewTask(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "intentDateBean"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x10000000

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "intentdate"

    .line 3
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "com.join.mgps.activity.ShareWebActivity_"

    .line 5
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ShareWebActivity_$g0;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public goShareWebActivityNewTask(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "hostPkg",
            "intentDateBean"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "intentdate"

    .line 11
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 12
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p3, "com.join.mgps.activity.ShareWebActivity_"

    .line 13
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public goSmashGoldenEgg(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 14
    .line 15
    .line 16
    const-string v1, "\u7838\u91d1\u86cb"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/join/mgps/rpc/h;->e1:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public goSvip(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/member/vip_view/welcome?go=svip"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public goTagGameListActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "name"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/TagGameListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->b(I)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/TagGameListActivity_$q;->e(I)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/TagGameListActivity_$q;->d(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public goVip(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/member/vip_view/welcome?go=vip"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public goVipCdk(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/join/mgps/rpc/h;->D:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/member/vip_view/welfare/cdk"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public goVipForum(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/join/mgps/rpc/h;->D:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/member/vip_view/welfare/forum"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public goVipMessage(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/member/vip_view/welfare/ad"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public goWirelessSettings(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intentDateBean"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v4, "  intentActivity"

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v4, "info"

    .line 29
    .line 30
    invoke-static {v4, v0}, Lcom/join/mgps/Util/g1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v5, "extBean"

    .line 41
    .line 42
    const-string v7, "\\|"

    .line 43
    .line 44
    const-string v8, "\u6e38\u620f\u672a\u4e0b\u8f7d,\u8bf7\u5148\u4e0b\u8f7d\u6e38\u620f."

    .line 45
    .line 46
    const-string v9, "gameId"

    .line 47
    .line 48
    const-string v10, "com.join.downloadbygameid.action.broadcast"

    .line 49
    .line 50
    const-string v11, "parentExtBean"

    .line 51
    .line 52
    const-string v15, "MainPos"

    .line 53
    .line 54
    const-class v13, Lcom/join/mgps/activity/MGMainActivity_;

    .line 55
    .line 56
    const-string v16, ""

    .line 57
    .line 58
    const/4 v12, 0x2

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v14, 0x1

    .line 61
    packed-switch v0, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    :pswitch_0
    goto/16 :goto_f

    .line 65
    .line 66
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->start(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_f

    .line 70
    .line 71
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CloudGameZoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CloudGameZoneActivity_$u;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/CloudGameZoneActivity_$u;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CloudGameZoneActivity_$u;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CloudGameZoneActivity_$u;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CloudGameZoneActivity_$u;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 92
    .line 93
    .line 94
    goto/16 :goto_f

    .line 95
    .line 96
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleSevenActivity_$k;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/CollectionModuleSevenActivity_$k;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleSevenActivity_$k;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleSevenActivity_$k;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CollectionModuleSevenActivity_$k;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 117
    .line 118
    .line 119
    goto/16 :goto_f

    .line 120
    .line 121
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_2f

    .line 130
    .line 131
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_1

    .line 140
    .line 141
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->checkAndDownloadApk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_f

    .line 145
    .line 146
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-string v3, "requestAndDownloadGameById"

    .line 151
    .line 152
    invoke-virtual {v2, v3, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 157
    .line 158
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 159
    .line 160
    .line 161
    goto/16 :goto_f

    .line 162
    .line 163
    :pswitch_5
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_2f

    .line 172
    .line 173
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v2, "\u5938\u514b"

    .line 178
    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    array-length v4, v0

    .line 182
    if-lez v4, :cond_5

    .line 183
    .line 184
    aget-object v2, v0, v6

    .line 185
    .line 186
    array-length v4, v0

    .line 187
    if-le v4, v14, :cond_2

    .line 188
    .line 189
    aget-object v4, v0, v14

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_2
    move-object/from16 v4, v16

    .line 193
    .line 194
    :goto_0
    array-length v5, v0

    .line 195
    if-le v5, v12, :cond_3

    .line 196
    .line 197
    aget-object v16, v0, v12

    .line 198
    .line 199
    :cond_3
    array-length v5, v0

    .line 200
    const/4 v7, 0x3

    .line 201
    if-le v5, v7, :cond_4

    .line 202
    .line 203
    const-string v5, "0"

    .line 204
    .line 205
    aget-object v0, v0, v7

    .line 206
    .line 207
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    move-object v6, v2

    .line 212
    move-object v7, v4

    .line 213
    move-object/from16 v5, v16

    .line 214
    .line 215
    move v4, v0

    .line 216
    goto :goto_2

    .line 217
    :cond_4
    move-object v6, v2

    .line 218
    move-object v7, v4

    .line 219
    move-object/from16 v5, v16

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_5
    move-object v6, v2

    .line 223
    move-object/from16 v5, v16

    .line 224
    .line 225
    move-object v7, v5

    .line 226
    :goto_1
    const/4 v4, 0x0

    .line 227
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickSpeedDownUpQk:Lcom/papa/sim/statistic/Event;

    .line 232
    .line 233
    new-instance v8, Lcom/papa/sim/statistic/Ext;

    .line 234
    .line 235
    invoke-direct {v8}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v9, "2057111073"

    .line 239
    .line 240
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    const-string v9, "pc"

    .line 245
    .line 246
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    invoke-virtual {v0, v2, v8}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 251
    .line 252
    .line 253
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    move-object/from16 v3, p1

    .line 258
    .line 259
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->startQuarkBrowser(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .line 261
    .line 262
    goto/16 :goto_f

    .line 263
    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_f

    .line 269
    .line 270
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    .line 271
    .line 272
    const-class v4, Lcom/join/kotlin/zone/CommonZoneActivity;

    .line 273
    .line 274
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 282
    .line 283
    .line 284
    const-string v4, "zoneId"

    .line 285
    .line 286
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_f

    .line 297
    .line 298
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    .line 299
    .line 300
    const-class v4, Lcom/join/kotlin/EverdayNewGameActivity;

    .line 301
    .line 302
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .line 304
    .line 305
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    const-string v4, "default_position"

    .line 314
    .line 315
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    .line 317
    .line 318
    :catch_1
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_f

    .line 322
    .line 323
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    .line 324
    .line 325
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    const/high16 v4, 0x24000000

    .line 332
    .line 333
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 334
    .line 335
    .line 336
    new-instance v4, Landroid/os/Bundle;

    .line 337
    .line 338
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 339
    .line 340
    .line 341
    const/4 v5, 0x7

    .line 342
    invoke-virtual {v4, v15, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 343
    .line 344
    .line 345
    const-string v5, "currTabNumber"

    .line 346
    .line 347
    invoke-virtual {v4, v5, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    const-string v5, "currTabTagId"

    .line 351
    .line 352
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_f

    .line 366
    .line 367
    :pswitch_9
    new-instance v0, Lcom/google/gson/Gson;

    .line 368
    .line 369
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    const-class v4, Lcom/join/mgps/dto/ReportIssueBean;

    .line 377
    .line 378
    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Lcom/join/mgps/dto/ReportIssueBean;

    .line 383
    .line 384
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v0}, Lcom/join/mgps/dto/ReportIssueBean;->getIssue_id()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/Util/IntentUtil;->goReportFeedbackDetail(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_f

    .line 396
    .line 397
    :pswitch_a
    :try_start_2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 398
    .line 399
    invoke-direct {v0, v3}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->wx_open_appid()Lorg/androidannotations/api/sharedpreferences/p;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_2f

    .line 421
    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    if-nez v4, :cond_2f

    .line 427
    .line 428
    const/4 v4, 0x0

    .line 429
    invoke-static {v0, v4}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    const-class v5, Lcom/join/mgps/dto/WxMiniProgramBean;

    .line 442
    .line 443
    invoke-virtual {v4, v2, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    check-cast v2, Lcom/join/mgps/dto/WxMiniProgramBean;

    .line 448
    .line 449
    if-eqz v2, :cond_2f

    .line 450
    .line 451
    invoke-virtual {v2}, Lcom/join/mgps/dto/WxMiniProgramBean;->getId()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-virtual {v2}, Lcom/join/mgps/dto/WxMiniProgramBean;->getPath()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-static {v3, v0, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->L4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 460
    .line 461
    .line 462
    goto/16 :goto_f

    .line 463
    .line 464
    :catch_2
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_f

    .line 469
    .line 470
    :pswitch_b
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-eqz v0, :cond_6

    .line 479
    .line 480
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    const-class v4, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    .line 489
    .line 490
    invoke-virtual {v0, v2, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    move-object v14, v0

    .line 495
    check-cast v14, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    .line 496
    .line 497
    goto :goto_3

    .line 498
    :cond_6
    const/4 v14, 0x0

    .line 499
    :goto_3
    if-eqz v14, :cond_7

    .line 500
    .line 501
    invoke-virtual {v14}, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->getGame_id()J

    .line 502
    .line 503
    .line 504
    move-result-wide v4

    .line 505
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v16

    .line 509
    invoke-virtual {v14}, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->getPost_id()I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    :cond_7
    move-object/from16 v0, v16

    .line 522
    .line 523
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/IntroductionActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    const/16 v3, 0x64

    .line 528
    .line 529
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/IntroductionActivity_$v;->e(I)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/IntroductionActivity_$v;->a(Ljava/lang/String;)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0, v14}, Lcom/join/mgps/activity/IntroductionActivity_$v;->c(Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/IntroductionActivity_$v;->d(I)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {v0, v14}, Lcom/join/mgps/activity/IntroductionActivity_$v;->c(Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 550
    .line 551
    .line 552
    goto/16 :goto_f

    .line 553
    .line 554
    :catch_3
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_f

    .line 559
    .line 560
    :pswitch_c
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 565
    .line 566
    if-eqz v0, :cond_8

    .line 567
    .line 568
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    check-cast v0, Ljava/lang/Boolean;

    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 575
    .line 576
    .line 577
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 578
    move v6, v0

    .line 579
    goto :goto_4

    .line 580
    :catch_4
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 582
    .line 583
    .line 584
    :cond_8
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->autodown(Z)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v0, v12}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->extBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 613
    .line 614
    .line 615
    goto/16 :goto_f

    .line 616
    .line 617
    :pswitch_d
    new-instance v4, Landroid/content/Intent;

    .line 618
    .line 619
    const-class v0, Lcom/join/mgps/activity/GameDetailActivity_;

    .line 620
    .line 621
    invoke-direct {v4, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    .line 623
    .line 624
    const-string v0, "fromid"

    .line 625
    .line 626
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    .line 632
    .line 633
    const-string v0, "_from"

    .line 634
    .line 635
    const/16 v5, 0x2b61

    .line 636
    .line 637
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    .line 639
    .line 640
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-virtual {v4, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 645
    .line 646
    .line 647
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    if-eqz v0, :cond_9

    .line 656
    .line 657
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    const-string v2, "groupuid"

    .line 666
    .line 667
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 668
    .line 669
    .line 670
    goto :goto_5

    .line 671
    :catch_5
    move-exception v0

    .line 672
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 673
    .line 674
    .line 675
    :cond_9
    :goto_5
    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_f

    .line 679
    .line 680
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 685
    .line 686
    .line 687
    move-result v2

    .line 688
    if-nez v2, :cond_2f

    .line 689
    .line 690
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    array-length v2, v0

    .line 695
    if-le v2, v14, :cond_2f

    .line 696
    .line 697
    aget-object v2, v0, v6

    .line 698
    .line 699
    aget-object v0, v0, v14

    .line 700
    .line 701
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->o0(Landroid/content/Context;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 702
    .line 703
    .line 704
    move-result-object v3

    .line 705
    invoke-virtual {v3, v2}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->b(I)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 718
    .line 719
    .line 720
    goto/16 :goto_f

    .line 721
    .line 722
    :pswitch_f
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    if-eqz v2, :cond_2f

    .line 731
    .line 732
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    if-eqz v0, :cond_2f

    .line 737
    .line 738
    array-length v2, v0

    .line 739
    if-lez v2, :cond_2f

    .line 740
    .line 741
    aget-object v2, v0, v6

    .line 742
    .line 743
    array-length v4, v0

    .line 744
    if-le v4, v14, :cond_a

    .line 745
    .line 746
    aget-object v16, v0, v14

    .line 747
    .line 748
    :cond_a
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    if-eqz v0, :cond_b

    .line 753
    .line 754
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    goto :goto_6

    .line 759
    :cond_b
    const/4 v0, 0x0

    .line 760
    :goto_6
    invoke-static/range {v16 .. v16}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    if-eqz v2, :cond_c

    .line 765
    .line 766
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 767
    .line 768
    .line 769
    move-result v6

    .line 770
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/label/MainLabelActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->a(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-virtual {v0, v14}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->b(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    .line 787
    .line 788
    .line 789
    goto/16 :goto_f

    .line 790
    .line 791
    :pswitch_10
    new-instance v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 792
    .line 793
    invoke-direct {v0}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 794
    .line 795
    .line 796
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    instance-of v4, v4, Ljava/lang/String;

    .line 801
    .line 802
    if-eqz v4, :cond_d

    .line 803
    .line 804
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    check-cast v4, Ljava/lang/String;

    .line 809
    .line 810
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->c(Lcom/join/mgps/dto/GameInfoBean;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 829
    .line 830
    .line 831
    goto/16 :goto_f

    .line 832
    .line 833
    :pswitch_11
    new-instance v4, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 834
    .line 835
    invoke-direct {v4}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;-><init>()V

    .line 836
    .line 837
    .line 838
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->setTid(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 847
    .line 848
    .line 849
    goto :goto_7

    .line 850
    :catch_6
    move-exception v0

    .line 851
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 852
    .line 853
    .line 854
    :goto_7
    invoke-static {v3, v4}, Lcom/join/mgps/Util/r0;->D0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V

    .line 855
    .line 856
    .line 857
    goto/16 :goto_f

    .line 858
    .line 859
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 864
    .line 865
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    iget-object v2, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 870
    .line 871
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 876
    .line 877
    if-eqz v0, :cond_e

    .line 878
    .line 879
    invoke-static {v3, v0}, Lcom/join/mgps/Util/UtilsMy;->o0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 880
    .line 881
    .line 882
    goto/16 :goto_f

    .line 883
    .line 884
    :cond_e
    new-instance v0, Landroid/content/Intent;

    .line 885
    .line 886
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 887
    .line 888
    .line 889
    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 890
    .line 891
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    .line 893
    .line 894
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 895
    .line 896
    iget-object v2, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 897
    .line 898
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    .line 900
    .line 901
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 902
    .line 903
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 904
    .line 905
    .line 906
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-virtual {v0, v8}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    goto/16 :goto_f

    .line 914
    .line 915
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 920
    .line 921
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    iget-object v2, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 926
    .line 927
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 932
    .line 933
    if-eqz v0, :cond_f

    .line 934
    .line 935
    invoke-static {v3, v0}, Lcom/join/mgps/Util/UtilsMy;->o0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 936
    .line 937
    .line 938
    goto/16 :goto_f

    .line 939
    .line 940
    :cond_f
    new-instance v0, Landroid/content/Intent;

    .line 941
    .line 942
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 943
    .line 944
    .line 945
    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 946
    .line 947
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    .line 949
    .line 950
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 951
    .line 952
    iget-object v2, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 953
    .line 954
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    .line 956
    .line 957
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 958
    .line 959
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 960
    .line 961
    .line 962
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    invoke-virtual {v0, v8}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    goto/16 :goto_f

    .line 970
    .line 971
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 976
    .line 977
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    iget-object v2, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 982
    .line 983
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 988
    .line 989
    if-eqz v0, :cond_10

    .line 990
    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    .line 992
    .line 993
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 994
    .line 995
    .line 996
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 997
    .line 998
    .line 999
    move-result-wide v5

    .line 1000
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    const-string v2, "  checkupdate"

    .line 1004
    .line 1005
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    invoke-static {v4, v0}, Lcom/join/mgps/Util/g1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1016
    .line 1017
    invoke-static {v3, v0}, Lcom/join/mgps/Util/UtilsMy;->o0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 1018
    .line 1019
    .line 1020
    goto/16 :goto_f

    .line 1021
    .line 1022
    :cond_10
    new-instance v0, Landroid/content/Intent;

    .line 1023
    .line 1024
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1025
    .line 1026
    .line 1027
    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 1028
    .line 1029
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    .line 1031
    .line 1032
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 1033
    .line 1034
    iget-object v2, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 1035
    .line 1036
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    .line 1038
    .line 1039
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 1040
    .line 1041
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-virtual {v0, v8}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    goto/16 :goto_f

    .line 1052
    .line 1053
    :pswitch_15
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1061
    goto :goto_8

    .line 1062
    :catch_7
    move-exception v0

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1064
    .line 1065
    .line 1066
    :goto_8
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 1067
    .line 1068
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v0, v6}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v2

    .line 1078
    invoke-static {v3, v0, v2}, Lcom/join/mgps/Util/r0;->w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 1079
    .line 1080
    .line 1081
    goto/16 :goto_f

    .line 1082
    .line 1083
    :pswitch_16
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1088
    .line 1089
    .line 1090
    move-result v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1091
    goto :goto_9

    .line 1092
    :catch_8
    move-exception v0

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1094
    .line 1095
    .line 1096
    :goto_9
    :try_start_a
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    .line 1097
    .line 1098
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v0, v6}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v2

    .line 1108
    invoke-static {v3, v0, v2}, Lcom/join/mgps/Util/r0;->s0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;Lcom/join/mgps/dto/ExtBean;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 1109
    .line 1110
    .line 1111
    goto/16 :goto_f

    .line 1112
    .line 1113
    :catch_9
    move-exception v0

    .line 1114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1115
    .line 1116
    .line 1117
    goto/16 :goto_f

    .line 1118
    .line 1119
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    instance-of v0, v0, Ljava/lang/String;

    .line 1124
    .line 1125
    if-eqz v0, :cond_11

    .line 1126
    .line 1127
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    move-object/from16 v16, v0

    .line 1132
    .line 1133
    check-cast v16, Ljava/lang/String;

    .line 1134
    .line 1135
    goto :goto_a

    .line 1136
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    if-eqz v0, :cond_12

    .line 1141
    .line 1142
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 1147
    .line 1148
    if-eqz v0, :cond_12

    .line 1149
    .line 1150
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    check-cast v0, Ljava/lang/Boolean;

    .line 1155
    .line 1156
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1157
    .line 1158
    .line 1159
    move-result v6

    .line 1160
    :cond_12
    :goto_a
    move-object/from16 v0, v16

    .line 1161
    .line 1162
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/GameInformationActivityV2_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v3

    .line 1166
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v4

    .line 1170
    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/GameInformationActivityV2_$x;->c(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v3

    .line 1174
    invoke-virtual {v3, v0}, Lcom/join/mgps/activity/GameInformationActivityV2_$x;->d(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/GameInformationActivityV2_$x;->a(Z)Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2

    .line 1186
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/GameInformationActivityV2_$x;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1191
    .line 1192
    .line 1193
    goto/16 :goto_f

    .line 1194
    .line 1195
    :pswitch_18
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    .line 1196
    .line 1197
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1198
    .line 1199
    .line 1200
    const-string v4, "android.intent.action.VIEW"

    .line 1201
    .line 1202
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v4

    .line 1209
    const-string v5, "://"

    .line 1210
    .line 1211
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v4

    .line 1215
    if-nez v4, :cond_13

    .line 1216
    .line 1217
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    .line 1222
    .line 1223
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    return-void

    .line 1227
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v2

    .line 1231
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v2

    .line 1235
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 1239
    .line 1240
    .line 1241
    goto/16 :goto_f

    .line 1242
    .line 1243
    :catch_a
    move-exception v0

    .line 1244
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1245
    .line 1246
    .line 1247
    goto/16 :goto_f

    .line 1248
    .line 1249
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v0

    .line 1253
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v4

    .line 1257
    if-eqz v4, :cond_15

    .line 1258
    .line 1259
    const-string v4, ".taobao.com/"

    .line 1260
    .line 1261
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v4

    .line 1265
    if-nez v4, :cond_14

    .line 1266
    .line 1267
    const-string v4, ".tmall.com/"

    .line 1268
    .line 1269
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v4

    .line 1273
    if-eqz v4, :cond_15

    .line 1274
    .line 1275
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v4

    .line 1279
    const-string v5, "com.taobao.taobao"

    .line 1280
    .line 1281
    invoke-virtual {v4, v3, v5}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v4

    .line 1285
    if-eqz v4, :cond_15

    .line 1286
    .line 1287
    new-instance v2, Landroid/content/Intent;

    .line 1288
    .line 1289
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1290
    .line 1291
    .line 1292
    const-string v4, "android.intent.action.VIEW"

    .line 1293
    .line 1294
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    .line 1296
    .line 1297
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1302
    .line 1303
    .line 1304
    const-string v0, "com.taobao.taobao"

    .line 1305
    .line 1306
    const-string v4, "com.taobao.tao.detail.activity.DetailActivity"

    .line 1307
    .line 1308
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1312
    .line 1313
    .line 1314
    goto/16 :goto_f

    .line 1315
    .line 1316
    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v0

    .line 1324
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v2

    .line 1328
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->c(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1333
    .line 1334
    .line 1335
    goto/16 :goto_f

    .line 1336
    .line 1337
    :pswitch_1a
    const/16 v0, 0xa

    .line 1338
    .line 1339
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->i2(I)I

    .line 1340
    .line 1341
    .line 1342
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->j2(I)Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    .line 1346
    .line 1347
    .line 1348
    move-result v4

    .line 1349
    if-eq v4, v14, :cond_24

    .line 1350
    .line 1351
    if-eq v4, v12, :cond_20

    .line 1352
    .line 1353
    const/4 v7, 0x3

    .line 1354
    if-eq v4, v7, :cond_1f

    .line 1355
    .line 1356
    const/4 v7, 0x4

    .line 1357
    if-eq v4, v7, :cond_1e

    .line 1358
    .line 1359
    const/4 v7, 0x6

    .line 1360
    if-eq v4, v7, :cond_1c

    .line 1361
    .line 1362
    const/4 v7, 0x7

    .line 1363
    if-eq v4, v7, :cond_1b

    .line 1364
    .line 1365
    const/16 v5, 0x8

    .line 1366
    .line 1367
    if-eq v4, v5, :cond_1a

    .line 1368
    .line 1369
    const/16 v5, 0x23

    .line 1370
    .line 1371
    if-eq v4, v5, :cond_19

    .line 1372
    .line 1373
    const/16 v5, 0x54

    .line 1374
    .line 1375
    if-eq v4, v5, :cond_18

    .line 1376
    .line 1377
    packed-switch v4, :pswitch_data_1

    .line 1378
    .line 1379
    .line 1380
    packed-switch v4, :pswitch_data_2

    .line 1381
    .line 1382
    .line 1383
    packed-switch v4, :pswitch_data_3

    .line 1384
    .line 1385
    .line 1386
    packed-switch v4, :pswitch_data_4

    .line 1387
    .line 1388
    .line 1389
    new-instance v0, Landroid/content/Intent;

    .line 1390
    .line 1391
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1395
    .line 1396
    .line 1397
    const/high16 v2, 0x24000000

    .line 1398
    .line 1399
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1400
    .line 1401
    .line 1402
    new-instance v2, Landroid/os/Bundle;

    .line 1403
    .line 1404
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1405
    .line 1406
    .line 1407
    const/4 v4, 0x7

    .line 1408
    invoke-virtual {v2, v15, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1415
    .line 1416
    .line 1417
    goto/16 :goto_f

    .line 1418
    .line 1419
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    invoke-static {v3, v0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameActivity;->start(Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;)V

    .line 1424
    .line 1425
    .line 1426
    goto/16 :goto_f

    .line 1427
    .line 1428
    :pswitch_1c
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/FragmentPageActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    invoke-virtual {v0, v14}, Lcom/join/mgps/activity/FragmentPageActivity_$b;->b(I)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v0

    .line 1436
    const-string v2, "\u4e91\u73a9"

    .line 1437
    .line 1438
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/FragmentPageActivity_$b;->c(Ljava/lang/String;)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v0

    .line 1442
    const/4 v2, 0x0

    .line 1443
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/FragmentPageActivity_$b;->a(Landroid/os/Bundle;)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1448
    .line 1449
    .line 1450
    goto/16 :goto_f

    .line 1451
    .line 1452
    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/hideapp/HideAppHomeActivity_$c;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1457
    .line 1458
    .line 1459
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v0

    .line 1463
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickfakeAPP:Lcom/papa/sim/statistic/Event;

    .line 1464
    .line 1465
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 1466
    .line 1467
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 1471
    .line 1472
    .line 1473
    goto/16 :goto_f

    .line 1474
    .line 1475
    :pswitch_1e
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/EndGameDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v3

    .line 1483
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->a(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v2

    .line 1491
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->b(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v0

    .line 1495
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1496
    .line 1497
    .line 1498
    goto/16 :goto_f

    .line 1499
    .line 1500
    :pswitch_1f
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/EndGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameActivity_$u;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v0

    .line 1504
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1505
    .line 1506
    .line 1507
    goto/16 :goto_f

    .line 1508
    .line 1509
    :pswitch_20
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorFastEntryActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorFastEntryActivity_$k;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v0

    .line 1513
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v2

    .line 1517
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/SimulatorFastEntryActivity_$k;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/SimulatorFastEntryActivity_$k;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1522
    .line 1523
    .line 1524
    goto/16 :goto_f

    .line 1525
    .line 1526
    :pswitch_21
    new-instance v0, Landroid/content/Intent;

    .line 1527
    .line 1528
    const-class v4, Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 1529
    .line 1530
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v4

    .line 1537
    if-eqz v4, :cond_16

    .line 1538
    .line 1539
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v2

    .line 1543
    check-cast v2, Ljava/lang/String;

    .line 1544
    .line 1545
    const-string v4, "title"

    .line 1546
    .line 1547
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    .line 1549
    .line 1550
    :cond_16
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1551
    .line 1552
    .line 1553
    goto/16 :goto_f

    .line 1554
    .line 1555
    :pswitch_22
    new-instance v0, Landroid/content/Intent;

    .line 1556
    .line 1557
    const-class v4, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    .line 1558
    .line 1559
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v4

    .line 1566
    if-eqz v4, :cond_17

    .line 1567
    .line 1568
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v2

    .line 1572
    check-cast v2, Ljava/lang/String;

    .line 1573
    .line 1574
    const-string v4, "title"

    .line 1575
    .line 1576
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    .line 1578
    .line 1579
    :cond_17
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1580
    .line 1581
    .line 1582
    goto/16 :goto_f

    .line 1583
    .line 1584
    :pswitch_23
    const/16 v0, 0xe

    .line 1585
    .line 1586
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->i2(I)I

    .line 1587
    .line 1588
    .line 1589
    move-result v0

    .line 1590
    const/16 v2, 0xe

    .line 1591
    .line 1592
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->j2(I)Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v2

    .line 1596
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v3

    .line 1600
    invoke-virtual {v3, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v0

    .line 1604
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v0

    .line 1608
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1609
    .line 1610
    .line 1611
    goto/16 :goto_f

    .line 1612
    .line 1613
    :pswitch_24
    const/16 v0, 0xc

    .line 1614
    .line 1615
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->i2(I)I

    .line 1616
    .line 1617
    .line 1618
    move-result v2

    .line 1619
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->j2(I)Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v0

    .line 1623
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v3

    .line 1627
    invoke-virtual {v3, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v2

    .line 1631
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v0

    .line 1635
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1636
    .line 1637
    .line 1638
    goto/16 :goto_f

    .line 1639
    .line 1640
    :pswitch_25
    const/16 v0, 0xb

    .line 1641
    .line 1642
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->i2(I)I

    .line 1643
    .line 1644
    .line 1645
    move-result v2

    .line 1646
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->j2(I)Ljava/lang/String;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v0

    .line 1650
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v3

    .line 1654
    invoke-virtual {v3, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v2

    .line 1658
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v0

    .line 1662
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1663
    .line 1664
    .line 1665
    goto/16 :goto_f

    .line 1666
    .line 1667
    :pswitch_26
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->i2(I)I

    .line 1668
    .line 1669
    .line 1670
    move-result v2

    .line 1671
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->j2(I)Ljava/lang/String;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v0

    .line 1675
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v3

    .line 1679
    invoke-virtual {v3, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v2

    .line 1683
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v0

    .line 1687
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1688
    .line 1689
    .line 1690
    goto/16 :goto_f

    .line 1691
    .line 1692
    :pswitch_27
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PaPaStandAloneV2Activity_$f;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v2

    .line 1700
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity_$f;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/PaPaStandAloneV2Activity_$f;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v0

    .line 1704
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1705
    .line 1706
    .line 1707
    goto/16 :goto_f

    .line 1708
    .line 1709
    :pswitch_28
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipCenterActivity_$IntentBuilder_;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v0

    .line 1713
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1714
    .line 1715
    .line 1716
    goto/16 :goto_f

    .line 1717
    .line 1718
    :pswitch_29
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v0

    .line 1722
    const/16 v2, 0x37

    .line 1723
    .line 1724
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;->boardId(I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v0

    .line 1728
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1729
    .line 1730
    .line 1731
    goto/16 :goto_f

    .line 1732
    .line 1733
    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v0

    .line 1737
    const/16 v2, 0x36

    .line 1738
    .line 1739
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;->boardId(I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v0

    .line 1743
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1744
    .line 1745
    .line 1746
    goto/16 :goto_f

    .line 1747
    .line 1748
    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v0

    .line 1752
    const/16 v2, 0x35

    .line 1753
    .line 1754
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;->boardId(I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v0

    .line 1758
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1759
    .line 1760
    .line 1761
    goto/16 :goto_f

    .line 1762
    .line 1763
    :pswitch_2c
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v0

    .line 1767
    const/16 v2, 0x34

    .line 1768
    .line 1769
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;->boardId(I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v0

    .line 1773
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1774
    .line 1775
    .line 1776
    goto/16 :goto_f

    .line 1777
    .line 1778
    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/w;->i(Landroid/content/Context;)V

    .line 1779
    .line 1780
    .line 1781
    goto/16 :goto_f

    .line 1782
    .line 1783
    :pswitch_2e
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v0

    .line 1787
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goMGSettingActivity(Landroid/content/Context;)V

    .line 1788
    .line 1789
    .line 1790
    goto/16 :goto_f

    .line 1791
    .line 1792
    :pswitch_2f
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v0

    .line 1796
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goSvip(Landroid/content/Context;)V

    .line 1797
    .line 1798
    .line 1799
    goto/16 :goto_f

    .line 1800
    .line 1801
    :pswitch_30
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 1802
    .line 1803
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 1804
    .line 1805
    .line 1806
    const/4 v2, 0x4

    .line 1807
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 1808
    .line 1809
    .line 1810
    sget-object v2, Lcom/join/mgps/rpc/h;->s:Ljava/lang/String;

    .line 1811
    .line 1812
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 1813
    .line 1814
    .line 1815
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v2

    .line 1819
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v0

    .line 1823
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1824
    .line 1825
    .line 1826
    goto/16 :goto_f

    .line 1827
    .line 1828
    :pswitch_31
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 1829
    .line 1830
    .line 1831
    move-result v0

    .line 1832
    if-nez v0, :cond_2f

    .line 1833
    .line 1834
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v0

    .line 1838
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goMYAccountDetialActivity(Landroid/content/Context;)V

    .line 1839
    .line 1840
    .line 1841
    goto/16 :goto_f

    .line 1842
    .line 1843
    :pswitch_32
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/GameDiscoverActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameDiscoverActivity_$h;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v0

    .line 1847
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v2

    .line 1851
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/GameDiscoverActivity_$h;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/GameDiscoverActivity_$h;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v0

    .line 1855
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1856
    .line 1857
    .line 1858
    goto/16 :goto_f

    .line 1859
    .line 1860
    :pswitch_33
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 1861
    .line 1862
    .line 1863
    move-result v0

    .line 1864
    if-nez v0, :cond_2f

    .line 1865
    .line 1866
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v0

    .line 1870
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1871
    .line 1872
    .line 1873
    goto/16 :goto_f

    .line 1874
    .line 1875
    :pswitch_34
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v0

    .line 1879
    invoke-virtual {v0, v12}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;->b(I)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v0

    .line 1883
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v2

    .line 1887
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;->d(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v0

    .line 1891
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1892
    .line 1893
    .line 1894
    goto/16 :goto_f

    .line 1895
    .line 1896
    :pswitch_35
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/LargeSingePlayerGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/LargeSingePlayerGameActivity_$g;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v0

    .line 1900
    invoke-virtual {v0, v14}, Lcom/join/mgps/activity/LargeSingePlayerGameActivity_$g;->a(I)Lcom/join/mgps/activity/LargeSingePlayerGameActivity_$g;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v0

    .line 1904
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1905
    .line 1906
    .line 1907
    goto/16 :goto_f

    .line 1908
    .line 1909
    :pswitch_36
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v0

    .line 1913
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goDownloadSettingActivity(Landroid/content/Context;)V

    .line 1914
    .line 1915
    .line 1916
    goto/16 :goto_f

    .line 1917
    .line 1918
    :pswitch_37
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v0

    .line 1922
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goFeedback(Landroid/content/Context;)V

    .line 1923
    .line 1924
    .line 1925
    goto/16 :goto_f

    .line 1926
    .line 1927
    :pswitch_38
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v0

    .line 1931
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goDownloadSettingActivity(Landroid/content/Context;)V

    .line 1932
    .line 1933
    .line 1934
    goto/16 :goto_f

    .line 1935
    .line 1936
    :pswitch_39
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1937
    .line 1938
    .line 1939
    move-result-object v0

    .line 1940
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1941
    .line 1942
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1943
    .line 1944
    .line 1945
    sget-object v4, Lcom/join/mgps/rpc/h;->x:Ljava/lang/String;

    .line 1946
    .line 1947
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    .line 1949
    .line 1950
    const-string v4, "/Auxiliary_tool"

    .line 1951
    .line 1952
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v2

    .line 1959
    invoke-virtual {v0, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 1960
    .line 1961
    .line 1962
    goto/16 :goto_f

    .line 1963
    .line 1964
    :pswitch_3a
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v0

    .line 1968
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goJoystickManager(Landroid/content/Context;)V

    .line 1969
    .line 1970
    .line 1971
    goto/16 :goto_f

    .line 1972
    .line 1973
    :pswitch_3b
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v0

    .line 1977
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goFaceTransferHomePageActivity(Landroid/content/Context;)V

    .line 1978
    .line 1979
    .line 1980
    goto/16 :goto_f

    .line 1981
    .line 1982
    :pswitch_3c
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 1983
    .line 1984
    .line 1985
    move-result-object v0

    .line 1986
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v0

    .line 1990
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 1991
    .line 1992
    .line 1993
    move-result v2

    .line 1994
    if-nez v2, :cond_2f

    .line 1995
    .line 1996
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 1997
    .line 1998
    .line 1999
    move-result-object v2

    .line 2000
    invoke-virtual {v2, v14}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v2

    .line 2004
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 2005
    .line 2006
    .line 2007
    move-result v0

    .line 2008
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v0

    .line 2012
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2013
    .line 2014
    .line 2015
    goto/16 :goto_f

    .line 2016
    .line 2017
    :pswitch_3d
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2018
    .line 2019
    .line 2020
    move-result v0

    .line 2021
    if-nez v0, :cond_2f

    .line 2022
    .line 2023
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v0

    .line 2027
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2028
    .line 2029
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2030
    .line 2031
    .line 2032
    sget-object v4, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 2033
    .line 2034
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    .line 2036
    .line 2037
    const-string v4, "/static/vip2020/v2/index.html#/giftCenter"

    .line 2038
    .line 2039
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    .line 2041
    .line 2042
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v2

    .line 2046
    invoke-virtual {v0, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 2047
    .line 2048
    .line 2049
    goto/16 :goto_f

    .line 2050
    .line 2051
    :pswitch_3e
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v0

    .line 2055
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2056
    .line 2057
    .line 2058
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2059
    .line 2060
    .line 2061
    move-result v0

    .line 2062
    if-nez v0, :cond_2f

    .line 2063
    .line 2064
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v0

    .line 2068
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goPAPayCenterActivity(Landroid/content/Context;)V

    .line 2069
    .line 2070
    .line 2071
    goto/16 :goto_f

    .line 2072
    .line 2073
    :pswitch_3f
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v0

    .line 2077
    invoke-virtual {v0, v6, v3}, Lcom/join/mgps/Util/IntentUtil;->goForumAndPrfileActivity(ILandroid/content/Context;)V

    .line 2078
    .line 2079
    .line 2080
    goto/16 :goto_f

    .line 2081
    .line 2082
    :pswitch_40
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v0

    .line 2086
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goForumMyDynamicActivity(Landroid/content/Context;)V

    .line 2087
    .line 2088
    .line 2089
    goto/16 :goto_f

    .line 2090
    .line 2091
    :pswitch_41
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v0

    .line 2095
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->goForumProfileMessageActivity(Landroid/content/Context;)V

    .line 2096
    .line 2097
    .line 2098
    goto/16 :goto_f

    .line 2099
    .line 2100
    :pswitch_42
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v0

    .line 2104
    const/4 v2, 0x3

    .line 2105
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;->b(I)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v0

    .line 2109
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2110
    .line 2111
    .line 2112
    goto/16 :goto_f

    .line 2113
    .line 2114
    :pswitch_43
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 2115
    .line 2116
    .line 2117
    move-result v0

    .line 2118
    if-nez v0, :cond_2f

    .line 2119
    .line 2120
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goCodesBoxActivity(Landroid/content/Context;)V

    .line 2121
    .line 2122
    .line 2123
    goto/16 :goto_f

    .line 2124
    .line 2125
    :pswitch_44
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v0

    .line 2129
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 2130
    .line 2131
    .line 2132
    move-result v2

    .line 2133
    if-nez v2, :cond_2f

    .line 2134
    .line 2135
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v2

    .line 2139
    invoke-virtual {v2, v14}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v2

    .line 2143
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 2144
    .line 2145
    .line 2146
    move-result v0

    .line 2147
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v0

    .line 2151
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2152
    .line 2153
    .line 2154
    goto/16 :goto_f

    .line 2155
    .line 2156
    :pswitch_45
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 2157
    .line 2158
    .line 2159
    move-result v0

    .line 2160
    if-nez v0, :cond_2f

    .line 2161
    .line 2162
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/PAPayCenterActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PAPayCenterActivity_$h;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v0

    .line 2166
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2167
    .line 2168
    .line 2169
    goto/16 :goto_f

    .line 2170
    .line 2171
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->start(Landroid/content/Context;)V

    .line 2172
    .line 2173
    .line 2174
    goto/16 :goto_f

    .line 2175
    .line 2176
    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/DocumentManageActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/DocumentManageActivity_$r;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v0

    .line 2180
    invoke-virtual {v0, v12}, Lcom/join/mgps/activity/DocumentManageActivity_$r;->a(I)Lcom/join/mgps/activity/DocumentManageActivity_$r;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v0

    .line 2184
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v4

    .line 2188
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/DocumentManageActivity_$r;->b(Ljava/lang/String;)Lcom/join/mgps/activity/DocumentManageActivity_$r;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v0

    .line 2192
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2193
    .line 2194
    .line 2195
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v0

    .line 2199
    sget-object v4, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    .line 2200
    .line 2201
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v3

    .line 2205
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v3

    .line 2209
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v2

    .line 2213
    const-string v5, "2"

    .line 2214
    .line 2215
    invoke-virtual {v0, v4, v3, v2, v5}, Lcom/papa/sim/statistic/t;->X0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    .line 2217
    .line 2218
    goto/16 :goto_f

    .line 2219
    .line 2220
    :cond_1a
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/MGInformationActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGInformationActivity_$l;

    .line 2221
    .line 2222
    .line 2223
    move-result-object v0

    .line 2224
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v2

    .line 2228
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/MGInformationActivity_$l;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/MGInformationActivity_$l;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v0

    .line 2232
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2233
    .line 2234
    .line 2235
    goto/16 :goto_f

    .line 2236
    .line 2237
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    .line 2238
    .line 2239
    const-class v4, Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;

    .line 2240
    .line 2241
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2242
    .line 2243
    .line 2244
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2245
    .line 2246
    .line 2247
    move-result-object v2

    .line 2248
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2249
    .line 2250
    .line 2251
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2252
    .line 2253
    .line 2254
    goto/16 :goto_f

    .line 2255
    .line 2256
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    .line 2257
    .line 2258
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2259
    .line 2260
    .line 2261
    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2262
    .line 2263
    .line 2264
    const/high16 v4, 0x24000000

    .line 2265
    .line 2266
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2267
    .line 2268
    .line 2269
    new-instance v4, Landroid/os/Bundle;

    .line 2270
    .line 2271
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2272
    .line 2273
    .line 2274
    invoke-virtual {v4, v15, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2275
    .line 2276
    .line 2277
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExt1()Ljava/lang/String;

    .line 2278
    .line 2279
    .line 2280
    move-result-object v2

    .line 2281
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2282
    .line 2283
    .line 2284
    move-result v5

    .line 2285
    if-nez v5, :cond_1d

    .line 2286
    .line 2287
    const-string v5, "ext1"

    .line 2288
    .line 2289
    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    .line 2291
    .line 2292
    :cond_1d
    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2293
    .line 2294
    .line 2295
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2296
    .line 2297
    .line 2298
    goto/16 :goto_f

    .line 2299
    .line 2300
    :cond_1e
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ForumIndexActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v0

    .line 2304
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2305
    .line 2306
    .line 2307
    goto/16 :goto_f

    .line 2308
    .line 2309
    :cond_1f
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/NewArenaMainActivty_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v0

    .line 2313
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2314
    .line 2315
    .line 2316
    goto/16 :goto_f

    .line 2317
    .line 2318
    :cond_20
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v0

    .line 2322
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 2323
    .line 2324
    .line 2325
    move-result v0

    .line 2326
    if-eqz v0, :cond_21

    .line 2327
    .line 2328
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v0

    .line 2332
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2333
    .line 2334
    .line 2335
    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 2336
    goto :goto_b

    .line 2337
    :catch_b
    move-exception v0

    .line 2338
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2339
    .line 2340
    .line 2341
    :cond_21
    const/4 v0, 0x1

    .line 2342
    :goto_b
    if-ne v0, v14, :cond_22

    .line 2343
    .line 2344
    new-instance v0, Landroid/content/Intent;

    .line 2345
    .line 2346
    const-class v4, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 2347
    .line 2348
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2349
    .line 2350
    .line 2351
    const-string v4, "typeId"

    .line 2352
    .line 2353
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2354
    .line 2355
    .line 2356
    const-string v4, "tagId"

    .line 2357
    .line 2358
    const-string v5, "0"

    .line 2359
    .line 2360
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2361
    .line 2362
    .line 2363
    const-string v4, "tagName"

    .line 2364
    .line 2365
    const-string v5, "\u5168\u90e8\u6e38\u620f"

    .line 2366
    .line 2367
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2368
    .line 2369
    .line 2370
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2371
    .line 2372
    .line 2373
    move-result-object v2

    .line 2374
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2375
    .line 2376
    .line 2377
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2378
    .line 2379
    .line 2380
    goto/16 :goto_f

    .line 2381
    .line 2382
    :cond_22
    new-instance v4, Landroid/content/Intent;

    .line 2383
    .line 2384
    const-class v5, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 2385
    .line 2386
    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2387
    .line 2388
    .line 2389
    const-string v5, "typeId"

    .line 2390
    .line 2391
    invoke-virtual {v4, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2392
    .line 2393
    .line 2394
    const-string v5, "tagId"

    .line 2395
    .line 2396
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->i2(I)I

    .line 2397
    .line 2398
    .line 2399
    move-result v6

    .line 2400
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2401
    .line 2402
    .line 2403
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExt1()Ljava/lang/String;

    .line 2404
    .line 2405
    .line 2406
    move-result-object v5

    .line 2407
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2408
    .line 2409
    .line 2410
    move-result v5

    .line 2411
    if-eqz v5, :cond_23

    .line 2412
    .line 2413
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->j2(I)Ljava/lang/String;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v0

    .line 2417
    goto :goto_c

    .line 2418
    :cond_23
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExt1()Ljava/lang/String;

    .line 2419
    .line 2420
    .line 2421
    move-result-object v0

    .line 2422
    :goto_c
    const-string v5, "tagName"

    .line 2423
    .line 2424
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2425
    .line 2426
    .line 2427
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2428
    .line 2429
    .line 2430
    move-result-object v0

    .line 2431
    invoke-virtual {v4, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2432
    .line 2433
    .line 2434
    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2435
    .line 2436
    .line 2437
    goto/16 :goto_f

    .line 2438
    .line 2439
    :cond_24
    new-instance v0, Landroid/content/Intent;

    .line 2440
    .line 2441
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2442
    .line 2443
    .line 2444
    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2445
    .line 2446
    .line 2447
    const/high16 v2, 0x24000000

    .line 2448
    .line 2449
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2450
    .line 2451
    .line 2452
    new-instance v2, Landroid/os/Bundle;

    .line 2453
    .line 2454
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2455
    .line 2456
    .line 2457
    const/4 v4, 0x3

    .line 2458
    invoke-virtual {v2, v15, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2459
    .line 2460
    .line 2461
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2462
    .line 2463
    .line 2464
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2465
    .line 2466
    .line 2467
    goto/16 :goto_f

    .line 2468
    .line 2469
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v0

    .line 2473
    if-eqz v0, :cond_2f

    .line 2474
    .line 2475
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    .line 2476
    .line 2477
    .line 2478
    move-result-object v0

    .line 2479
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2480
    .line 2481
    .line 2482
    move-result v0

    .line 2483
    if-lez v0, :cond_2f

    .line 2484
    .line 2485
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v0

    .line 2489
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2490
    .line 2491
    .line 2492
    move-result v0

    .line 2493
    if-eq v0, v12, :cond_28

    .line 2494
    .line 2495
    const/4 v4, 0x3

    .line 2496
    if-eq v0, v4, :cond_27

    .line 2497
    .line 2498
    const/4 v4, 0x4

    .line 2499
    if-eq v0, v4, :cond_26

    .line 2500
    .line 2501
    const/4 v4, 0x6

    .line 2502
    if-eq v0, v4, :cond_25

    .line 2503
    .line 2504
    goto/16 :goto_f

    .line 2505
    .line 2506
    :cond_25
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleSixActivity_$w;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v0

    .line 2510
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 2511
    .line 2512
    .line 2513
    move-result-object v3

    .line 2514
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$w;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleSixActivity_$w;

    .line 2515
    .line 2516
    .line 2517
    move-result-object v0

    .line 2518
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2519
    .line 2520
    .line 2521
    move-result-object v2

    .line 2522
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$w;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CollectionModuleSixActivity_$w;

    .line 2523
    .line 2524
    .line 2525
    move-result-object v0

    .line 2526
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2527
    .line 2528
    .line 2529
    goto/16 :goto_f

    .line 2530
    .line 2531
    :cond_26
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CollectionModuleFourActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleFourActivity_$r;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v0

    .line 2535
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v3

    .line 2539
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/CollectionModuleFourActivity_$r;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleFourActivity_$r;

    .line 2540
    .line 2541
    .line 2542
    move-result-object v0

    .line 2543
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v2

    .line 2547
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleFourActivity_$r;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CollectionModuleFourActivity_$r;

    .line 2548
    .line 2549
    .line 2550
    move-result-object v0

    .line 2551
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2552
    .line 2553
    .line 2554
    goto/16 :goto_f

    .line 2555
    .line 2556
    :cond_27
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    .line 2557
    .line 2558
    .line 2559
    move-result-object v0

    .line 2560
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 2561
    .line 2562
    .line 2563
    move-result-object v3

    .line 2564
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    .line 2565
    .line 2566
    .line 2567
    move-result-object v0

    .line 2568
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2569
    .line 2570
    .line 2571
    move-result-object v2

    .line 2572
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    .line 2573
    .line 2574
    .line 2575
    move-result-object v0

    .line 2576
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2577
    .line 2578
    .line 2579
    goto/16 :goto_f

    .line 2580
    .line 2581
    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$r;

    .line 2582
    .line 2583
    .line 2584
    move-result-object v0

    .line 2585
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v3

    .line 2589
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$r;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$r;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v0

    .line 2593
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2594
    .line 2595
    .line 2596
    move-result-object v2

    .line 2597
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$r;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$r;

    .line 2598
    .line 2599
    .line 2600
    move-result-object v0

    .line 2601
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2602
    .line 2603
    .line 2604
    goto/16 :goto_f

    .line 2605
    .line 2606
    :pswitch_47
    :try_start_d
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    .line 2607
    .line 2608
    .line 2609
    move-result-object v0

    .line 2610
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2611
    .line 2612
    .line 2613
    move-result v0

    .line 2614
    if-eqz v0, :cond_29

    .line 2615
    .line 2616
    const/4 v4, 0x0

    .line 2617
    goto :goto_d

    .line 2618
    :cond_29
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    .line 2619
    .line 2620
    .line 2621
    move-result-object v0

    .line 2622
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2623
    .line 2624
    .line 2625
    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 2626
    move v4, v0

    .line 2627
    :goto_d
    :try_start_e
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 2628
    .line 2629
    .line 2630
    move-result-object v0

    .line 2631
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 2632
    .line 2633
    if-eqz v0, :cond_2a

    .line 2634
    .line 2635
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 2636
    .line 2637
    .line 2638
    move-result-object v0

    .line 2639
    check-cast v0, Ljava/lang/Boolean;

    .line 2640
    .line 2641
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2642
    .line 2643
    .line 2644
    move-result v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 2645
    goto :goto_e

    .line 2646
    :catch_c
    move-exception v0

    .line 2647
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2648
    .line 2649
    .line 2650
    :cond_2a
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v0

    .line 2654
    if-nez v0, :cond_2b

    .line 2655
    .line 2656
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2657
    .line 2658
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 2659
    .line 2660
    .line 2661
    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 2662
    .line 2663
    .line 2664
    :cond_2b
    if-eq v4, v14, :cond_2d

    .line 2665
    .line 2666
    const/4 v5, 0x3

    .line 2667
    if-eq v4, v5, :cond_2c

    .line 2668
    .line 2669
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2670
    .line 2671
    .line 2672
    move-result-object v0

    .line 2673
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 2674
    .line 2675
    .line 2676
    move-result-object v3

    .line 2677
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v0

    .line 2681
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->autodown(Z)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2682
    .line 2683
    .line 2684
    move-result-object v0

    .line 2685
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2686
    .line 2687
    .line 2688
    move-result-object v2

    .line 2689
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->extBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2690
    .line 2691
    .line 2692
    move-result-object v0

    .line 2693
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2694
    .line 2695
    .line 2696
    goto :goto_f

    .line 2697
    :cond_2c
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2698
    .line 2699
    .line 2700
    move-result-object v0

    .line 2701
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v3

    .line 2705
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2706
    .line 2707
    .line 2708
    move-result-object v0

    .line 2709
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->autodown(Z)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2710
    .line 2711
    .line 2712
    move-result-object v0

    .line 2713
    invoke-virtual {v0, v12}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2714
    .line 2715
    .line 2716
    move-result-object v0

    .line 2717
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2718
    .line 2719
    .line 2720
    move-result-object v2

    .line 2721
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->extBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2722
    .line 2723
    .line 2724
    move-result-object v0

    .line 2725
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2726
    .line 2727
    .line 2728
    goto :goto_f

    .line 2729
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    .line 2730
    .line 2731
    .line 2732
    move-result v0

    .line 2733
    if-nez v0, :cond_2e

    .line 2734
    .line 2735
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/MGGameDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGGameDetailActivity_$k1;

    .line 2736
    .line 2737
    .line 2738
    move-result-object v0

    .line 2739
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/MGGameDetailActivity_$k1;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/MGGameDetailActivity_$k1;

    .line 2740
    .line 2741
    .line 2742
    move-result-object v0

    .line 2743
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2744
    .line 2745
    .line 2746
    move-result-object v2

    .line 2747
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/MGGameDetailActivity_$k1;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/MGGameDetailActivity_$k1;

    .line 2748
    .line 2749
    .line 2750
    move-result-object v0

    .line 2751
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2752
    .line 2753
    .line 2754
    goto :goto_f

    .line 2755
    :cond_2e
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2756
    .line 2757
    .line 2758
    move-result-object v0

    .line 2759
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 2760
    .line 2761
    .line 2762
    move-result-object v3

    .line 2763
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2764
    .line 2765
    .line 2766
    move-result-object v0

    .line 2767
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->autodown(Z)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2768
    .line 2769
    .line 2770
    move-result-object v0

    .line 2771
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2772
    .line 2773
    .line 2774
    move-result-object v2

    .line 2775
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->extBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    .line 2776
    .line 2777
    .line 2778
    move-result-object v0

    .line 2779
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 2780
    .line 2781
    .line 2782
    goto :goto_f

    .line 2783
    :catch_d
    move-exception v0

    .line 2784
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2785
    .line 2786
    .line 2787
    :catch_e
    :cond_2f
    :goto_f
    :pswitch_48
    return-void

    .line 2788
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_47
        :pswitch_46
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_48
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2f
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x46
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public isLogined(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public isNotLogin(Landroid/content/Context;)Z
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public isTourist(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public joinQQGroup(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "key"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :catch_0
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public setSplashActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splashActivity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentUtil;->splashActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "targetClazz",
            "extra"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "targetClazz",
            "extra",
            "callback"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x10000000

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/join/kotlin/base/dialog/DialogActivityManager;->get()Lcom/join/kotlin/base/dialog/DialogActivityManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p2, p4}, Lcom/join/kotlin/base/dialog/DialogActivityManager;->registerCallback(Ljava/lang/Class;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public startGameCheckRealnameHasIntent(Landroid/content/Context;Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "accountBean",
            "from",
            "gameid"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/MApplication;->V:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getIs_open_certify()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_7

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastShowRealNameTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Long;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v3, v4}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    sget-object v3, Lcom/MApplication;->V:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->todayShowRealNameCount()Lorg/androidannotations/api/sharedpreferences/i;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sget-object v4, Lcom/MApplication;->V:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getDaily_show_count()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    sget-object v4, Lcom/MApplication;->V:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getTimes_open_certify()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    const/4 v4, 0x2

    .line 79
    if-eq v3, v4, :cond_5

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_1

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_1
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsRealName()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-nez p2, :cond_7

    .line 94
    .line 95
    sget-object p2, Lcom/MApplication;->V:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 96
    .line 97
    if-eqz p2, :cond_7

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getIs_open_certify()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-ne p2, v2, :cond_7

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-lez p2, :cond_2

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    sub-int/2addr p2, v2

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    sget-object p2, Lcom/MApplication;->V:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getCertify_is_allow_skip()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    const-string v3, "&gameId="

    .line 141
    .line 142
    const-string v4, "/user/activity/real_name/index?from="

    .line 143
    .line 144
    if-nez p2, :cond_3

    .line 145
    .line 146
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    sget-object v5, Lcom/join/mgps/rpc/h;->H:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_0
    const/4 v1, 0x1

    .line 180
    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->todayShowRealNameCount()Lorg/androidannotations/api/sharedpreferences/i;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    check-cast p2, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-lez p2, :cond_4

    .line 196
    .line 197
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    sget-object v6, Lcom/join/mgps/rpc/h;->H:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    invoke-virtual {v1, p1, p3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->todayShowRealNameCount()Lorg/androidannotations/api/sharedpreferences/i;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    sub-int/2addr p2, v2

    .line 235
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastShowRealNameTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 248
    .line 249
    .line 250
    move-result-wide p2

    .line 251
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    return v1

    .line 259
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastShowRealNameTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 264
    .line 265
    .line 266
    move-result-wide v3

    .line 267
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    invoke-virtual {p2, p3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    check-cast p2, Ljava/lang/Integer;

    .line 283
    .line 284
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    if-lez p2, :cond_6

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    sub-int/2addr p2, v2

    .line 295
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    return v1

    .line 303
    :cond_6
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 312
    .line 313
    .line 314
    return v2

    .line 315
    :cond_7
    return v1
.end method

.method public startQuarkBrowser(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "isOm",
            "url",
            "downGameName",
            "downGameIconUrl"
        }
    .end annotation

    .line 1
    const-string v0, "com.quark.browser"

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/high16 v2, 0x10000000

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    sget-object p2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->quark_first_launch_time()Lorg/androidannotations/api/sharedpreferences/k;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide p4

    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    cmp-long p2, p4, v3

    .line 48
    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    sget-object p2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->quark_first_launch_time()Lorg/androidannotations/api/sharedpreferences/k;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide p4

    .line 65
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    invoke-virtual {p2, p4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 73
    .line 74
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string p4, "android.intent.action.VIEW"

    .line 78
    .line 79
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_2
    if-eqz p2, :cond_3

    .line 101
    .line 102
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2, p1}, Lcom/join/android/app/common/utils/APKUtils;->N(Landroid/content/Context;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-static {p1}, Lcom/join/mgps/activity/QuarkLoadingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/QuarkLoadingActivity_$d;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/join/mgps/activity/QuarkLoadingActivity_$d;

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/QuarkLoadingActivity_$d;->c(Z)Lcom/join/mgps/activity/QuarkLoadingActivity_$d;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, p5}, Lcom/join/mgps/activity/QuarkLoadingActivity_$d;->a(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkLoadingActivity_$d;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/QuarkLoadingActivity_$d;->b(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkLoadingActivity_$d;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/QuarkLoadingActivity_$d;->d(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkLoadingActivity_$d;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string p2, "3875871586"

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/QuarkLoadingActivity_$d;->e(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkLoadingActivity_$d;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    const-string p3, "2057111073"

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    if-eqz p2, :cond_4

    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    const/16 p3, 0xb

    .line 163
    .line 164
    if-eq p2, p3, :cond_4

    .line 165
    .line 166
    const p2, 0x7f1203a7

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {p2}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    :cond_4
    sget-object p2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->isQuarkSilentDownload()Lorg/androidannotations/api/sharedpreferences/d;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {p2, p3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const-string p2, "action"

    .line 196
    .line 197
    const-string p3, "downloadQuark"

    .line 198
    .line 199
    invoke-virtual {p1, p2, p3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    .line 204
    .line 205
    const-string p2, "isOm"

    .line 206
    .line 207
    const/4 p3, 0x0

    .line 208
    invoke-virtual {p1, p2, p3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    .line 213
    .line 214
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    .line 221
    .line 222
    :cond_5
    :goto_0
    return-void
.end method

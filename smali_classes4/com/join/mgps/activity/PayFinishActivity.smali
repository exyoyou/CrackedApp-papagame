.class public Lcom/join/mgps/activity/PayFinishActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d07d2
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field papayResult:Lcom/join/mgps/dto/PapayResult;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/PayFinishActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/PayFinishActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 8
    .line 9
    return-void
.end method

.method checkAppPay(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "gameid",
            "needDown"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    new-instance v2, Lcom/join/mgps/dto/RequestAppDetialArgs;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestAppDetialArgs;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, ""

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setDeviceid(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/join/mgps/activity/PayFinishActivity;->context:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v4}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Lcom/join/android/app/common/utils/q;->z()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, "_"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcom/join/mgps/activity/PayFinishActivity;->context:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v4}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setVersion(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setGame_id(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setUid(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setToken(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Lcom/join/mgps/activity/PayFinishActivity$a;

    .line 90
    .line 91
    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/PayFinishActivity$a;-><init>(Lcom/join/mgps/activity/PayFinishActivity;Z)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2, p1}, Lcom/join/mgps/rpc/n;->c(Lcom/join/mgps/dto/RequestAppDetialArgs;Lcom/join/android/app/common/http/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    const-string p1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PayFinishActivity;->showTost(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const-string p1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PayFinishActivity;->showTost(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void
.end method

.method closed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayFinishActivity;->papayResult:Lcom/join/mgps/dto/PapayResult;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayResult;->getGameid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PayFinishActivity;->checkAppPay(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method downButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayFinishActivity;->papayResult:Lcom/join/mgps/dto/PapayResult;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayResult;->getGameid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PayFinishActivity;->checkAppPay(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method showTost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

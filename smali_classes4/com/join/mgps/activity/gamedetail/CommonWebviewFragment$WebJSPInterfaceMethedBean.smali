.class public Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebJSPInterfaceMethedBean"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->lambda$instalApkByPackageName$1(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->lambda$instalApk$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$instalApk$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method private synthetic lambda$instalApkByPackageName$1(Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method


# virtual methods
.method public changeAccount(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountJson"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/join/mgps/dto/AccountBean;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/dto/AccountBean;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1}, Lg8/a;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public checkAppHasInstall(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
.end method

.method public checkAppInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public checkLiveRes()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public checkNetWork()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public checkWufunPapaPlatform()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "wufun"

    return-object v0
.end method

.method public checkin(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "success"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$8;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$8;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public copyToClipboard(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lcom/join/mgps/Util/r0;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "\u590d\u5236\u6210\u529f\uff01"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public downloadApkGameByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appUrl",
            "appName",
            "appIconUrl",
            "packageName"
        }
    .end annotation

    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "fileName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Lcom/join/mgps/Util/UtilsMy;->S0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public downloadGame(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskJson"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public downloadGameByGameId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    return-void
.end method

.method public downloadGameByGameIdAndUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "gameurl"
        }
    .end annotation

    return-void
.end method

.method public downloadGameByGameIdIfNoGame(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    return-void
.end method

.method public findAllGames()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_1

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, ","

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_1
    return-object v1
.end method

.method public getAccount()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public getAllH5game()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->t()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/q;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getAndroidVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->s()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getAppversionName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/papa/sim/statistic/u;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/papa/sim/statistic/u;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getNowVersion()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->z()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPhoneModle()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->q()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getSdkIntentData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appKey"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Papa_Stat_SharedPreferences"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "papasdk_"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public getSingleGameADCount()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesHasSeeCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getStringByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saveKey"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Papa_Stat_SharedPreferences"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "papaH5_"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public getUMIDString()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->getUMIDString(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object v0

    .line 12
    :catch_0
    const-string v0, ""

    .line 13
    .line 14
    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->y()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public goAccountCenter()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$12;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$12;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public goAccountDetial()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$17;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$17;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public goBackUrl(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$7;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$7;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public goCodesBoxActivity()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$14;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$14;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public goDownloadCenter()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$15;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$15;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public goGameDetail(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gid"
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
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    const/16 v1, 0x78

    .line 16
    .line 17
    invoke-direct {p1, v1}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public goHandShark()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$13;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$13;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public goProfileMessage()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$18;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$18;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public goQQGroup(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "qqNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$21;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$21;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public goStartLive()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public inquiryGameStatus(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gid"
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public inquiryGameStatusByPackage(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    const/4 p1, -0x1

    .line 30
    return p1
.end method

.method public instalApk(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/join/mgps/activity/gamedetail/a;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/a;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->s0(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 43
    return p1
.end method

.method public instalApkByPackageName(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packagename"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/join/mgps/activity/gamedetail/b;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/b;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->s0(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method public intentQQ(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "qqNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$10;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$10;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public intentToCompletAccount()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public joinAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public jumpGameMatch(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomId"
        }
    .end annotation

    return-void
.end method

.method public liveIntentTo(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    return-void
.end method

.method public login()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public openAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$2;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$2;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public payByPapa(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "app_key",
            "payType",
            "callback_url",
            "app_name",
            "app_order_id",
            "paOpenuid",
            "uid",
            "product_id",
            "product_name",
            "pay_rmb",
            "extra1",
            "extra2"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public payByPapa(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "app_key",
            "appPrivateKey",
            "payType",
            "callback_url",
            "app_name",
            "app_order_id",
            "paOpenuid",
            "uid",
            "product_id",
            "product_name",
            "pay_rmb",
            "extra1",
            "extra2",
            "token",
            "payShowType"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public payGameFinish(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultCode"
        }
    .end annotation

    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "videoUrl",
            "imageUrl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$9;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$9;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public rechargePabiFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "app_key",
            "payType",
            "callback_url",
            "app_name",
            "app_order_id",
            "paOpenuid",
            "uid",
            "product_id",
            "product_name",
            "pay_rmb",
            "extra1",
            "extra2"
        }
    .end annotation

    return-void
.end method

.method public saveStringByKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "saveKey",
            "message"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Papa_Stat_SharedPreferences"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "papaH5_"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setFullScreenJs(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$20;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$20;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setQuitFullScreenJs(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "json"
        }
    .end annotation

    return-void
.end method

.method public setScreenLandOrPort(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "screenLandOrPort"
        }
    .end annotation

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "title"
        }
    .end annotation

    return-void
.end method

.method public shareFromJson(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$1;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public shareToOne(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "shareTo",
            "json"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$6;

    .line 8
    .line 9
    invoke-direct {v1, p0, p2, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$6;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public shareToOneImageOrText(ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "shareTo",
            "message",
            "shareType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$11;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$11;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;ILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public showBackNew(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "show"
        }
    .end annotation

    return-void
.end method

.method public showDownLiveDialog()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public showDownload(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "show"
        }
    .end annotation

    return-void
.end method

.method public showFinish(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "show"
        }
    .end annotation

    return-void
.end method

.method public showRefresh(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "show"
        }
    .end annotation

    return-void
.end method

.method public showSearch(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "show"
        }
    .end annotation

    return-void
.end method

.method public showShareButn(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "json"
        }
    .end annotation

    return-void
.end method

.method public showTitle(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "showOrHide"
        }
    .end annotation

    return-void
.end method

.method public startGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gid",
            "cheatID"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$4;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$4;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public startGameFromJson(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$19;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$19;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public startH5Game(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method

.method public startIntent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$5;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$5;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public startWechatApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "wechatAppId",
            "path"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->userName:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p3, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->path:Ljava/lang/String;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput p2, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->miniprogramType:I

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public stopDown(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public stopDownByPackageName(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_2
    :goto_1
    const/4 p1, -0x1

    .line 41
    return p1
.end method

.method public toastText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$200(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$16;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$16;-><init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public updateAccount()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public updateRealNameState()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

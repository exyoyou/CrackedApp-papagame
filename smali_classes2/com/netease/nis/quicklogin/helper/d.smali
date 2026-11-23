.class public Lcom/netease/nis/quicklogin/helper/d;
.super Lcom/netease/nis/quicklogin/helper/a;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/helper/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/d;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1, p3, p2}, Lcom/sdk/base/module/manager/SDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/d;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/d;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/d;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/netease/nis/quicklogin/helper/d;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p6}, Lcom/netease/nis/quicklogin/helper/d;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 23
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    const-string v1, "parseErr"

    const-string v7, ""

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nis/quicklogin/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 25
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    const-string v1, "apiErr"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nis/quicklogin/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/d;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/helper/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 1

    .line 21
    invoke-static {p1}, Lcom/sdk/base/api/ToolUtils;->clearCache(Landroid/content/Context;)V

    .line 22
    invoke-static {p1}, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    move-result-object p1

    sget p2, Lcom/netease/nis/quicklogin/QuickLogin;->fetchNumberTimeout:I

    new-instance v0, Lcom/netease/nis/quicklogin/helper/d$b;

    invoke-direct {v0, p0, p4, p3}, Lcom/netease/nis/quicklogin/helper/d$b;-><init>(Lcom/netease/nis/quicklogin/helper/d;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->getAuthoriseCode(ILcom/sdk/base/api/CallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    move-result-object v0

    sget v1, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchNumberTimeout:I

    new-instance v2, Lcom/netease/nis/quicklogin/helper/d$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/netease/nis/quicklogin/helper/d$a;-><init>(Lcom/netease/nis/quicklogin/helper/d;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->login(ILcom/sdk/base/api/CallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "fakeMobile"

    .line 9
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessCode"

    .line 10
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    const-class v3, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "operatorType"

    const-string v3, "cu"

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ydToken"

    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "maskNumber"

    .line 14
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "accessToken"

    .line 15
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "appKey"

    .line 16
    :try_start_1
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 17
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8054\u901a onePass [error]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

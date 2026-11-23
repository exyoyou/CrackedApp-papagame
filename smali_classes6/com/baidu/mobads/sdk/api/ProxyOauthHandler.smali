.class public Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;)Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->resultToJson(Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->callbackFail(Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private callbackFail(Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;-><init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v6}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private resultToJson(Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "sub_code"

    .line 7
    .line 8
    iget v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->resultSubCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "sub_msg"

    .line 14
    .line 15
    iget-object v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->resultSubMsg:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "is_visible_auth"

    .line 21
    .line 22
    iget-boolean v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isVisibleAuth:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "is_degrade"

    .line 28
    .line 29
    iget-boolean v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isDegrade:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "is_install_bd_app"

    .line 35
    .line 36
    iget-boolean v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isInstallBdApp:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "is_pass_new_version"

    .line 42
    .line 43
    iget-boolean v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isPassNewVersion:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "app_version"

    .line 49
    .line 50
    iget-object v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->appVersion:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "pass_sdk_version"

    .line 56
    .line 57
    iget-object v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->passSdkVersion:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "allow_launch_auth_app"

    .line 63
    .line 64
    iget-boolean v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->allowLaunchAuthApp:Z

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "login_state_before_auth"

    .line 70
    .line 71
    iget-object v2, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->loginStateBeforeAuth:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "login_state_after_auth"

    .line 77
    .line 78
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->loginStateAfterAuth:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/az;->e(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-object v0
.end method


# virtual methods
.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/az;->e(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/baidu/mobads/sdk/api/OauthCodeCallback;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Init failed."

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    const/16 p3, 0x12f

    .line 7
    .line 8
    invoke-direct {p0, p6, p3, p1, p2}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->callbackFail(Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v7, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v3, Lcom/baidu/mobads/sdk/internal/z;->d:Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "basic"

    .line 21
    .line 22
    move-object v0, v7

    .line 23
    move-object v2, p2

    .line 24
    move v5, p4

    .line 25
    move-object v6, p3

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-virtual {v7, p2}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->isDebug(Z)Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    .line 31
    .line 32
    .line 33
    new-instance p3, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$1;

    .line 34
    .line 35
    invoke-direct {p3, p0}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$1;-><init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, p3}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->setFindViewDelegate(Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v7}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->init(Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;)V

    .line 42
    .line 43
    .line 44
    new-instance p3, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;

    .line 45
    .line 46
    invoke-direct {p3, p1}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;-><init>(Landroid/app/Activity;)V

    .line 47
    .line 48
    .line 49
    iput-object p3, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;

    .line 50
    .line 51
    new-instance p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 p3, 0x3

    .line 57
    iput-char p3, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->oauthType:C

    .line 58
    .line 59
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iput-object p3, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->state:Ljava/lang/String;

    .line 68
    .line 69
    new-instance p3, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string p4, "Y29tLmJhaWR1LnNlYXJjaGJveA=="

    .line 75
    .line 76
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    iput-object p3, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->authorizedPkgs:Ljava/util/List;

    .line 80
    .line 81
    xor-int/2addr p2, p5

    .line 82
    iput-boolean p2, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->isSilent:Z

    .line 83
    .line 84
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;

    .line 85
    .line 86
    new-instance p3, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;

    .line 87
    .line 88
    invoke-direct {p3, p0, p6}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;-><init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1, p3}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->authorize(Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;

    .line 3
    .line 4
    return-void
.end method

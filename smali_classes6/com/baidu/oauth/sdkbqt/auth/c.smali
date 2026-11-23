.class Lcom/baidu/oauth/sdkbqt/auth/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private a:Lcom/baidu/oauth/sdkbqt/a/a/a;

.field private b:Lcom/baidu/passbqt/http/PassHttpClientRequest;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/baidu/oauth/sdkbqt/auth/c;Lcom/baidu/oauth/sdkbqt/a/a/a;)Lcom/baidu/oauth/sdkbqt/a/a/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Lcom/baidu/oauth/sdkbqt/a/a/a;

    return-object p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->b:Lcom/baidu/passbqt/http/PassHttpClientRequest;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/baidu/passbqt/http/PassHttpClientRequest;->a()V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Lcom/baidu/oauth/sdkbqt/a/a/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Lcom/baidu/oauth/sdkbqt/a/a/a;

    .line 22
    sput-object v0, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method a(Lcom/baidu/oauth/sdkbqt/callback/a;)V
    .locals 3

    const-string v0, "aHR0cHM6Ly9vcGVuYXBpLmJhaWR1LmNvbS9vYXV0aC8yLjAvdG9rZW4="

    .line 2
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/b;

    new-instance v2, Lcom/baidu/oauth/sdkbqt/auth/d;

    invoke-direct {v2, p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/d;-><init>(Lcom/baidu/oauth/sdkbqt/auth/c;Lcom/baidu/oauth/sdkbqt/callback/a;)V

    invoke-direct {v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/b;-><init>(Lcom/baidu/oauth/sdkbqt/auth/b$a;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;)V
    .locals 5

    const-string v0, "QrCodeCallback can not null"

    .line 5
    invoke-static {p2, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/baidu/oauth/sdkbqt/a/a/g;

    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/a/a/g;-><init>()V

    const-string v1, "response_type"

    const-string v2, "sso_qrcode"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/baidu/passbqt/http/HttpHashMap;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "client_id"

    invoke-virtual {v0, v3, v2}, Lcom/baidu/passbqt/http/HttpHashMap;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "redirect_uri"

    .line 10
    invoke-virtual {v1}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/baidu/passbqt/http/HttpHashMap;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scope"

    .line 11
    invoke-virtual {v1}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/baidu/passbqt/http/HttpHashMap;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "get_auth_code"

    const-string v2, "1"

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/baidu/passbqt/http/HttpHashMap;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sput-object p1, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Ljava/lang/String;

    .line 14
    new-instance p1, Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

    invoke-direct {p1}, Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;-><init>()V

    .line 15
    new-instance v1, Lcom/baidu/oauth/sdkbqt/a/a/a;

    invoke-direct {v1}, Lcom/baidu/oauth/sdkbqt/a/a/a;-><init>()V

    const-string v2, "L29hdXRoLzIuMC9zc29nZXRxcmNvZGU="

    invoke-static {v2}, Lcom/baidu/oauth/sdkbqt/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/oauth/sdkbqt/auth/e;

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, p2, p1}, Lcom/baidu/oauth/sdkbqt/auth/e;-><init>(Lcom/baidu/oauth/sdkbqt/auth/c;Landroid/os/Looper;Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;)V

    .line 17
    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Lcom/baidu/oauth/sdkbqt/a/a/f;)V

    return-void
.end method

.method a(Ljava/lang/String;ZLcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v0, p3

    const-string v1, "QrLoginStatusCheckCallback can not null"

    .line 23
    invoke-static {v0, v1}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channelId can not null"

    .line 24
    invoke-static {v6, v1}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v4, Lcom/baidu/oauth/sdkbqt/auth/f;

    invoke-direct {v4, v7, v0}, Lcom/baidu/oauth/sdkbqt/auth/f;-><init>(Lcom/baidu/oauth/sdkbqt/auth/c;Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;)V

    .line 26
    new-instance v11, Lcom/baidu/oauth/sdkbqt/a/a/g;

    invoke-direct {v11}, Lcom/baidu/oauth/sdkbqt/a/a/g;-><init>()V

    const-string v0, "channel_id"

    .line 27
    invoke-virtual {v11, v0, v6}, Lcom/baidu/passbqt/http/HttpHashMap;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tpl"

    const-string v1, "dev"

    .line 28
    invoke-virtual {v11, v0, v1}, Lcom/baidu/passbqt/http/HttpHashMap;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callback"

    const-string v1, "cb"

    .line 29
    invoke-virtual {v11, v0, v1}, Lcom/baidu/passbqt/http/HttpHashMap;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v5, Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-direct {v5}, Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;-><init>()V

    .line 31
    new-instance v0, Lcom/baidu/oauth/sdkbqt/a/a/a;

    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/a/a/a;-><init>()V

    iput-object v0, v7, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Lcom/baidu/oauth/sdkbqt/a/a/a;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/oauth/sdkbqt/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "L2NoYW5uZWwvdW5pY2FzdA=="

    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 33
    iget-object v8, v7, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Lcom/baidu/oauth/sdkbqt/a/a/a;

    sget-object v10, Lcom/baidu/passbqt/http/ReqPriority;->d:Lcom/baidu/passbqt/http/ReqPriority;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0x9c40

    new-instance v15, Lcom/baidu/oauth/sdkbqt/auth/g;

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/oauth/sdkbqt/auth/g;-><init>(Lcom/baidu/oauth/sdkbqt/auth/c;Landroid/os/Looper;ZLcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {v8 .. v15}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/passbqt/http/ReqPriority;Lcom/baidu/passbqt/http/HttpHashMap;Ljava/util/List;Ljava/lang/String;ILcom/baidu/oauth/sdkbqt/a/a/f;)Lcom/baidu/passbqt/http/PassHttpClientRequest;

    move-result-object v0

    iput-object v0, v7, Lcom/baidu/oauth/sdkbqt/auth/c;->b:Lcom/baidu/passbqt/http/PassHttpClientRequest;

    return-void
.end method

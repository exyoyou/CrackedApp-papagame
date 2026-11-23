.class public Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/oauth/sdkbqt/a/e;


# static fields
.field private static c:Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;


# instance fields
.field private a:Z

.field private b:Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->c:Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method private static a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->c:Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->a:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v1, "bd sdk was not initall! please use: BdSdk.init() in your app Application or your main Activity. when you want to use bd sdk function, make sure call BdSdk.init() before this function"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public static changeInfo(Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->c:Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->a:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->c:Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;

    .line 30
    .line 31
    iput-object p0, v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->b:Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v0, "please set right app info (appKey,redirect"

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    const-string v0, "bd sdk was not initall! please use: BdSdk.init() in your app Application or your main Activity. when you want to use bd sdk function, make sure call BdSdk.init() before this function"

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/baidu/oauth/sdkbqt/auth/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Lcom/baidu/oauth/sdkbqt/auth/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0, v1}, Lcom/baidu/oauth/sdkbqt/auth/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->c:Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->b:Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    .line 7
    .line 8
    return-object v0
.end method

.method public static getInstance()Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;
    .locals 1

    .line 1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->c:Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;

    .line 5
    .line 6
    return-object v0
.end method

.method public static init(Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->c:Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->a:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->c:Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;

    .line 30
    .line 31
    iput-object p0, v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->b:Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    iput-boolean p0, v0, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->a:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v0, "please set right app info (appKey,redirect"

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getQrCode(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/baidu/oauth/sdkbqt/auth/c;->a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public isQrLoginSchema(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/h;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public qrLoginStatusCheck(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/c;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1, p2}, Lcom/baidu/oauth/sdkbqt/auth/c;->a(Ljava/lang/String;ZLcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public stopLoginStatusCheck()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/c;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.class public Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/oauth/sdkbqt/a/e;


# static fields
.field public static final EXTRA_DEGRADE_EXEMPT_AUTH_PAGE:Ljava/lang/String; = "extra_degrade_exempt_auth_page"

.field public static final EXTRA_DEGRADE_H5_AUTH:Ljava/lang/String; = "extra_degrade_h5_auth"

.field public static final EXTRA_GUID_TYPE:Ljava/lang/String; = "extra_guid_type"

.field public static final EXTRA_OAUTH_RESULT_JSON:Ljava/lang/String; = "extra_oauth_result_json"

.field public static final EXTRA_OAUTH_STATE:Ljava/lang/String; = "extra_oauth_state"

.field public static final EXTRA_QR_CODE_URL:Ljava/lang/String; = "extra_qr_code_url"

.field public static final EXTRA_REDIRECT_URL:Ljava/lang/String; = "extra_redirect_url"

.field public static final EXTRA_SCOPE:Ljava/lang/String; = "extra_scope"

.field public static final EXTRA_USE_SHA1_AUTH:Ljava/lang/String; = "extra_use_sha1_auth"

.field public static final GUID_TYPE_BAIDUAPP_AND_WEB:I = 0x1

.field public static final GUID_TYPE_ONLY_BAIDUAPP:I = 0x0

.field public static final GUID_TYPE_ONLY_WEB:I = 0x2

.field private static final a:Ljava/lang/String; = "BdSsoHandler"

.field private static final b:I = 0x3e9

.field private static final c:I = 0x3ea

.field private static final d:I = 0x3eb

.field private static final e:Ljava/lang/String; = "extra_calling_app_id"

.field private static final f:Ljava/lang/String; = "extra_oauth_type"

.field private static final g:Ljava/lang/String; = "extra_oauth_sdk_version"

.field private static final h:Ljava/lang/String; = "extra_pass_sdk_version"


# instance fields
.field private i:Landroid/app/Activity;

.field private j:Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;

.field private k:Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

.field private l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "activity is null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    .line 10
    .line 11
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/baidu/oauth/sdkbqt/a/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3
    sget-object v1, Lcom/baidu/oauth/sdkbqt/a/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/oauth/sdkbqt/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/baidu/oauth/sdkbqt/a/b;->d:Ljava/util/LinkedHashMap;

    aget-object v1, v1, v2

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/baidu/oauth/sdkbqt/a/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    sget-object v1, Lcom/baidu/oauth/sdkbqt/a/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0

    .line 11
    :cond_5
    :goto_1
    sget-object p1, Lcom/baidu/oauth/sdkbqt/a/b;->d:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .line 20
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_calling_app_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_redirect_url"

    .line 22
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_scope"

    .line 23
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_oauth_state"

    .line 24
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_oauth_sdk_version"

    const-string v1, "2.0.6.10"

    .line 25
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_use_sha1_auth"

    .line 26
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->isUseSha1()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "extra_pass_sdk_version"

    const-string v0, "8.8.8"

    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    const/16 v0, 0x3e9

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "oauth_type"

    const-string v0, "sso"

    .line 30
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "bdoauth_open"

    .line 31
    invoke-static {p2, p1}, Lcom/baidu/oauth/sdkbqt/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 44
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/a;

    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;-><init>()V

    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    const-class v2, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_guid_type"

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_redirect_url"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_qr_code_url"

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    const/16 p2, 0x3ea

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 3

    .line 34
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/a;

    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;-><init>()V

    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 35
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    const-class v2, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_oauth_state"

    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_degrade_h5_auth"

    .line 37
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_degrade_exempt_auth_page"

    .line 38
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    const/16 p3, 0x3ea

    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p3, "oauth_type"

    const-string v0, "web"

    .line 41
    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const-string p3, "isDegrade"

    .line 42
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "bdoauth_open"

    .line 43
    invoke-static {p2, p1}, Lcom/baidu/oauth/sdkbqt/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;)Z
    .locals 2

    const-string v0, "please set auth listener"

    .line 12
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->j:Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;

    const-string v0, "android.permission.INTERNET"

    .line 14
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;-><init>()V

    const/16 v1, -0xce

    .line 17
    invoke-virtual {v0, v1}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 18
    invoke-interface {p1, v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application requires permission to access the Internet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public authorize(Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;-><init>()V

    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->authorize(Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;)V

    return-void
.end method

.method public authorize(Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;)V
    .locals 9

    const-string v0, "please set auth dto params"

    .line 1
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->k:Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

    .line 4
    iget-object v0, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->authorizedPkgs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authorize isSlient:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->isSilent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    const-string v4, ", final authorizedPkgs.size="

    if-lez v3, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    .line 8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "authorize first package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v3

    if-lez v8, :cond_1

    aget-object v3, v3, v5

    goto :goto_0

    :cond_1
    const-string v3, "null"

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dto.authorizedPkgs.size="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v3, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->authorizedPkgs:Ljava/util/List;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    .line 11
    invoke-static {v1, v6}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "authorize  to.authorizedPkgs.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->authorizedPkgs:Ljava/util/List;

    if-nez v7, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 14
    invoke-static {v1, v3}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_3
    new-instance v3, Lcom/baidu/oauth/sdkbqt/auth/h;

    invoke-direct {v3}, Lcom/baidu/oauth/sdkbqt/auth/h;-><init>()V

    iget-object v4, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    iget-boolean v6, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->isSilent:Z

    invoke-virtual {v3, v4, v0, v6}, Lcom/baidu/oauth/sdkbqt/auth/h;->a(Landroid/content/Context;Ljava/util/HashMap;Z)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 16
    iput-boolean v2, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->n:Z

    .line 17
    :cond_5
    iget-char v4, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->oauthType:C

    const/4 v6, 0x3

    if-eqz v4, :cond_9

    if-eq v4, v2, :cond_7

    const/4 p2, 0x2

    if-eq v4, p2, :cond_6

    if-eq v4, v6, :cond_9

    goto/16 :goto_5

    :cond_6
    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "authorize oauthType=OAUTH_TYPE_WEB"

    aput-object v0, p2, v5

    .line 18
    invoke-static {v1, p2}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->state:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    if-nez v3, :cond_8

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "authorize oauthType=OAUTH_TYPE_SSO, ERROR_CODE_NOT_INSTALL_BAIDU_APP"

    aput-object v0, p1, v5

    .line 20
    invoke-static {v1, p1}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance p1, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    invoke-direct {p1}, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;-><init>()V

    const/16 v0, -0xcf

    .line 22
    invoke-virtual {p1, v0}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 23
    invoke-interface {p2, p1}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    goto/16 :goto_5

    :cond_8
    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "authorize oauthType=OAUTH_TYPE_SSO, intent not null"

    aput-object v0, p2, v5

    .line 24
    invoke-static {v1, p2}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->state:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    if-ne v4, v6, :cond_a

    const-string p2, "OAUTH_TYPE_BOTH_V2"

    goto :goto_4

    :cond_a
    const-string p2, "OAUTH_TYPE_BOTH"

    :goto_4
    const-string v4, "authorize oauthType="

    if-nez v3, :cond_d

    .line 26
    new-instance v3, Lcom/baidu/oauth/sdkbqt/auth/h;

    invoke-direct {v3}, Lcom/baidu/oauth/sdkbqt/auth/h;-><init>()V

    iget-object v6, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    invoke-virtual {v3, v6, v0, v5}, Lcom/baidu/oauth/sdkbqt/auth/h;->a(Landroid/content/Context;Ljava/util/HashMap;Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_b

    new-array v3, v2, [Ljava/lang/Object;

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", intent is null, but intent2 not null"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v5

    invoke-static {v1, v3}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iput-boolean v2, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->n:Z

    .line 29
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->state:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    new-array v0, v2, [Ljava/lang/Object;

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", intent is null, then OAUTH_TYPE_WEB"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-static {v1, v0}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-boolean p2, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->isSilent:Z

    if-eqz p2, :cond_c

    .line 32
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->state:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v2}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/lang/String;ZZ)V

    goto :goto_5

    .line 33
    :cond_c
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->state:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    new-array v0, v2, [Ljava/lang/Object;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", intent not null"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-static {v1, v0}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->state:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public authorize(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->authorize(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;I)V

    return-void
.end method

.method public authorize(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;I)V
    .locals 11

    .line 39
    invoke-direct {p0, p2}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;-><init>()V

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "oauth_type"

    const-string v3, "qr_code"

    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "bdoauth_open"

    .line 43
    invoke-static {v4, v1}, Lcom/baidu/oauth/sdkbqt/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 44
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    move-result-object v5

    const/4 v6, 0x2

    const-string v7, "qr_web"

    if-ne p3, v6, :cond_1

    .line 45
    invoke-virtual {v5}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-virtual {p1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v4, p1}, Lcom/baidu/oauth/sdkbqt/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    .line 49
    :cond_1
    new-instance v6, Lcom/baidu/oauth/sdkbqt/auth/h;

    invoke-direct {v6}, Lcom/baidu/oauth/sdkbqt/auth/h;-><init>()V

    iget-object v8, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    sget-object v9, Lcom/baidu/oauth/sdkbqt/a/b;->e:Ljava/util/LinkedHashMap;

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/baidu/oauth/sdkbqt/auth/h;->a(Landroid/content/Context;Ljava/util/HashMap;Z)Landroid/content/Intent;

    move-result-object v6

    const/4 v8, 0x1

    const-string v9, "extra_scope"

    if-nez v6, :cond_3

    if-ne p3, v8, :cond_2

    .line 50
    invoke-virtual {v5}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-virtual {p1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v4, p1}, Lcom/baidu/oauth/sdkbqt/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_2
    const/16 p1, -0xcf

    .line 54
    invoke-virtual {v0, p1}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 55
    invoke-interface {p2, v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->getResultCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "code"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "msg"

    .line 59
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->getResultMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v5}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getScope()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "bdoauth_err"

    .line 61
    invoke-static {p2, p1}, Lcom/baidu/oauth/sdkbqt/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    .line 62
    :cond_3
    invoke-virtual {v5}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object p2

    const-string p3, "extra_calling_app_id"

    invoke-virtual {v6, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_redirect_url"

    .line 63
    invoke-virtual {v5}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v5}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getScope()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_qr_code_url"

    .line 65
    invoke-virtual {v6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_oauth_type"

    .line 66
    invoke-virtual {v6, p1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_oauth_sdk_version"

    const-string p2, "2.0.6.10"

    .line 67
    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_pass_sdk_version"

    const-string p2, "8.8.8"

    .line 68
    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->i:Landroid/app/Activity;

    const/16 p2, 0x3eb

    invoke-virtual {p1, v6, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "app_version"

    .line 10
    .line 11
    const-string v5, "finishLogin"

    .line 12
    .line 13
    const-string v6, "0"

    .line 14
    .line 15
    const-string v7, ""

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    move-object v8, v7

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v8, "extra_oauth_result_json"

    .line 22
    .line 23
    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    :goto_0
    sget-object v9, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v10, 0x1

    .line 30
    new-array v11, v10, [Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v12, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v13, "authorizeCallBack, requestCode is "

    .line 38
    .line 39
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v13, " code is "

    .line 46
    .line 47
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v13, " and result is "

    .line 54
    .line 55
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v13, ", isInstallBDApp: "

    .line 62
    .line 63
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-boolean v13, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->n:Z

    .line 67
    .line 68
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    const/4 v13, 0x0

    .line 76
    aput-object v12, v11, v13

    .line 77
    .line 78
    invoke-static {v9, v11}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/16 v11, 0x3ea

    .line 82
    .line 83
    const/16 v12, 0x3e9

    .line 84
    .line 85
    if-eq v2, v12, :cond_1

    .line 86
    .line 87
    if-eq v2, v11, :cond_1

    .line 88
    .line 89
    const/16 v14, 0x3eb

    .line 90
    .line 91
    if-eq v2, v14, :cond_1

    .line 92
    .line 93
    goto/16 :goto_10

    .line 94
    .line 95
    :cond_1
    iget-boolean v14, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->m:Z

    .line 96
    .line 97
    if-nez v14, :cond_2

    .line 98
    .line 99
    new-instance v14, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 100
    .line 101
    invoke-direct {v14}, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v14, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 105
    .line 106
    iget-object v15, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->k:Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

    .line 107
    .line 108
    iget-boolean v15, v15, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->isSilent:Z

    .line 109
    .line 110
    xor-int/2addr v15, v10

    .line 111
    iput-boolean v15, v14, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isVisibleAuth:Z

    .line 112
    .line 113
    :cond_2
    iget-object v14, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 114
    .line 115
    iget-boolean v15, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->n:Z

    .line 116
    .line 117
    iput-boolean v15, v14, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isInstallBdApp:Z

    .line 118
    .line 119
    const-string v15, "bdoauth_err"

    .line 120
    .line 121
    const-string v13, "web"

    .line 122
    .line 123
    const-string v11, "qr_code"

    .line 124
    .line 125
    const-string v10, "sso"

    .line 126
    .line 127
    const-string v12, "msg"

    .line 128
    .line 129
    move-object/from16 v16, v9

    .line 130
    .line 131
    const-string v9, "code"

    .line 132
    .line 133
    move-object/from16 v17, v15

    .line 134
    .line 135
    const-string v15, "1"

    .line 136
    .line 137
    move-object/from16 v18, v12

    .line 138
    .line 139
    const-string v12, "showLogin"

    .line 140
    .line 141
    move-object/from16 v19, v7

    .line 142
    .line 143
    const-string v7, "oauth_type"

    .line 144
    .line 145
    if-eqz v0, :cond_11

    .line 146
    .line 147
    if-nez v3, :cond_3

    .line 148
    .line 149
    goto/16 :goto_9

    .line 150
    .line 151
    :cond_3
    const/4 v3, -0x1

    .line 152
    if-eq v0, v3, :cond_4

    .line 153
    .line 154
    goto/16 :goto_10

    .line 155
    .line 156
    :cond_4
    const/16 v3, 0x3e9

    .line 157
    .line 158
    if-ne v2, v3, :cond_5

    .line 159
    .line 160
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->k:Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

    .line 161
    .line 162
    iget-char v0, v0, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->oauthType:C

    .line 163
    .line 164
    const/4 v3, 0x3

    .line 165
    if-ne v0, v3, :cond_5

    .line 166
    .line 167
    const/4 v3, 0x1

    .line 168
    iput-boolean v3, v14, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isVisibleAuth:Z

    .line 169
    .line 170
    :cond_5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 171
    .line 172
    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v3, "accessToken"

    .line 176
    .line 177
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 185
    move-object/from16 v20, v8

    .line 186
    .line 187
    const/16 v8, 0x3e9

    .line 188
    .line 189
    if-ne v2, v8, :cond_6

    .line 190
    .line 191
    :try_start_1
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->k:Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

    .line 192
    .line 193
    iget-char v8, v8, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->oauthType:C
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    .line 195
    move-object/from16 v21, v9

    .line 196
    .line 197
    const/4 v9, 0x3

    .line 198
    if-ne v8, v9, :cond_7

    .line 199
    .line 200
    :try_start_2
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 201
    .line 202
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    iput-boolean v9, v8, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isPassNewVersion:Z

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    move-object/from16 v21, v9

    .line 211
    .line 212
    goto/16 :goto_4

    .line 213
    .line 214
    :cond_6
    move-object/from16 v21, v9

    .line 215
    .line 216
    :cond_7
    :goto_1
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    if-eqz v8, :cond_8

    .line 221
    .line 222
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 223
    .line 224
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    iput-boolean v9, v8, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isVisibleAuth:Z

    .line 233
    .line 234
    :cond_8
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    if-eqz v8, :cond_9

    .line 243
    .line 244
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 245
    .line 246
    iput-object v6, v8, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->loginStateBeforeAuth:Ljava/lang/String;

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_9
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 250
    .line 251
    iput-object v15, v8, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->loginStateBeforeAuth:Ljava/lang/String;

    .line 252
    .line 253
    :goto_2
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 254
    .line 255
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    iput-object v9, v8, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->loginStateAfterAuth:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 262
    .line 263
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    iput-object v9, v8, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->appVersion:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 270
    .line 271
    const-string v9, "pass_sdk_version"

    .line 272
    .line 273
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iput-object v0, v8, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->passSdkVersion:Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_c

    .line 284
    .line 285
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_c

    .line 290
    .line 291
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 292
    .line 293
    const/16 v3, -0xd0

    .line 294
    .line 295
    invoke-virtual {v0, v3}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 296
    .line 297
    .line 298
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->j:Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;

    .line 299
    .line 300
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 301
    .line 302
    invoke-interface {v0, v3}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 303
    .line 304
    .line 305
    new-instance v0, Ljava/util/HashMap;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    .line 309
    .line 310
    const/16 v3, 0x3e9

    .line 311
    .line 312
    if-ne v2, v3, :cond_a

    .line 313
    .line 314
    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_a
    const/16 v3, 0x3ea

    .line 319
    .line 320
    if-ne v2, v3, :cond_b

    .line 321
    .line 322
    invoke-virtual {v0, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_b
    invoke-virtual {v0, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 335
    .line 336
    invoke-virtual {v8}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->getResultCode()I

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    move-object/from16 v8, v19

    .line 344
    .line 345
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 352
    move-object/from16 v9, v21

    .line 353
    .line 354
    :try_start_3
    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 358
    .line 359
    invoke-virtual {v3}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->getResultMsg()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    move-object/from16 v14, v18

    .line 364
    .line 365
    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-object/from16 v3, v17

    .line 369
    .line 370
    invoke-static {v3, v0}, Lcom/baidu/oauth/sdkbqt/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 371
    .line 372
    .line 373
    const/4 v3, 0x1

    .line 374
    new-array v0, v3, [Ljava/lang/Object;

    .line 375
    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string v8, "authorizeCallBack, Activity.RESULT_OK, onFailure lowPass, result "

    .line 382
    .line 383
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v8, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 387
    .line 388
    invoke-virtual {v8}, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    const/4 v8, 0x0

    .line 400
    aput-object v3, v0, v8

    .line 401
    .line 402
    move-object/from16 v3, v16

    .line 403
    .line 404
    invoke-static {v3, v0}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 405
    .line 406
    .line 407
    goto/16 :goto_10

    .line 408
    .line 409
    :catch_1
    move-exception v0

    .line 410
    goto :goto_4

    .line 411
    :cond_c
    move-object/from16 v9, v21

    .line 412
    .line 413
    goto :goto_5

    .line 414
    :catch_2
    move-exception v0

    .line 415
    move-object/from16 v9, v21

    .line 416
    .line 417
    goto :goto_4

    .line 418
    :catch_3
    move-exception v0

    .line 419
    move-object/from16 v20, v8

    .line 420
    .line 421
    :goto_4
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/Throwable;)V

    .line 422
    .line 423
    .line 424
    :goto_5
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    .line 425
    .line 426
    move-object/from16 v3, v20

    .line 427
    .line 428
    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 432
    .line 433
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    invoke-virtual {v3, v8}, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;->setCode(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 441
    .line 442
    const-string v8, "state"

    .line 443
    .line 444
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v8

    .line 448
    invoke-virtual {v3, v8}, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;->setState(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    if-eqz v3, :cond_d

    .line 456
    .line 457
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 458
    .line 459
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v8

    .line 467
    iput-boolean v8, v3, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isVisibleAuth:Z

    .line 468
    .line 469
    :cond_d
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 470
    .line 471
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v8

    .line 479
    if-eqz v8, :cond_e

    .line 480
    .line 481
    goto :goto_6

    .line 482
    :cond_e
    move-object v6, v15

    .line 483
    :goto_6
    iput-object v6, v3, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->loginStateBeforeAuth:Ljava/lang/String;

    .line 484
    .line 485
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 486
    .line 487
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    iput-object v5, v3, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->loginStateAfterAuth:Ljava/lang/String;

    .line 492
    .line 493
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 494
    .line 495
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    iput-object v4, v3, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->appVersion:Ljava/lang/String;

    .line 500
    .line 501
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 502
    .line 503
    const-string v4, "pass_sdk_version"

    .line 504
    .line 505
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    iput-object v0, v3, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->passSdkVersion:Ljava/lang/String;

    .line 510
    .line 511
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 512
    .line 513
    const/4 v3, 0x0

    .line 514
    invoke-virtual {v0, v3}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 515
    .line 516
    .line 517
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->j:Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;

    .line 518
    .line 519
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 520
    .line 521
    invoke-interface {v0, v3}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 522
    .line 523
    .line 524
    goto :goto_7

    .line 525
    :catch_4
    move-exception v0

    .line 526
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/Throwable;)V

    .line 527
    .line 528
    .line 529
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 530
    .line 531
    const/16 v3, -0xc9

    .line 532
    .line 533
    invoke-virtual {v0, v3}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 534
    .line 535
    .line 536
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->j:Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;

    .line 537
    .line 538
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 539
    .line 540
    invoke-interface {v0, v3}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 541
    .line 542
    .line 543
    :goto_7
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a:Ljava/lang/String;

    .line 544
    .line 545
    const/4 v3, 0x1

    .line 546
    new-array v3, v3, [Ljava/lang/Object;

    .line 547
    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    const-string v5, "authorizeCallBack, Activity.RESULT_OK, code = "

    .line 554
    .line 555
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget-object v5, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 559
    .line 560
    invoke-virtual {v5}, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    const/4 v5, 0x0

    .line 572
    aput-object v4, v3, v5

    .line 573
    .line 574
    invoke-static {v0, v3}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    new-instance v0, Ljava/util/HashMap;

    .line 578
    .line 579
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 580
    .line 581
    .line 582
    const/16 v3, 0x3e9

    .line 583
    .line 584
    if-ne v2, v3, :cond_f

    .line 585
    .line 586
    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    goto :goto_8

    .line 590
    :cond_f
    const/16 v3, 0x3ea

    .line 591
    .line 592
    if-ne v2, v3, :cond_10

    .line 593
    .line 594
    invoke-virtual {v0, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    goto :goto_8

    .line 598
    :cond_10
    invoke-virtual {v0, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    :goto_8
    const-string v2, "bdoauth_suc"

    .line 602
    .line 603
    invoke-static {v2, v0}, Lcom/baidu/oauth/sdkbqt/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 604
    .line 605
    .line 606
    goto/16 :goto_10

    .line 607
    .line 608
    :cond_11
    :goto_9
    move-object v4, v8

    .line 609
    move-object/from16 v0, v16

    .line 610
    .line 611
    move-object/from16 v3, v17

    .line 612
    .line 613
    move-object/from16 v14, v18

    .line 614
    .line 615
    move-object/from16 v8, v19

    .line 616
    .line 617
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    const-string v6, "\u7528\u6237\u62d2\u7edd\u6253\u5f00APP"

    .line 622
    .line 623
    move-object/from16 v17, v3

    .line 624
    .line 625
    const-string v3, "isInstallBDApp: "

    .line 626
    .line 627
    move-object/from16 v16, v11

    .line 628
    .line 629
    const/16 v11, -0xd1

    .line 630
    .line 631
    if-eqz v5, :cond_12

    .line 632
    .line 633
    const/4 v5, 0x1

    .line 634
    new-array v2, v5, [Ljava/lang/Object;

    .line 635
    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    iget-boolean v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->n:Z

    .line 645
    .line 646
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v3, ", ERROR_CODE_USER_REJECT_OPEN_APP"

    .line 650
    .line 651
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    const/4 v4, 0x0

    .line 659
    aput-object v3, v2, v4

    .line 660
    .line 661
    invoke-static {v0, v2}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 665
    .line 666
    iput v11, v0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->resultSubCode:I

    .line 667
    .line 668
    iput-object v6, v0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->resultSubMsg:Ljava/lang/String;

    .line 669
    .line 670
    iput-boolean v4, v0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->allowLaunchAuthApp:Z

    .line 671
    .line 672
    invoke-virtual {v0, v8}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultMsg(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 676
    .line 677
    const/4 v2, 0x1

    .line 678
    iput-boolean v2, v0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isDegrade:Z

    .line 679
    .line 680
    iput-boolean v2, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->m:Z

    .line 681
    .line 682
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->k:Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

    .line 683
    .line 684
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->state:Ljava/lang/String;

    .line 685
    .line 686
    invoke-direct {v1, v0, v2}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/lang/String;Z)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_10

    .line 690
    .line 691
    :cond_12
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    .line 692
    .line 693
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    iget-object v5, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 697
    .line 698
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 699
    .line 700
    .line 701
    move-result v11

    .line 702
    invoke-virtual {v5, v11}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 706
    .line 707
    .line 708
    move-result v5

    .line 709
    if-eqz v5, :cond_13

    .line 710
    .line 711
    iget-object v5, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 712
    .line 713
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {v5, v0}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultMsg(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 718
    .line 719
    .line 720
    :cond_13
    move-object/from16 v18, v6

    .line 721
    .line 722
    goto :goto_b

    .line 723
    :catch_5
    move-exception v0

    .line 724
    sget-object v5, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a:Ljava/lang/String;

    .line 725
    .line 726
    move-object/from16 v18, v6

    .line 727
    .line 728
    const/4 v11, 0x1

    .line 729
    new-array v6, v11, [Ljava/lang/Object;

    .line 730
    .line 731
    new-instance v11, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    iget-boolean v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->n:Z

    .line 740
    .line 741
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    const-string v3, ", RESULT_CANCELED || json == null, "

    .line 745
    .line 746
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    const/4 v3, 0x0

    .line 757
    aput-object v0, v6, v3

    .line 758
    .line 759
    invoke-static {v5, v6}, Lcom/baidu/oauth/sdkbqt/a/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    .line 761
    .line 762
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 763
    .line 764
    iget-boolean v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->n:Z

    .line 765
    .line 766
    if-nez v3, :cond_14

    .line 767
    .line 768
    const/16 v3, -0xcf

    .line 769
    .line 770
    goto :goto_a

    .line 771
    :cond_14
    const/16 v3, -0xd1

    .line 772
    .line 773
    :goto_a
    invoke-virtual {v0, v3}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 774
    .line 775
    .line 776
    :goto_b
    iget-boolean v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->m:Z

    .line 777
    .line 778
    if-nez v0, :cond_19

    .line 779
    .line 780
    const/16 v3, 0x3e9

    .line 781
    .line 782
    if-ne v2, v3, :cond_19

    .line 783
    .line 784
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->k:Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

    .line 785
    .line 786
    iget-char v0, v0, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->oauthType:C

    .line 787
    .line 788
    const/4 v3, 0x3

    .line 789
    if-ne v0, v3, :cond_19

    .line 790
    .line 791
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 792
    .line 793
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->getResultCode()I

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    const/16 v3, -0xcd

    .line 798
    .line 799
    if-eq v0, v3, :cond_19

    .line 800
    .line 801
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    .line 802
    .line 803
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    iget-object v2, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 807
    .line 808
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 809
    .line 810
    .line 811
    move-result v3

    .line 812
    iput v3, v2, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->resultSubCode:I

    .line 813
    .line 814
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    if-eqz v2, :cond_15

    .line 819
    .line 820
    iget-object v2, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 821
    .line 822
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    iput-object v3, v2, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->resultSubMsg:Ljava/lang/String;

    .line 827
    .line 828
    :cond_15
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 829
    .line 830
    .line 831
    move-result v2

    .line 832
    if-eqz v2, :cond_16

    .line 833
    .line 834
    iget-object v2, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 835
    .line 836
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    iput-boolean v0, v2, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isVisibleAuth:Z

    .line 845
    .line 846
    :cond_16
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 847
    .line 848
    invoke-virtual {v0, v8}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultMsg(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 849
    .line 850
    .line 851
    goto :goto_e

    .line 852
    :catch_6
    move-exception v0

    .line 853
    sget-object v2, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a:Ljava/lang/String;

    .line 854
    .line 855
    const/4 v3, 0x1

    .line 856
    new-array v4, v3, [Ljava/lang/Object;

    .line 857
    .line 858
    new-instance v3, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    .line 862
    .line 863
    const-string v5, "first InProgress,"

    .line 864
    .line 865
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    const/4 v3, 0x0

    .line 876
    aput-object v0, v4, v3

    .line 877
    .line 878
    invoke-static {v2, v4}, Lcom/baidu/oauth/sdkbqt/a/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 879
    .line 880
    .line 881
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 882
    .line 883
    iget-boolean v2, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->n:Z

    .line 884
    .line 885
    if-nez v2, :cond_17

    .line 886
    .line 887
    const/16 v11, -0xcf

    .line 888
    .line 889
    goto :goto_c

    .line 890
    :cond_17
    const/16 v11, -0xd1

    .line 891
    .line 892
    :goto_c
    iput v11, v0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->resultSubCode:I

    .line 893
    .line 894
    if-nez v2, :cond_18

    .line 895
    .line 896
    const-string v6, "\u5f53\u524d\u8bbe\u5907\u672a\u5b89\u88c5\u767e\u5ea6APP"

    .line 897
    .line 898
    goto :goto_d

    .line 899
    :cond_18
    move-object/from16 v6, v18

    .line 900
    .line 901
    :goto_d
    iput-object v6, v0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->resultSubMsg:Ljava/lang/String;

    .line 902
    .line 903
    :goto_e
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 904
    .line 905
    const/4 v2, 0x1

    .line 906
    iput-boolean v2, v0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isDegrade:Z

    .line 907
    .line 908
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->k:Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;

    .line 909
    .line 910
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->state:Ljava/lang/String;

    .line 911
    .line 912
    invoke-direct {v1, v0, v2}, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a(Ljava/lang/String;Z)V

    .line 913
    .line 914
    .line 915
    iput-boolean v2, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->m:Z

    .line 916
    .line 917
    goto :goto_10

    .line 918
    :cond_19
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->j:Lcom/baidu/oauth/sdkbqt/callback/BdOauthCallback;

    .line 919
    .line 920
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 921
    .line 922
    invoke-interface {v0, v3}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 923
    .line 924
    .line 925
    const/4 v3, 0x0

    .line 926
    iput-boolean v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->m:Z

    .line 927
    .line 928
    new-instance v0, Ljava/util/HashMap;

    .line 929
    .line 930
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 931
    .line 932
    .line 933
    const/16 v3, 0x3e9

    .line 934
    .line 935
    if-ne v2, v3, :cond_1a

    .line 936
    .line 937
    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    goto :goto_f

    .line 941
    :cond_1a
    const/16 v3, 0x3ea

    .line 942
    .line 943
    if-ne v2, v3, :cond_1b

    .line 944
    .line 945
    invoke-virtual {v0, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    goto :goto_f

    .line 949
    :cond_1b
    move-object/from16 v2, v16

    .line 950
    .line 951
    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 955
    .line 956
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    .line 958
    .line 959
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 960
    .line 961
    invoke-virtual {v3}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->getResultCode()I

    .line 962
    .line 963
    .line 964
    move-result v3

    .line 965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    iget-object v2, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 979
    .line 980
    invoke-virtual {v2}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->getResultMsg()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-object/from16 v2, v17

    .line 988
    .line 989
    invoke-static {v2, v0}, Lcom/baidu/oauth/sdkbqt/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 990
    .line 991
    .line 992
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->a:Ljava/lang/String;

    .line 993
    .line 994
    const/4 v2, 0x1

    .line 995
    new-array v2, v2, [Ljava/lang/Object;

    .line 996
    .line 997
    new-instance v3, Ljava/lang/StringBuilder;

    .line 998
    .line 999
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    .line 1001
    .line 1002
    const-string v4, "authorizeCallBack, Activity.RESULT_CANCELED, onFailure, result "

    .line 1003
    .line 1004
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    iget-object v4, v1, Lcom/baidu/oauth/sdkbqt/auth/BdSsoHandler;->l:Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;

    .line 1008
    .line 1009
    invoke-virtual {v4}, Lcom/baidu/oauth/sdkbqt/result/BdOauthResult;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v4

    .line 1013
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v3

    .line 1020
    const/4 v4, 0x0

    .line 1021
    aput-object v3, v2, v4

    .line 1022
    .line 1023
    invoke-static {v0, v2}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1024
    .line 1025
    .line 1026
    :goto_10
    return-void
.end method

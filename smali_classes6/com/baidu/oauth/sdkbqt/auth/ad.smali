.class Lcom/baidu/oauth/sdkbqt/auth/ad;
.super Lcom/baidu/oauth/sdkbqt/callback/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/auth/ac;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/ac;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/ad;->a:Lcom/baidu/oauth/sdkbqt/auth/ac;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/baidu/oauth/sdkbqt/callback/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/oauth/sdkbqt/result/a;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/i;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v2, "FE need get a new sso_hash"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    const-string v1, "errno"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string v1, "sso_hash"

    .line 27
    .line 28
    iget-object v2, p1, Lcom/baidu/oauth/sdkbqt/result/a;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/ad;->a:Lcom/baidu/oauth/sdkbqt/auth/ac;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/ac;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->l(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/webkit/JsPromptResult;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/result/a;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/oauth/sdkbqt/result/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/ad;->a(Lcom/baidu/oauth/sdkbqt/result/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

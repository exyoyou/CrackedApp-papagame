.class Lcom/baidu/oauth/sdkbqt/auth/e;
.super Lcom/baidu/oauth/sdkbqt/a/a/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;

.field final synthetic b:Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

.field final synthetic c:Lcom/baidu/oauth/sdkbqt/auth/c;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/c;Landroid/os/Looper;Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->c:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->a:Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->b:Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/baidu/oauth/sdkbqt/a/a/f;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->a:Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;

    invoke-interface {v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onStart()V

    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 1

    .line 4
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->b:Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

    const-string v0, "channelid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;->channelId:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->b:Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;->url:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->a:Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;

    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->b:Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

    invoke-interface {p1, p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/Throwable;)V

    .line 9
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->b:Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

    const/16 p2, -0xc9

    invoke-virtual {p1, p2}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 10
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->a:Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;

    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->b:Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

    invoke-interface {p1, p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->b:Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

    invoke-virtual {p1, p2}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 3
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->a:Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;

    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->b:Lcom/baidu/oauth/sdkbqt/result/QrCodeResult;

    invoke-interface {p1, p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/e;->a:Lcom/baidu/oauth/sdkbqt/callback/QrCodeCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFinish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

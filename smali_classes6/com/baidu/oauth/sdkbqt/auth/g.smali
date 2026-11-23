.class Lcom/baidu/oauth/sdkbqt/auth/g;
.super Lcom/baidu/oauth/sdkbqt/a/a/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

.field final synthetic c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/oauth/sdkbqt/auth/c;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/c;Landroid/os/Looper;ZLcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->e:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->a:Z

    .line 4
    .line 5
    iput-object p4, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/baidu/oauth/sdkbqt/a/a/f;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    invoke-interface {v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onStart()V

    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 5

    const/16 p1, -0xc9

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "errno"

    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v2, "errmsg"

    .line 9
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-virtual {v3, p2}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 11
    iget-object v3, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-virtual {v3, v2}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultMsg(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_3

    .line 12
    new-instance p2, Lorg/json/JSONObject;

    const-string v4, "channel_v"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    .line 13
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "code"

    .line 14
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-virtual {v0, p2}, Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;->setCode(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;->setState(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-interface {p2, v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 18
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-virtual {p2, v0}, Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;->onScanQrCodeDone(Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;)V

    .line 19
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->e:Lcom/baidu/oauth/sdkbqt/auth/c;

    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    invoke-virtual {p2, v0, v2, v1}, Lcom/baidu/oauth/sdkbqt/auth/c;->a(Ljava/lang/String;ZLcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 20
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    const/16 v0, -0xd0

    invoke-virtual {p2, v0}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 21
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-interface {p2, v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 22
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    invoke-interface {p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFinish()V

    goto :goto_0

    .line 23
    :cond_2
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-virtual {p2, p1}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 24
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-interface {p2, v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 25
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    invoke-interface {p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFinish()V

    goto :goto_0

    :cond_3
    if-ne p2, v3, :cond_4

    .line 26
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->e:Lcom/baidu/oauth/sdkbqt/auth/c;

    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    invoke-virtual {p2, v0, v2, v1}, Lcom/baidu/oauth/sdkbqt/auth/c;->a(Ljava/lang/String;ZLcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;)V

    goto :goto_0

    .line 27
    :cond_4
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-interface {p2, v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 28
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    invoke-interface {p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 29
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-virtual {v0, p1}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 30
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-interface {p1, v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 31
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    invoke-interface {p1}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFinish()V

    .line 32
    invoke-static {p2}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-virtual {p1, p2}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->c:Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    invoke-interface {p1, p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 5
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    invoke-interface {p1}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFinish()V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

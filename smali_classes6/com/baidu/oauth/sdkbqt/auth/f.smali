.class Lcom/baidu/oauth/sdkbqt/auth/f;
.super Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

.field final synthetic b:Lcom/baidu/oauth/sdkbqt/auth/c;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/c;Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/f;->b:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/f;->a:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/f;->a:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/f;->b:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/auth/c;->a(Lcom/baidu/oauth/sdkbqt/auth/c;Lcom/baidu/oauth/sdkbqt/a/a/a;)Lcom/baidu/oauth/sdkbqt/a/a/a;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/f;->a:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/f;->b:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/auth/c;->a(Lcom/baidu/oauth/sdkbqt/auth/c;Lcom/baidu/oauth/sdkbqt/a/a/a;)Lcom/baidu/oauth/sdkbqt/a/a/a;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/f;->b(Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/f;->a:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFinish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onScanQrCodeDone(Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/f;->a:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;->onScanQrCodeDone(Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/f;->a:Lcom/baidu/oauth/sdkbqt/callback/QrLoginStatusCheckCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onStart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/f;->a(Lcom/baidu/oauth/sdkbqt/result/QrLoginStatusCheckResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

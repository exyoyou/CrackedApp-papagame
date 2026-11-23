.class Lcom/baidu/oauth/sdkbqt/auth/l;
.super Lcom/baidu/oauth/sdkbqt/callback/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/auth/k;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/l;->a:Lcom/baidu/oauth/sdkbqt/auth/k;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/l;->a:Lcom/baidu/oauth/sdkbqt/auth/k;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/k;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/result/a;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/l;->a:Lcom/baidu/oauth/sdkbqt/auth/k;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/k;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/oauth/sdkbqt/result/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/l;->a(Lcom/baidu/oauth/sdkbqt/result/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

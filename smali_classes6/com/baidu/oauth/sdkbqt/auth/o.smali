.class Lcom/baidu/oauth/sdkbqt/auth/o;
.super Lcom/baidu/oauth/sdkbqt/callback/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/o;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

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
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/o;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/result/a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/oauth/sdkbqt/result/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/o;->a(Lcom/baidu/oauth/sdkbqt/result/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

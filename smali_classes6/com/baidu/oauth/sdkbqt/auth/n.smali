.class Lcom/baidu/oauth/sdkbqt/auth/n;
.super Lcom/baidu/oauth/sdkbqt/callback/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/n;->c:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/n;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/baidu/oauth/sdkbqt/auth/n;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/baidu/oauth/sdkbqt/callback/a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/oauth/sdkbqt/result/a;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/i;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, "generate sso_hash success, which is "

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v4, p1, Lcom/baidu/oauth/sdkbqt/result/a;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    aput-object v3, v2, v4

    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/n;->a:Ljava/util/Map;

    .line 34
    .line 35
    const-string v2, "oauth_sso_hash"

    .line 36
    .line 37
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/result/a;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/n;->c:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/baidu/oauth/sdkbqt/auth/n;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/baidu/oauth/sdkbqt/auth/n;->a:Ljava/util/Map;

    .line 55
    .line 56
    invoke-static {v2, v1}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Ljava/util/Map;Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/oauth/sdkbqt/result/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/n;->a(Lcom/baidu/oauth/sdkbqt/result/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

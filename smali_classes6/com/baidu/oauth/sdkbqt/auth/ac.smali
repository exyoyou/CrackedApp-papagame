.class Lcom/baidu/oauth/sdkbqt/auth/ac;
.super Lcom/baidu/oauth/sdkbqt/auth/i$a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/ac;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i$a;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/oauth/sdkbqt/auth/i$e;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/baidu/oauth/sdkbqt/auth/c;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/ad;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/baidu/oauth/sdkbqt/auth/ad;-><init>(Lcom/baidu/oauth/sdkbqt/auth/ac;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/baidu/oauth/sdkbqt/auth/c;->a(Lcom/baidu/oauth/sdkbqt/callback/a;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

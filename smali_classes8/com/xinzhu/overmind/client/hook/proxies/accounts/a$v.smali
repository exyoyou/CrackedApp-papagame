.class Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getAuthToken"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    aget-object p1, p3, p1

    .line 3
    .line 4
    move-object v1, p1

    .line 5
    check-cast v1, Landroid/accounts/IAccountManagerResponse;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    aget-object p1, p3, p1

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    check-cast v2, Landroid/accounts/Account;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    aget-object p1, p3, p1

    .line 15
    .line 16
    move-object v3, p1

    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    aget-object p1, p3, p1

    .line 21
    .line 22
    check-cast p1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 p1, 0x4

    .line 29
    aget-object p1, p3, p1

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 p1, 0x5

    .line 38
    aget-object p1, p3, p1

    .line 39
    .line 40
    move-object v6, p1

    .line 41
    check-cast v6, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->d()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVUid()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual/range {v0 .. v7}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    return-object p1
.end method

.class Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
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
    const-string v0, "addAccountExplicitlyWithVisibility"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    check-cast p1, Landroid/accounts/Account;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    aget-object p2, p3, p2

    .line 8
    .line 9
    check-cast p2, Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    aget-object v0, p3, v0

    .line 13
    .line 14
    check-cast v0, Landroid/os/Bundle;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    aget-object p3, p3, v1

    .line 18
    .line 19
    check-cast p3, Ljava/util/Map;

    .line 20
    .line 21
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->d()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

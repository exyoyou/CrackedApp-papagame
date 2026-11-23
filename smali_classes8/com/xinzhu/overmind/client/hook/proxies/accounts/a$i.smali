.class Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
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
    const-string v0, "confirmCredentialsAsUser"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    check-cast v3, Landroid/os/Bundle;

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
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->d()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

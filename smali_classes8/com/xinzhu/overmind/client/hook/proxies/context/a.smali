.class public Lcom/xinzhu/overmind/client/hook/proxies/context/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/context/a$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/context/a$c;,
        Lcom/xinzhu/overmind/client/hook/proxies/context/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static synthetic d(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/client/hook/proxies/context/a;->e(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static e(Landroid/net/Uri;)Z
    .locals 3

    .line 1
    invoke-static {}, Lma/g;->d()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->E()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, p0, v2, v1}, Lma/g;->A(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-boolean p0, p0, Landroid/content/pm/ProviderInfo;->enabled:Z

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    :cond_0
    return v2
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lt8/j$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    const-string p1, "content"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onBindMethod()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/a$b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/a$b;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/a$c;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/a$c;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/a$a;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/a$a;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

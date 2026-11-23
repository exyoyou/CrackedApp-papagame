.class public Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/client/hook/proxies/context/providers/d;


# static fields
.field public static final c:Ljava/lang/String; = "ContentProviderStub"


# instance fields
.field private b:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->b:Landroid/os/IInterface;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->injectHook()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/IInterface;

    .line 11
    .line 12
    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->b:Landroid/os/IInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "asBinder"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->b:Landroid/os/IInterface;

    .line 14
    .line 15
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    if-eqz p3, :cond_2

    .line 21
    .line 22
    array-length p1, p3

    .line 23
    if-lez p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    aget-object v0, p3, p1

    .line 27
    .line 28
    instance-of v1, v0, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    aput-object v0, p3, p1

    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->a()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p3, p1}, Lsa/r;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-ltz p1, :cond_2

    .line 55
    .line 56
    aget-object v0, p3, p1

    .line 57
    .line 58
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/proxies/appos/a;->a(Ljava/lang/Object;)Landroid/content/AttributionSource;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fixAttributionSource(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    aput-object v0, p3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->b:Landroid/os/IInterface;

    .line 73
    .line 74
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    return-object p1

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    throw p1
.end method

.method protected onBindMethod()V
    .locals 0

    return-void
.end method

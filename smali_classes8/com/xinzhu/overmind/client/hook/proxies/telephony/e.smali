.class public Lcom/xinzhu/overmind/client/hook/proxies/telephony/e;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "telephony.registry"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "telephony.registry"

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
    const-string v0, "telephony.registry"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lx9/f$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p1, "telephony.registry"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lsa/r;->d([Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/b;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected onBindMethod()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 5
    .line 6
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 7
    .line 8
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 9
    .line 10
    const-string v3, "listen"

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 19
    .line 20
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 21
    .line 22
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 23
    .line 24
    const-string v3, "listenWithEventList"

    .line 25
    .line 26
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 33
    .line 34
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 35
    .line 36
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 37
    .line 38
    const-string v3, "addOnSubscriptionsChangedListener"

    .line 39
    .line 40
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 47
    .line 48
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 49
    .line 50
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 51
    .line 52
    const-string v3, "addOnOpportunisticSubscriptionsChangedListener"

    .line 53
    .line 54
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 61
    .line 62
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 63
    .line 64
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 65
    .line 66
    const-string v3, "removeOnSubscriptionsChangedListener"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 75
    .line 76
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 77
    .line 78
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 79
    .line 80
    const-string v3, "listenForSubscriber"

    .line 81
    .line 82
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

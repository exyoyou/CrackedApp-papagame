.class public Lcom/xinzhu/overmind/client/hook/proxies/os/g;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "power"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "power"

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
    const-string v0, "power"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/k$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p1, "power"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onBindMethod()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/g$a;

    .line 5
    .line 6
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 7
    .line 8
    const-string v2, "acquireWakeLock"

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    invoke-direct {v0, p0, v2, v3, v1}, Lcom/xinzhu/overmind/client/hook/proxies/os/g$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/os/g;Ljava/lang/String;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/g$b;

    .line 18
    .line 19
    const-string v1, "acquireWakeLockWithUid"

    .line 20
    .line 21
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 22
    .line 23
    invoke-direct {v0, p0, v1, v3, v2}, Lcom/xinzhu/overmind/client/hook/proxies/os/g$b;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/os/g;Ljava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "updateWakeLockWorkSource"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 45
    .line 46
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 47
    .line 48
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 49
    .line 50
    const-string v3, "wakeUp"

    .line 51
    .line 52
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

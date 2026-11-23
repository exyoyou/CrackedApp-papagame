.class public Lcom/xinzhu/overmind/client/hook/proxies/vm/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/vm/a$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "WindowManagerStub"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "window"

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
    const-string v0, "window"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lm9/c$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p1, "window"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lm9/d;->f(Landroid/os/IInterface;)Z

    .line 8
    .line 9
    .line 10
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
    invoke-static {p3}, Lsa/r;->c([Ljava/lang/Object;)V

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
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/vm/a$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/vm/a$a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 13
    .line 14
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 15
    .line 16
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 17
    .line 18
    const-string v3, "setForcedDisplayDensityForUser"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 27
    .line 28
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 29
    .line 30
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 31
    .line 32
    const-string v3, "clearForcedDisplayDensityForUser"

    .line 33
    .line 34
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 41
    .line 42
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 43
    .line 44
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 45
    .line 46
    const-string v3, "disableKeyguard"

    .line 47
    .line 48
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 55
    .line 56
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 57
    .line 58
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 59
    .line 60
    const-string v3, "reenableKeyguard"

    .line 61
    .line 62
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 69
    .line 70
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 71
    .line 72
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 73
    .line 74
    const-string v3, "isKeyguardSecure"

    .line 75
    .line 76
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 83
    .line 84
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 85
    .line 86
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 87
    .line 88
    const-string v3, "refreshScreenCaptureDisabled"

    .line 89
    .line 90
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

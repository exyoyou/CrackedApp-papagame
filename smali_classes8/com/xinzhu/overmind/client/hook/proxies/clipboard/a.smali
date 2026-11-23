.class public Lcom/xinzhu/overmind/client/hook/proxies/clipboard/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "clipboard"

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

.method private static d()Landroid/os/IInterface;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clipboard"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/ClipboardManager;

    .line 12
    .line 13
    new-instance v1, Lt8/d;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lt8/d;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lt8/d;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lt8/d;->c()Landroid/os/IInterface;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    invoke-static {}, Lt8/d;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lt8/d;->d()Landroid/os/IInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clipboard"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/ClipboardManager;

    .line 12
    .line 13
    new-instance v2, Lt8/d;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lt8/d;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lt8/d;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Lt8/d;->c()Landroid/os/IInterface;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eq v0, v2, :cond_0

    .line 34
    .line 35
    return v3

    .line 36
    :cond_0
    invoke-static {v1}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eq v0, p0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x0

    .line 44
    :goto_0
    return v3
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "clipboard"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lt8/i$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "clipboard"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/content/ClipboardManager;

    .line 12
    .line 13
    new-instance v0, Lt8/d;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lt8/d;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lt8/d;->a()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/os/IInterface;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lt8/d;->e(Landroid/os/IInterface;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lt8/d;->b()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/os/IInterface;

    .line 45
    .line 46
    invoke-static {p1}, Lt8/d;->f(Landroid/os/IInterface;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
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
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/b;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
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
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 9
    .line 10
    const-string v3, "addPrimaryClipChangedListener"

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
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 23
    .line 24
    const-string v3, "getPrimaryClipDescription"

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
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 37
    .line 38
    const-string v3, "removePrimaryClipChangedListener"

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
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 51
    .line 52
    const-string v3, "hasClipboardText"

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
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 65
    .line 66
    const-string v3, "getPrimaryClip"

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
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 79
    .line 80
    const-string v3, "setPrimaryClip"

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
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 89
    .line 90
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 91
    .line 92
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 93
    .line 94
    const-string v3, "clearPrimaryClip"

    .line 95
    .line 96
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 103
    .line 104
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 105
    .line 106
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 107
    .line 108
    const-string v3, "hasPrimaryClip"

    .line 109
    .line 110
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 117
    .line 118
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 119
    .line 120
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 121
    .line 122
    const-string v3, "getUserPrimaryClip"

    .line 123
    .line 124
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

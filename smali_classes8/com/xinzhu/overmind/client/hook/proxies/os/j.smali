.class public Lcom/xinzhu/overmind/client/hook/proxies/os/j;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "usagestats"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "usagestats"

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
    const-string v0, "usagestats"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lr8/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p1, "usagestats"

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
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 5
    .line 6
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 7
    .line 8
    const-string v2, "queryEventsForUser"

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 18
    .line 19
    const-string v1, "queryEventsForPackageForUser"

    .line 20
    .line 21
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 30
    .line 31
    const-string v1, "setAppInactive"

    .line 32
    .line 33
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 42
    .line 43
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 44
    .line 45
    const-string v2, "isAppInactive"

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-direct {v0, v2, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

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
    const-string v1, "reportChooserSelection"

    .line 57
    .line 58
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 59
    .line 60
    invoke-direct {v0, v1, v2, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 67
    .line 68
    const-string v1, "getAppStandbyBucket"

    .line 69
    .line 70
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 71
    .line 72
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 79
    .line 80
    const-string v1, "setAppStandbyBucket"

    .line 81
    .line 82
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 83
    .line 84
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 91
    .line 92
    const-string v1, "getAppStandbyBuckets"

    .line 93
    .line 94
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 95
    .line 96
    invoke-direct {v0, v1, v2, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

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
    const-string v1, "setAppStandbyBuckets"

    .line 105
    .line 106
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 107
    .line 108
    invoke-direct {v0, v1, v2, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 115
    .line 116
    const-string v1, "registerAppUsageObserver"

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 126
    .line 127
    const-string v1, "unregisterAppUsageObserver"

    .line 128
    .line 129
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.class public Lcom/xinzhu/overmind/client/hook/proxies/permission/c;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "vivo_permission_service"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "vivo_permission_service"

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
    const-string v0, "vivo_permission_service"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lia/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p1, "vivo_permission_service"

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
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 5
    .line 6
    const-string v1, "checkDelete"

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 16
    .line 17
    const-string v1, "checkOnePermission"

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 27
    .line 28
    const-string v1, "checkBlankPermission"

    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 37
    .line 38
    const-string v1, "checkLANPermission"

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 47
    .line 48
    const-string v1, "checkPermission"

    .line 49
    .line 50
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 57
    .line 58
    const-string v1, "countByUid"

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 68
    .line 69
    const-string v1, "isSensorPrivacyEnabled"

    .line 70
    .line 71
    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 78
    .line 79
    const-string v1, "noteScreenShot"

    .line 80
    .line 81
    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 88
    .line 89
    const-string v1, "queryByUid"

    .line 90
    .line 91
    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 98
    .line 99
    const-string v1, "setOnePermission"

    .line 100
    .line 101
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 108
    .line 109
    const-string v1, "setOnePermissionExt"

    .line 110
    .line 111
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

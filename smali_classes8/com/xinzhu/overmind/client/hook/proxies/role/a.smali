.class public Lcom/xinzhu/overmind/client/hook/proxies/role/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "role"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "role"

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
    const-string v0, "role"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp8/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p1, "role"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
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
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 7
    .line 8
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 9
    .line 10
    const-string v3, "isRoleHeld"

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
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 21
    .line 22
    const-string v2, "getRoleHoldersAsUser"

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 32
    .line 33
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 34
    .line 35
    const-string v2, "addRoleHolderAsUser"

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    invoke-direct {v0, v2, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

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
    const-string v1, "removeRoleHolderAsUser"

    .line 47
    .line 48
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 49
    .line 50
    invoke-direct {v0, v1, v2, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 57
    .line 58
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    const-string v4, "clearRoleHoldersAsUser"

    .line 62
    .line 63
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 70
    .line 71
    const-string v1, "addOnRoleHoldersChangedListenerAsUser"

    .line 72
    .line 73
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 74
    .line 75
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 82
    .line 83
    const-string v1, "removeOnRoleHoldersChangedListenerAsUser"

    .line 84
    .line 85
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 94
    .line 95
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 96
    .line 97
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 98
    .line 99
    const-string v3, "addRoleHolderFromController"

    .line 100
    .line 101
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 108
    .line 109
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 110
    .line 111
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 112
    .line 113
    const-string v3, "removeRoleHolderFromController"

    .line 114
    .line 115
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 122
    .line 123
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 124
    .line 125
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 126
    .line 127
    const-string v3, "getHeldRolesFromController"

    .line 128
    .line 129
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 136
    .line 137
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    const-string v3, "getDefaultSmsPackage"

    .line 141
    .line 142
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

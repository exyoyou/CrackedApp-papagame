.class public Lcom/xinzhu/overmind/client/hook/proxies/os/k;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "user"

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
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/n$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p2, "user"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/os/UserManager;

    .line 12
    .line 13
    new-instance v0, Lcom/xinzhu/haunted/android/os/y;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/os/y;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/y;->a()Z

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
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/os/y;->c(Landroid/os/IInterface;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/haunted/android/os/z;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
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
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 7
    .line 8
    const-string v2, "isProfile"

    .line 9
    .line 10
    const/4 v3, 0x0

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
    const-string v1, "isManagedProfile"

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
    const-string v1, "isUserUnlocked"

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
    const-string v1, "isUserUnlockingOrUnlocked"

    .line 44
    .line 45
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 46
    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 54
    .line 55
    const-string v1, "getProfileParent"

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 65
    .line 66
    const-string v1, "getProfileType"

    .line 67
    .line 68
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 69
    .line 70
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 77
    .line 78
    const-string v1, "getProfileIds"

    .line 79
    .line 80
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 81
    .line 82
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 89
    .line 90
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/w;->d()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const-string v2, "Admin"

    .line 95
    .line 96
    invoke-static {v3, v2, v1}, Lcom/xinzhu/haunted/android/content/pm/w;->c(ILjava/lang/String;I)Lcom/xinzhu/haunted/android/content/pm/w;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget-object v1, v1, Lcom/xinzhu/haunted/android/content/pm/w;->a:Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v4, "getUsers"

    .line 110
    .line 111
    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 118
    .line 119
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/w;->d()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v3, v2, v1}, Lcom/xinzhu/haunted/android/content/pm/w;->c(ILjava/lang/String;I)Lcom/xinzhu/haunted/android/content/pm/w;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object v1, v1, Lcom/xinzhu/haunted/android/content/pm/w;->a:Ljava/lang/Object;

    .line 131
    .line 132
    const-string v2, "getUserInfo"

    .line 133
    .line 134
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 141
    .line 142
    const-string v1, "getApplicationRestrictions"

    .line 143
    .line 144
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 145
    .line 146
    invoke-direct {v0, v1, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 153
    .line 154
    const-string v1, "setApplicationRestrictions"

    .line 155
    .line 156
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 157
    .line 158
    invoke-direct {v0, v1, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 165
    .line 166
    const-string v1, "getApplicationRestrictionsForUser"

    .line 167
    .line 168
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 169
    .line 170
    invoke-direct {v0, v1, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

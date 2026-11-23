.class public Lcom/xinzhu/overmind/client/hook/proxies/view/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "AutofillManagerStub"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "autofill"

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

.method static synthetic d([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/client/hook/proxies/view/a;->e([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static e([Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p0

    .line 5
    if-ge v0, v1, :cond_3

    .line 6
    .line 7
    aget-object v1, p0, v0

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    instance-of v1, v1, Landroid/content/ComponentName;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-boolean v1, v1, Lcom/xinzhu/overmind/entity/ClientConfig;->j:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_1
    new-instance v2, Landroid/content/ComponentName;

    .line 34
    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVPid()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v3}, Lcom/xinzhu/overmind/client/g;->e(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    aput-object v2, p0, v0

    .line 47
    .line 48
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
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
    const-string v0, "autofill"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lm9/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p1, "autofill"

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
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/view/a$a;

    .line 5
    .line 6
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 7
    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 17
    .line 18
    :goto_0
    const-string v3, "addClient"

    .line 19
    .line 20
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/view/a$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/view/a;Ljava/lang/String;II)V

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
    const-string v3, "removeClient"

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
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/view/a$b;

    .line 41
    .line 42
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    const-string v3, "startSession"

    .line 46
    .line 47
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/view/a$b;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/view/a;Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 54
    .line 55
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 56
    .line 57
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 58
    .line 59
    const-string v3, "updateSession"

    .line 60
    .line 61
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 68
    .line 69
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 70
    .line 71
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 72
    .line 73
    const-string v3, "setAutofillFailure"

    .line 74
    .line 75
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

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
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 84
    .line 85
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 86
    .line 87
    const-string v3, "finishSession"

    .line 88
    .line 89
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 96
    .line 97
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 98
    .line 99
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 100
    .line 101
    const-string v3, "cancelSession"

    .line 102
    .line 103
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 110
    .line 111
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 112
    .line 113
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 114
    .line 115
    const-string v3, "setAuthenticationResult"

    .line 116
    .line 117
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 124
    .line 125
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    const-string v3, "setHasCallback"

    .line 129
    .line 130
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 137
    .line 138
    const-string v1, "disableOwnedAutofillServices"

    .line 139
    .line 140
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 150
    .line 151
    const-string v1, "isServiceSupported"

    .line 152
    .line 153
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 154
    .line 155
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 162
    .line 163
    const-string v1, "isServiceEnabled"

    .line 164
    .line 165
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 166
    .line 167
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

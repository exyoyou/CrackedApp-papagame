.class public Lcom/xinzhu/overmind/client/hook/proxies/appos/b;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "appops"

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
    const-string v0, "appops"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lr9/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p2, "appops"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/app/AppOpsManager;

    .line 12
    .line 13
    new-instance v0, Lcom/xinzhu/haunted/android/app/h;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/app/h;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/os/IInterface;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/h;->c(Landroid/os/IInterface;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
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
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 5
    .line 6
    const-string v1, "checkOperation"

    .line 7
    .line 8
    const/4 v2, 0x1

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
    const-string v1, "noteOperation"

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 26
    .line 27
    const-string v1, "startOperation"

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

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
    const-string v1, "finishOperation"

    .line 39
    .line 40
    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

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
    const-string v1, "checkAudioOperation"

    .line 49
    .line 50
    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/appos/b$a;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v5, "noteProxyOperation"

    .line 64
    .line 65
    invoke-direct {v0, p0, v5, v4}, Lcom/xinzhu/overmind/client/hook/proxies/appos/b$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/appos/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 72
    .line 73
    const-string v4, "checkPackage"

    .line 74
    .line 75
    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 82
    .line 83
    const-string v4, "getOpsForPackage"

    .line 84
    .line 85
    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 92
    .line 93
    const-string v4, "getHistoricalOps"

    .line 94
    .line 95
    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 102
    .line 103
    const-string v4, "getHistoricalOpsFromDiskRaw"

    .line 104
    .line 105
    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 112
    .line 113
    const-string v4, "getUidOps"

    .line 114
    .line 115
    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 122
    .line 123
    const-string v4, "setUidMode"

    .line 124
    .line 125
    invoke-direct {v0, v4, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 132
    .line 133
    const-string v4, "setMode"

    .line 134
    .line 135
    invoke-direct {v0, v4, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 142
    .line 143
    const-string v4, "resetAllModes"

    .line 144
    .line 145
    sget v5, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 146
    .line 147
    invoke-direct {v0, v4, v5, v1}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 154
    .line 155
    const-string v1, "setAudioRestriction"

    .line 156
    .line 157
    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 164
    .line 165
    const-string v1, "isOperationActive"

    .line 166
    .line 167
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 174
    .line 175
    const-string v1, "checkOperationRaw"

    .line 176
    .line 177
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

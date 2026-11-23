.class public Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$f;,
        Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$d;,
        Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$g;,
        Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$e;,
        Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$a;,
        Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "mount"

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
    const-string v0, "mount"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "mount"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lg9/b$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v1}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lg9/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string p1, "mount"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "storage"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/os/storage/StorageManager;

    .line 17
    .line 18
    new-instance v0, Lg9/c;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lg9/c;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lg9/c;->a()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    move-object p1, p2

    .line 30
    check-cast p1, Landroid/os/IInterface;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lg9/c;->k(Landroid/os/IInterface;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {}, Lg9/c;->b()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    check-cast p2, Landroid/os/IInterface;

    .line 42
    .line 43
    invoke-static {p2}, Lg9/c;->l(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
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
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "getVolumeList"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 24
    .line 25
    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 32
    .line 33
    const-string v1, "createUserKey"

    .line 34
    .line 35
    sget v4, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 36
    .line 37
    invoke-direct {v0, v1, v4, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 44
    .line 45
    const-string v1, "destroyUserKey"

    .line 46
    .line 47
    sget v4, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 48
    .line 49
    invoke-direct {v0, v1, v4, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 56
    .line 57
    const-string v1, "unlockUserKey"

    .line 58
    .line 59
    sget v4, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 60
    .line 61
    invoke-direct {v0, v1, v4, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

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
    const-string v1, "lockUserKey"

    .line 70
    .line 71
    sget v4, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 72
    .line 73
    invoke-direct {v0, v1, v4, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 80
    .line 81
    const-string v1, "isUserKeyUnlocked"

    .line 82
    .line 83
    sget v4, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 84
    .line 85
    invoke-direct {v0, v1, v4, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 92
    .line 93
    const-string v1, "prepareUserStorage"

    .line 94
    .line 95
    sget v4, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 96
    .line 97
    invoke-direct {v0, v1, v4, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 104
    .line 105
    const-string v1, "destroyUserStorage"

    .line 106
    .line 107
    sget v4, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 108
    .line 109
    invoke-direct {v0, v1, v4, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 116
    .line 117
    const-string v1, "addUserKeyAuth"

    .line 118
    .line 119
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 120
    .line 121
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 128
    .line 129
    const-string v1, "fixateNewestUserKeyAuth"

    .line 130
    .line 131
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 132
    .line 133
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 140
    .line 141
    const-string v1, "clearUserKeyAuth"

    .line 142
    .line 143
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 144
    .line 145
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$f;

    .line 152
    .line 153
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$f;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$d;

    .line 160
    .line 161
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$d;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$b;

    .line 168
    .line 169
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$b;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 173
    .line 174
    .line 175
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$g;

    .line 176
    .line 177
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$g;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$e;

    .line 184
    .line 185
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$e;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$a;

    .line 192
    .line 193
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$a;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

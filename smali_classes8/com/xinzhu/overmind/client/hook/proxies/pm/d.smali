.class public Lcom/xinzhu/overmind/client/hook/proxies/pm/d;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$y;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$h;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$b0;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$k;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$o;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$q;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$e;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$p;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$i;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$j;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$g;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$s;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$z;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$x;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$m;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$n;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$f;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$a0;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$t;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$w;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$v;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$u;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$d;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$c;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$r;,
        Lcom/xinzhu/overmind/client/hook/proxies/pm/d$l;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "PackageManagerStub"

.field private static final c:I = 0x400000

.field private static final d:I = 0x200000


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->b0()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 4

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/g;->R()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/xinzhu/haunted/android/app/l;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/l;->n()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    const-string v2, "android.app.ApplicationPackageManager"

    .line 27
    .line 28
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/w;->n(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "mPM"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/xinzhu/overmind/utils/w;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v0}, Lcom/xinzhu/overmind/utils/w;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    if-eq v0, v2, :cond_0

    .line 47
    .line 48
    return v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->b0()Landroid/os/IInterface;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eq v0, v2, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 65
    :goto_0
    return v1
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->b0()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    move-object p1, p2

    .line 2
    check-cast p1, Landroid/os/IInterface;

    .line 3
    .line 4
    invoke-static {p1}, Lcom/xinzhu/haunted/android/app/g;->s0(Landroid/os/IInterface;)Z

    .line 5
    .line 6
    .line 7
    const-string p1, "package"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/xinzhu/haunted/android/app/g;

    .line 13
    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/g;->R()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Lcom/xinzhu/haunted/android/app/l;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/l;->n()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    :try_start_0
    const-string v0, "android.app.ApplicationPackageManager"

    .line 37
    .line 38
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/w;->n(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "mPM"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/w;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/utils/w;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    :try_start_1
    const-string p1, "huawei.android.app.HwApiCacheMangerEx"

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lp9/a;->c()Lp9/a;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lp9/a;->a()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_1

    .line 77
    .line 78
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Lp9/a;->e(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    :catchall_0
    :cond_1
    return-void
.end method

.method protected onBindMethod()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$y;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$y;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$h;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$h;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$b0;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$b0;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$k;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$k;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$o;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$o;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$q;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$q;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$e;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$e;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$p;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$p;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$i;

    .line 69
    .line 70
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$i;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$j;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$j;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$g;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$g;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$s;

    .line 93
    .line 94
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$s;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$z;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$z;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$x;

    .line 109
    .line 110
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$x;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$b;

    .line 117
    .line 118
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$b;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$m;

    .line 125
    .line 126
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$m;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$n;

    .line 133
    .line 134
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$n;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$f;

    .line 141
    .line 142
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$f;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$a0;

    .line 149
    .line 150
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$a0;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$a;

    .line 157
    .line 158
    const/4 v1, 0x1

    .line 159
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 160
    .line 161
    const-string v3, "checkPermission"

    .line 162
    .line 163
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/pm/d;Ljava/lang/String;II)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$t;

    .line 170
    .line 171
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$t;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$w;

    .line 178
    .line 179
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$w;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$v;

    .line 186
    .line 187
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$v;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$u;

    .line 194
    .line 195
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$u;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 202
    .line 203
    const-string v1, "getInstallerPackageName"

    .line 204
    .line 205
    const-string v2, "com.android.vending"

    .line 206
    .line 207
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 211
    .line 212
    .line 213
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    const/4 v1, 0x0

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    if-eqz v0, :cond_0

    .line 223
    .line 224
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 225
    .line 226
    const-string v2, "notifyDexLoad"

    .line 227
    .line 228
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 232
    .line 233
    .line 234
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 235
    .line 236
    const-string v2, "notifyPackageUse"

    .line 237
    .line 238
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 245
    .line 246
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 247
    .line 248
    const-string v3, "setInstantAppCookie"

    .line 249
    .line 250
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 257
    .line 258
    const-string v3, "isInstantApp"

    .line 259
    .line 260
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 264
    .line 265
    .line 266
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 267
    .line 268
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 269
    .line 270
    const-string v3, "performDexOpt"

    .line 271
    .line 272
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 279
    .line 280
    const-string v3, "performDexOptIfNeeded"

    .line 281
    .line 282
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 283
    .line 284
    invoke-direct {v0, v3, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 291
    .line 292
    const-string v3, "performDexOptSecondary"

    .line 293
    .line 294
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 298
    .line 299
    .line 300
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 301
    .line 302
    const-string v3, "addOnPermissionsChangeListener"

    .line 303
    .line 304
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 308
    .line 309
    .line 310
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 311
    .line 312
    const-string v3, "removeOnPermissionsChangeListener"

    .line 313
    .line 314
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 318
    .line 319
    .line 320
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 321
    .line 322
    const-string v1, "addPermissionAsync"

    .line 323
    .line 324
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 328
    .line 329
    .line 330
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 331
    .line 332
    const-string v1, "addPermission"

    .line 333
    .line 334
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 338
    .line 339
    .line 340
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$d;

    .line 341
    .line 342
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$d;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 346
    .line 347
    .line 348
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$c;

    .line 349
    .line 350
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$c;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 354
    .line 355
    .line 356
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$r;

    .line 357
    .line 358
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$r;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 362
    .line 363
    .line 364
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$l;

    .line 365
    .line 366
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d$l;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 370
    .line 371
    .line 372
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 373
    .line 374
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 375
    .line 376
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 377
    .line 378
    const-string v3, "shouldShowRequestPermissionRationale"

    .line 379
    .line 380
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 384
    .line 385
    .line 386
    return-void
.end method

.class public Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h0;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "AccountManagerStub"

.field private static final c:Lcom/xinzhu/overmind/client/frameworks/accounts/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->get()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->c:Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ll8/c;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ll8/c;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ll8/c;->g()Ll8/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Ll8/d;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroid/os/IInterface;

    .line 21
    .line 22
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method static synthetic d()Lcom/xinzhu/overmind/client/frameworks/accounts/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->c:Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ll8/c;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ll8/c;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ll8/c;->g()Ll8/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Ll8/d;->a:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance p1, Ll8/c;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p1, v0}, Ll8/c;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ll8/d;

    .line 15
    .line 16
    invoke-direct {v0, p2}, Ll8/d;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ll8/c;->i(Ll8/d;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ll8/c;->b()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Ll8/c;->e()V

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string p1, "account"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected onBindMethod()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c0;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c0;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e0;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e0;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;

    .line 69
    .line 70
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d;

    .line 93
    .line 94
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k0;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k0;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l0;

    .line 109
    .line 110
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l0;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m0;

    .line 117
    .line 118
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m0;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j;

    .line 125
    .line 126
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f0;

    .line 133
    .line 134
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f0;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i0;

    .line 141
    .line 142
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i0;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r0;

    .line 149
    .line 150
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r0;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s0;

    .line 157
    .line 158
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s0;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h;

    .line 165
    .line 166
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t0;

    .line 173
    .line 174
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t0;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y0;

    .line 181
    .line 182
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y0;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 186
    .line 187
    .line 188
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v;

    .line 189
    .line 190
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b;

    .line 197
    .line 198
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c;

    .line 205
    .line 206
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z0;

    .line 213
    .line 214
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z0;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l;

    .line 221
    .line 222
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i;

    .line 229
    .line 230
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 234
    .line 235
    .line 236
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a;

    .line 237
    .line 238
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w;

    .line 245
    .line 246
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 250
    .line 251
    .line 252
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f;

    .line 253
    .line 254
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b0;

    .line 261
    .line 262
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b0;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n0;

    .line 269
    .line 270
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n0;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 274
    .line 275
    .line 276
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p0;

    .line 277
    .line 278
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p0;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 282
    .line 283
    .line 284
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g;

    .line 285
    .line 286
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 290
    .line 291
    .line 292
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o0;

    .line 293
    .line 294
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o0;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 298
    .line 299
    .line 300
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a0;

    .line 301
    .line 302
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a0;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 306
    .line 307
    .line 308
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    .line 314
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v0;

    .line 315
    .line 316
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v0;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 320
    .line 321
    .line 322
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w0;

    .line 323
    .line 324
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w0;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 328
    .line 329
    .line 330
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m;

    .line 331
    .line 332
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 336
    .line 337
    .line 338
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u0;

    .line 339
    .line 340
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u0;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 344
    .line 345
    .line 346
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g0;

    .line 347
    .line 348
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g0;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 352
    .line 353
    .line 354
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    .line 360
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y;

    .line 361
    .line 362
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 366
    .line 367
    .line 368
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e;

    .line 369
    .line 370
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 374
    .line 375
    .line 376
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q0;

    .line 377
    .line 378
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q0;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 382
    .line 383
    .line 384
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o;

    .line 385
    .line 386
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 390
    .line 391
    .line 392
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q;

    .line 393
    .line 394
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 398
    .line 399
    .line 400
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j0;

    .line 401
    .line 402
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j0;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x0;

    .line 409
    .line 410
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x0;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 414
    .line 415
    .line 416
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d0;

    .line 417
    .line 418
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d0;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 422
    .line 423
    .line 424
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k;

    .line 425
    .line 426
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 430
    .line 431
    .line 432
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h0;

    .line 433
    .line 434
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h0;-><init>()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 438
    .line 439
    .line 440
    :cond_0
    return-void
.end method

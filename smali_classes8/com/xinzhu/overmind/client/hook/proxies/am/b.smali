.class public Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$a0;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$b0;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$c0;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$c;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$d0;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$q;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$p;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$r;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$o;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$w;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$v;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$z;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$f;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$g;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$y;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$k;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$j;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$i;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$u;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$m;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$t;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$n;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$e;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "ActivityManagerStub"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroid/os/IInterface;

    .line 9
    .line 10
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroid/os/IInterface;

    .line 9
    .line 10
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/xinzhu/haunted/android/app/n$b;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/haunted/android/app/e;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->a()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->d()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    new-instance v0, Ll9/b;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Ll9/b;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ll9/b;->e(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const-string p1, "activity"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected onBindMethod()V
    .locals 8

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$a0;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$a0;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$b0;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$b0;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$c0;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$c0;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$c;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$c;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$d0;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$d0;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$q;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$q;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$p;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$p;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$r;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$r;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$o;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$o;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$w;

    .line 90
    .line 91
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$w;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$v;

    .line 98
    .line 99
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$v;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$z;

    .line 106
    .line 107
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$z;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$f;

    .line 114
    .line 115
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$f;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$g;

    .line 122
    .line 123
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$g;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;

    .line 130
    .line 131
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$y;

    .line 138
    .line 139
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$y;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/4 v1, 0x4

    .line 150
    const/4 v2, 0x0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    .line 153
    sget-object v0, Lcom/xinzhu/haunted/android/app/v$a;->b:Ljava/lang/Class;

    .line 154
    .line 155
    const/16 v3, 0xb

    .line 156
    .line 157
    new-array v3, v3, [Ljava/lang/Object;

    .line 158
    .line 159
    const-class v4, Landroid/content/Intent;

    .line 160
    .line 161
    aput-object v4, v3, v2

    .line 162
    .line 163
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 164
    .line 165
    const/4 v5, 0x1

    .line 166
    aput-object v4, v3, v5

    .line 167
    .line 168
    const/4 v5, 0x2

    .line 169
    const-class v6, Ljava/lang/String;

    .line 170
    .line 171
    aput-object v6, v3, v5

    .line 172
    .line 173
    const/4 v5, 0x3

    .line 174
    const-class v7, Landroid/os/Bundle;

    .line 175
    .line 176
    aput-object v7, v3, v5

    .line 177
    .line 178
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 179
    .line 180
    aput-object v5, v3, v1

    .line 181
    .line 182
    const/4 v7, 0x5

    .line 183
    aput-object v5, v3, v7

    .line 184
    .line 185
    const/4 v7, 0x6

    .line 186
    aput-object v5, v3, v7

    .line 187
    .line 188
    const/4 v5, 0x7

    .line 189
    aput-object v4, v3, v5

    .line 190
    .line 191
    const/16 v5, 0x8

    .line 192
    .line 193
    aput-object v4, v3, v5

    .line 194
    .line 195
    const/16 v4, 0x9

    .line 196
    .line 197
    aput-object v6, v3, v4

    .line 198
    .line 199
    new-instance v4, Lcom/xinzhu/overmind/client/hook/proxies/am/b$a;

    .line 200
    .line 201
    invoke-direct {v4, p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/am/b;)V

    .line 202
    .line 203
    .line 204
    const/16 v5, 0xa

    .line 205
    .line 206
    aput-object v4, v3, v5

    .line 207
    .line 208
    const-string v4, "performReceive"

    .line 209
    .line 210
    invoke-static {v0, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 211
    .line 212
    .line 213
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;

    .line 214
    .line 215
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$k;

    .line 222
    .line 223
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$k;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;

    .line 230
    .line 231
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$j;

    .line 238
    .line 239
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$j;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$i;

    .line 246
    .line 247
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$i;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 251
    .line 252
    .line 253
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$u;

    .line 254
    .line 255
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$u;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 259
    .line 260
    .line 261
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 262
    .line 263
    const-string v3, "setServiceForeground"

    .line 264
    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 276
    .line 277
    const-string v2, "getPackageProcessState"

    .line 278
    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 290
    .line 291
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 292
    .line 293
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 294
    .line 295
    const-string v3, "getHistoricalProcessExitReasons"

    .line 296
    .line 297
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 301
    .line 302
    .line 303
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;

    .line 304
    .line 305
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 309
    .line 310
    .line 311
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;

    .line 312
    .line 313
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 317
    .line 318
    .line 319
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;

    .line 320
    .line 321
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 325
    .line 326
    .line 327
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;

    .line 328
    .line 329
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 333
    .line 334
    .line 335
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;

    .line 336
    .line 337
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 341
    .line 342
    .line 343
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;

    .line 344
    .line 345
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 349
    .line 350
    .line 351
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;

    .line 352
    .line 353
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 357
    .line 358
    .line 359
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;

    .line 360
    .line 361
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 365
    .line 366
    .line 367
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$s;

    .line 368
    .line 369
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$s;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 373
    .line 374
    .line 375
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$p;

    .line 376
    .line 377
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$p;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 381
    .line 382
    .line 383
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$r;

    .line 384
    .line 385
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$r;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$t;

    .line 392
    .line 393
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$t;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 397
    .line 398
    .line 399
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$q;

    .line 400
    .line 401
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$q;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 405
    .line 406
    .line 407
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;

    .line 408
    .line 409
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 413
    .line 414
    .line 415
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;

    .line 416
    .line 417
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 421
    .line 422
    .line 423
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;

    .line 424
    .line 425
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 429
    .line 430
    .line 431
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;

    .line 432
    .line 433
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 437
    .line 438
    .line 439
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$i;

    .line 440
    .line 441
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$i;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 445
    .line 446
    .line 447
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$j;

    .line 448
    .line 449
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$j;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 453
    .line 454
    .line 455
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;

    .line 456
    .line 457
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 461
    .line 462
    .line 463
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$m;

    .line 464
    .line 465
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$m;-><init>()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;

    .line 472
    .line 473
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 477
    .line 478
    .line 479
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$t;

    .line 480
    .line 481
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$t;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 485
    .line 486
    .line 487
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_1

    .line 492
    .line 493
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$n;

    .line 494
    .line 495
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$n;-><init>()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 499
    .line 500
    .line 501
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$e;

    .line 502
    .line 503
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$e;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 507
    .line 508
    .line 509
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-eqz v0, :cond_2

    .line 514
    .line 515
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 516
    .line 517
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 518
    .line 519
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 520
    .line 521
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 525
    .line 526
    .line 527
    :cond_2
    return-void
.end method

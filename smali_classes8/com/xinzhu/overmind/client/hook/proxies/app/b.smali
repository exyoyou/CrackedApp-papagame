.class public Lcom/xinzhu/overmind/client/hook/proxies/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/client/hook/d;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final d:Ljava/lang/String; = "HCallbackStub"


# instance fields
.field private b:Landroid/os/Handler$Callback;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    return-void
.end method

.method private a()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->V()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private c()Landroid/os/Handler$Callback;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/os/f;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->a()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/os/f;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/f;->b()Landroid/os/Handler$Callback;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lq8/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lq8/a;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lq8/a;->d()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lq8/b;->c:Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return-object p1
.end method

.method private e(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->z()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p1

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    new-instance v2, Lq8/b;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lq8/b;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lq8/b;->h()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2}, Lq8/b;->b()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2}, Lq8/b;->f()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    new-instance v4, Lq8/a;

    .line 44
    .line 45
    invoke-direct {v4, p1}, Lq8/a;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lq8/a;->e()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->z()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    new-instance v2, Lq8/b;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Lq8/b;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lq8/b;->h()Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Lq8/a;

    .line 69
    .line 70
    invoke-direct {v4, p1}, Lq8/a;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Lq8/a;->e()Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    new-instance p1, Lcom/xinzhu/haunted/android/app/g$a;

    .line 79
    .line 80
    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/g$a;-><init>(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/g$a;->j()Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/g$a;->l()Landroid/os/IBinder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 v2, 0x0

    .line 92
    :goto_1
    if-nez v3, :cond_5

    .line 93
    .line 94
    return v1

    .line 95
    :cond_5
    invoke-static {v3}, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-object v4, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 100
    .line 101
    if-eqz v4, :cond_d

    .line 102
    .line 103
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const/4 v6, 0x1

    .line 108
    if-nez v5, :cond_6

    .line 109
    .line 110
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 117
    .line 118
    iget v2, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mUserId:I

    .line 119
    .line 120
    invoke-virtual {p1, v0, v1, v2}, Lma/a;->v(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    return v6

    .line 124
    :cond_6
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5}, Lcom/xinzhu/overmind/client/f;->isInit()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_7

    .line 133
    .line 134
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, v0, v1}, Lcom/xinzhu/overmind/client/f;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return v6

    .line 146
    :cond_7
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 147
    .line 148
    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/q;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    .line 154
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_8

    .line 159
    .line 160
    new-instance v5, Lcom/xinzhu/haunted/android/app/n;

    .line 161
    .line 162
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-direct {v5, v6}, Lcom/xinzhu/haunted/android/app/n;-><init>(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, p1, v1}, Lcom/xinzhu/haunted/android/app/n;->k(Landroid/os/IBinder;Z)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    goto :goto_2

    .line 174
    :cond_8
    new-instance v5, Lcom/xinzhu/haunted/android/app/m;

    .line 175
    .line 176
    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->c()Landroid/os/IInterface;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-direct {v5, v6}, Lcom/xinzhu/haunted/android/app/m;-><init>(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, p1, v1}, Lcom/xinzhu/haunted/android/app/m;->b(Landroid/os/IBinder;Z)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    :goto_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    iget-object v7, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    .line 192
    .line 193
    invoke-virtual {v6, v5, p1, v7}, Lma/a;->l(ILandroid/os/IBinder;Landroid/os/IBinder;)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->z()Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_c

    .line 201
    .line 202
    iget-object v0, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mTarget:Landroid/content/Intent;

    .line 203
    .line 204
    invoke-virtual {v2, v0}, Lq8/b;->l(Landroid/content/Intent;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v4}, Lq8/b;->k(Landroid/content/pm/ActivityInfo;)Z

    .line 208
    .line 209
    .line 210
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    .line 211
    .line 212
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-direct {v0, v5}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-eqz v5, :cond_d

    .line 224
    .line 225
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    const-string v6, "break circle"

    .line 230
    .line 231
    if-nez v5, :cond_a

    .line 232
    .line 233
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/g;->s(Landroid/os/IBinder;)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_9

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/g;->N(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    if-eqz p1, :cond_a

    .line 244
    .line 245
    new-instance v5, Lcom/xinzhu/haunted/android/app/g$a;

    .line 246
    .line 247
    invoke-direct {v5, p1}, Lcom/xinzhu/haunted/android/app/g$a;-><init>(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Lcom/xinzhu/haunted/android/app/g$a;->i()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 255
    .line 256
    invoke-virtual {v0, v7, p1}, Lcom/xinzhu/haunted/android/app/g;->O(Landroid/content/pm/ApplicationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget-object v0, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mTarget:Landroid/content/Intent;

    .line 261
    .line 262
    invoke-virtual {v5, v0}, Lcom/xinzhu/haunted/android/app/g$a;->p(Landroid/content/Intent;)Z

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v4}, Lcom/xinzhu/haunted/android/app/g$a;->n(Landroid/content/pm/ActivityInfo;)Z

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, p1}, Lcom/xinzhu/haunted/android/app/g$a;->q(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 273
    .line 274
    invoke-direct {p1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p1

    .line 278
    :cond_a
    :goto_3
    invoke-virtual {v2}, Lq8/b;->a()Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-eqz p1, :cond_b

    .line 283
    .line 284
    invoke-virtual {v2}, Lq8/b;->e()Landroid/os/IInterface;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    if-eqz p1, :cond_d

    .line 289
    .line 290
    new-instance p1, Lcom/xinzhu/haunted/android/app/b$a;

    .line 291
    .line 292
    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->d()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/b$a;-><init>(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    sget-object v0, Lcom/xinzhu/overmind/client/hook/proxies/am/a;->b:Landroid/os/IInterface;

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Lcom/xinzhu/haunted/android/app/b$a;->c(Landroid/os/IInterface;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 306
    .line 307
    invoke-direct {p1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw p1

    .line 311
    :cond_c
    new-instance p1, Lcom/xinzhu/haunted/android/app/g$a;

    .line 312
    .line 313
    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/g$a;-><init>(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mTarget:Landroid/content/Intent;

    .line 317
    .line 318
    invoke-virtual {p1, v0}, Lcom/xinzhu/haunted/android/app/g$a;->p(Landroid/content/Intent;)Z

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, v4}, Lcom/xinzhu/haunted/android/app/g$a;->n(Landroid/content/pm/ActivityInfo;)Z

    .line 322
    .line 323
    .line 324
    :cond_d
    :goto_4
    return v1
.end method

.method private f()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BlockedPrivateApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "getLaunchingActivity"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    new-array v2, v2, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v3, Landroid/os/IBinder;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object v3, v2, v4

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "android.app.servertransaction.LaunchActivityItem"

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "mActivityClientController"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "HCallbackStub"

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "reflectTrickForAndroid12 get "

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, " "

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->c()Landroid/os/Handler$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
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

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_5

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->z()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v0, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g$d;->d()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v0, v3, :cond_3

    .line 24
    .line 25
    new-instance v0, Lq8/a;

    .line 26
    .line 27
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {v0, v3}, Lq8/a;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lq8/a;->e()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 48
    :goto_1
    invoke-virtual {v0}, Lq8/a;->d()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v3, Lq8/b;->c:Ljava/lang/Class;

    .line 73
    .line 74
    if-ne v0, v3, :cond_3

    .line 75
    .line 76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->e(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->a()Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    :goto_2
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    .line 99
    .line 100
    return v1

    .line 101
    :cond_2
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 102
    .line 103
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g$d;->e()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-ne v0, v3, :cond_3

    .line 108
    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->e(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->a()Landroid/os/Handler;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b:Landroid/os/Handler$Callback;

    .line 130
    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 134
    .line 135
    .line 136
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    .line 141
    .line 142
    return p1

    .line 143
    :cond_4
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    .line 145
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    .line 147
    .line 148
    return v2

    .line 149
    :catchall_0
    move-exception p1

    .line 150
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_5
    return v2
.end method

.method public injectHook()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->c()Landroid/os/Handler$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b:Landroid/os/Handler$Callback;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eq v0, p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b:Landroid/os/Handler$Callback;

    .line 35
    .line 36
    :cond_1
    new-instance v0, Lcom/xinzhu/haunted/android/os/f;

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->a()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/os/f;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Lcom/xinzhu/haunted/android/os/f;->c(Landroid/os/Handler$Callback;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

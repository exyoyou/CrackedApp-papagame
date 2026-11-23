.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    return v0
.end method

.method private g()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getContentProvider"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    aget-object v1, p3, v0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;->g()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0, p3, v2}, Lcom/xinzhu/overmind/client/hook/e;->e([Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    instance-of v2, v1, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_c

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, ";"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    aget-object v1, v1, v2

    .line 28
    .line 29
    aput-object v1, p3, v0

    .line 30
    .line 31
    invoke-static {v1}, Lcom/xinzhu/overmind/client/g;->n(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    aput-object v3, p3, v2

    .line 54
    .line 55
    :cond_1
    const-string v2, "settings"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_b

    .line 62
    .line 63
    const-string v2, "media"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_b

    .line 70
    .line 71
    const-string v2, "telephony"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_b

    .line 78
    .line 79
    const-string v2, "downloads"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "hook getContentProvider: "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const-string v3, "ActivityManagerStub"

    .line 107
    .line 108
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const/16 v3, 0x80

    .line 116
    .line 117
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-virtual {v2, v1, v3, v4}, Lma/g;->A(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v2, "provider"

    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v4, v5}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_3

    .line 141
    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVPid()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/4 v5, -0x1

    .line 149
    if-eq v4, v5, :cond_6

    .line 150
    .line 151
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    invoke-virtual {v4, v5, v6, v7}, Lma/a;->k(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    iget v5, v4, Lcom/xinzhu/overmind/entity/ClientConfig;->d:I

    .line 168
    .line 169
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVPid()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eq v5, v6, :cond_4

    .line 174
    .line 175
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v5, v1}, Lma/a;->a(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    goto :goto_0

    .line 184
    :cond_4
    move-object v5, v3

    .line 185
    :goto_0
    iget-boolean v6, v4, Lcom/xinzhu/overmind/entity/ClientConfig;->j:Z

    .line 186
    .line 187
    if-eqz v6, :cond_5

    .line 188
    .line 189
    iget v4, v4, Lcom/xinzhu/overmind/entity/ClientConfig;->d:I

    .line 190
    .line 191
    invoke-static {v4}, Lcom/xinzhu/overmind/client/g;->c(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    goto :goto_1

    .line 196
    :cond_5
    iget v4, v4, Lcom/xinzhu/overmind/entity/ClientConfig;->d:I

    .line 197
    .line 198
    invoke-static {v4}, Lcom/xinzhu/overmind/client/g;->g(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    :goto_1
    aput-object v4, p3, v0

    .line 203
    .line 204
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;->g()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    invoke-static {v4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    aput-object v4, p3, v0

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_6
    move-object v5, v3

    .line 224
    :goto_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    if-nez p1, :cond_7

    .line 229
    .line 230
    return-object v3

    .line 231
    :cond_7
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/w;->t(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const-string p3, "info"

    .line 236
    .line 237
    invoke-virtual {p2, p3}, Lcom/xinzhu/overmind/utils/w;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/utils/w;->q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;

    .line 242
    .line 243
    .line 244
    if-eqz v5, :cond_8

    .line 245
    .line 246
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/w;->t(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {p2, v2}, Lcom/xinzhu/overmind/utils/w;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    new-instance p3, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;

    .line 255
    .line 256
    invoke-direct {p3}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-static {v5}, Lt8/g;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Landroid/os/IInterface;

    .line 264
    .line 265
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {p3, v0, v1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->a(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    .line 270
    .line 271
    .line 272
    move-result-object p3

    .line 273
    invoke-virtual {p2, p3}, Lcom/xinzhu/overmind/utils/w;->q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;

    .line 274
    .line 275
    .line 276
    :cond_8
    return-object p1

    .line 277
    :cond_9
    :goto_3
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    if-eqz p1, :cond_a

    .line 282
    .line 283
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/w;->t(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    invoke-virtual {p2, v2}, Lcom/xinzhu/overmind/utils/w;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-virtual {p2}, Lcom/xinzhu/overmind/utils/w;->i()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    if-eqz p2, :cond_a

    .line 296
    .line 297
    instance-of p3, p2, Ljava/lang/reflect/Proxy;

    .line 298
    .line 299
    if-nez p3, :cond_a

    .line 300
    .line 301
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/w;->t(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;

    .line 302
    .line 303
    .line 304
    move-result-object p3

    .line 305
    invoke-virtual {p3, v2}, Lcom/xinzhu/overmind/utils/w;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;

    .line 306
    .line 307
    .line 308
    move-result-object p3

    .line 309
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;

    .line 310
    .line 311
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;-><init>()V

    .line 312
    .line 313
    .line 314
    check-cast p2, Landroid/os/IInterface;

    .line 315
    .line 316
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v0, p2, v1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->a(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    invoke-virtual {p3, p2}, Lcom/xinzhu/overmind/utils/w;->q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .line 326
    .line 327
    :cond_a
    return-object p1

    .line 328
    :catchall_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    .line 331
    .line 332
    return-object v3

    .line 333
    :cond_b
    :goto_4
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-static {p1, v1}, Lcom/xinzhu/overmind/client/hook/delegate/b;->update(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-object p1

    .line 341
    :cond_c
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    return-object p1
.end method

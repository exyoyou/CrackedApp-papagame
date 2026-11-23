.class public Lcom/xinzhu/overmind/server/pm/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "q"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lna/c;->c(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return p2

    .line 11
    :cond_0
    iget-boolean p0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    iget-boolean p0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->d:Z

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_2
    :goto_0
    return p2
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->isUseGlobalFakePath()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/IOManager;->get()Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/IOManager;->restoreRedirectPath(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/IOManager;->get()Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/IOManager;->restoreRedirectPath(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/IOManager;->get()Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/IOManager;->restoreRedirectPath(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/IOManager;->get()Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/IOManager;->restoreRedirectPath(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/IOManager;->get()Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/IOManager;->restoreRedirectPath(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v0, p0}, Lcom/xinzhu/overmind/server/pm/m;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :try_start_0
    new-instance p0, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 100
    .line 101
    invoke-direct {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->g()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p0, v1}, Lcom/xinzhu/haunted/android/content/pm/b;->M0(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->c()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Lcom/xinzhu/haunted/android/content/pm/b;->I0(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->h()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p0, v1}, Lcom/xinzhu/haunted/android/content/pm/b;->N0(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->d()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Lcom/xinzhu/haunted/android/content/pm/b;->J0(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_0
    return-object v0

    .line 158
    :cond_5
    if-nez v0, :cond_f

    .line 159
    .line 160
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isServerProcess()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    goto :goto_1

    .line 181
    :cond_6
    invoke-static {}, Lma/g;->d()Lma/g;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lma/g;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    :goto_1
    if-nez v0, :cond_7

    .line 192
    .line 193
    return-object p0

    .line 194
    :cond_7
    iget-object v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 195
    .line 196
    const/4 v2, 0x0

    .line 197
    if-eqz v1, :cond_8

    .line 198
    .line 199
    const/4 v3, 0x1

    .line 200
    invoke-virtual {v1, v3}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_8

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_8
    const/4 v3, 0x0

    .line 208
    :goto_2
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->E()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_f

    .line 213
    .line 214
    if-nez v3, :cond_f

    .line 215
    .line 216
    sget-object v1, Lcom/xinzhu/overmind/server/pm/q;->a:Ljava/lang/String;

    .line 217
    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string v4, "transformApplicationInfo "

    .line 224
    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-static {v1, v3}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 241
    .line 242
    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    .line 247
    .line 248
    invoke-direct {v3, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 249
    .line 250
    .line 251
    iget-object p0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {p0, v1}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    iput-object p0, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 262
    .line 263
    new-instance p0, Ljava/io/File;

    .line 264
    .line 265
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v4}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->w()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-direct {p0, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    iput-object p0, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 287
    .line 288
    iget-object p0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {p0}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    iput-object p0, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 299
    .line 300
    iget-object p0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {p0}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    iput-object p0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 311
    .line 312
    invoke-static {v3}, Lcom/xinzhu/overmind/server/pm/h;->a(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    if-nez p0, :cond_a

    .line 321
    .line 322
    new-instance p0, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-static {v3}, Lcom/xinzhu/overmind/server/pm/h;->a(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    array-length v4, v0

    .line 332
    const/4 v5, 0x0

    .line 333
    :goto_3
    if-ge v5, v4, :cond_9

    .line 334
    .line 335
    aget-object v6, v0, v5

    .line 336
    .line 337
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {v7, v6}, Lcom/xinzhu/overmind/a;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    add-int/lit8 v5, v5, 0x1

    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_9
    new-array v0, v2, [Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, [Ljava/lang/String;

    .line 360
    .line 361
    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 362
    .line 363
    new-array v0, v2, [Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    check-cast p0, [Ljava/lang/String;

    .line 370
    .line 371
    iput-object p0, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 372
    .line 373
    :cond_a
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    .line 374
    .line 375
    .line 376
    move-result p0

    .line 377
    if-eqz p0, :cond_e

    .line 378
    .line 379
    iget-object p0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {p0, v1}, Lcom/xinzhu/overmind/a;->x(Ljava/lang/String;I)Ljava/io/File;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    invoke-static {v3, p0}, Lcom/xinzhu/overmind/server/pm/m;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    :try_start_1
    new-instance p0, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 393
    .line 394
    invoke-direct {p0, v3}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->g()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_b

    .line 402
    .line 403
    invoke-static {v3}, Lcom/xinzhu/overmind/server/pm/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->M0(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    :cond_b
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->c()Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_c

    .line 415
    .line 416
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->I0(Ljava/lang/String;)Z

    .line 419
    .line 420
    .line 421
    :cond_c
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->h()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_d

    .line 426
    .line 427
    invoke-static {v3}, Lcom/xinzhu/overmind/server/pm/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->N0(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    :cond_d
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->d()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_e

    .line 439
    .line 440
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->J0(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    .line 444
    .line 445
    goto :goto_4

    .line 446
    :catchall_1
    move-exception p0

    .line 447
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 448
    .line 449
    .line 450
    :cond_e
    :goto_4
    return-object v3

    .line 451
    :cond_f
    return-object p0
.end method

.method private static c(Landroid/content/pm/ApplicationInfo;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const-string v5, "sharedLibraryFiles skip library "

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    const-string v4, "android.test.base"

    .line 27
    .line 28
    invoke-static {v4}, Lcom/xinzhu/overmind/server/pm/q;->m(Ljava/lang/String;)Lcom/xinzhu/overmind/server/j$b;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    iget-object v4, v6, Lcom/xinzhu/overmind/server/j$b;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    iget-object v7, v6, Lcom/xinzhu/overmind/server/j$b;->b:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    iget-object v10, v6, Lcom/xinzhu/overmind/server/j$b;->a:Ljava/lang/String;

    .line 50
    .line 51
    const-wide/16 v11, 0x0

    .line 52
    .line 53
    const/4 v13, 0x0

    .line 54
    const/4 v14, 0x0

    .line 55
    const/4 v15, 0x0

    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    invoke-static/range {v7 .. v17}, Lcom/xinzhu/haunted/android/content/pm/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Lcom/xinzhu/haunted/android/content/pm/s;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object v4, v4, Lcom/xinzhu/haunted/android/content/pm/s;->a:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-static {v4}, Lcom/xinzhu/overmind/server/pm/o;->a(Ljava/lang/Object;)Landroid/content/pm/SharedLibraryInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget-object v6, Lcom/xinzhu/overmind/server/pm/q;->a:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v6, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_3

    .line 102
    .line 103
    const-string v4, "org.apache.http.legacy"

    .line 104
    .line 105
    invoke-static {v4}, Lcom/xinzhu/overmind/server/pm/q;->m(Ljava/lang/String;)Lcom/xinzhu/overmind/server/j$b;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    if-eqz v6, :cond_2

    .line 110
    .line 111
    iget-object v7, v6, Lcom/xinzhu/overmind/server/j$b;->b:Ljava/lang/String;

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v9, 0x0

    .line 115
    iget-object v10, v6, Lcom/xinzhu/overmind/server/j$b;->a:Ljava/lang/String;

    .line 116
    .line 117
    const-wide/16 v11, 0x0

    .line 118
    .line 119
    const/4 v13, 0x0

    .line 120
    const/4 v14, 0x0

    .line 121
    const/4 v15, 0x0

    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    invoke-static/range {v7 .. v17}, Lcom/xinzhu/haunted/android/content/pm/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Lcom/xinzhu/haunted/android/content/pm/s;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    iget-object v4, v4, Lcom/xinzhu/haunted/android/content/pm/s;->a:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-static {v4}, Lcom/xinzhu/overmind/server/pm/o;->a(Ljava/lang/Object;)Landroid/content/pm/SharedLibraryInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    sget-object v6, Lcom/xinzhu/overmind/server/pm/q;->a:Ljava/lang/String;

    .line 144
    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v6, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_3
    :goto_1
    invoke-virtual {v3, v2}, Lcom/xinzhu/haunted/android/content/pm/b;->o1(Ljava/util/List;)Z

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    const-string v3, "/system/framework/org.apache.http.legacy.boot.jar"

    .line 171
    .line 172
    if-eqz v2, :cond_5

    .line 173
    .line 174
    const-string v2, "/system/framework/org.apache.http.legacy.jar"

    .line 175
    .line 176
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->m(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-nez v4, :cond_4

    .line 181
    .line 182
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    :goto_2
    sget-object v2, Lcom/xinzhu/overmind/a;->h:Ljava/io/File;

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    new-array v2, v2, [Ljava/lang/String;

    .line 204
    .line 205
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, [Ljava/lang/String;

    .line 210
    .line 211
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 212
    .line 213
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v1}, Lna/d;->f(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_6

    .line 220
    .line 221
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 222
    .line 223
    or-int/lit8 v1, v1, 0x9

    .line 224
    .line 225
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 226
    .line 227
    :cond_6
    return-void
.end method

.method public static d(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/q;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_0
    if-ge v3, v2, :cond_1

    .line 27
    .line 28
    aget-object v4, v0, v3

    .line 29
    .line 30
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/q;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 50
    .line 51
    array-length v2, v0

    .line 52
    const/4 v3, 0x0

    .line 53
    :goto_1
    if-ge v3, v2, :cond_2

    .line 54
    .line 55
    aget-object v4, v0, v3

    .line 56
    .line 57
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 58
    .line 59
    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/q;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 77
    .line 78
    array-length v2, v0

    .line 79
    const/4 v3, 0x0

    .line 80
    :goto_2
    if-ge v3, v2, :cond_3

    .line 81
    .line 82
    aget-object v4, v0, v3

    .line 83
    .line 84
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 85
    .line 86
    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/q;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 104
    .line 105
    array-length v2, v0

    .line 106
    :goto_3
    if-ge v1, v2, :cond_4

    .line 107
    .line 108
    aget-object v3, v0, v1

    .line 109
    .line 110
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 111
    .line 112
    invoke-static {v4}, Lcom/xinzhu/overmind/server/pm/q;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    return-object p0
.end method

.method public static e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/q;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Landroid/content/pm/ActivityInfo;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 18
    .line 19
    .line 20
    and-int/lit16 v1, p1, 0x80

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 29
    .line 30
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 41
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v0, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    iput-boolean p0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 57
    .line 58
    return-object v0
.end method

.method public static f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/q;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getMindPackageSettingsInternal(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->E()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v2, v4}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v4, 0x0

    .line 46
    :goto_0
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->k(Ljava/lang/String;)Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :goto_1
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 75
    .line 76
    if-nez v5, :cond_4

    .line 77
    .line 78
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 91
    .line 92
    iput-object v5, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 93
    .line 94
    :cond_4
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    .line 95
    .line 96
    iget-object v6, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 97
    .line 98
    invoke-direct {v5, v6}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 99
    .line 100
    .line 101
    and-int/lit16 p1, p1, 0x80

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Landroid/os/Bundle;

    .line 106
    .line 107
    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 108
    .line 109
    :cond_5
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget-object p1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->s(Ljava/lang/String;I)Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 122
    .line 123
    new-instance p1, Ljava/io/File;

    .line 124
    .line 125
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v6}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->w()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-static {v7}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-direct {p1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    iget-object p1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 160
    .line 161
    new-instance p1, Ljava/io/File;

    .line 162
    .line 163
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v6}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->w()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-static {v7}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-direct {p1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 185
    .line 186
    :goto_2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {p1, v6}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 195
    .line 196
    iput-object v2, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v2, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 199
    .line 200
    if-nez v4, :cond_9

    .line 201
    .line 202
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_9

    .line 209
    .line 210
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v5, p1}, Lcom/xinzhu/overmind/server/pm/l;->a(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance p1, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    .line 221
    .line 222
    array-length v4, v2

    .line 223
    const/4 v6, 0x0

    .line 224
    :goto_3
    if-ge v6, v4, :cond_8

    .line 225
    .line 226
    aget-object v7, v2, v6

    .line 227
    .line 228
    if-eqz v0, :cond_7

    .line 229
    .line 230
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {v8, v7}, Lcom/xinzhu/overmind/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    goto :goto_4

    .line 237
    :cond_7
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v8, v7}, Lcom/xinzhu/overmind/a;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    :goto_4
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    add-int/lit8 v6, v6, 0x1

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_8
    new-array v2, v3, [Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    check-cast v2, [Ljava/lang/String;

    .line 260
    .line 261
    iput-object v2, v5, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 262
    .line 263
    new-array v2, v3, [Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    check-cast p1, [Ljava/lang/String;

    .line 270
    .line 271
    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 272
    .line 273
    :cond_9
    iget p1, p2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 274
    .line 275
    invoke-static {p3, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(II)I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    iput p1, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 280
    .line 281
    new-instance p1, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 282
    .line 283
    invoke-direct {p1, v5}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    new-instance v2, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 287
    .line 288
    invoke-direct {v2, v1}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->a()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_a

    .line 296
    .line 297
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->w()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p1, p2}, Lcom/xinzhu/haunted/android/content/pm/b;->b1(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/content/pm/b;->s0()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-virtual {p1, p2}, Lcom/xinzhu/haunted/android/content/pm/b;->i1(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/content/pm/b;->t0()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    invoke-virtual {p1, p2}, Lcom/xinzhu/haunted/android/content/pm/b;->j1(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    :cond_a
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    .line 319
    .line 320
    .line 321
    move-result p2

    .line 322
    if-eqz p2, :cond_f

    .line 323
    .line 324
    if-eqz v0, :cond_b

    .line 325
    .line 326
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {p0, p3}, Lcom/xinzhu/overmind/a;->y(Ljava/lang/String;I)Ljava/io/File;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-static {v5, p0}, Lcom/xinzhu/overmind/server/pm/m;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_b
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 341
    .line 342
    invoke-static {p0, p3}, Lcom/xinzhu/overmind/a;->x(Ljava/lang/String;I)Ljava/io/File;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-static {v5, p0}, Lcom/xinzhu/overmind/server/pm/m;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :goto_5
    :try_start_0
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/b;->g()Z

    .line 354
    .line 355
    .line 356
    move-result p0

    .line 357
    if-eqz p0, :cond_c

    .line 358
    .line 359
    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    invoke-virtual {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/b;->M0(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    :cond_c
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/b;->c()Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    if-eqz p0, :cond_d

    .line 371
    .line 372
    iget-object p0, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/b;->I0(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    :cond_d
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/b;->h()Z

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    if-eqz p0, :cond_e

    .line 382
    .line 383
    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-virtual {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/b;->N0(Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    :cond_e
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/b;->d()Z

    .line 391
    .line 392
    .line 393
    move-result p0

    .line 394
    if-eqz p0, :cond_f

    .line 395
    .line 396
    iget-object p0, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/b;->J0(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    .line 400
    .line 401
    goto :goto_6

    .line 402
    :catchall_0
    move-exception p0

    .line 403
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 404
    .line 405
    .line 406
    :cond_f
    :goto_6
    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/q;->c(Landroid/content/pm/ApplicationInfo;)V

    .line 407
    .line 408
    .line 409
    return-object v5
.end method

.method public static final g(Lcom/xinzhu/overmind/server/pm/MindPackage$d;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    and-int/lit16 p1, p1, 0x80

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$d;->f:Landroid/content/pm/InstrumentationInfo;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$d;->f:Landroid/content/pm/InstrumentationInfo;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    iput-object p0, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 26
    .line 27
    :cond_2
    return-object v0
.end method

.method public static h(Lcom/xinzhu/overmind/server/pm/MindPackage;IJJLcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    invoke-static {p1, p6, v0}, Lcom/xinzhu/overmind/server/pm/q;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v0, Landroid/content/pm/PackageInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    .line 26
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    iget v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->r:I

    .line 40
    .line 41
    iput v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 42
    .line 43
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->t:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v2, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 50
    .line 51
    iget v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->w:I

    .line 52
    .line 53
    iput v2, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 54
    .line 55
    invoke-static {p0, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    iput-wide p2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 62
    .line 63
    iput-wide p4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 64
    .line 65
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-nez p2, :cond_1

    .line 72
    .line 73
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    new-array p2, p2, [Ljava/lang/String;

    .line 80
    .line 81
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 87
    .line 88
    :cond_1
    and-int/lit16 p2, p1, 0x100

    .line 89
    .line 90
    if-eqz p2, :cond_2

    .line 91
    .line 92
    new-array p2, v3, [I

    .line 93
    .line 94
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->gids:[I

    .line 95
    .line 96
    :cond_2
    and-int/lit16 p2, p1, 0x4000

    .line 97
    .line 98
    if-eqz p2, :cond_6

    .line 99
    .line 100
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 101
    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    const/4 p2, 0x0

    .line 110
    :goto_0
    if-lez p2, :cond_4

    .line 111
    .line 112
    new-array p2, p2, [Landroid/content/pm/ConfigurationInfo;

    .line 113
    .line 114
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 115
    .line 116
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_4
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    .line 122
    .line 123
    if-eqz p2, :cond_5

    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    const/4 p2, 0x0

    .line 131
    :goto_1
    if-lez p2, :cond_6

    .line 132
    .line 133
    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    .line 134
    .line 135
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 136
    .line 137
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    :cond_6
    and-int/lit8 p2, p1, 0x1

    .line 143
    .line 144
    if-eqz p2, :cond_9

    .line 145
    .line 146
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 147
    .line 148
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-lez p2, :cond_9

    .line 155
    .line 156
    new-array p3, p2, [Landroid/content/pm/ActivityInfo;

    .line 157
    .line 158
    const/4 p4, 0x0

    .line 159
    const/4 p5, 0x0

    .line 160
    :goto_2
    if-ge p4, p2, :cond_8

    .line 161
    .line 162
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 169
    .line 170
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 175
    .line 176
    invoke-virtual {v4, v5, p1, p7}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_7

    .line 181
    .line 182
    invoke-static {v2, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/q;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-eqz v2, :cond_7

    .line 187
    .line 188
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 189
    .line 190
    iput-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 191
    .line 192
    add-int/lit8 v4, p5, 0x1

    .line 193
    .line 194
    aput-object v2, p3, p5

    .line 195
    .line 196
    move p5, v4

    .line 197
    :cond_7
    add-int/lit8 p4, p4, 0x1

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_8
    invoke-static {p3, p5}, Lcom/xinzhu/overmind/utils/d;->p([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    check-cast p2, [Landroid/content/pm/ActivityInfo;

    .line 205
    .line 206
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 207
    .line 208
    :cond_9
    and-int/lit8 p2, p1, 0x2

    .line 209
    .line 210
    if-eqz p2, :cond_c

    .line 211
    .line 212
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 213
    .line 214
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    if-lez p2, :cond_c

    .line 221
    .line 222
    new-array p3, p2, [Landroid/content/pm/ActivityInfo;

    .line 223
    .line 224
    const/4 p4, 0x0

    .line 225
    const/4 p5, 0x0

    .line 226
    :goto_3
    if-ge p4, p2, :cond_b

    .line 227
    .line 228
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 235
    .line 236
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 241
    .line 242
    invoke-virtual {v4, v5, p1, p7}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_a

    .line 247
    .line 248
    invoke-static {v2, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/q;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-eqz v2, :cond_a

    .line 253
    .line 254
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 255
    .line 256
    iput-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 257
    .line 258
    add-int/lit8 v4, p5, 0x1

    .line 259
    .line 260
    aput-object v2, p3, p5

    .line 261
    .line 262
    move p5, v4

    .line 263
    :cond_a
    add-int/lit8 p4, p4, 0x1

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_b
    invoke-static {p3, p5}, Lcom/xinzhu/overmind/utils/d;->p([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    check-cast p2, [Landroid/content/pm/ActivityInfo;

    .line 271
    .line 272
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 273
    .line 274
    :cond_c
    and-int/lit8 p2, p1, 0x4

    .line 275
    .line 276
    if-eqz p2, :cond_f

    .line 277
    .line 278
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 279
    .line 280
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-lez p2, :cond_f

    .line 287
    .line 288
    new-array p3, p2, [Landroid/content/pm/ServiceInfo;

    .line 289
    .line 290
    const/4 p4, 0x0

    .line 291
    const/4 p5, 0x0

    .line 292
    :goto_4
    if-ge p4, p2, :cond_e

    .line 293
    .line 294
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 301
    .line 302
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    .line 307
    .line 308
    invoke-virtual {v4, v5, p1, p7}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_d

    .line 313
    .line 314
    invoke-static {v2, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/q;->l(Lcom/xinzhu/overmind/server/pm/MindPackage$h;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ServiceInfo;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    if-eqz v2, :cond_d

    .line 319
    .line 320
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 321
    .line 322
    iput-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 323
    .line 324
    add-int/lit8 v4, p5, 0x1

    .line 325
    .line 326
    aput-object v2, p3, p5

    .line 327
    .line 328
    move p5, v4

    .line 329
    :cond_d
    add-int/lit8 p4, p4, 0x1

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_e
    invoke-static {p3, p5}, Lcom/xinzhu/overmind/utils/d;->p([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    check-cast p2, [Landroid/content/pm/ServiceInfo;

    .line 337
    .line 338
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 339
    .line 340
    :cond_f
    and-int/lit8 p2, p1, 0x8

    .line 341
    .line 342
    if-eqz p2, :cond_12

    .line 343
    .line 344
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 345
    .line 346
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    if-lez p2, :cond_12

    .line 353
    .line 354
    new-array p3, p2, [Landroid/content/pm/ProviderInfo;

    .line 355
    .line 356
    const/4 p4, 0x0

    .line 357
    const/4 p5, 0x0

    .line 358
    :goto_5
    if-ge p4, p2, :cond_11

    .line 359
    .line 360
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 367
    .line 368
    invoke-static {v2, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/q;->k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    if-eqz v4, :cond_10

    .line 373
    .line 374
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 379
    .line 380
    invoke-virtual {v5, v2, p1, p7}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_10

    .line 385
    .line 386
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 387
    .line 388
    iput-object v2, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 389
    .line 390
    add-int/lit8 v2, p5, 0x1

    .line 391
    .line 392
    aput-object v4, p3, p5

    .line 393
    .line 394
    move p5, v2

    .line 395
    :cond_10
    add-int/lit8 p4, p4, 0x1

    .line 396
    .line 397
    goto :goto_5

    .line 398
    :cond_11
    invoke-static {p3, p5}, Lcom/xinzhu/overmind/utils/d;->p([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object p2

    .line 402
    check-cast p2, [Landroid/content/pm/ProviderInfo;

    .line 403
    .line 404
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 405
    .line 406
    :cond_12
    and-int/lit8 p2, p1, 0x10

    .line 407
    .line 408
    if-eqz p2, :cond_13

    .line 409
    .line 410
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 411
    .line 412
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 415
    .line 416
    .line 417
    move-result p2

    .line 418
    if-lez p2, :cond_13

    .line 419
    .line 420
    new-array p3, p2, [Landroid/content/pm/InstrumentationInfo;

    .line 421
    .line 422
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 423
    .line 424
    const/4 p3, 0x0

    .line 425
    :goto_6
    if-ge p3, p2, :cond_13

    .line 426
    .line 427
    iget-object p4, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 428
    .line 429
    iget-object p5, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object p5

    .line 435
    check-cast p5, Lcom/xinzhu/overmind/server/pm/MindPackage$d;

    .line 436
    .line 437
    invoke-static {p5, p1}, Lcom/xinzhu/overmind/server/pm/q;->g(Lcom/xinzhu/overmind/server/pm/MindPackage$d;I)Landroid/content/pm/InstrumentationInfo;

    .line 438
    .line 439
    .line 440
    move-result-object p5

    .line 441
    aput-object p5, p4, p3

    .line 442
    .line 443
    add-int/lit8 p3, p3, 0x1

    .line 444
    .line 445
    goto :goto_6

    .line 446
    :cond_13
    and-int/lit16 p2, p1, 0x1000

    .line 447
    .line 448
    if-eqz p2, :cond_15

    .line 449
    .line 450
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 451
    .line 452
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result p2

    .line 458
    if-lez p2, :cond_14

    .line 459
    .line 460
    new-array p3, p2, [Landroid/content/pm/PermissionInfo;

    .line 461
    .line 462
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 463
    .line 464
    const/4 p3, 0x0

    .line 465
    :goto_7
    if-ge p3, p2, :cond_14

    .line 466
    .line 467
    iget-object p4, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 468
    .line 469
    iget-object p5, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object p5

    .line 475
    check-cast p5, Lcom/xinzhu/overmind/server/pm/MindPackage$e;

    .line 476
    .line 477
    invoke-static {p5, p1}, Lcom/xinzhu/overmind/server/pm/q;->j(Lcom/xinzhu/overmind/server/pm/MindPackage$e;I)Landroid/content/pm/PermissionInfo;

    .line 478
    .line 479
    .line 480
    move-result-object p5

    .line 481
    aput-object p5, p4, p3

    .line 482
    .line 483
    add-int/lit8 p3, p3, 0x1

    .line 484
    .line 485
    goto :goto_7

    .line 486
    :cond_14
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 487
    .line 488
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 491
    .line 492
    .line 493
    move-result p2

    .line 494
    if-lez p2, :cond_15

    .line 495
    .line 496
    new-array p3, p2, [Ljava/lang/String;

    .line 497
    .line 498
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 499
    .line 500
    new-array p3, p2, [I

    .line 501
    .line 502
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 503
    .line 504
    const/4 p3, 0x0

    .line 505
    :goto_8
    if-ge p3, p2, :cond_15

    .line 506
    .line 507
    iget-object p4, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object p4

    .line 513
    check-cast p4, Ljava/lang/String;

    .line 514
    .line 515
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 516
    .line 517
    aput-object p4, p5, p3

    .line 518
    .line 519
    add-int/lit8 p3, p3, 0x1

    .line 520
    .line 521
    goto :goto_8

    .line 522
    :cond_15
    and-int/lit8 p2, p1, 0x40

    .line 523
    .line 524
    const/4 p3, 0x1

    .line 525
    if-eqz p2, :cond_18

    .line 526
    .line 527
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    .line 528
    .line 529
    .line 530
    move-result p2

    .line 531
    if-eqz p2, :cond_17

    .line 532
    .line 533
    new-instance p2, Lcom/xinzhu/haunted/android/content/pm/n$a;

    .line 534
    .line 535
    iget-object p4, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;

    .line 536
    .line 537
    invoke-direct {p2, p4}, Lcom/xinzhu/haunted/android/content/pm/n$a;-><init>(Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {p2}, Lcom/xinzhu/haunted/android/content/pm/n$a;->w()Z

    .line 541
    .line 542
    .line 543
    move-result p4

    .line 544
    if-eqz p4, :cond_16

    .line 545
    .line 546
    new-array p4, p3, [Landroid/content/pm/Signature;

    .line 547
    .line 548
    iput-object p4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 549
    .line 550
    invoke-virtual {p2}, Lcom/xinzhu/haunted/android/content/pm/n$a;->r()[Landroid/content/pm/Signature;

    .line 551
    .line 552
    .line 553
    move-result-object p2

    .line 554
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    check-cast p2, [Landroid/content/pm/Signature;

    .line 558
    .line 559
    aget-object p2, p2, v3

    .line 560
    .line 561
    aput-object p2, p4, v3

    .line 562
    .line 563
    goto :goto_9

    .line 564
    :cond_16
    invoke-virtual {p2}, Lcom/xinzhu/haunted/android/content/pm/n$a;->x()Z

    .line 565
    .line 566
    .line 567
    move-result p2

    .line 568
    if-eqz p2, :cond_18

    .line 569
    .line 570
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;

    .line 571
    .line 572
    iget-object p2, p2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 573
    .line 574
    invoke-virtual {p2}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object p2

    .line 578
    check-cast p2, [Landroid/content/pm/Signature;

    .line 579
    .line 580
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 581
    .line 582
    goto :goto_9

    .line 583
    :cond_17
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:[Landroid/content/pm/Signature;

    .line 584
    .line 585
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 586
    .line 587
    :cond_18
    :goto_9
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    .line 588
    .line 589
    .line 590
    move-result p2

    .line 591
    if-eqz p2, :cond_1c

    .line 592
    .line 593
    const/high16 p2, 0x8000000

    .line 594
    .line 595
    and-int/2addr p1, p2

    .line 596
    if-eqz p1, :cond_1c

    .line 597
    .line 598
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;

    .line 599
    .line 600
    if-eqz p1, :cond_1c

    .line 601
    .line 602
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    .line 603
    .line 604
    .line 605
    move-result p1

    .line 606
    if-eqz p1, :cond_1b

    .line 607
    .line 608
    new-instance p1, Lcom/xinzhu/haunted/android/content/pm/n$a;

    .line 609
    .line 610
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;

    .line 611
    .line 612
    invoke-direct {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/n$a;-><init>(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/n$a;->v()[Landroid/content/pm/Signature;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    if-eqz p0, :cond_19

    .line 620
    .line 621
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/n$a;->v()[Landroid/content/pm/Signature;

    .line 622
    .line 623
    .line 624
    move-result-object p0

    .line 625
    invoke-virtual {p0}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object p0

    .line 629
    check-cast p0, [Landroid/content/pm/Signature;

    .line 630
    .line 631
    goto :goto_a

    .line 632
    :cond_19
    move-object p0, v1

    .line 633
    :goto_a
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/n$a;->u()I

    .line 634
    .line 635
    .line 636
    move-result p2

    .line 637
    invoke-static {}, Lv0/e;->a()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/n$a;->t()Landroid/util/ArraySet;

    .line 641
    .line 642
    .line 643
    move-result-object p4

    .line 644
    invoke-static {p4}, Lcom/xinzhu/overmind/server/pm/p;->a(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    .line 645
    .line 646
    .line 647
    move-result-object p4

    .line 648
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/n$a;->r()[Landroid/content/pm/Signature;

    .line 649
    .line 650
    .line 651
    move-result-object p5

    .line 652
    if-eqz p5, :cond_1a

    .line 653
    .line 654
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/n$a;->r()[Landroid/content/pm/Signature;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    invoke-virtual {p1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    move-object v1, p1

    .line 663
    check-cast v1, [Landroid/content/pm/Signature;

    .line 664
    .line 665
    :cond_1a
    invoke-static {p0, p2, p4, v1}, Lcom/xinzhu/haunted/android/content/pm/t;->l([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)Lcom/xinzhu/haunted/android/content/pm/t;

    .line 666
    .line 667
    .line 668
    move-result-object p0

    .line 669
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    iget-object p0, p0, Lcom/xinzhu/haunted/android/content/pm/t;->a:Ljava/lang/Object;

    .line 673
    .line 674
    :try_start_0
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/u;->a()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    move-result-object p1

    .line 678
    new-array p2, p3, [Ljava/lang/Class;

    .line 679
    .line 680
    sget-object p4, Lcom/xinzhu/haunted/android/content/pm/t;->c:Ljava/lang/Class;

    .line 681
    .line 682
    aput-object p4, p2, v3

    .line 683
    .line 684
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    invoke-virtual {p1, p3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 689
    .line 690
    .line 691
    new-array p2, p3, [Ljava/lang/Object;

    .line 692
    .line 693
    aput-object p0, p2, v3

    .line 694
    .line 695
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    invoke-static {p0}, Lcom/xinzhu/overmind/server/pm/j;->a(Ljava/lang/Object;)Landroid/content/pm/SigningInfo;

    .line 700
    .line 701
    .line 702
    move-result-object p0

    .line 703
    invoke-static {v0, p0}, Lcom/xinzhu/overmind/server/pm/k;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/SigningInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    .line 705
    .line 706
    goto :goto_b

    .line 707
    :catchall_0
    move-exception p0

    .line 708
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 709
    .line 710
    .line 711
    goto :goto_b

    .line 712
    :cond_1b
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;

    .line 713
    .line 714
    invoke-static {p0}, Lcom/xinzhu/haunted/android/content/pm/v;->e(Ljava/lang/Object;)Lcom/xinzhu/haunted/android/content/pm/v;

    .line 715
    .line 716
    .line 717
    move-result-object p0

    .line 718
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    iget-object p0, p0, Lcom/xinzhu/haunted/android/content/pm/v;->a:Ljava/lang/Object;

    .line 722
    .line 723
    invoke-static {p0}, Lcom/xinzhu/overmind/server/pm/j;->a(Ljava/lang/Object;)Landroid/content/pm/SigningInfo;

    .line 724
    .line 725
    .line 726
    move-result-object p0

    .line 727
    invoke-static {v0, p0}, Lcom/xinzhu/overmind/server/pm/k;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/SigningInfo;)V

    .line 728
    .line 729
    .line 730
    :cond_1c
    :goto_b
    return-object v0
.end method

.method public static i(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    move v2, p1

    .line 14
    move-object v7, p2

    .line 15
    move v8, p3

    .line 16
    :try_start_0
    invoke-static/range {v1 .. v8}, Lcom/xinzhu/overmind/server/pm/q;->h(Lcom/xinzhu/overmind/server/pm/MindPackage;IJJLcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/PackageInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final j(Lcom/xinzhu/overmind/server/pm/MindPackage$e;I)Landroid/content/pm/PermissionInfo;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    and-int/lit16 p1, p1, 0x80

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$e;->f:Landroid/content/pm/PermissionInfo;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$e;->f:Landroid/content/pm/PermissionInfo;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    iput-object p0, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 26
    .line 27
    :cond_2
    return-object v0
.end method

.method public static final k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/q;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    new-instance v0, Landroid/content/pm/ProviderInfo;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 16
    .line 17
    invoke-direct {v0, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    and-int/lit16 v2, p1, 0x80

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 34
    .line 35
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 44
    .line 45
    and-int/lit16 v2, p1, 0x800

    .line 46
    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 50
    .line 51
    :cond_3
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 52
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iput-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 58
    .line 59
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, v0, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    iput-boolean p0, v0, Landroid/content/pm/ProviderInfo;->enabled:Z

    .line 68
    .line 69
    return-object v0
.end method

.method public static final l(Lcom/xinzhu/overmind/server/pm/MindPackage$h;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/q;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Landroid/content/pm/ServiceInfo;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 18
    .line 19
    .line 20
    and-int/lit16 v1, p1, 0x80

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 29
    .line 30
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 41
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iput-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v0, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    iput-boolean p0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 57
    .line 58
    return-object v0
.end method

.method private static m(Ljava/lang/String;)Lcom/xinzhu/overmind/server/j$b;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BlockedPrivateApi",
            "PrivateApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/j;->a()Lcom/xinzhu/overmind/server/j;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/j;->b()Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/xinzhu/overmind/server/j$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

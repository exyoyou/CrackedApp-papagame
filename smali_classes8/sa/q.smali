.class public Lsa/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "q"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static a(Landroid/os/Parcel;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lsa/q;->b(Landroid/os/Parcel;)Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method private static b(Landroid/os/Parcel;)Landroid/content/pm/ApplicationInfo;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/os/q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/os/q;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    sget-object p0, Lsa/q;->a:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "unexpected squashed applicationinfo"

    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getStackTraceElement()V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_0
    new-instance v2, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iput v4, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 54
    .line 55
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    .line 57
    invoke-interface {v4, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/CharSequence;

    .line 62
    .line 63
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iput v4, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iput v4, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iput v4, v1, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 88
    .line 89
    new-instance v4, Lcom/xinzhu/haunted/android/content/pm/j;

    .line 90
    .line 91
    invoke-direct {v4, v1}, Lcom/xinzhu/haunted/android/content/pm/j;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-virtual {v4, v5}, Lcom/xinzhu/haunted/android/content/pm/j;->c(I)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    iput v4, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    iput v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->c1(I)Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->d1(I)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    iput v4, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    iput v4, v1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    iput v4, v1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_1

    .line 174
    .line 175
    new-instance v4, Ljava/util/UUID;

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 178
    .line 179
    .line 180
    move-result-wide v5

    .line 181
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 182
    .line 183
    .line 184
    move-result-wide v7

    .line 185
    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v4}, Lsa/a;->a(Landroid/content/pm/ApplicationInfo;Ljava/util/UUID;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v1}, Lsa/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/util/UUID;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-static {v4}, Lg9/c;->f(Ljava/util/UUID;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->t1(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    :cond_1
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->j1(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->i1(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-static {v1, v4}, Lcom/xinzhu/overmind/server/pm/l;->a(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 246
    .line 247
    const-class v4, [I

    .line 248
    .line 249
    invoke-static {p0, v3, v4}, Lsa/o;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->q1(Landroid/util/SparseArray;)Z

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    iput-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->n1(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->X0(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    const/4 v4, 0x0

    .line 281
    const/4 v5, 0x1

    .line 282
    if-eqz v3, :cond_2

    .line 283
    .line 284
    const/4 v3, 0x1

    .line 285
    goto :goto_0

    .line 286
    :cond_2
    const/4 v3, 0x0

    .line 287
    :goto_0
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->Y0(Z)Z

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->b1(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->m1(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->f1([Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->a1([Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->k1(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->l1(Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    iput-object v3, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {}, Lsa/b;->a()Landroid/os/Parcelable$Creator;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->o1(Ljava/util/List;)Z

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    iput-object v3, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-static {v1, v3}, Lcom/xinzhu/overmind/server/pm/m;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->J0(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    iput v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 374
    .line 375
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    invoke-static {v1, v3}, Lsa/c;->a(Landroid/content/pm/ApplicationInfo;I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    iput v3, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 387
    .line 388
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 389
    .line 390
    .line 391
    move-result-wide v6

    .line 392
    invoke-virtual {v2, v6, v7}, Lcom/xinzhu/haunted/android/content/pm/b;->F0(J)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    if-eqz v3, :cond_3

    .line 400
    .line 401
    const/4 v3, 0x1

    .line 402
    goto :goto_1

    .line 403
    :cond_3
    const/4 v3, 0x0

    .line 404
    :goto_1
    iput-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 405
    .line 406
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->O0(I)Z

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->T0(I)Z

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    iput-object v3, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    iput-object v3, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    iput v3, v1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 437
    .line 438
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    iput v3, v1, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 443
    .line 444
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->P0(I)Z

    .line 449
    .line 450
    .line 451
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->L0(I)Z

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-eqz v3, :cond_4

    .line 463
    .line 464
    const/4 v3, 0x1

    .line 465
    goto :goto_2

    .line 466
    :cond_4
    const/4 v3, 0x0

    .line 467
    :goto_2
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->K0(Z)Z

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->Z0(I)Z

    .line 475
    .line 476
    .line 477
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    invoke-static {v1, v3}, Lsa/d;->a(Landroid/content/pm/ApplicationInfo;I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->r1(I)Z

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->H0(Ljava/lang/String;)Z

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->p1([Ljava/lang/String;)Z

    .line 503
    .line 504
    .line 505
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    invoke-static {v1, v3}, Lsa/e;->a(Landroid/content/pm/ApplicationInfo;I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    invoke-static {v1, v3}, Lsa/f;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-static {v1, v3}, Lsa/g;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->S0(I)Z

    .line 531
    .line 532
    .line 533
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->g1(I)Z

    .line 538
    .line 539
    .line 540
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->U0(I)Z

    .line 545
    .line 546
    .line 547
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    if-eqz v3, :cond_5

    .line 552
    .line 553
    const/4 v3, 0x1

    .line 554
    goto :goto_3

    .line 555
    :cond_5
    const/4 v3, 0x0

    .line 556
    :goto_3
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->R0(Z)Z

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v2, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->u1(Ljava/lang/String;)Z

    .line 564
    .line 565
    .line 566
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    invoke-virtual {v2, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->Q0(I)Z

    .line 571
    .line 572
    .line 573
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    invoke-virtual {v2, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->V0(I)Z

    .line 578
    .line 579
    .line 580
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    invoke-virtual {v2, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->W0(I)Z

    .line 585
    .line 586
    .line 587
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/b;->r0()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    const-string v6, "unparcel"

    .line 596
    .line 597
    new-array v7, v5, [Ljava/lang/Class;

    .line 598
    .line 599
    const-class v8, Landroid/os/Parcel;

    .line 600
    .line 601
    aput-object v8, v7, v4

    .line 602
    .line 603
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 608
    .line 609
    .line 610
    new-array v5, v5, [Ljava/lang/Object;

    .line 611
    .line 612
    aput-object p0, v5, v4

    .line 613
    .line 614
    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    check-cast p0, Ljava/lang/Boolean;

    .line 619
    .line 620
    invoke-virtual {v2, p0}, Lcom/xinzhu/haunted/android/content/pm/b;->e1(Ljava/lang/Boolean;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .line 622
    .line 623
    goto :goto_4

    .line 624
    :catchall_0
    move-exception p0

    .line 625
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 626
    .line 627
    .line 628
    :goto_4
    sget-object p0, Lsa/q;->a:Ljava/lang/String;

    .line 629
    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .line 634
    .line 635
    const-string v2, "wtf application"

    .line 636
    .line 637
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 641
    .line 642
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .line 651
    .line 652
    return-object v1
.end method

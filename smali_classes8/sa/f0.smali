.class public Lsa/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "f0"


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

.method public static a(Landroid/os/Parcel;)Landroid/content/pm/ServiceInfo;
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
    invoke-static {p0}, Lsa/f0;->b(Landroid/os/Parcel;)Landroid/content/pm/ServiceInfo;

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

.method private static b(Landroid/os/Parcel;)Landroid/content/pm/ServiceInfo;
    .locals 11
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
    new-instance v1, Landroid/content/pm/ServiceInfo;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/xinzhu/haunted/android/content/pm/p;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Lcom/xinzhu/haunted/android/content/pm/p;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/xinzhu/haunted/android/content/pm/j;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Lcom/xinzhu/haunted/android/content/pm/j;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    sget-object v5, Lsa/f0;->a:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v7, "class name "

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v5, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iput-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iput-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iput v4, v1, Landroid/content/pm/ServiceInfo;->labelRes:I

    .line 64
    .line 65
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    .line 67
    invoke-interface {v4, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/CharSequence;

    .line 72
    .line 73
    iput-object v4, v1, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    iput v4, v1, Landroid/content/pm/ServiceInfo;->icon:I

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iput v4, v1, Landroid/content/pm/ServiceInfo;->logo:I

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iput-object v4, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iput v4, v1, Landroid/content/pm/ServiceInfo;->banner:I

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/j;->c(I)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const/4 v4, 0x0

    .line 111
    if-eqz v3, :cond_0

    .line 112
    .line 113
    const-string p0, "unexpected squashed applicationinfo"

    .line 114
    .line 115
    invoke-static {v5, p0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getStackTraceElement()V

    .line 119
    .line 120
    .line 121
    return-object v4

    .line 122
    :cond_0
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    .line 123
    .line 124
    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 128
    .line 129
    new-instance v3, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 130
    .line 131
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 132
    .line 133
    invoke-direct {v3, v5}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 159
    .line 160
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 161
    .line 162
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 163
    .line 164
    invoke-interface {v6, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    check-cast v6, Ljava/lang/CharSequence;

    .line 169
    .line 170
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 171
    .line 172
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 179
    .line 180
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 187
    .line 188
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 195
    .line 196
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 203
    .line 204
    new-instance v5, Lcom/xinzhu/haunted/android/content/pm/j;

    .line 205
    .line 206
    invoke-direct {v5, v1}, Lcom/xinzhu/haunted/android/content/pm/j;-><init>(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    invoke-virtual {v5, v6}, Lcom/xinzhu/haunted/android/content/pm/j;->c(I)Z

    .line 214
    .line 215
    .line 216
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 239
    .line 240
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 247
    .line 248
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 249
    .line 250
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 255
    .line 256
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 257
    .line 258
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 263
    .line 264
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-virtual {v3, v5}, Lcom/xinzhu/haunted/android/content/pm/b;->c1(I)Z

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    invoke-virtual {v3, v5}, Lcom/xinzhu/haunted/android/content/pm/b;->d1(I)Z

    .line 276
    .line 277
    .line 278
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 279
    .line 280
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 285
    .line 286
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 293
    .line 294
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 301
    .line 302
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    if-eqz v5, :cond_1

    .line 307
    .line 308
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 309
    .line 310
    new-instance v6, Ljava/util/UUID;

    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 313
    .line 314
    .line 315
    move-result-wide v7

    .line 316
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 317
    .line 318
    .line 319
    move-result-wide v9

    .line 320
    invoke-direct {v6, v7, v8, v9, v10}, Ljava/util/UUID;-><init>(JJ)V

    .line 321
    .line 322
    .line 323
    invoke-static {v5, v6}, Lsa/a;->a(Landroid/content/pm/ApplicationInfo;Ljava/util/UUID;)V

    .line 324
    .line 325
    .line 326
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 327
    .line 328
    invoke-static {v5}, Lsa/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/util/UUID;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-static {v5}, Lg9/c;->f(Ljava/util/UUID;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    invoke-virtual {v3, v5}, Lcom/xinzhu/haunted/android/content/pm/b;->t1(Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    :cond_1
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v3, v5}, Lcom/xinzhu/haunted/android/content/pm/b;->j1(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v3, v5}, Lcom/xinzhu/haunted/android/content/pm/b;->i1(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 360
    .line 361
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 362
    .line 363
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 368
    .line 369
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 370
    .line 371
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-static {v5, v6}, Lcom/xinzhu/overmind/server/pm/l;->a(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 379
    .line 380
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 385
    .line 386
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 387
    .line 388
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 393
    .line 394
    const-class v5, [I

    .line 395
    .line 396
    invoke-static {p0, v4, v5}, Lsa/o;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->q1(Landroid/util/SparseArray;)Z

    .line 401
    .line 402
    .line 403
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->n1(Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->X0(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    const/4 v5, 0x0

    .line 430
    const/4 v6, 0x1

    .line 431
    if-eqz v4, :cond_2

    .line 432
    .line 433
    const/4 v4, 0x1

    .line 434
    goto :goto_0

    .line 435
    :cond_2
    const/4 v4, 0x0

    .line 436
    :goto_0
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->Y0(Z)Z

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->b1(Ljava/lang/String;)Z

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->m1(Ljava/lang/String;)Z

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->f1([Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->a1([Ljava/lang/String;)Z

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->k1(Ljava/lang/String;)Z

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->l1(Ljava/lang/String;)Z

    .line 479
    .line 480
    .line 481
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 482
    .line 483
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 488
    .line 489
    invoke-static {}, Lsa/b;->a()Landroid/os/Parcelable$Creator;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->o1(Ljava/util/List;)Z

    .line 498
    .line 499
    .line 500
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 501
    .line 502
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 507
    .line 508
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 509
    .line 510
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v7

    .line 514
    invoke-static {v4, v7}, Lcom/xinzhu/overmind/server/pm/m;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->J0(Ljava/lang/String;)Z

    .line 522
    .line 523
    .line 524
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 525
    .line 526
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 527
    .line 528
    .line 529
    move-result v7

    .line 530
    iput v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 531
    .line 532
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 533
    .line 534
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 535
    .line 536
    .line 537
    move-result v7

    .line 538
    invoke-static {v4, v7}, Lsa/c;->a(Landroid/content/pm/ApplicationInfo;I)V

    .line 539
    .line 540
    .line 541
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 542
    .line 543
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    iput v7, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 548
    .line 549
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 550
    .line 551
    .line 552
    move-result-wide v7

    .line 553
    invoke-virtual {v3, v7, v8}, Lcom/xinzhu/haunted/android/content/pm/b;->F0(J)V

    .line 554
    .line 555
    .line 556
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 557
    .line 558
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    if-eqz v7, :cond_3

    .line 563
    .line 564
    const/4 v7, 0x1

    .line 565
    goto :goto_1

    .line 566
    :cond_3
    const/4 v7, 0x0

    .line 567
    :goto_1
    iput-boolean v7, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 568
    .line 569
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->O0(I)Z

    .line 574
    .line 575
    .line 576
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->T0(I)Z

    .line 581
    .line 582
    .line 583
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 584
    .line 585
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v7

    .line 589
    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 590
    .line 591
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 592
    .line 593
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v7

    .line 597
    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 598
    .line 599
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 600
    .line 601
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 602
    .line 603
    .line 604
    move-result v7

    .line 605
    iput v7, v4, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 606
    .line 607
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 608
    .line 609
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 610
    .line 611
    .line 612
    move-result v7

    .line 613
    iput v7, v4, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 614
    .line 615
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->P0(I)Z

    .line 620
    .line 621
    .line 622
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->L0(I)Z

    .line 627
    .line 628
    .line 629
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    if-eqz v4, :cond_4

    .line 634
    .line 635
    const/4 v4, 0x1

    .line 636
    goto :goto_2

    .line 637
    :cond_4
    const/4 v4, 0x0

    .line 638
    :goto_2
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->K0(Z)Z

    .line 639
    .line 640
    .line 641
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 642
    .line 643
    .line 644
    move-result v4

    .line 645
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->Z0(I)Z

    .line 646
    .line 647
    .line 648
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 649
    .line 650
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 651
    .line 652
    .line 653
    move-result v7

    .line 654
    invoke-static {v4, v7}, Lsa/d;->a(Landroid/content/pm/ApplicationInfo;I)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->r1(I)Z

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v4

    .line 668
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->H0(Ljava/lang/String;)Z

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->p1([Ljava/lang/String;)Z

    .line 676
    .line 677
    .line 678
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 679
    .line 680
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 681
    .line 682
    .line 683
    move-result v7

    .line 684
    invoke-static {v4, v7}, Lsa/e;->a(Landroid/content/pm/ApplicationInfo;I)V

    .line 685
    .line 686
    .line 687
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 688
    .line 689
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v7

    .line 693
    invoke-static {v4, v7}, Lsa/f;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 697
    .line 698
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v7

    .line 702
    invoke-static {v4, v7}, Lsa/g;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 706
    .line 707
    .line 708
    move-result v4

    .line 709
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->S0(I)Z

    .line 710
    .line 711
    .line 712
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->g1(I)Z

    .line 717
    .line 718
    .line 719
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 720
    .line 721
    .line 722
    move-result v4

    .line 723
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->U0(I)Z

    .line 724
    .line 725
    .line 726
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 727
    .line 728
    .line 729
    move-result v4

    .line 730
    if-eqz v4, :cond_5

    .line 731
    .line 732
    const/4 v4, 0x1

    .line 733
    goto :goto_3

    .line 734
    :cond_5
    const/4 v4, 0x0

    .line 735
    :goto_3
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->R0(Z)Z

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v4

    .line 742
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->u1(Ljava/lang/String;)Z

    .line 743
    .line 744
    .line 745
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 746
    .line 747
    .line 748
    move-result v4

    .line 749
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->Q0(I)Z

    .line 750
    .line 751
    .line 752
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 753
    .line 754
    .line 755
    move-result v4

    .line 756
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->V0(I)Z

    .line 757
    .line 758
    .line 759
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 760
    .line 761
    .line 762
    move-result v4

    .line 763
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->W0(I)Z

    .line 764
    .line 765
    .line 766
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/b;->r0()Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    move-result-object v7

    .line 774
    const-string v8, "unparcel"

    .line 775
    .line 776
    new-array v9, v6, [Ljava/lang/Class;

    .line 777
    .line 778
    const-class v10, Landroid/os/Parcel;

    .line 779
    .line 780
    aput-object v10, v9, v5

    .line 781
    .line 782
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 783
    .line 784
    .line 785
    move-result-object v7

    .line 786
    invoke-virtual {v7, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 787
    .line 788
    .line 789
    new-array v8, v6, [Ljava/lang/Object;

    .line 790
    .line 791
    aput-object p0, v8, v5

    .line 792
    .line 793
    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    check-cast v4, Ljava/lang/Boolean;

    .line 798
    .line 799
    invoke-virtual {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->e1(Ljava/lang/Boolean;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    .line 801
    .line 802
    goto :goto_4

    .line 803
    :catchall_0
    move-exception v3

    .line 804
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 805
    .line 806
    .line 807
    :goto_4
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v3

    .line 811
    iput-object v3, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    invoke-static {v1, v3}, Lsa/c0;->a(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    invoke-static {v1, v3}, Lsa/d0;->a(Landroid/content/pm/ServiceInfo;[Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 828
    .line 829
    .line 830
    move-result v3

    .line 831
    iput v3, v1, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    .line 832
    .line 833
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 834
    .line 835
    .line 836
    move-result v3

    .line 837
    if-eqz v3, :cond_6

    .line 838
    .line 839
    const/4 v3, 0x1

    .line 840
    goto :goto_5

    .line 841
    :cond_6
    const/4 v3, 0x0

    .line 842
    :goto_5
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 843
    .line 844
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    if-eqz v3, :cond_7

    .line 849
    .line 850
    const/4 v3, 0x1

    .line 851
    goto :goto_6

    .line 852
    :cond_7
    const/4 v3, 0x0

    .line 853
    :goto_6
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 854
    .line 855
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    if-eqz v3, :cond_8

    .line 860
    .line 861
    const/4 v5, 0x1

    .line 862
    :cond_8
    invoke-static {v1, v5}, Lsa/e0;->a(Landroid/content/pm/ServiceInfo;Z)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 870
    .line 871
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 872
    .line 873
    .line 874
    move-result v0

    .line 875
    iput v0, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 876
    .line 877
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 878
    .line 879
    .line 880
    move-result p0

    .line 881
    invoke-virtual {v2, p0}, Lcom/xinzhu/haunted/android/content/pm/p;->c(I)Z

    .line 882
    .line 883
    .line 884
    sget-object p0, Lsa/f0;->a:Ljava/lang/String;

    .line 885
    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    .line 887
    .line 888
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .line 890
    .line 891
    const-string v2, "wtf "

    .line 892
    .line 893
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 897
    .line 898
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .line 907
    .line 908
    return-object v1
.end method

.class public Lsa/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "b0"


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

.method public static a(Landroid/os/Parcel;)Landroid/content/pm/ProviderInfo;
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
    invoke-static {p0}, Lsa/b0;->b(Landroid/os/Parcel;)Landroid/content/pm/ProviderInfo;

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

.method private static b(Landroid/os/Parcel;)Landroid/content/pm/ProviderInfo;
    .locals 10
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
    new-instance v1, Landroid/content/pm/ProviderInfo;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/xinzhu/haunted/android/content/pm/j;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Lcom/xinzhu/haunted/android/content/pm/j;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Lsa/b0;->a:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v6, "class name "

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iput-object v3, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iput v3, v1, Landroid/content/pm/ProviderInfo;->labelRes:I

    .line 59
    .line 60
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-interface {v3, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/CharSequence;

    .line 67
    .line 68
    iput-object v3, v1, Landroid/content/pm/ProviderInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iput v3, v1, Landroid/content/pm/ProviderInfo;->icon:I

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iput v3, v1, Landroid/content/pm/ProviderInfo;->logo:I

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iput-object v3, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    iput v3, v1, Landroid/content/pm/ProviderInfo;->banner:I

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/j;->c(I)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    const/4 v3, 0x0

    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    const-string p0, "unexpected squashed applicationinfo"

    .line 109
    .line 110
    invoke-static {v4, p0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getStackTraceElement()V

    .line 114
    .line 115
    .line 116
    return-object v3

    .line 117
    :cond_0
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    .line 118
    .line 119
    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 123
    .line 124
    new-instance v2, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 125
    .line 126
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 127
    .line 128
    invoke-direct {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 154
    .line 155
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 156
    .line 157
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 158
    .line 159
    invoke-interface {v5, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/lang/CharSequence;

    .line 164
    .line 165
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 166
    .line 167
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 174
    .line 175
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 182
    .line 183
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 190
    .line 191
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 198
    .line 199
    new-instance v4, Lcom/xinzhu/haunted/android/content/pm/j;

    .line 200
    .line 201
    invoke-direct {v4, v1}, Lcom/xinzhu/haunted/android/content/pm/j;-><init>(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-virtual {v4, v5}, Lcom/xinzhu/haunted/android/content/pm/j;->c(I)Z

    .line 209
    .line 210
    .line 211
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 226
    .line 227
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 250
    .line 251
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->c1(I)Z

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->d1(I)Z

    .line 271
    .line 272
    .line 273
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 274
    .line 275
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 280
    .line 281
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 282
    .line 283
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 288
    .line 289
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 290
    .line 291
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 296
    .line 297
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_1

    .line 302
    .line 303
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 304
    .line 305
    new-instance v5, Ljava/util/UUID;

    .line 306
    .line 307
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 308
    .line 309
    .line 310
    move-result-wide v6

    .line 311
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 312
    .line 313
    .line 314
    move-result-wide v8

    .line 315
    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 316
    .line 317
    .line 318
    invoke-static {v4, v5}, Lsa/a;->a(Landroid/content/pm/ApplicationInfo;Ljava/util/UUID;)V

    .line 319
    .line 320
    .line 321
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 322
    .line 323
    invoke-static {v4}, Lsa/n;->a(Landroid/content/pm/ApplicationInfo;)Ljava/util/UUID;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-static {v4}, Lg9/c;->f(Ljava/util/UUID;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->t1(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    :cond_1
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->j1(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/content/pm/b;->i1(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 357
    .line 358
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 363
    .line 364
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/server/pm/l;->a(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 380
    .line 381
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 388
    .line 389
    const-class v4, [I

    .line 390
    .line 391
    invoke-static {p0, v3, v4}, Lsa/o;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->q1(Landroid/util/SparseArray;)Z

    .line 396
    .line 397
    .line 398
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 399
    .line 400
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->n1(Ljava/lang/String;)Z

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->X0(Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    const/4 v4, 0x0

    .line 425
    const/4 v5, 0x1

    .line 426
    if-eqz v3, :cond_2

    .line 427
    .line 428
    const/4 v3, 0x1

    .line 429
    goto :goto_0

    .line 430
    :cond_2
    const/4 v3, 0x0

    .line 431
    :goto_0
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->Y0(Z)Z

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->b1(Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->m1(Ljava/lang/String;)Z

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->f1([Ljava/lang/String;)Z

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->a1([Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->k1(Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->l1(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 477
    .line 478
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    iput-object v6, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 483
    .line 484
    invoke-static {}, Lsa/b;->a()Landroid/os/Parcelable$Creator;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->o1(Ljava/util/List;)Z

    .line 493
    .line 494
    .line 495
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 496
    .line 497
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    iput-object v6, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 502
    .line 503
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    invoke-static {v3, v6}, Lcom/xinzhu/overmind/server/pm/m;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->J0(Ljava/lang/String;)Z

    .line 517
    .line 518
    .line 519
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 520
    .line 521
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    iput v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 526
    .line 527
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 528
    .line 529
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 530
    .line 531
    .line 532
    move-result v6

    .line 533
    invoke-static {v3, v6}, Lsa/c;->a(Landroid/content/pm/ApplicationInfo;I)V

    .line 534
    .line 535
    .line 536
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 537
    .line 538
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    iput v6, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 543
    .line 544
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 545
    .line 546
    .line 547
    move-result-wide v6

    .line 548
    invoke-virtual {v2, v6, v7}, Lcom/xinzhu/haunted/android/content/pm/b;->F0(J)V

    .line 549
    .line 550
    .line 551
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 552
    .line 553
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    if-eqz v6, :cond_3

    .line 558
    .line 559
    const/4 v6, 0x1

    .line 560
    goto :goto_1

    .line 561
    :cond_3
    const/4 v6, 0x0

    .line 562
    :goto_1
    iput-boolean v6, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 563
    .line 564
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->O0(I)Z

    .line 569
    .line 570
    .line 571
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->T0(I)Z

    .line 576
    .line 577
    .line 578
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 579
    .line 580
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    iput-object v6, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 585
    .line 586
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 587
    .line 588
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    iput-object v6, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 593
    .line 594
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 595
    .line 596
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    iput v6, v3, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 601
    .line 602
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 603
    .line 604
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 605
    .line 606
    .line 607
    move-result v6

    .line 608
    iput v6, v3, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 609
    .line 610
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 611
    .line 612
    .line 613
    move-result v3

    .line 614
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->P0(I)Z

    .line 615
    .line 616
    .line 617
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->L0(I)Z

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    if-eqz v3, :cond_4

    .line 629
    .line 630
    const/4 v3, 0x1

    .line 631
    goto :goto_2

    .line 632
    :cond_4
    const/4 v3, 0x0

    .line 633
    :goto_2
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->K0(Z)Z

    .line 634
    .line 635
    .line 636
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->Z0(I)Z

    .line 641
    .line 642
    .line 643
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 644
    .line 645
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 646
    .line 647
    .line 648
    move-result v6

    .line 649
    invoke-static {v3, v6}, Lsa/d;->a(Landroid/content/pm/ApplicationInfo;I)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->r1(I)Z

    .line 657
    .line 658
    .line 659
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->H0(Ljava/lang/String;)Z

    .line 664
    .line 665
    .line 666
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->p1([Ljava/lang/String;)Z

    .line 671
    .line 672
    .line 673
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 674
    .line 675
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 676
    .line 677
    .line 678
    move-result v6

    .line 679
    invoke-static {v3, v6}, Lsa/e;->a(Landroid/content/pm/ApplicationInfo;I)V

    .line 680
    .line 681
    .line 682
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 683
    .line 684
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v6

    .line 688
    invoke-static {v3, v6}, Lsa/f;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 692
    .line 693
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v6

    .line 697
    invoke-static {v3, v6}, Lsa/g;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->S0(I)Z

    .line 705
    .line 706
    .line 707
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 708
    .line 709
    .line 710
    move-result v3

    .line 711
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->g1(I)Z

    .line 712
    .line 713
    .line 714
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->U0(I)Z

    .line 719
    .line 720
    .line 721
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    if-eqz v3, :cond_5

    .line 726
    .line 727
    const/4 v3, 0x1

    .line 728
    goto :goto_3

    .line 729
    :cond_5
    const/4 v3, 0x0

    .line 730
    :goto_3
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->R0(Z)Z

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->u1(Ljava/lang/String;)Z

    .line 738
    .line 739
    .line 740
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->Q0(I)Z

    .line 745
    .line 746
    .line 747
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->V0(I)Z

    .line 752
    .line 753
    .line 754
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->W0(I)Z

    .line 759
    .line 760
    .line 761
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/b;->r0()Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    const-string v7, "unparcel"

    .line 770
    .line 771
    new-array v8, v5, [Ljava/lang/Class;

    .line 772
    .line 773
    const-class v9, Landroid/os/Parcel;

    .line 774
    .line 775
    aput-object v9, v8, v4

    .line 776
    .line 777
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 778
    .line 779
    .line 780
    move-result-object v6

    .line 781
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 782
    .line 783
    .line 784
    new-array v7, v5, [Ljava/lang/Object;

    .line 785
    .line 786
    aput-object p0, v7, v4

    .line 787
    .line 788
    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    check-cast v3, Ljava/lang/Boolean;

    .line 793
    .line 794
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/content/pm/b;->e1(Ljava/lang/Boolean;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    .line 796
    .line 797
    goto :goto_4

    .line 798
    :catchall_0
    move-exception v2

    .line 799
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 800
    .line 801
    .line 802
    :goto_4
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 807
    .line 808
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    invoke-static {v1, v2}, Lsa/x;->a(Landroid/content/pm/ProviderInfo;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->d()[Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    invoke-static {v1, v2}, Lsa/y;->a(Landroid/content/pm/ProviderInfo;[Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 823
    .line 824
    .line 825
    move-result v2

    .line 826
    iput v2, v1, Landroid/content/pm/ProviderInfo;->descriptionRes:I

    .line 827
    .line 828
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 829
    .line 830
    .line 831
    move-result v2

    .line 832
    if-eqz v2, :cond_6

    .line 833
    .line 834
    const/4 v2, 0x1

    .line 835
    goto :goto_5

    .line 836
    :cond_6
    const/4 v2, 0x0

    .line 837
    :goto_5
    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->enabled:Z

    .line 838
    .line 839
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    if-eqz v2, :cond_7

    .line 844
    .line 845
    const/4 v2, 0x1

    .line 846
    goto :goto_6

    .line 847
    :cond_7
    const/4 v2, 0x0

    .line 848
    :goto_6
    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 849
    .line 850
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 851
    .line 852
    .line 853
    move-result v2

    .line 854
    if-eqz v2, :cond_8

    .line 855
    .line 856
    const/4 v2, 0x1

    .line 857
    goto :goto_7

    .line 858
    :cond_8
    const/4 v2, 0x0

    .line 859
    :goto_7
    invoke-static {v1, v2}, Lsa/z;->a(Landroid/content/pm/ProviderInfo;Z)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v2

    .line 866
    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 867
    .line 868
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 873
    .line 874
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/q;->e()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 879
    .line 880
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 881
    .line 882
    .line 883
    move-result v0

    .line 884
    if-eqz v0, :cond_9

    .line 885
    .line 886
    const/4 v0, 0x1

    .line 887
    goto :goto_8

    .line 888
    :cond_9
    const/4 v0, 0x0

    .line 889
    :goto_8
    iput-boolean v0, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 890
    .line 891
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    if-eqz v0, :cond_a

    .line 896
    .line 897
    const/4 v0, 0x1

    .line 898
    goto :goto_9

    .line 899
    :cond_a
    const/4 v0, 0x0

    .line 900
    :goto_9
    invoke-static {v1, v0}, Lsa/a0;->a(Landroid/content/pm/ProviderInfo;Z)V

    .line 901
    .line 902
    .line 903
    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 904
    .line 905
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    check-cast v0, [Landroid/os/PatternMatcher;

    .line 910
    .line 911
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 912
    .line 913
    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 914
    .line 915
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    check-cast v0, [Landroid/content/pm/PathPermission;

    .line 920
    .line 921
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 922
    .line 923
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 924
    .line 925
    .line 926
    move-result v0

    .line 927
    if-eqz v0, :cond_b

    .line 928
    .line 929
    const/4 v0, 0x1

    .line 930
    goto :goto_a

    .line 931
    :cond_b
    const/4 v0, 0x0

    .line 932
    :goto_a
    iput-boolean v0, v1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 933
    .line 934
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 935
    .line 936
    .line 937
    move-result v0

    .line 938
    iput v0, v1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 939
    .line 940
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 941
    .line 942
    .line 943
    move-result v0

    .line 944
    iput v0, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 945
    .line 946
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 947
    .line 948
    .line 949
    move-result p0

    .line 950
    if-eqz p0, :cond_c

    .line 951
    .line 952
    const/4 v4, 0x1

    .line 953
    :cond_c
    iput-boolean v4, v1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 954
    .line 955
    sget-object p0, Lsa/b0;->a:Ljava/lang/String;

    .line 956
    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    .line 958
    .line 959
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    .line 961
    .line 962
    const-string v2, "wtf provider"

    .line 963
    .line 964
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 968
    .line 969
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .line 978
    .line 979
    return-object v1
.end method

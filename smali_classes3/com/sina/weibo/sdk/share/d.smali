.class public final Lcom/sina/weibo/sdk/share/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sina/weibo/sdk/api/WeiboMultiMessage;",
        "Ljava/lang/Void;",
        "Lcom/sina/weibo/sdk/share/c;",
        ">;"
    }
.end annotation


# instance fields
.field private B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/sina/weibo/sdk/share/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/share/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/sina/weibo/sdk/share/d;->B:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/sina/weibo/sdk/share/d;->C:Lcom/sina/weibo/sdk/share/b;

    .line 12
    .line 13
    return-void
.end method

.method private varargs a([Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Lcom/sina/weibo/sdk/share/c;
    .locals 12

    .line 1
    const-string v0, "WBShareTag"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sina/weibo/sdk/share/d;->B:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/content/Context;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    aget-object p1, p1, v3

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-static {v1}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    iget-object v4, v4, Lcom/sina/weibo/sdk/b/a$a;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string v4, ""

    .line 31
    .line 32
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    const-string v4, "com.sina.weibo"

    .line 39
    .line 40
    :cond_3
    new-instance v5, Lcom/sina/weibo/sdk/share/c;

    .line 41
    .line 42
    invoke-direct {v5}, Lcom/sina/weibo/sdk/share/c;-><init>()V

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object v6, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 46
    .line 47
    if-eqz v6, :cond_4

    .line 48
    .line 49
    iget-object v6, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 50
    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    iput-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 54
    .line 55
    :cond_4
    iget-object v6, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    .line 56
    .line 57
    if-eqz v6, :cond_6

    .line 58
    .line 59
    iget-object v6, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 60
    .line 61
    if-nez v6, :cond_5

    .line 62
    .line 63
    iget-object v6, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 64
    .line 65
    if-eqz v6, :cond_6

    .line 66
    .line 67
    :cond_5
    iput-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 68
    .line 69
    iput-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 70
    .line 71
    :cond_6
    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 72
    .line 73
    const/16 v6, 0x18

    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    if-eqz v2, :cond_d

    .line 77
    .line 78
    new-instance v2, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v8, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 84
    .line 85
    invoke-virtual {v8}, Lcom/sina/weibo/sdk/api/MultiImageObject;->getImageList()Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    :cond_7
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_c

    .line 98
    .line 99
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    check-cast v9, Landroid/net/Uri;

    .line 104
    .line 105
    if-eqz v9, :cond_7

    .line 106
    .line 107
    invoke-static {v1, v9}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-nez v11, :cond_b

    .line 116
    .line 117
    new-instance v11, Ljava/io/File;

    .line 118
    .line 119
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v11}, Lcom/sina/weibo/sdk/b/b;->c(Ljava/io/File;)Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-nez v10, :cond_8

    .line 127
    .line 128
    invoke-static {v11}, Lcom/sina/weibo/sdk/b/b;->b(Ljava/io/File;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-nez v11, :cond_8

    .line 137
    .line 138
    const-string v11, "image/"

    .line 139
    .line 140
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-eqz v10, :cond_8

    .line 145
    .line 146
    const/4 v10, 0x1

    .line 147
    goto :goto_2

    .line 148
    :cond_8
    const/4 v10, 0x0

    .line 149
    :goto_2
    if-eqz v10, :cond_7

    .line 150
    .line 151
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    .line 153
    if-lt v10, v6, :cond_9

    .line 154
    .line 155
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v4, v9, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_9
    invoke-static {v1, v9, v7}, Lcom/sina/weibo/sdk/share/a;->a(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-nez v10, :cond_a

    .line 171
    .line 172
    new-instance v10, Ljava/io/File;

    .line 173
    .line 174
    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 186
    .line 187
    const-string v1, "image\'s path is null"

    .line 188
    .line 189
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    const-string v1, "get image path is null"

    .line 196
    .line 197
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_c
    iget-object v8, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 202
    .line 203
    iput-object v2, v8, Lcom/sina/weibo/sdk/api/MultiImageObject;->imageList:Ljava/util/ArrayList;

    .line 204
    .line 205
    :cond_d
    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    .line 206
    .line 207
    if-eqz v2, :cond_14

    .line 208
    .line 209
    iget-object v2, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    .line 210
    .line 211
    if-eqz v2, :cond_14

    .line 212
    .line 213
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-nez v9, :cond_13

    .line 222
    .line 223
    new-instance v9, Ljava/io/File;

    .line 224
    .line 225
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v9}, Lcom/sina/weibo/sdk/b/b;->c(Ljava/io/File;)Z

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-nez v8, :cond_10

    .line 233
    .line 234
    const-string v8, "*/*"

    .line 235
    .line 236
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    const-string v10, "."

    .line 241
    .line 242
    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-gez v10, :cond_e

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_e
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    if-eqz v10, :cond_f

    .line 258
    .line 259
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    const/4 v11, 0x2

    .line 264
    if-ge v10, v11, :cond_f

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_f
    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    invoke-virtual {v9, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    if-nez v9, :cond_10

    .line 288
    .line 289
    const-string v9, "video/"

    .line 290
    .line 291
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    if-eqz v8, :cond_10

    .line 296
    .line 297
    const/4 v8, 0x1

    .line 298
    goto :goto_4

    .line 299
    :cond_10
    const/4 v8, 0x0

    .line 300
    :goto_4
    if-eqz v8, :cond_14

    .line 301
    .line 302
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 303
    .line 304
    if-lt v8, v6, :cond_11

    .line 305
    .line 306
    iget-object v6, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    .line 307
    .line 308
    iput-object v2, v6, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    .line 309
    .line 310
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/b;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-static {v2}, Lcom/sina/weibo/sdk/b/b;->e(Ljava/lang/String;)J

    .line 315
    .line 316
    .line 317
    move-result-wide v8

    .line 318
    iput-wide v8, v6, Lcom/sina/weibo/sdk/api/VideoSourceObject;->during:J

    .line 319
    .line 320
    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    .line 321
    .line 322
    iget-object v2, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    .line 323
    .line 324
    invoke-virtual {v1, v4, v2, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_11
    invoke-static {v1, v2, v3}, Lcom/sina/weibo/sdk/share/a;->a(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    const-string v2, "prepare video resource and video\'path is"

    .line 333
    .line 334
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-nez v2, :cond_12

    .line 350
    .line 351
    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    .line 352
    .line 353
    new-instance v4, Ljava/io/File;

    .line 354
    .line 355
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    iput-object v4, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    .line 363
    .line 364
    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    .line 365
    .line 366
    invoke-static {v1}, Lcom/sina/weibo/sdk/b/b;->e(Ljava/lang/String;)J

    .line 367
    .line 368
    .line 369
    move-result-wide v8

    .line 370
    iput-wide v8, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->during:J

    .line 371
    .line 372
    goto :goto_5

    .line 373
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 374
    .line 375
    const-string v1, "video\'s path is null"

    .line 376
    .line 377
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw p1

    .line 381
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 382
    .line 383
    const-string v1, "get video path is null"

    .line 384
    .line 385
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw p1

    .line 389
    :cond_14
    :goto_5
    iput-object p1, v5, Lcom/sina/weibo/sdk/share/c;->A:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 390
    .line 391
    iput-boolean v7, v5, Lcom/sina/weibo/sdk/share/c;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :catchall_0
    move-exception p1

    .line 395
    iput-boolean v3, v5, Lcom/sina/weibo/sdk/share/c;->z:Z

    .line 396
    .line 397
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_15

    .line 406
    .line 407
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    :cond_15
    iput-object v1, v5, Lcom/sina/weibo/sdk/share/c;->errorMessage:Ljava/lang/String;

    .line 412
    .line 413
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    const-string v1, "prepare resource error is :"

    .line 418
    .line 419
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-static {v0, p1}, Lcom/sina/weibo/sdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :goto_6
    return-object v5
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/d;->a([Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Lcom/sina/weibo/sdk/share/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/sina/weibo/sdk/share/c;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/d;->C:Lcom/sina/weibo/sdk/share/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/share/b;->a(Lcom/sina/weibo/sdk/share/c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

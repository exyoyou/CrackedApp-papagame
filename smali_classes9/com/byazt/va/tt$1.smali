.class public Lcom/byazt/va/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/va/tt;->c(Lcom/byazt/mh/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/mh/c;

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/va/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/va/tt;Lcom/byazt/mh/c;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/va/tt$1;->tt:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/byazt/va/tt;->c(Lcom/byazt/va/tt;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onResponse(Lcom/byazt/gqp/tt;Lcom/byazt/gqp/m;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 4
    .line 5
    if-eqz v0, :cond_13

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_13

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->sp()Lcom/byazt/gqp/a;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    invoke-virtual {v2}, Lcom/byazt/gqp/a;->c()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ge v3, v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/byazt/gqp/a;->c(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v2, v3}, Lcom/byazt/gqp/a;->tt(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v13, Lcom/byazt/hm/tt;

    .line 42
    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->ve()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->tt()J

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->c()J

    .line 61
    .line 62
    .line 63
    move-result-wide v10

    .line 64
    move-object v2, v13

    .line 65
    move-object v6, v0

    .line 66
    invoke-direct/range {v2 .. v11}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_12

    .line 74
    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/byazt/gqp/nu;->c()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    const-wide/16 v4, 0x0

    .line 84
    .line 85
    cmp-long v6, v2, v4

    .line 86
    .line 87
    if-gtz v6, :cond_1

    .line 88
    .line 89
    invoke-static {v0}, Lcom/byazt/va/tt;->c(Ljava/util/Map;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    :cond_1
    invoke-static {v0}, Lcom/byazt/va/tt;->tt(Ljava/util/Map;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    const/4 v7, -0x1

    .line 98
    if-eqz v6, :cond_2

    .line 99
    .line 100
    iget-wide v8, v1, Lcom/byazt/va/tt$1;->tt:J

    .line 101
    .line 102
    add-long/2addr v2, v8

    .line 103
    const-string v8, "Content-Range"

    .line 104
    .line 105
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-nez v9, :cond_2

    .line 116
    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v10, "bytes "

    .line 120
    .line 121
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-wide v10, v1, Lcom/byazt/va/tt$1;->tt:J

    .line 125
    .line 126
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v10, "-"

    .line 130
    .line 131
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-wide/16 v10, 0x1

    .line 135
    .line 136
    sub-long v10, v2, v10

    .line 137
    .line 138
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-static {v8, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-ne v10, v7, :cond_2

    .line 150
    .line 151
    iget-object v0, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/byazt/va/tt;->c(Lcom/byazt/va/tt;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, v1, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 157
    .line 158
    iget-object v2, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 159
    .line 160
    new-instance v3, Ljava/io/IOException;

    .line 161
    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v5, "The Content-Range Header is invalid Assume["

    .line 165
    .line 166
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v5, "] vs Real["

    .line 173
    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v5, "], please remove the temporary file ["

    .line 181
    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v5, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 186
    .line 187
    iget-object v5, v5, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 188
    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v5, "]."

    .line 193
    .line 194
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2, v3}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_2
    const-string v8, "Rename fail"

    .line 209
    .line 210
    cmp-long v9, v2, v4

    .line 211
    .line 212
    if-lez v9, :cond_4

    .line 213
    .line 214
    iget-object v9, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 215
    .line 216
    iget-object v9, v9, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 217
    .line 218
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-eqz v9, :cond_4

    .line 223
    .line 224
    iget-object v9, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 225
    .line 226
    iget-object v9, v9, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 227
    .line 228
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 229
    .line 230
    .line 231
    move-result-wide v9

    .line 232
    cmp-long v11, v9, v2

    .line 233
    .line 234
    if-nez v11, :cond_4

    .line 235
    .line 236
    iget-object v0, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 237
    .line 238
    iget-object v2, v0, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/byazt/va/tt;->c:Ljava/io/File;

    .line 241
    .line 242
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_3

    .line 247
    .line 248
    iget-object v0, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 249
    .line 250
    iget-object v0, v0, Lcom/byazt/va/tt;->c:Ljava/io/File;

    .line 251
    .line 252
    invoke-virtual {v13, v0}, Lcom/byazt/hm/tt;->c(Ljava/io/File;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, v1, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 256
    .line 257
    iget-object v2, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 258
    .line 259
    invoke-virtual {v0, v2, v13}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_3
    iget-object v0, v1, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 264
    .line 265
    iget-object v2, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 266
    .line 267
    new-instance v3, Ljava/io/IOException;

    .line 268
    .line 269
    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v2, v3}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_4
    const/4 v9, 0x0

    .line 277
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    .line 278
    .line 279
    iget-object v11, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 280
    .line 281
    iget-object v11, v11, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 282
    .line 283
    const-string v14, "rw"

    .line 284
    .line 285
    invoke-direct {v10, v11, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .line 287
    .line 288
    if-eqz v6, :cond_5

    .line 289
    .line 290
    :try_start_1
    iget-wide v14, v1, Lcom/byazt/va/tt$1;->tt:J

    .line 291
    .line 292
    invoke-virtual {v10, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 293
    .line 294
    .line 295
    iget-wide v14, v1, Lcom/byazt/va/tt$1;->tt:J

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_5
    invoke-virtual {v10, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :catchall_0
    move-object v10, v9

    .line 303
    :catchall_1
    :goto_1
    move-wide v14, v4

    .line 304
    :goto_2
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    invoke-virtual {v11}, Lcom/byazt/gqp/nu;->ve()Ljava/io/InputStream;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    invoke-static {v0}, Lcom/byazt/va/tt;->ve(Ljava/util/Map;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_6

    .line 317
    .line 318
    instance-of v0, v9, Ljava/util/zip/GZIPInputStream;

    .line 319
    .line 320
    if-nez v0, :cond_6

    .line 321
    .line 322
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 323
    .line 324
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 325
    .line 326
    .line 327
    move-object v9, v0

    .line 328
    :cond_6
    const/16 v0, 0x4000

    .line 329
    .line 330
    new-array v0, v0, [B

    .line 331
    .line 332
    move-wide/from16 v16, v4

    .line 333
    .line 334
    const/4 v11, 0x0

    .line 335
    :goto_3
    rsub-int v12, v11, 0x4000

    .line 336
    .line 337
    invoke-virtual {v9, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    .line 338
    .line 339
    .line 340
    move-result v12

    .line 341
    const/16 v18, 0x1

    .line 342
    .line 343
    if-eq v12, v7, :cond_a

    .line 344
    .line 345
    add-int/2addr v11, v12

    .line 346
    move-object/from16 v19, v8

    .line 347
    .line 348
    int-to-long v7, v12

    .line 349
    add-long v16, v16, v7

    .line 350
    .line 351
    const-wide/16 v7, 0x4000

    .line 352
    .line 353
    rem-long v7, v16, v7

    .line 354
    .line 355
    cmp-long v12, v7, v4

    .line 356
    .line 357
    if-eqz v12, :cond_8

    .line 358
    .line 359
    iget-wide v7, v1, Lcom/byazt/va/tt$1;->tt:J

    .line 360
    .line 361
    sub-long v7, v2, v7

    .line 362
    .line 363
    cmp-long v12, v16, v7

    .line 364
    .line 365
    if-nez v12, :cond_7

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_7
    const/16 v18, 0x0

    .line 369
    .line 370
    :cond_8
    :goto_4
    if-eqz v18, :cond_9

    .line 371
    .line 372
    invoke-virtual {v10, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 373
    .line 374
    .line 375
    const/4 v7, 0x0

    .line 376
    invoke-virtual {v10, v0, v7, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 377
    .line 378
    .line 379
    int-to-long v11, v11

    .line 380
    add-long/2addr v14, v11

    .line 381
    const/4 v11, 0x0

    .line 382
    goto :goto_5

    .line 383
    :cond_9
    const/4 v7, 0x0

    .line 384
    :goto_5
    move-object/from16 v8, v19

    .line 385
    .line 386
    const/4 v7, -0x1

    .line 387
    goto :goto_3

    .line 388
    :cond_a
    move-object/from16 v19, v8

    .line 389
    .line 390
    const/4 v7, 0x0

    .line 391
    if-nez v6, :cond_b

    .line 392
    .line 393
    iget-object v0, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 394
    .line 395
    iget-object v0, v0, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 398
    .line 399
    .line 400
    move-result-wide v2

    .line 401
    :cond_b
    cmp-long v0, v2, v4

    .line 402
    .line 403
    if-lez v0, :cond_d

    .line 404
    .line 405
    iget-object v0, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 406
    .line 407
    iget-object v0, v0, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_d

    .line 414
    .line 415
    iget-object v0, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 416
    .line 417
    iget-object v0, v0, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 420
    .line 421
    .line 422
    move-result-wide v4

    .line 423
    cmp-long v0, v4, v2

    .line 424
    .line 425
    if-nez v0, :cond_d

    .line 426
    .line 427
    iget-object v0, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 428
    .line 429
    iget-object v2, v0, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 430
    .line 431
    iget-object v0, v0, Lcom/byazt/va/tt;->c:Ljava/io/File;

    .line 432
    .line 433
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_c

    .line 438
    .line 439
    iget-object v0, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 440
    .line 441
    iget-object v0, v0, Lcom/byazt/va/tt;->c:Ljava/io/File;

    .line 442
    .line 443
    invoke-virtual {v13, v0}, Lcom/byazt/hm/tt;->c(Ljava/io/File;)V

    .line 444
    .line 445
    .line 446
    iget-object v0, v1, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 447
    .line 448
    iget-object v2, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 449
    .line 450
    invoke-virtual {v0, v2, v13}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V

    .line 451
    .line 452
    .line 453
    goto :goto_7

    .line 454
    :cond_c
    iget-object v0, v1, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 455
    .line 456
    iget-object v2, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 457
    .line 458
    new-instance v3, Ljava/io/IOException;

    .line 459
    .line 460
    move-object/from16 v4, v19

    .line 461
    .line 462
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v2, v3}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 466
    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_d
    iget-object v0, v1, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 470
    .line 471
    iget-object v4, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 472
    .line 473
    new-instance v5, Ljava/io/IOException;

    .line 474
    .line 475
    new-instance v8, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    const-string v11, " tempFile.length() == fileSize is"

    .line 478
    .line 479
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-object v11, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 483
    .line 484
    iget-object v11, v11, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 485
    .line 486
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 487
    .line 488
    .line 489
    move-result-wide v11

    .line 490
    cmp-long v13, v11, v2

    .line 491
    .line 492
    if-nez v13, :cond_e

    .line 493
    .line 494
    const/4 v12, 0x1

    .line 495
    goto :goto_6

    .line 496
    :cond_e
    const/4 v12, 0x0

    .line 497
    :goto_6
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v4, v5}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 508
    .line 509
    .line 510
    :goto_7
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 511
    .line 512
    .line 513
    :catchall_2
    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 514
    .line 515
    .line 516
    :catchall_3
    return-void

    .line 517
    :catchall_4
    move-exception v0

    .line 518
    :try_start_5
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 519
    .line 520
    .line 521
    iget-object v2, v1, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 522
    .line 523
    iget-object v3, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 524
    .line 525
    new-instance v4, Ljava/io/IOException;

    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2, v3, v4}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 535
    .line 536
    .line 537
    if-nez v6, :cond_f

    .line 538
    .line 539
    iget-object v0, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 540
    .line 541
    invoke-static {v0}, Lcom/byazt/va/tt;->c(Lcom/byazt/va/tt;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 542
    .line 543
    .line 544
    :cond_f
    if-eqz v9, :cond_10

    .line 545
    .line 546
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 547
    .line 548
    .line 549
    :catchall_5
    :cond_10
    :try_start_7
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 550
    .line 551
    .line 552
    :catchall_6
    return-void

    .line 553
    :catchall_7
    move-exception v0

    .line 554
    if-eqz v9, :cond_11

    .line 555
    .line 556
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 557
    .line 558
    .line 559
    :catchall_8
    :cond_11
    :try_start_9
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 560
    .line 561
    .line 562
    :catchall_9
    throw v0

    .line 563
    :cond_12
    iget-object v0, v1, Lcom/byazt/va/tt$1;->c:Lcom/byazt/mh/c;

    .line 564
    .line 565
    iget-object v2, v1, Lcom/byazt/va/tt$1;->ve:Lcom/byazt/va/tt;

    .line 566
    .line 567
    invoke-virtual {v0, v2, v13}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V

    .line 568
    .line 569
    .line 570
    :cond_13
    return-void
.end method

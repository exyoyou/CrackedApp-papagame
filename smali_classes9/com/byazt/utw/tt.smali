.class public Lcom/byazt/utw/tt;
.super Lcom/byazt/utw/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c2,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/utw/tt$c;,
        Lcom/byazt/utw/tt$tt;
    }
.end annotation


# instance fields
.field public final t:Ljava/lang/Object;

.field public final u:Ljava/lang/Object;

.field public final yp:I

.field public final z:Lcom/byazt/utw/tt$tt;


# direct methods
.method public constructor <init>(Lcom/byazt/utw/tt$c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/byazt/utw/tt$c;->uj:Lcom/byazt/byh/c;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/byazt/utw/tt$c;->n:Lcom/byazt/emg/ve;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/byazt/utw/c;-><init>(Lcom/byazt/byh/c;Lcom/byazt/emg/ve;)V

    .line 6
    .line 7
    .line 8
    iget v0, p1, Lcom/byazt/utw/tt$c;->sp:I

    .line 9
    .line 10
    iput v0, p0, Lcom/byazt/utw/tt;->yp:I

    .line 11
    .line 12
    iget-object v0, p1, Lcom/byazt/utw/tt$c;->x:Lcom/byazt/utw/tt$tt;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/utw/tt;->z:Lcom/byazt/utw/tt$tt;

    .line 15
    .line 16
    iput-object p0, p0, Lcom/byazt/utw/tt;->t:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/byazt/utw/tt$c;->c:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/utw/c;->sp:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/byazt/utw/tt$c;->tt:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/byazt/utw/tt$c;->a:Ljava/util/List;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/byazt/utw/c;->a:Ljava/util/List;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/byazt/utw/tt$c;->ve:Lcom/byazt/utw/x;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/byazt/utw/c;->i:Lcom/byazt/utw/x;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/byazt/utw/tt$c;->i:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/byazt/utw/tt;->u:Ljava/lang/Object;

    .line 37
    .line 38
    return-void
.end method

.method private c(Lcom/byazt/utw/x$c;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/byazt/utw/n$c;,
            Lcom/byazt/ju/c;,
            Lcom/byazt/ju/tt;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "cancel call"

    .line 6
    .line 7
    iget-object v3, v1, Lcom/byazt/utw/c;->c:Lcom/byazt/byh/c;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Lcom/byazt/byh/c;->ve(Ljava/lang/String;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    iget v6, v1, Lcom/byazt/utw/tt;->yp:I

    .line 20
    .line 21
    const-string v7, ", max: "

    .line 22
    .line 23
    const-string v8, "TAG_PROXY_DownloadTask"

    .line 24
    .line 25
    if-lez v6, :cond_0

    .line 26
    .line 27
    int-to-long v9, v6

    .line 28
    cmp-long v6, v4, v9

    .line 29
    .line 30
    if-ltz v6, :cond_0

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "no necessary to download for "

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v1, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", cache file size: "

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v2, v1, Lcom/byazt/utw/tt;->yp:I

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v8, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/utw/c;->n()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    iget-object v9, v1, Lcom/byazt/utw/c;->tt:Lcom/byazt/emg/ve;

    .line 73
    .line 74
    iget-object v10, v1, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v9, v10, v6}, Lcom/byazt/emg/ve;->query(Ljava/lang/String;I)Lcom/byazt/emg/c;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    if-eqz v9, :cond_2

    .line 81
    .line 82
    iget v10, v9, Lcom/byazt/emg/c;->ve:I

    .line 83
    .line 84
    int-to-long v10, v10

    .line 85
    cmp-long v12, v4, v10

    .line 86
    .line 87
    if-ltz v12, :cond_2

    .line 88
    .line 89
    sget-boolean v0, Lcom/byazt/utw/uj;->n:Z

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "file download complete, key: "

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, v1, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v8, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void

    .line 113
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/utw/c;->uj()V

    .line 114
    .line 115
    .line 116
    long-to-int v10, v4

    .line 117
    iget v11, v1, Lcom/byazt/utw/tt;->yp:I

    .line 118
    .line 119
    const-string v12, "GET"

    .line 120
    .line 121
    invoke-virtual {v1, v0, v10, v11, v12}, Lcom/byazt/utw/c;->c(Lcom/byazt/utw/x$c;IILjava/lang/String;)Lcom/byazt/ydv/c;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    if-nez v11, :cond_3

    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    const/4 v12, 0x1

    .line 129
    const/4 v13, 0x0

    .line 130
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/utw/c;->uj()V

    .line 131
    .line 132
    .line 133
    sget-boolean v14, Lcom/byazt/utw/uj;->sp:Z

    .line 134
    .line 135
    invoke-static {v11, v14, v12}, Lcom/byazt/nxx/c;->c(Lcom/byazt/ydv/c;ZZ)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 139
    const-string v15, ", rawKey: "

    .line 140
    .line 141
    if-nez v14, :cond_f

    .line 142
    .line 143
    :try_start_1
    invoke-static {v11}, Lcom/byazt/nxx/c;->c(Lcom/byazt/ydv/c;)I

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    if-eqz v9, :cond_5

    .line 148
    .line 149
    iget v12, v9, Lcom/byazt/emg/c;->ve:I

    .line 150
    .line 151
    if-eq v12, v14, :cond_5

    .line 152
    .line 153
    sget-boolean v3, Lcom/byazt/utw/uj;->n:Z

    .line 154
    .line 155
    if-eqz v3, :cond_4

    .line 156
    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v4, "Content-Length not match, old: "

    .line 160
    .line 161
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget v4, v9, Lcom/byazt/emg/c;->ve:I

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v4, ", "

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v4, ", key: "

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v4, v1, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-static {v8, v3}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    new-instance v3, Lcom/byazt/ju/tt;

    .line 195
    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v5, "Content-Length not match, old length: "

    .line 199
    .line 200
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget v5, v9, Lcom/byazt/emg/c;->ve:I

    .line 204
    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v5, ", new length: "

    .line 209
    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v5, v1, Lcom/byazt/utw/c;->sp:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v5, ", currentUrl: "

    .line 225
    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v0, ", previousInfo: "

    .line 233
    .line 234
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v0, v9, Lcom/byazt/emg/c;->n:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-direct {v3, v0}, Lcom/byazt/ju/tt;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v3

    .line 250
    :cond_5
    iget-object v0, v1, Lcom/byazt/utw/c;->tt:Lcom/byazt/emg/ve;

    .line 251
    .line 252
    iget-object v9, v1, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v11, v0, v9, v6}, Lcom/byazt/nxx/c;->c(Lcom/byazt/ydv/c;Lcom/byazt/emg/ve;Ljava/lang/String;I)Lcom/byazt/emg/c;

    .line 255
    .line 256
    .line 257
    iget-object v0, v1, Lcom/byazt/utw/c;->tt:Lcom/byazt/emg/ve;

    .line 258
    .line 259
    iget-object v9, v1, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v9, v6}, Lcom/byazt/emg/ve;->query(Ljava/lang/String;I)Lcom/byazt/emg/c;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const/4 v6, 0x0

    .line 266
    if-nez v0, :cond_6

    .line 267
    .line 268
    const/4 v0, 0x0

    .line 269
    goto :goto_0

    .line 270
    :cond_6
    iget v0, v0, Lcom/byazt/emg/c;->ve:I

    .line 271
    .line 272
    :goto_0
    invoke-virtual {v11}, Lcom/byazt/ydv/c;->uj()Ljava/io/InputStream;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    new-instance v12, Lcom/byazt/utw/n;

    .line 277
    .line 278
    sget-boolean v14, Lcom/byazt/utw/uj;->a:Z

    .line 279
    .line 280
    if-eqz v14, :cond_7

    .line 281
    .line 282
    const-string v14, "rwd"

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_7
    const-string v14, "rw"

    .line 286
    .line 287
    :goto_1
    invoke-direct {v12, v3, v14}, Lcom/byazt/utw/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 288
    .line 289
    .line 290
    :try_start_2
    invoke-virtual {v12, v4, v5}, Lcom/byazt/utw/n;->c(J)V

    .line 291
    .line 292
    .line 293
    sget-boolean v3, Lcom/byazt/utw/uj;->n:Z

    .line 294
    .line 295
    if-eqz v3, :cond_8

    .line 296
    .line 297
    const-string v3, "preload start from: "

    .line 298
    .line 299
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-static {v8, v3}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_8
    const/16 v3, 0x2000

    .line 311
    .line 312
    new-array v3, v3, [B

    .line 313
    .line 314
    :goto_2
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-ltz v4, :cond_d

    .line 319
    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/utw/c;->uj()V

    .line 321
    .line 322
    .line 323
    if-lez v4, :cond_9

    .line 324
    .line 325
    invoke-virtual {v12, v3, v6, v4}, Lcom/byazt/utw/n;->c([BII)V

    .line 326
    .line 327
    .line 328
    add-int/2addr v10, v4

    .line 329
    iget-object v5, v1, Lcom/byazt/utw/c;->ve:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 330
    .line 331
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v0, v10}, Lcom/byazt/utw/c;->c(II)V

    .line 335
    .line 336
    .line 337
    :cond_9
    iget v4, v1, Lcom/byazt/utw/tt;->yp:I

    .line 338
    .line 339
    if-lez v4, :cond_c

    .line 340
    .line 341
    if-lt v10, v4, :cond_c

    .line 342
    .line 343
    sget-boolean v0, Lcom/byazt/utw/uj;->n:Z

    .line 344
    .line 345
    if-eqz v0, :cond_a

    .line 346
    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v4, "download, more data received, currentCacheFileSize: "

    .line 350
    .line 351
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget v4, v1, Lcom/byazt/utw/tt;->yp:I

    .line 361
    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-static {v8, v3}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    .line 371
    .line 372
    :cond_a
    invoke-virtual {v11}, Lcom/byazt/ydv/c;->uj()Ljava/io/InputStream;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-static {v3}, Lcom/byazt/nxx/c;->c(Ljava/io/Closeable;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v12}, Lcom/byazt/utw/n;->c()V

    .line 380
    .line 381
    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/utw/c;->c()V

    .line 383
    .line 384
    .line 385
    if-eqz v0, :cond_b

    .line 386
    .line 387
    invoke-static {v8, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_b
    return-void

    .line 391
    :cond_c
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/utw/c;->uj()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_d
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/utw/c;->ve()V

    .line 396
    .line 397
    .line 398
    sget-boolean v0, Lcom/byazt/utw/uj;->n:Z

    .line 399
    .line 400
    if-eqz v0, :cond_e

    .line 401
    .line 402
    const-string v0, "download succeed, no need to cancel call"

    .line 403
    .line 404
    invoke-static {v8, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 405
    .line 406
    .line 407
    :cond_e
    invoke-virtual {v11}, Lcom/byazt/ydv/c;->uj()Ljava/io/InputStream;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-static {v0}, Lcom/byazt/nxx/c;->c(Ljava/io/Closeable;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v12}, Lcom/byazt/utw/n;->c()V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :catchall_0
    move-exception v0

    .line 419
    move-object v13, v12

    .line 420
    const/4 v12, 0x0

    .line 421
    goto :goto_4

    .line 422
    :catchall_1
    move-exception v0

    .line 423
    move-object v13, v12

    .line 424
    goto :goto_3

    .line 425
    :cond_f
    :try_start_5
    new-instance v3, Lcom/byazt/ju/ve;

    .line 426
    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-object v5, v1, Lcom/byazt/utw/c;->sp:Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v5, ", url: "

    .line 444
    .line 445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-direct {v3, v0}, Lcom/byazt/ju/ve;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 459
    :catchall_2
    move-exception v0

    .line 460
    :goto_3
    const/4 v12, 0x1

    .line 461
    :goto_4
    invoke-virtual {v11}, Lcom/byazt/ydv/c;->uj()Ljava/io/InputStream;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-static {v3}, Lcom/byazt/nxx/c;->c(Ljava/io/Closeable;)V

    .line 466
    .line 467
    .line 468
    if-eqz v13, :cond_10

    .line 469
    .line 470
    invoke-virtual {v13}, Lcom/byazt/utw/n;->c()V

    .line 471
    .line 472
    .line 473
    :cond_10
    if-eqz v12, :cond_11

    .line 474
    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/utw/c;->c()V

    .line 476
    .line 477
    .line 478
    sget-boolean v3, Lcom/byazt/utw/uj;->n:Z

    .line 479
    .line 480
    if-eqz v3, :cond_11

    .line 481
    .line 482
    invoke-static {v8, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :cond_11
    throw v0
.end method

.method private sp()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/ju/c;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/byazt/utw/c;->i:Lcom/byazt/utw/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/utw/x;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/byazt/utw/c;->uj()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/utw/c;->i:Lcom/byazt/utw/x;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/utw/x;->tt()Lcom/byazt/utw/x$c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    invoke-direct {p0, v0}, Lcom/byazt/utw/tt;->c(Lcom/byazt/utw/x$c;)V
    :try_end_0
    .catch Lcom/byazt/ju/ve; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/byazt/utw/n$c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/byazt/ju/tt; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :catch_0
    :catchall_0
    return v1

    .line 25
    :catch_1
    invoke-virtual {p0}, Lcom/byazt/utw/c;->a()Z

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :catch_2
    move-exception v1

    .line 30
    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/utw/x$c;->tt()V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/utw/c;->tt()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/byazt/utw/c;->a()Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_3
    invoke-virtual {v0}, Lcom/byazt/utw/x$c;->c()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/byazt/utw/c;->a()Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/utw/c;->c:Lcom/byazt/byh/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/byh/c;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/utw/tt;->sp()Z
    :try_end_0
    .catch Lcom/byazt/ju/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    :catchall_0
    nop

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/byazt/utw/c;->uj:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    sub-long/2addr v3, v0

    .line 24
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/utw/c;->c:Lcom/byazt/byh/c;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/utw/c;->x:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/byh/c;->tt(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/utw/tt;->z:Lcom/byazt/utw/tt$tt;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-interface {v0, p0}, Lcom/byazt/utw/tt$tt;->c(Lcom/byazt/utw/tt;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

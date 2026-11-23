.class public Lnet/lingala/zip4j/io/c;
.super Lnet/lingala/zip4j/io/b;
.source "SourceFile"


# instance fields
.field protected b:Ljava/io/OutputStream;

.field private c:Ljava/io/File;

.field protected d:Lpc/h;

.field protected e:Lpc/i;

.field private f:Lnet/lingala/zip4j/crypto/d;

.field protected g:Lpc/p;

.field protected h:Lpc/o;

.field private i:J

.field protected j:Ljava/util/zip/CRC32;

.field private k:J

.field private l:[B

.field private m:I

.field private n:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lpc/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/c;->p(Lpc/o;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/zip/CRC32;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->j:Ljava/util/zip/CRC32;

    .line 15
    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 19
    .line 20
    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 21
    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    new-array v0, v0, [B

    .line 25
    .line 26
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->l:[B

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lnet/lingala/zip4j/io/c;->m:I

    .line 30
    .line 31
    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->n:J

    .line 32
    .line 33
    return-void
.end method

.method private d()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Lpc/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lpc/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 7
    .line 8
    const v1, 0x2014b50

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lpc/h;->c0(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 15
    .line 16
    const/16 v1, 0x14

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lpc/h;->e0(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lpc/h;->f0(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 27
    .line 28
    invoke-virtual {v0}, Lpc/p;->l()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v1, 0x63

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 37
    .line 38
    invoke-virtual {v0}, Lpc/p;->f()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ne v0, v1, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lpc/h;->H(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 50
    .line 51
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 52
    .line 53
    invoke-direct {p0, v2}, Lnet/lingala/zip4j/io/c;->i(Lpc/p;)Lpc/a;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Lpc/h;->F(Lpc/a;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 62
    .line 63
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 64
    .line 65
    invoke-virtual {v2}, Lpc/p;->d()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0, v2}, Lpc/h;->H(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 73
    .line 74
    invoke-virtual {v0}, Lpc/p;->l()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v2, 0x1

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lpc/h;->N(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 87
    .line 88
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 89
    .line 90
    invoke-virtual {v3}, Lpc/p;->f()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v0, v3}, Lpc/h;->O(I)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 98
    .line 99
    invoke-virtual {v0}, Lpc/p;->p()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/h;->D(J)J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    long-to-int v4, v3

    .line 116
    invoke-virtual {v0, v4}, Lpc/h;->Z(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 120
    .line 121
    invoke-virtual {v0}, Lpc/p;->g()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 132
    .line 133
    invoke-virtual {v0}, Lpc/p;->g()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 139
    .line 140
    const-string v1, "fileNameInZip is null or empty"

    .line 141
    .line 142
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 147
    .line 148
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 149
    .line 150
    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 151
    .line 152
    invoke-virtual {v4}, Lpc/p;->k()Ljava/util/TimeZone;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/h;->w(Ljava/io/File;Ljava/util/TimeZone;)J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/h;->D(J)J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    long-to-int v4, v3

    .line 165
    invoke-virtual {v0, v4}, Lpc/h;->Z(I)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 169
    .line 170
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 173
    .line 174
    .line 175
    move-result-wide v3

    .line 176
    invoke-virtual {v0, v3, v4}, Lpc/h;->d0(J)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 186
    .line 187
    invoke-virtual {v3}, Lpc/p;->i()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 192
    .line 193
    invoke-virtual {v4}, Lpc/p;->e()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-static {v0, v3, v4}, Lnet/lingala/zip4j/util/h;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    :goto_1
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_14

    .line 206
    .line 207
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 208
    .line 209
    invoke-virtual {v3, v0}, Lpc/h;->U(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 213
    .line 214
    invoke-virtual {v3}, Lpc/o;->g()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-static {v3}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_4

    .line 223
    .line 224
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 225
    .line 226
    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 227
    .line 228
    invoke-virtual {v4}, Lpc/o;->g()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/h;->o(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-virtual {v3, v4}, Lpc/h;->V(I)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_4
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 241
    .line 242
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->n(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    invoke-virtual {v3, v4}, Lpc/h;->V(I)V

    .line 247
    .line 248
    .line 249
    :goto_2
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 250
    .line 251
    instance-of v4, v3, Lnet/lingala/zip4j/io/g;

    .line 252
    .line 253
    const/4 v5, 0x0

    .line 254
    if-eqz v4, :cond_5

    .line 255
    .line 256
    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 257
    .line 258
    check-cast v3, Lnet/lingala/zip4j/io/g;

    .line 259
    .line 260
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/g;->b()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    invoke-virtual {v4, v3}, Lpc/h;->M(I)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_5
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 269
    .line 270
    invoke-virtual {v3, v5}, Lpc/h;->M(I)V

    .line 271
    .line 272
    .line 273
    :goto_3
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 274
    .line 275
    invoke-virtual {v3}, Lpc/p;->p()Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-nez v3, :cond_6

    .line 280
    .line 281
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 282
    .line 283
    invoke-direct {p0, v3}, Lnet/lingala/zip4j/io/c;->k(Ljava/io/File;)I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    goto :goto_4

    .line 288
    :cond_6
    const/4 v3, 0x0

    .line 289
    :goto_4
    const/4 v4, 0x4

    .line 290
    new-array v4, v4, [B

    .line 291
    .line 292
    int-to-byte v3, v3

    .line 293
    aput-byte v3, v4, v5

    .line 294
    .line 295
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 296
    .line 297
    invoke-virtual {v3, v4}, Lpc/h;->P([B)V

    .line 298
    .line 299
    .line 300
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 301
    .line 302
    invoke-virtual {v3}, Lpc/p;->p()Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_8

    .line 307
    .line 308
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 309
    .line 310
    const-string v4, "/"

    .line 311
    .line 312
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-nez v4, :cond_7

    .line 317
    .line 318
    const-string v4, "\\"

    .line 319
    .line 320
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-nez v0, :cond_7

    .line 325
    .line 326
    const/4 v0, 0x0

    .line 327
    goto :goto_5

    .line 328
    :cond_7
    const/4 v0, 0x1

    .line 329
    :goto_5
    invoke-virtual {v3, v0}, Lpc/h;->L(Z)V

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_8
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 334
    .line 335
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 336
    .line 337
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    invoke-virtual {v0, v3}, Lpc/h;->L(Z)V

    .line 342
    .line 343
    .line 344
    :goto_6
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 345
    .line 346
    invoke-virtual {v0}, Lpc/h;->C()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    const/16 v3, 0x8

    .line 351
    .line 352
    const-wide/16 v6, 0x0

    .line 353
    .line 354
    if-eqz v0, :cond_9

    .line 355
    .line 356
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 357
    .line 358
    invoke-virtual {v0, v6, v7}, Lpc/h;->G(J)V

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 362
    .line 363
    invoke-virtual {v0, v6, v7}, Lpc/h;->d0(J)V

    .line 364
    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_9
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 368
    .line 369
    invoke-virtual {v0}, Lpc/p;->p()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_f

    .line 374
    .line 375
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 376
    .line 377
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    .line 378
    .line 379
    .line 380
    move-result-wide v8

    .line 381
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 382
    .line 383
    invoke-virtual {v0}, Lpc/p;->d()I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-nez v0, :cond_e

    .line 388
    .line 389
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 390
    .line 391
    invoke-virtual {v0}, Lpc/p;->f()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-nez v0, :cond_a

    .line 396
    .line 397
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 398
    .line 399
    const-wide/16 v6, 0xc

    .line 400
    .line 401
    add-long/2addr v6, v8

    .line 402
    invoke-virtual {v0, v6, v7}, Lpc/h;->G(J)V

    .line 403
    .line 404
    .line 405
    goto :goto_8

    .line 406
    :cond_a
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 407
    .line 408
    invoke-virtual {v0}, Lpc/p;->f()I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-ne v0, v1, :cond_d

    .line 413
    .line 414
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 415
    .line 416
    invoke-virtual {v0}, Lpc/p;->a()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-eq v0, v2, :cond_c

    .line 421
    .line 422
    const/4 v1, 0x3

    .line 423
    if-ne v0, v1, :cond_b

    .line 424
    .line 425
    const/16 v0, 0x10

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 429
    .line 430
    const-string v1, "invalid aes key strength, cannot determine key sizes"

    .line 431
    .line 432
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v0

    .line 436
    :cond_c
    const/16 v0, 0x8

    .line 437
    .line 438
    :goto_7
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 439
    .line 440
    int-to-long v6, v0

    .line 441
    add-long/2addr v6, v8

    .line 442
    const-wide/16 v10, 0xa

    .line 443
    .line 444
    add-long/2addr v6, v10

    .line 445
    const-wide/16 v10, 0x2

    .line 446
    .line 447
    add-long/2addr v6, v10

    .line 448
    invoke-virtual {v1, v6, v7}, Lpc/h;->G(J)V

    .line 449
    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_d
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 453
    .line 454
    invoke-virtual {v0, v6, v7}, Lpc/h;->G(J)V

    .line 455
    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_e
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 459
    .line 460
    invoke-virtual {v0, v6, v7}, Lpc/h;->G(J)V

    .line 461
    .line 462
    .line 463
    :goto_8
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 464
    .line 465
    invoke-virtual {v0, v8, v9}, Lpc/h;->d0(J)V

    .line 466
    .line 467
    .line 468
    :cond_f
    :goto_9
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 469
    .line 470
    invoke-virtual {v0}, Lpc/p;->l()Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-eqz v0, :cond_10

    .line 475
    .line 476
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 477
    .line 478
    invoke-virtual {v0}, Lpc/p;->f()I

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-nez v0, :cond_10

    .line 483
    .line 484
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 485
    .line 486
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 487
    .line 488
    invoke-virtual {v1}, Lpc/p;->j()I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    int-to-long v6, v1

    .line 493
    invoke-virtual {v0, v6, v7}, Lpc/h;->I(J)V

    .line 494
    .line 495
    .line 496
    :cond_10
    const/4 v0, 0x2

    .line 497
    new-array v0, v0, [B

    .line 498
    .line 499
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 500
    .line 501
    invoke-virtual {v1}, Lpc/h;->D()Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 506
    .line 507
    invoke-virtual {v4}, Lpc/p;->d()I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    invoke-direct {p0, v1, v4}, Lnet/lingala/zip4j/io/c;->j(ZI)[I

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-static {v1}, Lnet/lingala/zip4j/util/f;->a([I)B

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    aput-byte v1, v0, v5

    .line 520
    .line 521
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 522
    .line 523
    invoke-virtual {v1}, Lpc/o;->g()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-static {v1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    const-string v4, "UTF8"

    .line 532
    .line 533
    if-eqz v1, :cond_11

    .line 534
    .line 535
    iget-object v6, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 536
    .line 537
    invoke-virtual {v6}, Lpc/o;->g()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    if-nez v6, :cond_12

    .line 546
    .line 547
    :cond_11
    if-nez v1, :cond_13

    .line 548
    .line 549
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 550
    .line 551
    invoke-virtual {v1}, Lpc/h;->p()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-static {v1}, Lnet/lingala/zip4j/util/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    if-eqz v1, :cond_13

    .line 564
    .line 565
    :cond_12
    aput-byte v3, v0, v2

    .line 566
    .line 567
    goto :goto_a

    .line 568
    :cond_13
    aput-byte v5, v0, v2

    .line 569
    .line 570
    :goto_a
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 571
    .line 572
    invoke-virtual {v1, v0}, Lpc/h;->X([B)V

    .line 573
    .line 574
    .line 575
    return-void

    .line 576
    :cond_14
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 577
    .line 578
    const-string v1, "fileName is null or empty. unable to create file header"

    .line 579
    .line 580
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    throw v0
.end method

.method private e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lpc/i;

    .line 6
    .line 7
    invoke-direct {v0}, Lpc/i;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 11
    .line 12
    const v1, 0x4034b50

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lpc/i;->P(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 19
    .line 20
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 21
    .line 22
    invoke-virtual {v1}, Lpc/h;->z()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lpc/i;->R(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 30
    .line 31
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 32
    .line 33
    invoke-virtual {v1}, Lpc/h;->f()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lpc/i;->z(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 41
    .line 42
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 43
    .line 44
    invoke-virtual {v1}, Lpc/h;->t()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Lpc/i;->M(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 52
    .line 53
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 54
    .line 55
    invoke-virtual {v1}, Lpc/h;->x()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lpc/i;->Q(J)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 63
    .line 64
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 65
    .line 66
    invoke-virtual {v1}, Lpc/h;->q()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lpc/i;->J(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 74
    .line 75
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 76
    .line 77
    invoke-virtual {v1}, Lpc/h;->p()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lpc/i;->I(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 85
    .line 86
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 87
    .line 88
    invoke-virtual {v1}, Lpc/h;->D()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Lpc/i;->D(Z)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 96
    .line 97
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 98
    .line 99
    invoke-virtual {v1}, Lpc/h;->j()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v0, v1}, Lpc/i;->E(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 107
    .line 108
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 109
    .line 110
    invoke-virtual {v1}, Lpc/h;->d()Lpc/a;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lpc/i;->x(Lpc/a;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 118
    .line 119
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 120
    .line 121
    invoke-virtual {v1}, Lpc/h;->g()J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    invoke-virtual {v0, v1, v2}, Lpc/i;->A(J)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 129
    .line 130
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 131
    .line 132
    invoke-virtual {v1}, Lpc/h;->e()J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    invoke-virtual {v0, v1, v2}, Lpc/i;->y(J)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 140
    .line 141
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 142
    .line 143
    invoke-virtual {v1}, Lpc/h;->r()[B

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, [B

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lpc/i;->L([B)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 158
    .line 159
    const-string v1, "file header is null, cannot create local file header"

    .line 160
    .line 161
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0
.end method

.method private g([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/d;->a([BII)I
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/io/IOException;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p2

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 23
    .line 24
    .line 25
    iget-wide p1, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 26
    .line 27
    int-to-long v0, p3

    .line 28
    add-long/2addr p1, v0

    .line 29
    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 30
    .line 31
    iget-wide p1, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 32
    .line 33
    add-long/2addr p1, v0

    .line 34
    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 35
    .line 36
    return-void
.end method

.method private i(Lpc/p;)Lpc/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Lpc/a;

    .line 4
    .line 5
    invoke-direct {v0}, Lpc/a;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/32 v1, 0x9901

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lpc/a;->j(J)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    invoke-virtual {v0, v1}, Lpc/a;->i(I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "AE"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lpc/a;->k(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {v0, v1}, Lpc/a;->l(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lpc/p;->a()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lpc/a;->g(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lpc/p;->a()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x3

    .line 43
    if-ne v1, v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lpc/a;->g(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p1}, Lpc/p;->d()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v0, p1}, Lpc/a;->h(I)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 57
    .line 58
    const-string v0, "invalid AES key strength, cannot generate AES Extra data record"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 65
    .line 66
    const-string v0, "zip parameters are null, cannot generate AES Extra Data record"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method private j(ZI)[I
    .locals 4

    .line 1
    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    aput v2, v1, v3

    goto :goto_0

    :cond_0
    aput v3, v1, v3

    :goto_0
    if-eq p2, v0, :cond_1

    aput v3, v1, v2

    const/4 p1, 0x2

    aput v3, v1, p1

    :cond_1
    const/4 p1, 0x3

    aput v2, v1, p1

    return-object v1
.end method

.method private k(Ljava/io/File;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

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
    return v1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/16 p1, 0x12

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    const/16 p1, 0x10

    .line 27
    .line 28
    return p1

    .line 29
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 p1, 0x3

    .line 42
    return p1

    .line 43
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    const/4 p1, 0x2

    .line 58
    return p1

    .line 59
    :cond_5
    return v1

    .line 60
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 61
    .line 62
    const-string v0, "input file is null, cannot get file attributes"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method private o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/p;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 14
    .line 15
    invoke-virtual {v0}, Lpc/p;->f()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x63

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    new-instance v0, Lnet/lingala/zip4j/crypto/b;

    .line 26
    .line 27
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 28
    .line 29
    invoke-virtual {v1}, Lpc/p;->h()[C

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 34
    .line 35
    invoke-virtual {v2}, Lpc/p;->a()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/b;-><init>([CI)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 46
    .line 47
    const-string v1, "invalid encprytion method"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/crypto/f;

    .line 54
    .line 55
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 56
    .line 57
    invoke-virtual {v1}, Lpc/p;->h()[C

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 62
    .line 63
    invoke-virtual {v2}, Lpc/i;->m()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const v3, 0xffff

    .line 68
    .line 69
    .line 70
    and-int/2addr v2, v3

    .line 71
    shl-int/lit8 v2, v2, 0x10

    .line 72
    .line 73
    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/f;-><init>([CI)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method private p(Lpc/o;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lpc/o;

    .line 4
    .line 5
    invoke-direct {p1}, Lpc/o;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 12
    .line 13
    :goto_0
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 14
    .line 15
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 22
    .line 23
    new-instance v0, Lpc/f;

    .line 24
    .line 25
    invoke-direct {v0}, Lpc/f;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lpc/o;->v(Lpc/f;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 32
    .line 33
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 40
    .line 41
    new-instance v0, Lpc/c;

    .line 42
    .line 43
    invoke-direct {v0}, Lpc/c;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lpc/o;->s(Lpc/c;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 50
    .line 51
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 62
    .line 63
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lpc/c;->d(Ljava/util/ArrayList;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 76
    .line 77
    invoke-virtual {p1}, Lpc/o;->h()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 84
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lpc/o;->x(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 94
    .line 95
    instance-of v0, p1, Lnet/lingala/zip4j/io/g;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    check-cast p1, Lnet/lingala/zip4j/io/g;

    .line 100
    .line 101
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/g;->h()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 108
    .line 109
    const/4 v0, 0x1

    .line 110
    invoke-virtual {p1, v0}, Lpc/o;->z(Z)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 114
    .line 115
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 116
    .line 117
    check-cast v0, Lnet/lingala/zip4j/io/g;

    .line 118
    .line 119
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/g;->e()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    invoke-virtual {p1, v0, v1}, Lpc/o;->A(J)V

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 127
    .line 128
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-wide/32 v0, 0x6054b50

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0, v1}, Lpc/f;->q(J)V

    .line 136
    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method public b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/io/c;->m:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->l:[B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/c;->g([BII)V

    .line 9
    .line 10
    .line 11
    iput v2, p0, Lnet/lingala/zip4j/io/c;->m:I

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 14
    .line 15
    invoke-virtual {v0}, Lpc/p;->l()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x63

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 24
    .line 25
    invoke-virtual {v0}, Lpc/p;->f()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 32
    .line 33
    instance-of v2, v0, Lnet/lingala/zip4j/crypto/b;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 38
    .line 39
    check-cast v0, Lnet/lingala/zip4j/crypto/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/b;->f()[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 46
    .line 47
    .line 48
    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 49
    .line 50
    const-wide/16 v4, 0xa

    .line 51
    .line 52
    add-long/2addr v2, v4

    .line 53
    iput-wide v2, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 54
    .line 55
    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 56
    .line 57
    add-long/2addr v2, v4

    .line 58
    iput-wide v2, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 62
    .line 63
    const-string v1, "invalid encrypter for AES encrypted file"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 70
    .line 71
    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 72
    .line 73
    invoke-virtual {v0, v2, v3}, Lpc/h;->G(J)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 77
    .line 78
    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 79
    .line 80
    invoke-virtual {v0, v2, v3}, Lpc/i;->y(J)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 84
    .line 85
    invoke-virtual {v0}, Lpc/p;->p()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 92
    .line 93
    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->n:J

    .line 94
    .line 95
    invoke-virtual {v0, v2, v3}, Lpc/h;->d0(J)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 99
    .line 100
    invoke-virtual {v0}, Lpc/i;->q()J

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    iget-wide v4, p0, Lnet/lingala/zip4j/io/c;->n:J

    .line 105
    .line 106
    cmp-long v0, v2, v4

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 111
    .line 112
    invoke-virtual {v0, v4, v5}, Lpc/i;->Q(J)V

    .line 113
    .line 114
    .line 115
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->j:Ljava/util/zip/CRC32;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Lpc/h;->D()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const-wide/16 v4, 0x0

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 132
    .line 133
    invoke-virtual {v0}, Lpc/h;->j()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ne v0, v1, :cond_4

    .line 138
    .line 139
    move-wide v2, v4

    .line 140
    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 141
    .line 142
    invoke-virtual {v0}, Lpc/p;->l()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 149
    .line 150
    invoke-virtual {v0}, Lpc/p;->f()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-ne v0, v1, :cond_5

    .line 155
    .line 156
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 157
    .line 158
    invoke-virtual {v0, v4, v5}, Lpc/h;->I(J)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 162
    .line 163
    invoke-virtual {v0, v4, v5}, Lpc/i;->A(J)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 168
    .line 169
    invoke-virtual {v0, v2, v3}, Lpc/h;->I(J)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 173
    .line 174
    invoke-virtual {v0, v2, v3}, Lpc/i;->A(J)V

    .line 175
    .line 176
    .line 177
    :goto_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 178
    .line 179
    invoke-virtual {v0}, Lpc/o;->h()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 184
    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 189
    .line 190
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    new-instance v0, Lmc/b;

    .line 204
    .line 205
    invoke-direct {v0}, Lmc/b;-><init>()V

    .line 206
    .line 207
    .line 208
    iget-wide v1, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 209
    .line 210
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 211
    .line 212
    iget-object v6, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 213
    .line 214
    invoke-virtual {v0, v3, v6}, Lmc/b;->k(Lpc/i;Ljava/io/OutputStream;)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    int-to-long v6, v0

    .line 219
    add-long/2addr v1, v6

    .line 220
    iput-wide v1, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 221
    .line 222
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->j:Ljava/util/zip/CRC32;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 225
    .line 226
    .line 227
    iput-wide v4, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 228
    .line 229
    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 231
    .line 232
    iput-wide v4, p0, Lnet/lingala/zip4j/io/c;->n:J

    .line 233
    .line 234
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 4

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    int-to-long v0, p1

    .line 5
    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 6
    .line 7
    cmp-long p1, v0, v2

    .line 8
    .line 9
    if-gtz p1, :cond_1

    .line 10
    .line 11
    sub-long/2addr v2, v0

    .line 12
    iput-wide v2, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/o;->f()Lpc/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lpc/f;->p(J)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lmc/b;

    .line 13
    .line 14
    invoke-direct {v0}, Lmc/b;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 18
    .line 19
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lmc/b;->d(Lpc/o;Ljava/io/OutputStream;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public l()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(Ljava/io/File;Lpc/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lpc/p;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 11
    .line 12
    const-string p2, "input file is null"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lpc/p;->p()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->b(Ljava/io/File;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 32
    .line 33
    const-string p2, "input file does not exist"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_3
    :goto_1
    :try_start_0
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {p2}, Lpc/p;->clone()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lpc/p;

    .line 46
    .line 47
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 48
    .line 49
    invoke-virtual {p2}, Lpc/p;->p()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/4 v0, -0x1

    .line 54
    const/4 v1, 0x0

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lpc/p;->u(Z)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lpc/p;->v(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lpc/p;->s(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 82
    .line 83
    invoke-virtual {p1}, Lpc/p;->g()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_e

    .line 92
    .line 93
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 94
    .line 95
    invoke-virtual {p1}, Lpc/p;->g()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v2, "/"

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 108
    .line 109
    invoke-virtual {p1}, Lpc/p;->g()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string v2, "\\"

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    :cond_5
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Lpc/p;->u(Z)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lpc/p;->v(I)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 132
    .line 133
    invoke-virtual {p1, v1}, Lpc/p;->s(I)V

    .line 134
    .line 135
    .line 136
    :cond_6
    :goto_2
    invoke-direct {p0}, Lnet/lingala/zip4j/io/c;->d()V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lnet/lingala/zip4j/io/c;->e()V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 143
    .line 144
    invoke-virtual {p1}, Lpc/o;->p()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    const-wide/16 v2, 0x4

    .line 149
    .line 150
    if-eqz p1, :cond_8

    .line 151
    .line 152
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 153
    .line 154
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 161
    .line 162
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 173
    .line 174
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_8

    .line 187
    .line 188
    :cond_7
    const/4 p1, 0x4

    .line 189
    new-array p1, p1, [B

    .line 190
    .line 191
    const v0, 0x8074b50

    .line 192
    .line 193
    .line 194
    invoke-static {p1, v1, v0}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 200
    .line 201
    .line 202
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 203
    .line 204
    add-long/2addr v0, v2

    .line 205
    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 206
    .line 207
    :cond_8
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 208
    .line 209
    instance-of v0, p1, Lnet/lingala/zip4j/io/g;

    .line 210
    .line 211
    if-eqz v0, :cond_a

    .line 212
    .line 213
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 214
    .line 215
    cmp-long v4, v0, v2

    .line 216
    .line 217
    if-nez v4, :cond_9

    .line 218
    .line 219
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 220
    .line 221
    invoke-virtual {p1, v2, v3}, Lpc/h;->a0(J)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_9
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 226
    .line 227
    check-cast p1, Lnet/lingala/zip4j/io/g;

    .line 228
    .line 229
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/g;->d()J

    .line 230
    .line 231
    .line 232
    move-result-wide v1

    .line 233
    invoke-virtual {v0, v1, v2}, Lpc/h;->a0(J)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_a
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 238
    .line 239
    cmp-long p1, v0, v2

    .line 240
    .line 241
    if-nez p1, :cond_b

    .line 242
    .line 243
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 244
    .line 245
    invoke-virtual {p1, v2, v3}, Lpc/h;->a0(J)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_b
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->d:Lpc/h;

    .line 250
    .line 251
    invoke-virtual {p1, v0, v1}, Lpc/h;->a0(J)V

    .line 252
    .line 253
    .line 254
    :goto_3
    new-instance p1, Lmc/b;

    .line 255
    .line 256
    invoke-direct {p1}, Lmc/b;-><init>()V

    .line 257
    .line 258
    .line 259
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 260
    .line 261
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->h:Lpc/o;

    .line 262
    .line 263
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->e:Lpc/i;

    .line 264
    .line 265
    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 266
    .line 267
    invoke-virtual {p1, v2, v3, v4}, Lmc/b;->m(Lpc/o;Lpc/i;Ljava/io/OutputStream;)I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    int-to-long v2, p1

    .line 272
    add-long/2addr v0, v2

    .line 273
    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 274
    .line 275
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 276
    .line 277
    invoke-virtual {p1}, Lpc/p;->l()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_d

    .line 282
    .line 283
    invoke-direct {p0}, Lnet/lingala/zip4j/io/c;->o()V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 287
    .line 288
    if-eqz p1, :cond_d

    .line 289
    .line 290
    invoke-virtual {p2}, Lpc/p;->f()I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_c

    .line 295
    .line 296
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 297
    .line 298
    check-cast p1, Lnet/lingala/zip4j/crypto/f;

    .line 299
    .line 300
    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/f;->e()[B

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    iget-object p2, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 305
    .line 306
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 307
    .line 308
    .line 309
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 310
    .line 311
    array-length p2, p1

    .line 312
    int-to-long v2, p2

    .line 313
    add-long/2addr v0, v2

    .line 314
    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 315
    .line 316
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 317
    .line 318
    array-length p1, p1

    .line 319
    int-to-long p1, p1

    .line 320
    add-long/2addr v0, p1

    .line 321
    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_c
    invoke-virtual {p2}, Lpc/p;->f()I

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    const/16 p2, 0x63

    .line 329
    .line 330
    if-ne p1, p2, :cond_d

    .line 331
    .line 332
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 333
    .line 334
    check-cast p1, Lnet/lingala/zip4j/crypto/b;

    .line 335
    .line 336
    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/b;->h()[B

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    iget-object p2, p0, Lnet/lingala/zip4j/io/c;->f:Lnet/lingala/zip4j/crypto/d;

    .line 341
    .line 342
    check-cast p2, Lnet/lingala/zip4j/crypto/b;

    .line 343
    .line 344
    invoke-virtual {p2}, Lnet/lingala/zip4j/crypto/b;->e()[B

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 349
    .line 350
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 351
    .line 352
    .line 353
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/OutputStream;

    .line 354
    .line 355
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 356
    .line 357
    .line 358
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 359
    .line 360
    array-length v2, p1

    .line 361
    array-length v3, p2

    .line 362
    add-int/2addr v2, v3

    .line 363
    int-to-long v2, v2

    .line 364
    add-long/2addr v0, v2

    .line 365
    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->i:J

    .line 366
    .line 367
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 368
    .line 369
    array-length p1, p1

    .line 370
    array-length p2, p2

    .line 371
    add-int/2addr p1, p2

    .line 372
    int-to-long p1, p1

    .line 373
    add-long/2addr v0, p1

    .line 374
    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->k:J

    .line 375
    .line 376
    :cond_d
    :goto_4
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->j:Ljava/util/zip/CRC32;

    .line 377
    .line 378
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :cond_e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 383
    .line 384
    const-string p2, "file name is empty for external stream"

    .line 385
    .line 386
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :catch_0
    move-exception p1

    .line 391
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 392
    .line 393
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    throw p2

    .line 397
    :catch_1
    move-exception p1

    .line 398
    throw p1

    .line 399
    :catch_2
    move-exception p1

    .line 400
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 401
    .line 402
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 403
    .line 404
    .line 405
    throw p2
.end method

.method public s(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->c:Ljava/io/File;

    .line 2
    .line 3
    return-void
.end method

.method protected t(I)V
    .locals 4

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->n:J

    .line 4
    .line 5
    int-to-long v2, p1

    .line 6
    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->n:J

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/c;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    invoke-virtual {v0}, Lpc/p;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    invoke-virtual {v0}, Lpc/p;->f()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_3

    .line 7
    iget v0, p0, Lnet/lingala/zip4j/io/c;->m:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    rsub-int/lit8 v2, v0, 0x10

    if-lt p3, v2, :cond_1

    .line 8
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->l:[B

    rsub-int/lit8 v3, v0, 0x10

    invoke-static {p1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object p2, p0, Lnet/lingala/zip4j/io/c;->l:[B

    array-length v0, p2

    invoke-direct {p0, p2, v1, v0}, Lnet/lingala/zip4j/io/c;->g([BII)V

    .line 10
    iget p2, p0, Lnet/lingala/zip4j/io/c;->m:I

    rsub-int/lit8 p2, p2, 0x10

    sub-int/2addr p3, p2

    .line 11
    iput v1, p0, Lnet/lingala/zip4j/io/c;->m:I

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->l:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget p1, p0, Lnet/lingala/zip4j/io/c;->m:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/lingala/zip4j/io/c;->m:I

    return-void

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 14
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_3

    add-int v2, p3, p2

    sub-int/2addr v2, v0

    .line 15
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->l:[B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iput v0, p0, Lnet/lingala/zip4j/io/c;->m:I

    sub-int/2addr p3, v0

    :cond_3
    if-eqz p3, :cond_4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/c;->g([BII)V

    :cond_4
    return-void
.end method

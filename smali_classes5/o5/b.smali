.class public Lo5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/huaksj/vasdolly/common/a;Ljava/io/File;ILjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Lo5/b;->d(Lcom/huaksj/vasdolly/common/a;Ljava/io/File;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static b(Ljava/io/File;I[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p0, p1, p2, p3}, Lo5/b;->c(Ljava/io/File;Ljava/io/File;I[BZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Ljava/io/File;Ljava/io/File;I[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p4}, Lo5/b;->g(Ljava/io/File;Z)Lcom/huaksj/vasdolly/common/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    sget-object p4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    .line 11
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2, p3}, Lo5/b;->a(Lcom/huaksj/vasdolly/common/a;Ljava/io/File;ILjava/nio/ByteBuffer;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static d(Lcom/huaksj/vasdolly/common/a;Ljava/io/File;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huaksj/vasdolly/common/a;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/huaksj/vasdolly/common/d;->e(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/huaksj/vasdolly/common/d;->d(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "addIdValueByteBufferMap , oldApkSigningBlock size = "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, " , newApkSigningBlock size = "

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    iget-object v5, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    sub-int/2addr v4, v5

    .line 119
    int-to-long v4, v4

    .line 120
    add-long v6, v2, v4

    .line 121
    .line 122
    invoke-static {v1, v6, v7}, Lcom/huaksj/vasdolly/common/apk/c;->k(Ljava/nio/ByteBuffer;J)V

    .line 123
    .line 124
    .line 125
    iget-wide v6, p0, Lcom/huaksj/vasdolly/common/a;->b:J

    .line 126
    .line 127
    add-long/2addr v6, v4

    .line 128
    const/4 v4, 0x0

    .line 129
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    .line 130
    .line 131
    const-string v8, "rw"

    .line 132
    .line 133
    invoke-direct {v5, p1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    .line 135
    .line 136
    :try_start_1
    invoke-virtual {p0}, Lcom/huaksj/vasdolly/common/a;->c()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_0

    .line 141
    .line 142
    iget-object p0, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Ljava/lang/Long;

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide v8

    .line 154
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 155
    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v10, "seek to apk signing block pos:"

    .line 162
    .line 163
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v10, ",dest apk file len:"

    .line 170
    .line 171
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    .line 175
    .line 176
    .line 177
    move-result-wide v10

    .line 178
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_0
    iget-object v4, p0, Lcom/huaksj/vasdolly/common/a;->c:Lcom/huaksj/vasdolly/common/c;

    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 199
    .line 200
    iget-object p0, p0, Lcom/huaksj/vasdolly/common/a;->c:Lcom/huaksj/vasdolly/common/c;

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    check-cast p0, Ljava/lang/Long;

    .line 207
    .line 208
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    add-int/2addr v8, v9

    .line 228
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-virtual {v5, p0, v8, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 233
    .line 234
    .line 235
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    add-int/2addr v4, v8

    .line 248
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    invoke-virtual {v5, p0, v4, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    add-int/2addr p2, v4

    .line 268
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-virtual {v5, p0, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    add-int/2addr p2, v0

    .line 288
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    invoke-virtual {v5, p0, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 296
    .line 297
    .line 298
    move-result-wide v8

    .line 299
    cmp-long p0, v8, v6

    .line 300
    .line 301
    if-nez p0, :cond_1

    .line 302
    .line 303
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 304
    .line 305
    .line 306
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 307
    .line 308
    new-instance p2, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v0, "addIdValueByteBufferMap , after add channel , new apk is "

    .line 314
    .line 315
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v0, " , length = "

    .line 326
    .line 327
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 331
    .line 332
    .line 333
    move-result-wide v6

    .line 334
    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    .line 343
    .line 344
    invoke-static {v1, v2, v3}, Lcom/huaksj/vasdolly/common/apk/c;->k(Ljava/nio/ByteBuffer;J)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 352
    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string p2, "after addIdValueByteBufferMap , file size wrong , FilePointer : "

    .line 359
    .line 360
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 364
    .line 365
    .line 366
    move-result-wide v8

    .line 367
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string p2, ", apkLength : "

    .line 371
    .line 372
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    :catchall_0
    move-exception p0

    .line 387
    move-object v4, v5

    .line 388
    goto :goto_1

    .line 389
    :catchall_1
    move-exception p0

    .line 390
    :goto_1
    invoke-static {v1, v2, v3}, Lcom/huaksj/vasdolly/common/apk/c;->k(Ljava/nio/ByteBuffer;J)V

    .line 391
    .line 392
    .line 393
    if-eqz v4, :cond_2

    .line 394
    .line 395
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 396
    .line 397
    .line 398
    :cond_2
    throw p0

    .line 399
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 400
    .line 401
    const-string p1, "addIdValueByteBufferMap , id value pair is empty"

    .line 402
    .line 403
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw p0
.end method

.method public static e(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {p0, p3}, Lo5/b;->g(Ljava/io/File;Z)Lcom/huaksj/vasdolly/common/a;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, [B

    .line 43
    .line 44
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p0, p1, p3}, Lo5/b;->d(Lcom/huaksj/vasdolly/common/a;Ljava/io/File;Ljava/util/Map;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    const-string p1, "addIdValueByteMap , idValueByteMap is empty"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public static f(Ljava/io/File;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p0, p1, p2}, Lo5/b;->e(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g(Ljava/io/File;Z)Lcom/huaksj/vasdolly/common/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0, p1}, Lcom/huaksj/vasdolly/common/d;->f(Ljava/io/File;Z)Lcom/huaksj/vasdolly/common/a;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static h(Lcom/huaksj/vasdolly/common/a;Ljava/io/File;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huaksj/vasdolly/common/a;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    if-eqz p2, :cond_6

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/huaksj/vasdolly/common/d;->e(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "removeIdValue , existed IdValueMap = "

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-ne v1, p2, :cond_2

    .line 90
    .line 91
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 92
    .line 93
    const-string p1, "removeIdValue , No idValue was deleted"

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_2
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "removeIdValue , final IdValueMap = "

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lcom/huaksj/vasdolly/common/d;->d(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v2, "removeIdValue , oldApkSigningBlock size = "

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, " , newApkSigningBlock size = "

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    iget-object v1, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 187
    .line 188
    iget-object v2, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Ljava/lang/Long;

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    iget-object v5, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 205
    .line 206
    invoke-virtual {v5}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    sub-int/2addr v4, v5

    .line 217
    int-to-long v4, v4

    .line 218
    add-long v6, v2, v4

    .line 219
    .line 220
    invoke-static {v1, v6, v7}, Lcom/huaksj/vasdolly/common/apk/c;->k(Ljava/nio/ByteBuffer;J)V

    .line 221
    .line 222
    .line 223
    iget-wide v6, p0, Lcom/huaksj/vasdolly/common/a;->b:J

    .line 224
    .line 225
    add-long/2addr v6, v4

    .line 226
    const/4 v4, 0x0

    .line 227
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    .line 228
    .line 229
    const-string v8, "rw"

    .line 230
    .line 231
    invoke-direct {v5, p1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    .line 233
    .line 234
    :try_start_1
    invoke-virtual {p0}, Lcom/huaksj/vasdolly/common/a;->c()Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_3

    .line 239
    .line 240
    iget-object p0, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    check-cast p0, Ljava/lang/Long;

    .line 247
    .line 248
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 249
    .line 250
    .line 251
    move-result-wide v8

    .line 252
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 253
    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v10, "seek to apk signing block pos:"

    .line 260
    .line 261
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_3
    iget-object v4, p0, Lcom/huaksj/vasdolly/common/a;->c:Lcom/huaksj/vasdolly/common/c;

    .line 279
    .line 280
    invoke-virtual {v4}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 285
    .line 286
    iget-object p0, p0, Lcom/huaksj/vasdolly/common/a;->c:Lcom/huaksj/vasdolly/common/c;

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    check-cast p0, Ljava/lang/Long;

    .line 293
    .line 294
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 295
    .line 296
    .line 297
    move-result-wide v8

    .line 298
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    add-int/2addr v8, v9

    .line 314
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-virtual {v5, p0, v8, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 319
    .line 320
    .line 321
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    add-int/2addr v4, v8

    .line 334
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 335
    .line 336
    .line 337
    move-result p2

    .line 338
    invoke-virtual {v5, p0, v4, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 346
    .line 347
    .line 348
    move-result p2

    .line 349
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    add-int/2addr p2, v4

    .line 354
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    invoke-virtual {v5, p0, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 366
    .line 367
    .line 368
    move-result p2

    .line 369
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    add-int/2addr p2, v0

    .line 374
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    invoke-virtual {v5, p0, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 382
    .line 383
    .line 384
    move-result-wide v8

    .line 385
    cmp-long p0, v8, v6

    .line 386
    .line 387
    if-nez p0, :cond_4

    .line 388
    .line 389
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 390
    .line 391
    .line 392
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 393
    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    const-string v0, "removeIdValue , after remove channel , apk is "

    .line 400
    .line 401
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v0, " , length = "

    .line 412
    .line 413
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 417
    .line 418
    .line 419
    move-result-wide v6

    .line 420
    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    .line 429
    .line 430
    invoke-static {v1, v2, v3}, Lcom/huaksj/vasdolly/common/apk/c;->k(Ljava/nio/ByteBuffer;J)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 434
    .line 435
    .line 436
    :goto_2
    return-void

    .line 437
    :cond_4
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 438
    .line 439
    new-instance p1, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    const-string p2, "after removeIdValue , file size wrong , FilePointer : "

    .line 445
    .line 446
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 450
    .line 451
    .line 452
    move-result-wide v8

    .line 453
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string p2, ", apkLength : "

    .line 457
    .line 458
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    :catchall_0
    move-exception p0

    .line 473
    move-object v4, v5

    .line 474
    goto :goto_3

    .line 475
    :catchall_1
    move-exception p0

    .line 476
    :goto_3
    invoke-static {v1, v2, v3}, Lcom/huaksj/vasdolly/common/apk/c;->k(Ljava/nio/ByteBuffer;J)V

    .line 477
    .line 478
    .line 479
    if-eqz v4, :cond_5

    .line 480
    .line 481
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 482
    .line 483
    .line 484
    :cond_5
    throw p0

    .line 485
    :cond_6
    :goto_4
    return-void
.end method

.method public static i(Ljava/io/File;I)V
    .locals 0

    .line 1
    return-void
.end method
